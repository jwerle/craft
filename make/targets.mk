##
# This is set of all of the built in automatic targets. All are
# commented out due to the nature of the target itself. You should
# add all generic targets here unless otherwise declared
##

##
# The prerequisites of the special target .PHONY are considered to be phony targets. 
# When it is time to consider such a target, make will run its recipe unconditionally, 
# regardless of whether a file with that name exists or what its last-modification time is. 
# See Phony Targets (http://www.gnu.org/software/make/manual/make.html#Phony-Targets)
#
# NOTE: Uncomment to use
##
#.PHONY:


##
# The prerequisites of the special target .SUFFIXES are the list of suffixes to be used in
# checking for suffix rules. See Old-Fashioned Suffix Rules (http://www.gnu.org/software/make/manual/make.html#Suffix-Rules)
#
# NOTE: Uncomment to use
##
#.SUFFIXES:


##
# The recipe specified for .DEFAULT is used for any target for which no rules are found
# (either explicit rules or implicit rules). See Last Resort (http://www.gnu.org/software/make/manual/make.html#Last-Resort)
# . If a .DEFAULT recipe is specified, every file mentioned as a prerequisite, but not as a target in a rule, will 
# have that recipe executed on its behalf. See Implicit Rule Search Algorithm (http://www.gnu.org/software/make/manual/make.html#Implicit-Rule-Search) 
#
# NOTE: Uncomment to use
##
#.DEFAULT:


##
# The targets which .PRECIOUS depends on are given the following special treatment: if make is
# killed or interrupted during the execution of their recipes, the target is not deleted. 
# See Interrupting or Killing make. Also, if the target is an intermediate file, it will not 
# be deleted after it is no longer needed, as is normally done. See Chains of Implicit Rules. 
# In this latter respect it overlaps with the .SECONDARY special target.
# 
# You can also list the target pattern of an implicit rule (such as ‘%.o’) as a prerequisite file 
# of the special target .PRECIOUS to preserve intermediate files created by rules whose target 
# patterns match that file's name.
#
# NOTE: Uncomment to use
##
#.PRECIOUS:


##
# The targets which .INTERMEDIATE depends on are treated as intermediate files. See Chains of Implicit
# Rules. .INTERMEDIATE with no prerequisites has no effect.
#
# NOTE: Uncomment to use
##
#.INTERMEDIATE:


##
# The targets which .SECONDARY depends on are treated as intermediate files, except that they are
# never automatically deleted. See Chains of Implicit Rules.
#
# .SECONDARY with no prerequisites causes all targets to be treated as secondary (i.e., no target 
# is removed because it is considered intermediate).
#
# NOTE: Uncomment to use
##
#.SECONDARY:


##
# If .SECONDEXPANSION is mentioned as a target anywhere in the makefile, then all prerequisite lists
# defined after it appears will be expanded a second time after all makefiles have been read in. 
# See Secondary Expansion
#
# NOTE: Uncomment to use
##
#.SECONDEXPANSION:


##
# If .DELETE_ON_ERROR is mentioned as a target anywhere in the makefile, then make will delete
# the target of a rule if it has changed and its recipe exits with a nonzero exit status, just 
# as it does when it receives a signal. See Errors in Recipes.
#
# NOTE: Uncomment to use
##
#.DELETE_ON_ERROR:


##
# If you specify prerequisites for .IGNORE, then make will ignore errors in execution of the
# recipe for those particular files. The recipe for .IGNORE (if any) is ignored.
# If mentioned as a target with no prerequisites, .IGNORE says to ignore errors in execution of 
# recipes for all files. This usage of ‘.IGNORE’ is supported only for historical compatibility. 
# Since this affects every recipe in the makefile, it is not very useful; we recommend you use 
# the more selective ways to ignore errors in specific recipes. See Errors in Recipes.
#
# NOTE: Uncomment to use
##
#.IGNORE:


##
# If you specify prerequisites for .LOW_RESOLUTION_TIME, make assumes that these files are created 
# by commands that generate low resolution time stamps. The recipe for the .LOW_RESOLUTION_TIME target are ignored.
# The high resolution file time stamps of many modern file systems lessen the chance of make incorrectly 
# concluding that a file is up to date. Unfortunately, some hosts do not provide a way to set a high resolution 
# file time stamp, so commands like ‘cp -p’ that explicitly set a file's time stamp must discard its subsecond part. 
# If a file is created by such a command, you should list it as a prerequisite of .LOW_RESOLUTION_TIME so that make 
# does not mistakenly conclude that the file is out of date. For example:
#
#         .LOW_RESOLUTION_TIME: dst
#         dst: src
#                 cp -p src dst
# Since ‘cp -p’ discards the subsecond part of src's time stamp, dst is typically slightly older than src even when 
# it is up to date. The .LOW_RESOLUTION_TIME line causes make to consider dst to be up to date if its time stamp is 
# at the start of the same second that src's time stamp is in.
#
# Due to a limitation of the archive format, archive member time stamps are always low resolution. You need not list 
# archive members as prerequisites of .LOW_RESOLUTION_TIME, as make does this automatically.
#
# NOTE: Uncomment to use
##
#.LOW_RESOLUTION_TIME:


##
# If you specify prerequisites for .SILENT, then make will not print the recipe used to remake those particular files 
# before executing them. The recipe for .SILENT is ignored.
#
# If mentioned as a target with no prerequisites, .SILENT says not to print any recipes before executing them. This 
# usage of ‘.SILENT’ is supported only for historical compatibility. We recommend you use the more selective ways to 
# silence specific recipes. See Recipe Echoing. If you want to silence all recipes for a particular run of make, use 
# the ‘-s’ or ‘--silent’ option (see Options Summary).
#
# NOTE: Uncomment to use
##
#.SILENT:


##
# Simply by being mentioned as a target, this tells make to export all variables to child processes by default. 
# See Communicating Variables to a Sub-make.
#
# NOTE: Uncomment to use
##
#.EXPORT_ALL_VARIABLES:


##
# If .NOTPARALLEL is mentioned as a target, then this invocation of make will be run serially, even if the ‘-j’ 
# option is given. Any recursively invoked make command will still run recipes in parallel (unless its makefile 
# also contains this target). Any prerequisites on this target are ignored.
#
# NOTE: Uncomment to use
##
#.NOTPARALLEL:

##
# If .ONESHELL is mentioned as a target, then when a target is built all lines of the recipe will be given to a 
# single invocation of the shell rather than each line being invoked separately (see Recipe Execution).
#
# NOTE: Uncomment to use
##
#.ONESHELL:


##
# If .POSIX is mentioned as a target, then the makefile will be parsed and run in POSIX-conforming mode. This does 
# not mean that only POSIX-conforming makefiles will be accepted: all advanced GNU make features are still available. 
# Rather, this target causes make to behave as required by POSIX in those areas where make's default behavior differs.
#
# In particular, if this target is mentioned then recipes will be invoked as if the shell had been passed the -e flag: 
# the first failing command in a recipe will cause the recipe to fail immediately.
##
#.POSIX