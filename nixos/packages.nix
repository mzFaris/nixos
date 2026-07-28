{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      android-tools
      brave
      discord
      exfatprogs
      fastfetch
      fd
      helix
      libreoffice-qt
      mako
      nixd
      ookla-speedtest
      openvpn
      wl-clipboard
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
