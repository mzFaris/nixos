{ ... }:
{
  users.users.fr = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
