##
# @namespace test
##
$(call craft.create_target,test)

test.pre:
ifeq ($(craft.isRoot), $(true))
	echo "root"
else
	echo $(craft.ME)
endif