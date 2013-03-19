.PHONY: $(1) _$(1) pre-$(1) $(1).pre after-$(1) $(1).after
##
# @target $target
#
# Entry for the $target target stack
##
$(1): pre-$(1) _$(1) after-$(1)


##
# @target &$target
#
# This is called when the target '$(1)' is called.
# If it is not defined a warning is thrown
##
_$(1): &$(1)


##
# @hook pre-$target
#
# This is called before the $target target
##     
pre-$(1): $(1).pre


#
##
# @hook after-$target
# This is called after the $target target
###     
after-$(1): $(1).after