#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

set -gx GBIN_PATHS		/usr/local/Cellar/coreutils/8.26/bin
set -gx DEV_PATHS		$PYENV_VIRTUALENV $PYENV $GOPATH/bin $GO_BIN $ANDROID_SDK $ANDROID_PLATFORM_TOOLS $ANDROID_TOOLS
set -gx SYS_PATHS		/usr/local/bin /usr/sbin /usr/bin /sbin /bin
set -gx fish_user_paths		$DEV_PATHS $SYS_PATHS $fish_user_paths
