{ ... }:
{
  security = {
    polkit.enable = true;

    pam.services = {
      greetd.enableGnomeKeyring = true;
      swaylock.enableGnomeKeyring = true;
    };
  };
}
