{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      kdenlive
    ]);
}
