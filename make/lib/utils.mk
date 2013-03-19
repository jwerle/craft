#####
### Sample Target (clean)
#				@namespace clean
#				
#				clean: clean.pre _clean clean.after
#				_clean: &clean
#
#
#					
#					@target &clean
#					This is called when the target 'clean' is called.
#					If it is not defined a warning is thrown
#
#	    		&clean:
# 				$$(call utils.warn_not_implemented,clean)
#			
#
#				
#				@hook pre-clean
#				This is called before the clean target
#				
#				clean.pre: pre-clean
#				pre-clean:
# 			$(call utils.not_implemented)
#
#
# 			@hook after-clean
#				This is called after the clean target
#				
#				clean.after: after-clean
#				after-clean:
#				$(call utils.not_implemented)
###
###

##
# @namespace utils
##

##
# @func not_implemented
#
# Does nothing
##
define utils.not_implemented
endef


##
# @func not_implemented
#
# Emits a make warning "Target not implemented"
##
define utils.warn_not_implemented
	@$(warning [NOT_IMPLEMENTED] => '$1 not implemented')
endef


define utils.isRoot
	"$(craft.ME)" == "root"
endef

define utils.toUpperCase
	`echo "$1" | tr [[:lower:]] [[:upper:]]`
endef

define utils.fs.mkdirs
	echo $2
	for d in $2; do (mkdir $1/$$d;); done
endef

define utils.forEach
	echo $i
	`for i in $1 do echo $dd; $(call $2, $dd;); done`
endef