{ ... }:
{
  services = {
    gvfs.enable = false;
    physlock.enable = true;
    gnome.gnome-keyring.enable = true;
    playerctld.enable = true;
  };
}
