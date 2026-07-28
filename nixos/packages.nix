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
      nixd
      ookla-speedtest
      openvpn
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
