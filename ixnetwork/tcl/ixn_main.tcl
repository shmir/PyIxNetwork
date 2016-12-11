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
