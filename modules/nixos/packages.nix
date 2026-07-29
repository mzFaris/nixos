{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      gnome-clocks
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
