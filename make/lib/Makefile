export CRAFT_VERSION = 0.0.1
export CRAFT_TARGETS = `make c__list_targets__`
export CRAFT_TOP = $(dir $(lastword $(MAKEFILE_LIST)))

##
# Grab first target
##
craft:
	@echo $(call craft.hello)
	@echo `pwd`

##
# Common variables 
#
include make/common.mk


##
# Utils
#
include make/lib/utils.mk


##
# Common variables 
#
include make/lib/craft.mk


##
# Common build interface targets
##
include make/lib/build/build.mk


##
# Common build interface targets
##
include make/lib/install/install.mk


##
# Common build interface targets
##
include make/lib/clean/clean.mk


##
# Common build interface targets
##
include make/lib/test/test.mk