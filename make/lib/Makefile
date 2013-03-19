CRAFT_VERSION = 0.0.1
CRAFT_TARGETS = `make c__list_targets__`
CRAFT_TOP = $(dir $(lastword $(MAKEFILE_LIST)))

##
# Grab first target
##
craft:
	@echo $(call craft.hello)
	@echo `pwd`

##
# Utils
#
include make/lib/utils.mk


##
# Common variables 
#
include make/lib/common.mk


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