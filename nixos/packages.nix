{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      brave
      discord
      libreoffice
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
