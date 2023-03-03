#!/bin/bash

source ~/.tmux_libs/util.tmux

fg_light_gray="#c5cdd9"
fg_dark_gray="#2b2d37"
bg_dark_gray="#333644"
bg_blue_gray="#404455"
blue="#6cb6eb"


tmux_set "status-justify" "centre"
tmux_set "status" "on"
tmux_set "status-left-style" "none"
tmux_set "message-command-style" "fg=$fg_light_gray,bg=$bg_blue_gray"
tmux_set "status-right-style" "none"
tmux_set "pane-active-border-style" "fg=$blue"
tmux_set "status-style" "none,bg=$bg_dark_gray"
tmux_set "message-style" "fg=$fg_light_gray,bg=$bg_blue_gray"
tmux_set "pane-border-style" "fg=$bg_blue_gray"

tmux_set "status-right-length" "100"
tmux_set "status-left-length" "100"
tmux_set "status-left" "#[fg=$fg_dark_gray,bg=$blue] #S #[fg=$blue,bg=$bg_blue_gray,nobold,nounderscore,noitalics]  #[fg=$bg_blue_gray,bg=$bg_dark_gray,nobold,nounderscore,noitalics]"
tmux_set "status-right" "#[fg=$bg_dark_gray,bg=$bg_dark_gray,nobold,nounderscore,noitalics]  #[fg=$fg_light_gray,bg=$bg_dark_gray] #[fg=$bg_blue_gray,bg=$bg_dark_gray,nobold,nounderscore,noitalics]#[fg=$fg_light_gray,bg=$bg_blue_gray] %R - %d/%m/%Y #[fg=$blue,bg=$bg_blue_gray,nobold,nounderscore,noitalics]#[fg=$fg_dark_gray,bg=$blue] #H #{prefix_highlight} "

tmux_setw "window-status-activity-style" "none,fg=$blue,bg=$bg_dark_gray"
tmux_setw "window-status-separator" ""
tmux_setw "window-status-style" "none,fg=$fg_light_gray,bg=$bg_dark_gray"
tmux_setw "window-status-format" "#[fg=$bg_dark_gray,bg=$bg_dark_gray,nobold,nounderscore,noitalics]#[fg=$fg_light_gray] #I #W #[fg=$bg_dark_gray,bg=$bg_dark_gray,nobold,nounderscore,noitalics]"
tmux_setw "window-status-current-format" "#[fg=$bg_dark_gray,bg=$bg_blue_gray,nobold,nounderscore,noitalics]#[fg=$fg_light_gray,bg=$bg_blue_gray]  #I #W #F #[fg=$bg_blue_gray,bg=$bg_dark_gray,nobold,nounderscore,noitalics]"
