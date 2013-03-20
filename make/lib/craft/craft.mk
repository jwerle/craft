##
# Constants
##
export CRAFT 				:= 1
TOP 								?= $(shell pwd)
CRAFT_VERSION 			:= 0.0.4
CRAFT_TARGETS 			:= `make c__list_targets__`
CRAFT_TOP 					:= $(TOP)
CRAFT_WD 						:= $(shell pwd)
CRAFT_DIR 					:= $(CRAFT_WD)/make
CRAFT_LIB_DIR				:= $(CRAFT_DIR)/lib
CRAFT_TEMPLATE_DIR 	:= $(CRAFT_DIR)/tpl
CRAFT_GIT_REPO			:= https://github.com/jwerle/craft.git
CRAFT_GIT_BRANCH    := master

# Core functions
include make/lib/craft/functions.mk

##
# @namespace craft
##
$(call craft.create_target,craft) # create the interface

## version
craft.version = $(echo CRAFT_VERSION)

## os
craft.OS = `uname`

# me
craft.ME = `whoami`

# path
craft.PATH = $(PATH)

# timezone
craft.TZ = `echo $TZ`

## current project directory
craft.PROJECT_DIR = `pwd`

## user home directory
craft.HOME_DIR = `echo $HOME`

# hello prompt
craft.hello = "Craft Makefile utility v$(CRAFT_VERSION)"

## Craft targets
include make/lib/craft/targets.mk