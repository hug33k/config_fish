#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function cvrt

	if [ (count $argv) -eq 0 ]
		echo "Missing file name"
		false
	else if [ (count $argv) -eq 1 ]
		echo "Missing file extention"
		false
	else
		set -l _file (echo $argv[1] | sed -e 's/\.[^\.]*$//')
		convert $argv[1] "$_file.$argv[2]"
	end

end

