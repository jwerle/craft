include make/lib/Makefile
include test/Makeconfig
## Create target interface
# app interface
$(call craft.create_target,app)

## pre interface now available
app.pre:
	@if [ craft.ME == "root" ]; then \
		echo "Cannot use as root"; \
		exit; \
	fi;

&app:
	@echo $(call utils.toUpperCase, "app")
	@echo $(CRAFT_TOP)

app.after: craft.noop

build.pre: craft.noop
build.after: craft.noop
&build:
	@echo "Working directory       : `pwd`"
	@echo "Project directory       : `pwd`/$(PROJECT_DIR)"
	@echo "Application directories : [$(APP_DIRS)]"
	$(call utils.fs.mkdirs,`pwd`/$(PROJECT_DIR),$(APP_DIRS))
	@echo "Built"