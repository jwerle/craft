include make/lib/tools/functions.mk
##
# @namespace tools
##
$(call craft.create_target,tools)

&tools:
	@$(call craft.warn_not_implemented)
	@echo "Sample function craft.tools.working_directory"
	@$(call craft.tools.working_directory)