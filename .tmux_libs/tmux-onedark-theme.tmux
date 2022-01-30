#!/bin/bash

source ~/.tmux_libs/util.tmux

onedark_black="#282c34"
onedark_blue="#61afef"
onedark_yellow="#e5c07b"
onedark_red="#e06c75"
onedark_white="#aab2bf"
onedark_green="#98c379"
onedark_visual_grey="#3e4452"
onedark_comment_grey="#5c6370"

tmux_set "status" "on"
tmux_set "status-justify" "left"

tmux_set "status-left-length" "100"
tmux_set "status-right-length" "100"
tmux_set "status-right-attr" "none"

tmux_set "message-fg" "$onedark_white"
tmux_set "message-bg" "$onedark_black"

tmux_set "message-command-fg" "$onedark_white"
tmux_set "message-command-bg" "$onedark_black"

tmux_set "status-attr" "none"
tmux_set "status-left-attr" "none"

tmux_setw "window-status-fg" "$onedark_black"
tmux_setw "window-status-bg" "$onedark_black"
tmux_setw "window-status-attr" "none"

tmux_setw "window-status-activity-bg" "$onedark_black"
tmux_setw "window-status-activity-fg" "$onedark_black"
tmux_setw "window-status-activity-attr" "none"

tmux_setw "window-status-separator" ""

tmux_set "window-style" "fg=$onedark_comment_grey"
tmux_set "window-active-style" "fg=$onedark_white"

tmux_set "pane-border-fg" "$onedark_white"
tmux_set "pane-border-bg" "$onedark_black"
tmux_set "pane-active-border-fg" "$onedark_green"
tmux_set "pane-active-border-bg" "$onedark_black"

tmux_set "display-panes-active-colour" "$onedark_yellow"
tmux_set "display-panes-colour" "$onedark_blue"

tmux_set "status-bg" "$onedark_black"
tmux_set "status-fg" "$onedark_white"

tmux_set "@prefix_highlight_fg" "$onedark_black"
tmux_set "@prefix_highlight_bg" "$onedark_green"
tmux_set "@prefix_highlight_copy_mode_attr" "fg=$onedark_black,bg=$onedark_green"
tmux_set "@prefix_highlight_output_prefix" "  "

tmux_set "status-right" "#[fg=$onedark_white,bg=$onedark_black,nounderscore,noitalics]${time_format}  ${date_format} #[fg=$onedark_visual_grey,bg=$onedark_black]#[fg=$onedark_visual_grey,bg=$onedark_visual_grey] #[fg=$onedark_green,bg=$onedark_visual_grey,nobold,nounderscore,noitalics]#[fg=$onedark_black,bg=$onedark_green,bold] #h #[fg=$onedark_yellow, bg=$onedark_green]#[fg=$onedark_red,bg=$onedark_yellow]"
tmux_set "status-left" "#[fg=$onedark_black,bg=$onedark_green,bold] #S #{prefix_highlight}#[fg=$onedark_green,bg=$onedark_black,nobold,nounderscore,noitalics]"

tmux_set "window-status-format" "#[fg=$onedark_black,bg=$onedark_black,nobold,nounderscore,noitalics]#[fg=$onedark_white,bg=$onedark_black] #I  #W #[fg=$onedark_black,bg=$onedark_black,nobold,nounderscore,noitalics]"
tmux_set "window-status-current-format" "#[fg=$onedark_black,bg=$onedark_visual_grey,nobold,nounderscore,noitalics]#[fg=$onedark_white,bg=$onedark_visual_grey,nobold] #I  #W #[fg=$onedark_visual_grey,bg=$onedark_black,nobold,nounderscore,noitalics]"
