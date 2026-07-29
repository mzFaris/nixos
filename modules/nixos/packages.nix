{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      trashy
      gnome-clocks
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
