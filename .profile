if [ -e /home/makaso/.nix-profile/etc/profile.d/nix.sh ]; then . /home/makaso/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

function dotfiles-install {
   nix run $HOME/.nixpine switch -- --flake $HOME/.nixpine
   home-manager switch --flake "$HOME/.config/flake#$USER"
}
