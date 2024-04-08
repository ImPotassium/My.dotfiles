# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Bam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
#
neofetch
#
#
#
#
#
#Aliases
alias fucking='sudo' #because funny
alias un='yay -Rns' #uninstalls a package and useless dependencies
alias up='yay -Syu' #update all packages system and aur
alias bye='shutdown now' #shuts down the system immediately
#
#
#
eval "$(zoxide init --cmd cd zsh)"
#
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
