{ pkgs, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      brightnessctl
      grim
      pulseaudio
      swayidle
      swaylock
      wmenu
      kitty
      adwaita-icon-theme # mouse cursor and icons
      gnome-themes-extra # dark adwaita theme
    ];
  };
}
