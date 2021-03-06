#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

set -gx LESS_TERMCAP_mb (printf "\e[01;31m")      # begin blinking
set -gx LESS_TERMCAP_md (printf "\e[01;34m")      # begin bold
set -gx LESS_TERMCAP_me (printf "\e[0m")          # end mode
set -gx LESS_TERMCAP_se (printf "\e[0m")          # end standout-mode
set -gx LESS_TERMCAP_so (printf "\e[01;44;33m")   # begin standout-mode - info box
set -gx LESS_TERMCAP_ue (printf "\e[0m")          # end underline
set -gx LESS_TERMCAP_us (printf "\e[01;32m")      # begin underline
