# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Brag about my system when I open my terminal (bro microsoft copilot helped with this. bro it keeps surprising me)
case $(ps -o comm= -p $PPID) in
   'electron')
      # Config for any Electron terminals, mainly for VSCode
      fastfetch -c ~/.config/fastfetch/electron.jsonc
   ;;
   'yakuake')
      # Config for Yakuake
      fastfetch -c ~/.config/fastfetch/yakuake.jsonc
   ;;
   'kitty')
      # Config for Kitty
      fastfetch -c ~/.config/fastfetch/kitty.jsonc
   ;;
   'nvim')
      # Config for Neovim terminal
      fastfetch -c ~/.config/fastfetch/nvim.jsonc
   ;;
   'login')
      # Config for YTT3 terminal
      fastfetch -c ~/.config/fastfetch/ytt.jsonc
   ;;
   *)
      # Default config for everything else
      fastfetch
   ;;
esac

# Synth Shell Prompt 
if [ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/synth-shell-prompt.sh
fi

# Like idk i dont use bash. what does this mean, h-how did it get here?
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# Enable Atuin or smth
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

# Aliases
alias bye='shutdown now' # shuts down the system immediately
alias cat='bat' # muscle memory fix
alias fucking='sudo' # because funny
alias in='yay -S' # Installs (a) package(s) system and aur
alias ls='ls --color' # adds color to the ls command
alias lsa='ls -a --color' # makes it easier to use the ls -a command with color
alias un='yay -Rns' # uninstalls (a) package(s) and useless dependencies
alias up='yay -Syu' # update all packages system and aur
alias vim='nvim' # muscle memory fix