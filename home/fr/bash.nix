{ ... }:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      re = "sudo nixos-rebuild switch --flake '/etc/nixos#uzi'";
      ga = "git add -A";
      gc = "git commit -m .";
    };
  };
}
