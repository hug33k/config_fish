#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function work_list

	set -l len (count $argv)

	set -l result (tree $PROJECTS -L 1 -i -d)
	set result $result[2..-3]

	if [ $len -eq 0 ]
		echo -e "Available languages :\n"
		for lang in $result
			set lang (echo $lang | cut -d" " -f1)
			echo $lang
		end
	else
		if [ (count $argv) -gt 1 ]
			echo "Too much arguments"
			false
		else
			if contains $argv[1] $result
				set result (tree $PROJECTS/$argv[1] -L 1 -i -d)
				set result $result[2..-3]
				echo -e "Available projects :\n"
				for proj in $result
					set proj (echo $proj | cut -d" " -f 1)
					echo $proj
				end
			else
				echo "Language not found"
				false
			end
		end
	end

end

function work

	set -l __project_location $PROJECTS
	set -l __location $__project_location

	set -l len (count $argv)

	if [ $len -eq 0 ]
		cd $__location
	else if [ $len -lt 4 ]
		if [ "$argv[1]" = "-l" ]
			if [ $len -eq 1 ]
				work_list
			else
				work_list $argv[2..-1]
			end
			true
		else if [ $len -lt 3 ]
			set -l lang $__project_location/$argv[1]
			if [ $len -eq 2 ]
				set -l proj $lang/$argv[2]
				set __location $proj
			else if [ $len -eq 1 ]
				set __location $lang
			end
			cd $__location
		end
	else
		false
	end

end
