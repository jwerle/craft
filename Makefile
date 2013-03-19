## Core
include make/lib/Makefile

##
# @target &clean
#
# This is called when the target 'clean' is called.
# If it is not defined 
&clean:
	$(call utils.warn_not_implemented,clean)


##
# @target &build
#
# This is called when the target 'build' is called.
# If it is not defined 
&build:
	$(call utils.warn_not_implemented,build)


##
# @target &install
#
# This is called when the target 'install' is called.
# If it is not defined 
&install:
	$(call utils.warn_not_implemented,install)


##
# @target &test
#
# This is called when the target 'test' is called.
# If it is not defined 
&test:
	$(call utils.warn_not_implemented,test)