{ config, pkgs, lib, ... }:

let
  autoImport = import ../lib/auto-import.nix { inherit lib; };
in

{
  imports = autoImport ./. ./home.nix;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "fr";
  home.homeDirectory = "/home/fr";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

