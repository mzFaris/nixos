{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      android-tools
      antigravity-cli
      brave
      exfatprogs
      fastfetch
      fd
      helix
      kitty
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
