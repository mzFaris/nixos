{ ... }:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake '/etc/nixos#uzi'";
      commit-rebuild = "git add -A && git commit -m '.' && rebuild";
    };
  };
}
