##
# @namespace install
##
install: install.pre _install install.after
_install: &install


##
# @target &install
#
# This is called when the target 'install' is called.
# If it is not defined 
&install:
	$(call utils.warn_not_implemented,install)
	

##
# @hook pre-install
#
# This is called before the install target
##
install.pre: pre-install
pre-install:
	$(call utils.not_implemented)


# @hook after-install
#
# This is called after the install target
##
install.after: after-install
after-install:
	$(call utils.not_implemented)