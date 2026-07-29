{ pkgs, ... }:
{
  home.packages = with pkgs; [
    et
    adwaita-icon-theme # mouse cursor and icons
    android-tools
    exfatprogs
    gnome-themes-extra # dark adwaita theme
    helix
    libnotify
    nixd
    ookla-speedtest
    openvpn
  ];
}
