#!/usr/bin/env python
# encoding: utf-8
"""
Package PyIxNetwork for distribution.
"""
from setuptools import find_packages, setup


def main() -> None:
    """Package script."""
    with open("requirements.txt", "r") as requirements:
        install_requires = requirements.read().splitlines()
    with open("README.md", "r") as readme:
        long_description = readme.read()

    setup(
        name="pyixnetwork",
        description="Python OO API package to manage Ixia IxNetwork traffic generator",
        url="https://github.com/shmir/PyIxNetwork/",
        use_scm_version={"root": ".", "relative_to": __file__, "local_scheme": "node-and-timestamp"},
        license="Apache Software License",
        author="Yoram Shamir",
        author_email="yoram@ignissoft.com",
        platforms="any",
        install_requires=install_requires,
        packages=find_packages(include=["ixnetwork"]),
        include_package_data=True,
        long_description=long_description,
        long_description_content_type="text/markdown",
        keywords="ixnetwork l2l3 ixload l4l7 test tool ixia automation api",
        classifiers=[
            "Development Status :: 5 - Production/Stable",
            "Natural Language :: English",
            "License :: OSI Approved :: Apache Software License",
            "Intended Audience :: Developers",
            "Operating System :: OS Independent",
            "Topic :: Software Development :: Testing",
            "Programming Language :: Python :: 3.7",
            "Programming Language :: Python :: 3.8",
            "Programming Language :: Python :: 3.9",
            "Programming Language :: Python :: 3.10",
        ],
    )


if __name__ == "__main__":
    main()
