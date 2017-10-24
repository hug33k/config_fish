#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function flushdns

	dscacheutil -flushcache; sudo killall -HUP mDNSResponder

end