{ config, pkgs, lib, ... }:

let
  inherit (builtins) filter map toString;
  inherit (lib.filesystem) listFilesRecursive;
  inherit (lib.strings) hasSuffix;
in

{
  imports = filter (hasSuffix ".nix") (
    map toString (filter (p: p != ./home.nix) (listFilesRecursive ./.))
  );

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

