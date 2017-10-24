#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function gclone

	set -l _name (echo $argv[1] | rev | cut -d"/" -f1 | rev | cut -d"." -f1)

	git clone $argv[1]

	cd $_name

end
