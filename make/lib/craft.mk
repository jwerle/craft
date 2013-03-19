CRAFT_VERSION = 0.0.1
CRAFT_TARGETS = `make craft.list`

.PHONY: no_targets__ list
##
# Hello message to the user :)
##
craft.hello = "Craft Makefile utiltity v$(CRAFT_VERSION)"
craft.hello:
	@echo "Hello"

craft.targets:
	echo $(sh -c "$(CRAFT_TARGETS)")

craft.no_targets__:
craft.list:
	@sh -c "$(MAKE) -p craft.no_targets__ | awk -F':' '/^[a-zA-Z0-9][^\$$#\/\\t=]*:([^=]|$$)/ {split(\$$1,A,/ /);for(i in A)print A[i]}' | grep -v '__\$$' | sort"

craft.test:
	echo $(CRAFT_TARGETS)

##
#	@func create_target
#
# Creates a taget and target interface
##
define craft.create_target
	$(eval include make/lib/target-template.mk)
endef