{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      gnome-themes-extra
      kitty
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      kdenlive
    ]);
}
