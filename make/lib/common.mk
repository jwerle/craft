## version
craft.version = $(echo CRAFT_VERSION)

## os
craft.OS = `uname`
craft.os:
	@echo $(craft.OS)

## snapshow of the user
craft.ME = `whoami`

## snapshot PATH
craft.PATH = `echo $PATH`

## timezone
craft.TZ = `echo $TZ`

## current project directory
craft.PROJECT_DIR = `pwd`

## user home directory
craft.HOME_DIR = `echo $HOME`