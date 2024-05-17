# .dotfiles
My own dotfiles for arch linux (btw) and plasma

## Installation

uhhhhh

***This will assume you use exactly what I use: Arch Linux, KDE Plasma, Kitty, yay etc***

1. get [powerlevel 10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#getting-started)
the instructions for this should be smthin like this:

    i. get these fonts:
        - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
        - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
        - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
        - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

    Note: The fonts are already added to the included kitty config file, you dont need to edit it yourself

    ii. Install powerlevel10k
    ```
    $ yay -S zsh-theme-powerlevel10k-git
    ```

2. Install synth-shell-prompt
```
$ yay -S synth-shell-prompt-git
```

3. Install fastfetch
```
# pacman -S fastfetch
```

4. Clone this repo
```
$ git clone https://github.com/ImPotassium/My.dotfiles.git
```

5. Use a graphacal file manager to move or symlink all needed files