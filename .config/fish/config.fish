if status is-interactive
    fzf --fish | source
    #oh-my-posh init fish --config ~/.config/ohmyposh/p10k.toml | source
    #zoxide init fish | source
    #starship init fish | source
end

#fish_config theme save "Catppuccin Macchiato"

# XDG Directories
set -xg XDG_CONFIG_HOME $HOME/.config
set -xg XDG_CACHE_HOME $HOME/.cache
set -xg XDG_DATA_HOME $HOME/.local/share
set -xg XDG_STATE_HOME $HOME/.local/state
set -xg XDG_BIN_HOME $HOME/.local/bin

# aliasis
alias ll='ls -l'
alias ls='eza --icons=auto --color=always'
alias tree='ls -a -T --git-ignore'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias vim=nvim
alias nvs=nvims
alias tmux='tmux -f ~/.tmux.conf'
alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'
alias commits='/Users/eyes/.scripts/git-commits.sh'
alias rain='unimatrix -n -s 96 -l 'o''
alias bonsai='cbonsai --seed 119 --live'

# Abbreviations
abbr -a g git
abbr -a d docker

# Starship
#export STARSHIP_CONFIG=~/.config/starship/starship.toml

# fish
#set -xg EDITOR nvim
set -gx BAT_THEME "Dracula"
set -U fish_greeting ""

# FZF
set -xg FZF_DEFAULT_COMMAND fd
set -xg FZF_DEFAULT_OPTS "--height=90% --layout=reverse --info=inline --border rounded --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--bind 'ctrl-u:preview-half-page-up'
--bind 'ctrl-d:preview-half-page-down'
--bind 'ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)'"
set -xg fzf_preview_dir_cmd eza --long --header --icons --all --color=always --group-directories-first --hyperlink
set -xg fzf_fd_opts --hidden --color=always
set -xg _ZO_FZF_OPTS $FZF_DEFAULT_OPTS '--preview "{$fzf_preview_dir_cmd} {2}"'

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
