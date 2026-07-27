{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      brave
      exfatprogs
      helix
      kitty
      nixd
    ]
    ++ (with pkgs.kdePackages; [
      partitionmanager
    ]);
}
