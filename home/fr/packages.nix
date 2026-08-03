{ pkgs, ... }:
{
  home.packages = with pkgs; [
    marksman
    ansible
    et
    exfatprogs
    helix
    moc
    nixd
    ookla-speedtest
    openvpn
  ];
}
