#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function json

	python -m json.tool $argv

end