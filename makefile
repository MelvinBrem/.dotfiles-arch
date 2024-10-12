#!/usr/bin/env zsh

all:
	@stow --verbose --delete */
	@stow --verbose --restow --adopt git
	@stow --verbose --restow --adopt zsh
	@$(MAKE) link_konsole

delete:
	@stow --verbose --delete */

link_konsole:
	@mkdir -p ~/.local/share/konsole
	@ln -sf ~/.dotfiles-arch/konsole/* ~/.local/share/konsole/