Craft
=====
Craft is a super simple (maybe not needed?) Makefile framework. 
It is very basic and meant to keep your Makefile management organized.

--


## Setup
You will need to clone the repo first.
```sh
$ git clone git@github.com:jwerle/craft.git
```

Change into the direct
```sh
$ cd craft/
```

Copy the contents of the `make/` directory into your working application directory
```sh
$ cp -rf make/ path/to/app
```
*It is also recommended to copy the `Makefile` found in the root of the `craft/` directory.*

---


## Bundle
You can bundle Craft with your current make file like this.
```sh
install-craft:
  @echo "Fetching Craft.."
  @git clone git@github.com:jwerle/craft.git
  @echo "Creating make/ directory//"
  @mkdir make
  @echo "Installing Craft.."
  @cp -rf craft/make/* make/
  @echo "Good to go!"
```

---

## Usage
```sh
$ make
Craft Makefile utiltity v0.0.1
/Users/jwerle/test/craft

...

$ make craft.os
Darwin

...

$ make craft.me
jwerle

...

$ make craft.version
0.0.1
```

## Creating a target
For full use of the framework, may a call to `craft.create_target` passing in a target as an only argument.
```sh
##
# @target clean-update
##
$(call craft.create_target,clean-update)
```

After registering a target you will have three interface targets to implement, one a reference to the target
actually created. The reference to the target should be defined with the target name prefixed with a `&`.
```sh
&clean-update:
  @rm -rf ./tmp
  @rm -rt ./node_modules
  @rm -rf log/tmp
  @npm update .
  @rm -f npm-debug.log
  @echo "done"
```
This target will be invoked with the command `make clean-update` is called. A benefit to the inteface behind this
is the ablity to use the `pre` and `after` hooks of the target that are always called.

Here we can stop out app and stop our mongodb instance before the clean and update happens.
```sh
clean-update.pre:
  @npm stop
  @sudo service stop mongodb
```

After our `pre` hook has ran, the `clean-update` target will run and a provided `after` hook as well.
```sh
clean-update.after
  @mkdir ./tmp
  @sudo service start mongodb
  @npm start
```

Our `clean-update` target now has there parts of its operation and can operate accordingly.
```sh
$ make clean
Stopping app...
Stopping mongodb...
"done"
Starting mongodb...
Starting app...
```

---

## Why?
It started off as a hack and became fun so I thought I'd share it.

---

## License
MIT
  
