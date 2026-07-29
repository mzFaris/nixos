{ pkgs, ... }:
{
  environment.systemPackages =
    with pkgs;
    [
      nemo-with-extensions
      trashy
      brave
      discord
    ]
    ++ (with pkgs.kdePackages; [
      francis
      kdenlive
    ]);
}
