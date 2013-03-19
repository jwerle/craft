## core
-include make/lib/Makefile

ifndef (CRAFT)
install-craft:
	@echo "Fetching Craft.."
	@git clone git@github.com:jwerle/craft.git
	@echo "Creating make/ directory//"
	@mkdir make
	@echo "Installing Craft.."
	@cp -rf craft/make/* make/
	@echo "Good to go!"
endif

##
# @target &clean
#
# This is called when the target 'clean' is called.
&clean:
	$(call craft.warn_not_implemented,clean)


##
# @target &build
#
# This is called when the target 'build' is called.
&build:
	$(call craft.warn_not_implemented,build)


##
# @target &install
#
# This is called when the target 'install' is called.
&install:
	$(call craft.warn_not_implemented,install)


##
# @target &test
#
# This is called when the target 'test' is called.
&test:
	$(call craft.warn_not_implemented,test)