{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs; [
    deno # required by lumeLand
    # python
    (python3.withPackages (
      ps: with ps; [
        black
      ]
    ))
    # haskell
    ghc
    stack
    # js
    nodejs
    nodePackages.typescript
  ];

  # Link original config files
  home.file = builtins.listToAttrs (
    map
      (file: {
        name = file;
        value.source = ./assets/${file};
      })
      [
        # config files here
        ".gitconfig"
        ".tmux.conf"
      ]
  );

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
