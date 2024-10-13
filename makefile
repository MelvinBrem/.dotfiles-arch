#!/usr/bin/env zsh

all:
	@stow --verbose --delete */
	@stow --verbose --restow --adopt git
	@stow --verbose --restow --adopt zsh
	@mkdir -p ~/.local/share/konsole/
	@ln -sf ~/.dotfiles-arch/konsole/* ~/.local/share/konsole/
	@ln -sf ~/.dotfiles-arch/lf/ ~/.config/
delete:
	@stow --verbose --delete */