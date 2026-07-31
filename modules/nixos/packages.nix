{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      kitty
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      kdenlive
    ]);
}
