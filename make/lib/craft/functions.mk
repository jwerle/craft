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
# @func not_implemented
#
# Emits a make warning "Target not implemented"
##
define craft.strtoupper
	`echo "$1" | tr [[:lower:]] [[:upper:]]`
endef


##
# @func not_implemented
#
# Emits a make warning "Target not implemented"
##
define craft.fs.mkdirs
	for d in $2; do (echo "$1/$$d";); done
endef