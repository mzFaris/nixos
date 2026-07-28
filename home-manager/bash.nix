{ ... }:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake '/etc/nixos#uzi'";
      "git a" = "git add -A";
      "git c" = "git commit -m .";
    };
  };
}
