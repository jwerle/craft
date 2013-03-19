##
# @namespace clean
##
clean: clean.pre _clean clean.after
_clean: &clean


##
# @target &clean
#
# This is called when the target 'clean' is called.
# If it is not defined 
&clean:
	$(call utils.warn_not_implemented,clean)
	

##
# @hook pre-clean
#
# This is called before the clean target
##
clean.pre: pre-clean
pre-clean:
	$(call utils.not_implemented)


# @hook after-clean
#
# This is called after the clean target
##
clean.after: after-clean
after-clean:
	$(call utils.not_implemented)