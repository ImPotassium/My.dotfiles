#
# ~/.bashrc
#
neofetch
#
#
#
#
#
#Aliases
alias fucking='sudo' #because funny haha
alias un='yay -Rns' #uninstalls a package and useless dependencies
alias up='yay -Syu' #update all packages system and aur
alias bye='shutdown now' #shuts down the system immediately

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/Bam/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/Bam/.config/synth-shell/synth-shell-prompt.sh
fi
