#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function gommit

	if [ (count $argv) -gt 1 ]

		git commit -S -m $argv[1]

	else

		false

	end

end
