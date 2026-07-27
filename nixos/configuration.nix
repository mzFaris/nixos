{ lib, ... }:

let
  inherit (builtins) filter;
  inherit (lib.filesystem) listFilesRecursive;
  inherit (lib.strings) hasSuffix;
in

{
  imports = filter (hasSuffix ".nix") (
    map toString (filter (p: p != ./configuration.nix) (listFilesRecursive ./.))
  );

  nixpkgs.config.allowUnfree = true;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "uzi"; # Define your hostname.

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Jakarta";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services = {
    desktopManager.plasma6.enable = true;
    displayManager.plasma-login-manager.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.fr = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ]; # Enable ‘sudo’ for the user.
  };

  system.stateVersion = "26.05"; # Did you read the comment?
}
