##
# @namespace test
##
test: test.pre _test test.after
_test: &test


##
# @target &test
#
# This is called when the target 'test' is called.
# If it is not defined 
&test:
	$(call utils.warn_not_implemented,test)
	

##
# @hook pre-test
#
# This is called before the test target
##
test.pre: pre-test
pre-test:
	$(call utils.not_implemented)


# @hook after-test
#
# This is called after the test target
##
test.after: after-test
after-test:
	$(call utils.not_implemented)