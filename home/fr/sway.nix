{ lib, ... }:
{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    config = rec {
      modifier = "Mod4";

      window.titlebar = false;

      gaps.inner = 3;

      defaultWorkspace = "workspace number 1";

      terminal = "kitty";

      output."*".bg = "${./wallpaper/davidcohen-EhSxbBCjr9A-unsplash.jpg} fill";

      input = {
        "type:pointer" = {
          accel_profile = "flat";
        };
        "type:touchpad" = {
          natural_scroll = "enabled";
          tap = "enabled";
        };
      };

      bars = [ ];

      keybindings = lib.mkOptionDefault {
        # Basics
        "${modifier}+q" = "kill";

        # Utilities / Special Keys
        "--locked XF86AudioMute" = "exec pactl set-sink-mute @DEFAULT_SINK@ toggle";
        "--locked XF86AudioLowerVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ -5%";
        "--locked XF86AudioRaiseVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ +5%";
        "--locked XF86AudioMicMute" = "exec pactl set-source-mute @DEFAULT_SOURCE@ toggle";

        "--locked XF86AudioPlay" = "exec playerctl play-pause";
        "--locked XF86AudioPause" = "exec playerctl play-pause";
        "--locked XF86AudioPrev" = "exec playerctl previous";
        "--locked XF86AudioNext" = "exec playerctl next";
        "--locked XF86AudioStop" = "exec playerctl stop";

        "--locked XF86MonBrightnessDown" = "exec brightnessctl set 5%-";
        "--locked XF86MonBrightnessUp" = "exec brightnessctl set 5%+";

        "Print" = "exec grim";
      };
    };
  };
}
