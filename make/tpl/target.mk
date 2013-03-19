.PHONY: $(1) $(1).boot _$(1) pre-$(1) $(1).pre after-$(1) $(1).after
##
# @target $target
#
# Entry for the $target target stack
##
$(1): $(1).boot pre-$(1) _$(1) after-$(1)


##
# @target $target.boot
#
# Entry for the $target target stack
##
$(1).boot: __craft_boot__


##
# @target _$target
#
# This is called when the target '$(1)' is called.
##
_$(1): &$(1)


##
# @hook pre-$target
#
# This is called before the $target target
##
pre-$(1): $(1).pre


##
# @hook test-$target
#
# Test target for $target
##
test-$(1): $(1).test


##
# @hook after-$target
#
# This is called after the $target target
##
after-$(1): $(1).after

$(call craft.define_usage,$(1))