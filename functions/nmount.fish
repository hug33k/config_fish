#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function __nmount_usage

	echo "Usage : (u)nmount PARTITION

Available :
	server		Kimsufi server
/	freebox		Freebox hdd
/	nas			Home nas
/	dropbox		Dropbox account
/	drive		Google Drive account"

end

function __nmount_server

	sshfs -o reconnect root@hug33k.fr:/ ~/Server/ ^ /dev/null

	if [ $status -ne 0 ]
		echo "Already mounted"
	end

end

function __unmount_server

	umount -f ~/Server/ ^&1 | cat > /dev/null

	if [ $status -ne 0 ]
		echo "Already unmounted"
	end

end

function __nmount_freebox

	sshfs -o reconnect root@hug33k.fr:/ ~/Server/ ^ /dev/null

	if [ $status -ne 0 ]
		echo "Already mounted"
	end

end

function __unmount_freebox

	umount -f ~/Freebox/ ^&1 | cat > /dev/null

	if [ $status -ne 0 ]
		echo "Already unmounted"
	end

end

function nmount

	if [ (count $argv) -eq 1 ]
		switch $argv[1]
		case server
			__nmount_server
		case freebox
			__nmount_freebox
		case "*"
			__nmount_usage
		end
	else
		__nmount_usage
	end


end

function unmount

	if [ (count $argv) -eq 1 ]
		switch $argv[1]
		case server
			__unmount_server
		case freebox
			__unmount_freebox
		case "*"
			__nmount_usage
		end
	else
		__nmount_usage
	end

end

# ] ; and not set -q $argv[1] ; and test -d $__project_location$argv[1]; end