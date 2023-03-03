#!/bin/bash
source ~/.tmux/util.tmux

# --> Catppuccin (Macchiato)
theme_bg="#282828"
theme_rosewater="#f4dbd6"
theme_flamingo="#f0c6c6"
theme_pink="#f5bde6"
theme_mauve="#c6a0f6"
theme_red="#ed8796"
theme_maroon="#ee99a0"
theme_peach="#f5a97f"
theme_yellow="#eed49f"
theme_green="#a6da95"
theme_teal="#8bd5ca"
theme_sky="#91d7e3"
theme_sapphire="#7dc4e4"
theme_blue="#8aadf4"
theme_lavender="#b7bdf8"
theme_text="#cad3f5"
theme_subtext0="#a5adcb"
theme_subtext1="#b8c0e0"
theme_overlay0="#6e738d"
theme_overlay1="#8087a2"
theme_overlay2="#939ab7"
theme_surface0="#363a4f"
theme_surface1="#494d64"
theme_surface2="#5b6078"
theme_base="#24273a"
theme_mantle="#1e2030"
theme_crust="#181926"

tmux_set "status" "on"
tmux_set "status-justify" "left"

tmux_set "status-left-length" "100"
tmux_set "status-right-length" "100"
tmux_set "status-right-attr" "none"

tmux_set "message-fg" "$theme_text"
tmux_set "message-bg" "$theme_bg"

tmux_set "message-command-fg" "$theme_text"
tmux_set "message-command-bg" "$theme_bg"

tmux_set "status-attr" "none"
tmux_set "status-left-attr" "none"

tmux_setw "window-status-fg" "$theme_bg"
tmux_setw "window-status-bg" "$theme_bg"
tmux_setw "window-status-attr" "none"

tmux_setw "window-status-activity-bg" "$theme_bg"
tmux_setw "window-status-activity-fg" "$theme_bg"
tmux_setw "window-status-activity-attr" "none"

tmux_setw "window-status-separator" ""

tmux_set "window-style" "fg=$theme_mantle"
tmux_set "window-active-style" "fg=$theme_text"

tmux_set "pane-border-fg" "$theme_text"
tmux_set "pane-border-bg" "$theme_bg"
tmux_set "pane-active-border-fg" "$theme_green"
tmux_set "pane-active-border-bg" "$theme_bg"

tmux_set "display-panes-active-colour" "$theme_yellow"
tmux_set "display-panes-colour" "$theme_blue"

tmux_set "status-bg" "$theme_bg"
tmux_set "status-fg" "$theme_text"

tmux_set "@prefix_highlight_fg" "$theme_bg"
tmux_set "@prefix_highlight_bg" "$theme_green"
tmux_set "@prefix_highlight_copy_mode_attr" "fg=$theme_bg,bg=$theme_green"

tmux_set "status-right" "#[fg=$theme_surface0,bg=$theme_bg]#[fg=$theme_text,bg=$theme_surface0,nounderscore,noitalics]  $time_format#[fg=$theme_surface0,bg=$theme_surface0] #[fg=$theme_green,bg=$theme_surface0,nobold,nounderscore,noitalics]#[fg=$theme_bg,bg=$theme_green,bold]  #h #[fg=$theme_yellow, bg=$theme_green]#[fg=$theme_red,bg=$theme_yellow]"
tmux_set "status-left" "#[fg=$theme_bg,bg=$theme_green,bold]  #S #{prefix_highlight}#[fg=$theme_green,bg=$theme_bg,nobold,nounderscore,noitalics] "

tmux_set "window-status-format" "#[fg=$theme_surface1,bg=$theme_bg]#[fg=$theme_text,bg=$theme_surface1]#I #[fg=$theme_text,bg=$theme_surface0] #W #[fg=$theme_surface0,bg=$theme_bg] "
tmux_set "window-status-current-format" "#[fg=$theme_red,bg=$theme_bg]#[fg=$theme_bg,bg=$theme_red]#I #[fg=$theme_text,bg=$theme_surface0] #W #[fg=$theme_surface0,bg=$theme_bg] "
