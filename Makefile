.PHONY: OfrontPlus OMake

prepare:
	mkdir -p compiled

OfrontPlus:
	/usr/bin/env bash ./ofrontplus_init.sh

OMake:
	/usr/bin/env bash ./omake_init.sh

compile_modules:
	/usr/bin/env bash ./compile_modules.sh
