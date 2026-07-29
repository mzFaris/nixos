{ ... }:
{
  security = {
    polkit.enable = true;
    soteria.enable = true;

    pam.services = {
      greetd.enableGnomeKeyring = true;
      swaylock.enableGnomeKeyring = true;
    };
  };
}
