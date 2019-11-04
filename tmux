# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
set -g prefix `
bind ` send-prefix
unbind C-b
# Activity monitoring
#setw -g monitor-activity on
#set -g visual-activity on

# Highlight active window
#set-window-option -g window-status-current-bg red

set -g default-terminal 'xterm-256color'
#"screen-256color"
#'rxvt-unicode'

# utf8 is on
#set -g utf8 on
#set -g status-utf8 on
set -g base-index 1
setw -g pane-base-index 1

# address vim mode switching delay (http://superuser.com/a/252717/65504)
set -s escape-time 0

# tmux messages are displayed for 4 seconds
#set -g display-time 4000

# refresh 'status-left' and 'status-right' more often
#set -g status-interval 5

# Highlight active pane
#set-option -g pane-active-border-style bold
set-option -g pane-active-border-bg blue
#set-option -g mouse on
set -g mouse off

#set-option -sg escape-time 11
#set -g mouse-resize-pane on
#set -g mouse-select-pane on
#set -g mouse-select-window on
set -g history-limit 10000
#set -g @plugin 'tmux-plugins/tpm'
#set -g @plugin 'tmux-plugins/tmux-sensible'
#set -g @plugin 'tmux-plugins/tmux-resurrect'
# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'
# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
#run '~/.tmux/plugins/tpm/tpm'
#set -g @resurrect-processes '~ssh psql mysql sqlite3'
bind-key j command-prompt -p "join pane from:"  "join-pane -s '%%'"
bind-key s command-prompt -p "send pane to:"  "join-pane -t '%%'"
bind | split-window -h
bind _ split-window
unbind '"'
unbind %
bind r source-file ~/.tmux.conf
set-option -g allow-rename off
#ipboard into tmux paste buffer
bind C-p run "tmux set-buffer \"$(xclip -o)\"; tmux paste-buffer"
# move tmux copy buffer into x clipboard
bind C-y run "tmux save-buffer - | xclip -i"
# # THEME
set -g window-status-separator ''
set -g status-bg colour240
set -g status-fg white
set -g window-status-current-bg colour240
set -g window-status-format ' #I:#W#F '
set -g window-status-current-fg white
set -g status-interval 1
set -g status-left-length 30
set -g status-left '#[bg=colour240]#[fg=white](#S) #(whoami)@#(hostname)  '
set -g status-right '#[default] #[fg=white]%H:%M:%S %D #[default]'

set copy-mode vi
setw -g mode-keys vi
#
# Use Alt-vim keys without prefix key to switch panes
bind -n M-h select-pane -L
bind -n M-j select-pane -D 
bind -n M-k select-pane -U
bind -n M-l select-pane -R

# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
