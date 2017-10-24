#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

# Color for PWD and FULLPWD segment
set FLCLR_PWD_BG            171818
set FLCLR_PWD_FG            00BCD4
set FLCLR_PWD_BG_HOME       $FLCLR_PWD_FG
set FLCLR_PWD_FG_HOME       $FLCLR_PWD_BG
set FLCLR_FULLPWD_BG		$FLCLR_PWD_BG
set FLCLR_FULLPWD_FG		$FLCLR_PWD_FG

# Color for STATUS segment
set FLCLR_STATUS_BG				C2185B
set FLCLR_STATUS_FG				normal

# Color for WRITE segment
set FLCLR_WRITE_BG				D32F2F
set FLCLR_WRITE_FG				normal

# Color for ARROW  segment
set FLCLR_ARROW_BG				444
set FLCLR_ARROW_FG				normal

# Color for ROOT segment
set FLCLR_ROOT_BG_USER      444
set FLCLR_ROOT_FG_USER      normal
set FLCLR_ROOT_BG_ROOT      red
set FLCLR_ROOT_FG_ROOT      normal

# Color for VFISH  segment
set FLCLR_VFISH_BG				green
set FLCLR_VFISH_FG				black

# Color for GIT segment
set FLCLR_GIT_BG_CLEAN			8BC34A
set FLCLR_GIT_FG_CLEAN			black
set FLCLR_GIT_BG_DIRTY			7B1FA2
set FLCLR_GIT_FG_DIRTY			white
set FLCLR_GIT_BG_DETACHED   	800
set FLCLR_GIT_FG_DETACHED   	white

# Color for CLOCK segment
set FLCLR_CLOCK_BG				$FLCLR_PWD_FG
set FLCLR_CLOCK_FG				black

# Color for USERHOST segment
set FLCLR_USERHOST_BG			$FLCLR_PWD_BG
set FLCLR_USERHOST_FG			2196F3
