## Core
include make/lib/Makefile

##
# @target &clean
#
# This is called when the target 'clean' is called.
# If it is not defined 
&clean:
	$(call craft.warn_not_implemented,clean)


##
# @target &build
#
# This is called when the target 'build' is called.
# If it is not defined 
&build:
	$(call craft.warn_not_implemented,build)


##
# @target &install
#
# This is called when the target 'install' is called.
# If it is not defined 
&install:
	$(call craft.warn_not_implemented,install)


##
# @target &test
#
# This is called when the target 'test' is called.
# If it is not defined 
&test:
	$(call craft.warn_not_implemented,test)