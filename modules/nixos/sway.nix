{ pkgs, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      wl-clipboard # Copy/Paste functionality.
      mako # Notification utility.
      brightnessctl
      foot
      grim
      pulseaudio
      swayidle
      swaylock
      wmenu
    ];
  };
}
