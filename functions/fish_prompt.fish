#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

set -l project

if echo (pwd) | grep -qEi "^/Users/$USER/Projects/"
    set  project (echo (pwd) | sed "s#^/Users/$USER/Projects/\\([^/]*\\).*#\\1#")
else
    set  project "Terminal"
end

#wakatime --write --plugin "fish-wakatime/0.0.1" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&

source $FLINE_PATH/init.fish
source $FLINE_PATH/themes/material_design.fish

function fish_prompt
	fishline -s $status mypwd write git n jobs clock status root
end
