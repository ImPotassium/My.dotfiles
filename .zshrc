# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
#
fastfetch
#
#
#
#
#
#Aliases
alias fucking='sudo' #because funny
alias in='yay -S' #Installs (a) package(s) system and aur
alias un='yay -Rns' #uninstalls a package and useless dependencies
alias up='yay -Syu' #update all packages system and aur
alias bye='shutdown now' #shuts down the system immediately
#
#antigen stuff and the autosuggestions
source /usr/share/zsh/share/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen apply
#
#
eval "$(zoxide init --cmd cd zsh)"
#
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
