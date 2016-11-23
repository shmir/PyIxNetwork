if {[namespace exists IxNetwork] == 1} {
	namespace delete IxNetwork
}
    
namespace eval IxNetwork {
	variable availableHardware_Array
}

proc ::IxNetwork::GetStatistics {stat} {
	if {![ixNet exists [ixNet getRoot]/statistics/view:"$stat"/page]} {
		error "TSTclError - statistics view '$stat' does not exist"			
	}
	set page [ixNet getRoot]/statistics/view:"$stat"/page
	if {![ixNet getAttr $page -isReady]} {
		error "TSTclError - statistics view '$stat' is not ready"
	}
	set captions [ixNet getAttribute $page -columnCaptions]
	if {$captions == {}} {
		return
	}
	# Some views page size is restriced to 50 so we take the minumun common denominator
	ixNet setAttribute $page -pageSize 50
	set output {}
	for {set pageNumber 1} {$pageNumber <= [ixNet getAttribute $page -totalPages]} {incr pageNumber} {
		ixNet setAttribute $page -currentPage $pageNumber
		ixNet commit
		set rows [ixNet getAttribute $page -rowValues]
		foreach row $rows {
			foreach subRow $row {
				lappend output [join $subRow \t]\n					
			}
		}
	}
	return [join $captions \t]\n[join $output ""]
}

# Retrieves the list of all child types of a given object.
proc ::IxNetwork::GetChildList {object} {
		
	if {$object == {}} {
		return {}
	}
	set childList {}
	foreach child [GetChilds [ixNet help $object]] {
		lappend childList [lindex $child 0]
	}
	return $childList

}

proc ::IxNetwork::GetAttributes {help} {
	# Search for all attribues between "Attributes:" and "Execs:"
	set attributes [lindex [regexp -inline -expanded -- {\mAttributes:(.*)\mExecs:} $help] 1]
	# If empty, maybe its because there are no "Execs:"
	if {$attributes == {}} {
		# Search for all attributes between "Attributes:" and end of the output        
		set attributes [lindex [regexp -inline -expanded -- {\mAttributes:(.*)} $help] 1]    
	}
	return $attributes
}

proc ::IxNetwork::GetAttributesClean {object} {
	set attributes {}
	if {[catch {ixNet help $object} help] > 0} {
		set help {}
	}
	foreach attribute [split [::IxNetwork::GetAttributes $help] \n] {
		set name [string range [lindex $attribute 0] 1 end]
		set readOnlyAndType [lrange $attribute 1 end]
		if {[catch {ixNet getAttr $object -$name} value] > 0} {
			set value {}
		}
		append attributes $name\t$value\n
	}
	return $attributes
}

proc ::IxNetwork::GetChilds {help} {
	# Search for all lists between "Child Lists:" and "Attributes:"
	set childs [lindex [regexp -inline -expanded -- {\AChild\sLists:(.*)\mAttributes:} $help] 1]
	# If empty, maybe its because there are no "Attributes:"
	if {$childs == {}} {
		# Search for all lists between "Child Lists:" and "Execs:"        
		set childs [lindex [regexp -inline -expanded -- {\AChild\sLists:(.*)\mExecs:} $help] 1]    
	}
	# If empty, maybe its because there are no "Execs:"    
	if {$childs == {}} {
		# Search for all lists between "Child Lists:" and end of the output     
		set childs [lindex [regexp -inline -expanded -- {\AChild\sLists:(.*)} $help] 1]    
	}
	return [split [string trim $childs] "\n\r"]
}

