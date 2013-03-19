##
#	@func create_target
#
# Creates a taget and target interface
##
define craft.create_target
	$(eval include make/lib/target-template.mk)
endef


##
# @public
#	@func noop
#
# No-op
##
define craft.noop
endef



.PHONY: no_targets__ list
$(call craft.create_target,craft)


##
# Interface implementations
##
&craft: craft.noop
craft.pre: craft.noop
craft.after: craft.noop
## version
craft.version = $(echo CRAFT_VERSION)
craft.version:
	@echo $(CRAFT_VERSION)


## os
craft.OS = `uname`
craft.os:
	@echo $(craft.OS)


## snapshow of the user
craft.ME = `whoami`
craft.me:
	@echo $(craft.ME)


craft.PATH = $(PATH)
craft.PATH:
	@echo $(craft.PATH);


## timezone
craft.TZ = `echo $TZ`


## current project directory
craft.PROJECT_DIR = `pwd`
craft.PROJECT_DIR:
	@echo $(craft.PROJECT_DIR)


## user home directory
craft.HOME_DIR = `echo $HOME`

## is root?
craft.isRoot = `if $(utils.isRoot) ; then; echo true; else echo false; fi;`
craft.isRoot:
	@echo $(craft.isRoot)


##
# @private
# @target target
#
# Lists all targets
##
craft.no_targets__:
c__list_targets__:
	@sh -c "$(MAKE) -p craft.no_targets__ | awk -F':' '/^[a-zA-Z0-9][^\$$#\/\\t=]*:([^=]|$$)/ {split(\$$1,A,/ /);for(i in A)print A[i]}' | grep -v '__\$$' | sort"


##
# @public
# @target hello
#
# Hello message to the user :)
##
craft.hello = "Craft Makefile utiltity v$(CRAFT_VERSION)"
craft.hello:
	@echo "Hello"


##
# @public
# @target targets
#
# Lists all targets
##
craft.targets:
	echo $(sh -c "$(CRAFT_TARGETS)")


##
# @public
# @target noop
#
# no-op
##
craft.noop: