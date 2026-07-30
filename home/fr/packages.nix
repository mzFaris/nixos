{ pkgs, ... }:
{
  home.packages = with pkgs; [
    adwaita-icon-theme # mouse cursor and icons
    ansible
    et
    exfatprogs
    gnome-themes-extra # dark adwaita theme
    helix
    libnotify
    moc
    nixd
    ookla-speedtest
    openvpn
  ];
}
