export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source global shell alias & variables files
[ -f "$XDG_CONFIG_HOME/shell/alias.sh" ] && source "$XDG_CONFIG_HOME/shell/alias.sh"
[ -f "$XDG_CONFIG_HOME/shell/vars.sh" ] && source "$XDG_CONFIG_HOME/shell/vars.sh"
[ -f "$XDG_CONFIG_HOME/zsh/hibob.zsh" ] && source "$XDG_CONFIG_HOME/zsh/hibob.zsh"

PS1="%n@%m %~ %# "

# Load Angular CLI autocompletion.
source <(ng completion script)

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s '\eh' "tmux-sessionizer -s 0\n"
bindkey -s '\et' "tmux-sessionizer -s 1\n"
bindkey -s '\en' "tmux-sessionizer -s 2\n"
bindkey -s '\es' "tmux-sessionizer -s 3\n"
