{ pkgs, ... }:
{
  home.packages = with pkgs; [
    rofi
    kitty
    adwaita-icon-theme # mouse cursor and icons
    gnome-themes-extra # dark adwaita theme
  ];
}
