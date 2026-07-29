{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      nemo-with-extensions
      gnome-clocks
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
