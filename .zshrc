# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# where plugins are stored
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it isnt
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Load Zinit Plugins
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Powerlevel10k starting
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# The prompt config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybinds
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTFILE=~/.zsh_history
HISTSIZE=3000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory # share history through all active zsh sessions
setopt hist_ignore_space # command won't be added to the history if you begin with a space
setopt hist_save_no_dups # prevents duplicate commands from entering the history
setopt hist_ignore_dups # prevents duplicate commands from entering the history
setopt hist_find_no_dups # prevents duplicate commands from showing in the historical search

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)" # change zoxide's command to 'cd' instead of 'z'

# Brag about my system when I open my terminal
fastfetch

# Aliases
alias fucking='sudo' # because funny
alias in='yay -S' # Installs (a) package(s) system and aur
alias un='yay -Rns' # uninstalls a package and useless dependencies
alias up='yay -Syu' # update all packages system and aur
alias bye='shutdown now' # shuts down the system immediately
alias vim='nvim' # muscle memory fix
alias ls='ls --color' # adds color to the ls command