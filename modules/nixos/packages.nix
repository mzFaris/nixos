{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      networkmanagerapplet
      nemo-with-extensions
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      kdenlive
    ]);
}
