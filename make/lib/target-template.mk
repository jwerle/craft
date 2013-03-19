##
# @target $target
#
# Entry for the $target target stack
##
$(1): $(1).pre _$(1) $(1).after


##
# @target &$target
#
# This is called when the target '$(1)' is called.
# If it is not defined a warning is thrown
#
# for warnings - $(call utils.warn_not_implemented,$(1))
##
_$(1): &$(1)


##
# @hook pre-$target
#
# This is called before the $target target
##        
$(1).pre: pre-$(1)
pre-$(1):
	$(call utils.not_implemented)


#
##
# @hook after-$target
# This is called after the $target target
###     
$(1).after: after-$(1)
#after-$(1):
	#$(call utils.not_implemented)