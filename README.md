# .dotfiles
My own dotfiles for arch linux (btw) and plasma

## Installation

uhhhhh

***This will assume you use exactly what I use: Arch Linux, KDE Plasma, Kitty, yay etc***

the instructions for this should be smthin like this:

1. install these fonts:
   - [MesloLGS NF Regular.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
   - [MesloLGS NF Bold.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
   - [MesloLGS NF Italic.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
   - [MesloLGS NF Bold Italic.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Note The fonts are already added to the included kitty config file, you dont need to edit it yourself

2. Install fastfetch
```bash
# pacman -S fastfetch
```

2. Install [zinit](https://github.com/zdharma-continuum/zinit?tab=readme-ov-file#automatic)
```bash
$ bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

3. Clone this repo
```bash
$ git clone https://github.com/ImPotassium/My.dotfiles.git
```

4. Use a graphacal file manager to move or symlink all needed files (idk the commands to move them :P)