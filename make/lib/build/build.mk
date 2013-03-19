##
# @namespace build
##
build: build.pre _build build.after
_build: &build


##
# @target &build
#
# This is called when the target 'build' is called.
# If it is not defined 
&build:
	$(call utils.warn_not_implemented,build)


##
# @hook pre-build
#
# This is called before the build target
##
build.pre: pre-build
pre-build:
	$(call utils.not_implemented)


# @hook after-build
#
# This is called after the build target
##
build.after: after-build
after-build:
	$(call utils.not_implemented)