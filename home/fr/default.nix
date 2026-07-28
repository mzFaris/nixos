{
  pkgs,
  lib,
  ...
}:

let
  autoImport = import ../../lib/auto-import.nix { inherit lib; };
in

{
  imports = autoImport ./. ./default.nix;

  home = {
    pointerCursor = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
      size = 24;
      x11 = {
        enable = true;
        defaultCursor = "Adwaita";
      };

      sway.enable = true;
    };

    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    username = "fr";
    homeDirectory = "/home/fr";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "26.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
