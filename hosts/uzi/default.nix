{ lib, ... }:

let
  autoImport = import ../../lib/auto-import.nix { inherit lib; };
in

{
  imports =
    (autoImport ./. ./default.nix)
    ++ (autoImport ../../modules/nixos []);

  networking.hostName = "uzi";

  time.timeZone = "Asia/Jakarta";

  system.stateVersion = "26.05";
}
