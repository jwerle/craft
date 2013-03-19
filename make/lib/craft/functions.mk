##
#	@func template_path
#
# Constructs a template path
##
define craft.template_path
	$(CRAFT_TEMPLATE_DIR)/$1.mk
endef


define craft.bootstrap
	$(call craft.include,craft/bootstrap)
endef


##
#	@func create_target
#
# Creates a taget and target interface
##
define craft.create_target
	$(eval include $(call craft.template_path,target))
endef


##
#	@func include
#
# Include a makefile
##
define craft.include
	$(eval include $(CRAFT_LIB_DIR)/$(1).mk))
endef


##
#	@func define_usage
#
# function to create a usage interface for a target
##
define craft.define_usage
	$(eval include $(call craft.template,usage))
endef


##
#	@func echo
#
# echo's N number of arguments
##
define craft.echo
	echo $@
endef


##
# @public
#	@func noop
#
# No-operation - does nothing
##
define craft.noop
endef


##
# @func not_implemented
#
# Does nothing
##
define craft.not_implemented
endef


##
# @func not_implemented
#
# Emits a make warning "Target not implemented"
##
define craft.warn_not_implemented
	@$(warning [NOT_IMPLEMENTED] => '$1 not implemented')
endef


##
# @func is_root
#
# Determins whether use is root
##
define craft.is_root
	if test \"$(craft.ME)\" == \"root\"; then echo true; else echo false; fi;
endef


##
# @func strtoupper
#
# Converts a string to upper case
##
define craft.strtoupper
	`echo "$1" | tr [[:lower:]] [[:upper:]]`
endef


##
# @func update
#
# Application level craft update
##
define craft.update
	@cd craft/ && git pull origin master
endef


##
# @func core_update
#
# Core level craft update
##
define craft.core_update
	@$(warning "It is assumed that you are in the root of the Craft project directory")
	git pull origin $(CRAFT_GIT_BRANCH)
endef


##
# @func core_push_update
#
# Core level craft push
##
define craft.core_push_update
	@$(warning "It is assumed that you are in the root of the Craft project directory")
	git add .
	git commit -m"Core update v$(CRAFT_VERSION)"
	git push origin $(CRAFT_GIT_BRANCH)
endef


##
# @func core_log
#
# Core level git log putput
##
define craft.core_log
	@$(warning "It is assumed that you are in the root of the Craft project directory")
	git log
endef


define craft.install
	@$(warning "It is assumed that you are in the root of your application directory")
	git clone $(CRAFT_GIT_REPO) craft
	@make craft.sync_app
endef


##
#	@func sync_app
#
# Sync current application with most up to date Craft build
##
define craft.sync_app
	cp -rf `pwd`/craft/make/* `pwd`/make/
endef