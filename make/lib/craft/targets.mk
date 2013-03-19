## phonys
.PHONY: craft

##
# Interface implementations
##
&craft: craft.noop
craft.pre: craft.noop
craft.after: craft.noop

##
# PRIVATE
##
##
# @private
# @target __craft_boot__
#
# The priave Craft boot target
##
__craft_boot__:
	$(call craft.bootstrap.check_is_root)


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
# PUBLIC
##
##
# @public
# @target version
#
# Shows Craft version
##
craft.version:
	@echo $(CRAFT_VERSION)


##
# @public
# @target os
#
# Shows user OS
##
craft.os:
	@echo $(craft.OS)


##
# @public
# @target ,e
#
# Shows the users username
##
craft.me:
	@echo $(craft.ME)


##
# @public
# @target PATH
#
# Shows the users PATH variable
##
craft.PATH:
	@echo $(craft.PATH);


##
# @public
# @target path
#
# Shows the craft path
##
craft.path:
	@echo $(CRAFT_DIR);


##
# @public
# @target template_path
#
# Shows the craft template_path
##
craft.template_path:
	@echo $(CRAFT_TEMPLATE_DIR)


##
# @public
# @target project_dir
#
# Shows the project directory
##
craft.project_dir:
	@echo $(craft.PROJECT_DIR)


##
# @public
# @target is_root
#
# Shows whether the user is root or not
##
craft.is_root:
	@$(call craft.is_root)


##
# @public
# @target hello
#
# Hello message to the user :)
##
craft.hello:
	@echo "Hello"


##
# @public
# @target targets
#
# Lists all targets
##
craft.targets:
	@echo "$(CRAFT_TARGETS)"


##
# @public
# @target noop
#
# no-op
##
craft.noop:

craft.foo:
	@echo $(call craft.template_path,target)



## eof ##