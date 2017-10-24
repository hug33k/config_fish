#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function gush

	if [ (count $argv) -gt 1 ]

		git add $argv[2..-1]

		gommit $argv[1]

	end

	git push

end
