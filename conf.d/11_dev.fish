#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# Projects

set -gx PROJECTS		$HOME/Projects

# Android

set -U ANDROID_HOME		$HOME/Library/Android/sdk
set -U ANDROID_SDK		$ANDROID_HOME
set -U ANDROID_PLATFORM_TOOLS	$ANDROID_SDK/platform-tools
set -U ANDROID_TOOLS		$ANDROID_SDK/tools

# Golang

set -gx GOPATH			$HOME/.golang
set -gx GOROOT			/usr/local/opt/go/libexec
set -gx GO_BIN			$GOROOT/bin

# Python

set -gx PYENV			$HOME/.pyenv/shims
set -gx PYENV_VIRTUALENV	/usr/local/Cellar/pyenv-virtualenv/1.0.0/shims
set -gx PYENV_VIRTUALENV_INIT	1

# Qt

set -gx QT_BIN			$HOME/Applications/Qt5.5.0/5.5/clang_64/bin/
