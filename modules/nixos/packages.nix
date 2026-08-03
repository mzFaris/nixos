{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      libreoffice-qt
      gnome-themes-extra
      kitty
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
