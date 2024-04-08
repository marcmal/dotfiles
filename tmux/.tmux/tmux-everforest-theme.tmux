#!/bin/bash
source ~/.tmux/util.tmux

# EVERFOREST COLOR PALETTE
bg_dim="#232a2e"
bg0="#2d353b"
bg1="#343f44"
bg2="#3d484d"
bg3="#475258"
bg4="#4f585e"
bg5="#56635f"
bg_visual="#543a48"
bg_red="#514045"
bg_green="#425047"
bg_blue="#3a515d"
bg_yellow="#4d4c43"

fg0="#d3c6aa"
red="#e67e80"
orange="#e69875"
yellow="#dbbc7f"
green="#a7c080"
aqua="#83c092"
blue="#7fbbb3"
purple="#d699b6"
grey0="#7a8478"
grey1="#859289"
grey2="#9da9a0"
statusline1="#a7c080"
statusline2="#d3c6aa"
statusline3="#e67e80"

tmux_set "status" "on"
tmux_set "status-justify" "left"

tmux_set "status-left-length" "100"
tmux_set "status-right-length" "100"
tmux_set "status-right-attr" "none"

tmux_set "message-fg" "$fg0"
tmux_set "message-bg" "$bg0"

tmux_set "message-command-fg" "$fg0"
tmux_set "message-command-bg" "$bg0"

tmux_set "status-attr" "none"
tmux_set "status-left-attr" "none"

tmux_setw "window-status-fg" "$bg0"
tmux_setw "window-status-bg" "$bg0"
tmux_setw "window-status-attr" "none"

tmux_setw "window-status-activity-bg" "$bg0"
tmux_setw "window-status-activity-fg" "$bg0"
tmux_setw "window-status-activity-attr" "none"

tmux_setw "window-status-separator" ""

# tmux_set "window-style" "fg=$theme_mantle"
# tmux_set "window-active-style" "fg=$fg0"

tmux_set "pane-border-fg" "$fg0"
tmux_set "pane-border-bg" "$bg0"
tmux_set "pane-active-border-fg" "$green"
tmux_set "pane-active-border-bg" "$bg0"

tmux_set "display-panes-active-colour" "$yellow"
tmux_set "display-panes-colour" "$blue"

tmux_set "status-bg" "$bg0"
tmux_set "status-fg" "$fg0"

tmux_set "@prefix_highlight_fg" "$bg0"
tmux_set "@prefix_highlight_bg" "$green"
tmux_set "@prefix_highlight_copy_mode_attr" "fg=$bg0,bg=$green"

tmux_set "status-right" "#[fg=$bg2,bg=$bg0]#[fg=$fg0,bg=$bg2,nounderscore,noitalics]  $time_format#[fg=$bg2,bg=$bg2] #[fg=$green,bg=$bg2,nobold,nounderscore,noitalics]#[fg=$bg0,bg=$green,bold]  #h #[fg=$yellow, bg=$green]#[fg=$red,bg=$yellow]"
tmux_set "status-left" "#[fg=$bg0,bg=$green,bold]  #S #{prefix_highlight}#[fg=$green,bg=$bg0,nobold,nounderscore,noitalics] "

tmux_set "window-status-format" "#[fg=$bg1,bg=$bg0]#[fg=$fg0,bg=$bg1]#I #[fg=$fg0,bg=$bg2] #W #[fg=$bg2,bg=$bg0] "
tmux_set "window-status-current-format" "#[fg=$orange,bg=$bg0]#[fg=$bg0,bg=$orange]#I #[fg=$fg0,bg=$bg2] #W #[fg=$bg2,bg=$bg0] "
