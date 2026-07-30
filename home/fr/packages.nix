{ pkgs, ... }:
{
  home.packages = with pkgs; [
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
