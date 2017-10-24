#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

#test -e {$HOME}/.config/fish/.iterm2_shell_integration.fish ; and source {$HOME}/.config/fish/.iterm2_shell_integration.fish
setenv SWIFTENV_ROOT "$HOME/.swiftenv"
setenv PATH "$SWIFTENV_ROOT/bin" $PATH
status --is-interactive; and . (swiftenv init -|psub)
