#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function _mypwd_print_lang

	__fishline_segment 40A33F FFF
	printf "$argv[1]"

end

function _mypwd_print_proj

	__fishline_segment 171818 40A33F
	printf "$argv[1]"

end

function __flseg_mypwd

	set -l pwd 		(echo $PWD | sed -E "s|^$PROJECTS|#|;s|^$HOME|~|;s|/?(\.?[^/])[^/]*/|\1"\u1F"|g" | tr \u1F '\n')
	set -l it 		1
	set -l len 		(count $pwd)

	if [ "$pwd[1]" = "#" ]
		if [ 2 -le $len ]
			set -l mypwd (echo $PWD | sed -E "s|^$PROJECTS|#|;s|^$HOME|~|g" | tr "/" '\n')
			if [ 3 -le $len ]
				_mypwd_print_lang "$mypwd[2]"
				_mypwd_print_proj "$mypwd[3]"
				__flseg_n
				_mypwd_print_lang "~"
				set it 4
			else
				_mypwd_print_lang "$mypwd[2]"
				set it 3
			end
		else if [ 1 -le $len ]
			_mypwd_print_lang "</>"
			set it 2
		end
	else if [ "$pwd[1]" = "~" ]
		__fishline_segment $FLCLR_PWD_BG_HOME $FLCLR_PWD_FG_HOME
		printf "~"
		set it 2
	end

	if [ $it -le $len ]

		__fishline_segment $FLCLR_PWD_BG $FLCLR_PWD_FG

		for f in $pwd[$it..$len]
			set it (expr $it + 1)
			if test $it -le $len
				printf $f$FLSYM_SEPARATOR
			else
				printf $f
			end
		end

	end

end
