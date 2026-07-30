{ ... }:
{
  programs.waybar.settings = {
    mainBar = {
      # "layer": "top", // Waybar at top layer
      # "position": "bottom", // Waybar position (top|bottom|left|right)
      height = 30; # Waybar height (to be removed for auto height)
      # "width": 1280, // Waybar width
      spacing = 4; # Gaps between modules (4px)
      # Choose the order of the modules
      "modules-left" = [
        "sway/workspaces"
        "sway/mode"
        "sway/scratchpad"
        "custom/media"
      ];
      "modules-center" = [
        "sway/window"
      ];
      "modules-right" = [
        "mpd"
        "idle_inhibitor"
        "pulseaudio"
        "network"
        "power-profiles-daemon"
        "cpu"
        "memory"
        "temperature"
        "backlight"
        "keyboard-state"
        "sway/language"
        "battery"
        "battery#bat2"
        "clock"
        "tray"
        "custom/power"
      ];
      # Modules configuration
      # "sway/workspaces": {
      # "disable-scroll": true,
      # "all-outputs": true,
      # "warp-on-scroll": false,
      # "format": "{name}: {icon}",
      # "format-icons": {
      # "1": "\uF0440",
      # "2": "\uF09E8",
      # "3": "\uF0FA1",
      # "4": "\uF21BC",
      # "5": "\uF0275",
      # "urgent": "\uF046A",
      # "focused": "\uF0192",
      # "default": "\uF0111"
      # };
      # },
      "niri/workspaces" = {
        format = "{icon} {windows}";
        "format-window-separator" = " ";
        "window-rewrite-default" = "\uF059";
        "window-rewrite" = {
          "app_id<firefox>" = "\uF269";
          "app_id<dolphin>" = "\uF07C";
          "app_id<org.gnome.Nautilus>" = "\uF07C";
          "app_id<thunar>" = "\uF07C";
          "app_id<foot>" = "\uF120";
        };
        "format-icons" = {
          "1" = "1";
          "2" = "2";
          "3" = "3";
          "4" = "4";
          "5" = "5";
          active = "\uF192";
          default = "\uF111";
        };
      };
      "keyboard-state" = {
        numlock = true;
        capslock = true;
        format = "{name} {icon}";
        "format-icons" = {
          locked = "\uF023";
          unlocked = "\uF09C";
        };
      };
      "sway/mode" = {
        format = "<span style=\"italic\">{}</span>";
      };
      "sway/scratchpad" = {
        format = "{icon} {count}";
        "show-empty" = false;
        "format-icons" = [
          ""
          "\uF2D2"
        ];
        tooltip = true;
        "tooltip-format" = "{app}: {title}";
      };
      mpd = {
        format = "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) \u2B28{songPosition}|{queueLength}\u2B29 {volume}% \uF001";
        "format-disconnected" = "Disconnected \uF001";
        "format-stopped" = "{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped \uF001";
        "unknown-tag" = "N/A";
        interval = 5;
        "consume-icons" = {
          on = "\uF0C4 ";
        };
        "random-icons" = {
          off = "<span color=\"#f53c3c\">\uF074</span> ";
          on = "\uF074 ";
        };
        "repeat-icons" = {
          on = "\uF01E ";
        };
        "single-icons" = {
          on = "\uF01E1 ";
        };
        "state-icons" = {
          paused = "\uF04C";
          playing = "\uF04B";
        };
        "tooltip-format" = "MPD (connected)";
        "tooltip-format-disconnected" = "MPD (disconnected)";
      };
      idle_inhibitor = {
        format = "{icon}";
        "format-icons" = {
          activated = "\uF06E";
          deactivated = "\uF070";
        };
      };
      tray = {
        # "icon-size": 21,
        spacing = 10;
        # "icons": {
        # "blueman": "bluetooth",
        # "TelegramDesktop": "$HOME/.local/share/icons/hicolor/16x16/apps/telegram.png"
        # };
      };
      clock = {
        # "timezone": "America/New_York",
        "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        "format-alt" = "{:%Y-%m-%d}";
      };
      cpu = {
        format = "{usage}% \uF0DB";
        tooltip = false;
      };
      memory = {
        format = "{}% \uF0C9";
      };
      temperature = {
        # "thermal-zone": 2,
        # "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
        "critical-threshold" = 80;
        # "format-critical": "{temperatureC}\u00B0C {icon}",
        format = "{temperatureC}\u00B0C {icon}";
        "format-icons" = [
          "\uD800\uDE6C"
          "\uF2C9"
          "\uD800\uDE6A"
        ];
      };
      backlight = {
        # "device": "acpi_video1",
        format = "{percent}% {icon}";
        "format-icons" = [
          "\uE38D"
          "\uE3D3"
          "\uE3D1"
          "\uE3CF"
          "\uE3CE"
          "\uE3CD"
          "\uE3CA"
          "\uE3C8"
          "\uE39B"
        ];
      };
      battery = {
        states = {
          # "good": 95,
          warning = 30;
          critical = 15;
        };
        format = "{capacity}% {icon}";
        "format-full" = "{capacity}% {icon}";
        "format-charging" = "{capacity}% \uD800\uDCE8";
        "format-plugged" = "{capacity}% \uF1E6";
        "format-alt" = "{time} {icon}";
        # "format-good": "", // An empty format will hide the module
        # "format-full": "",
        "format-icons" = [
          "\uF244"
          "\uF243"
          "\uF242"
          "\uF241"
          "\uF240"
        ];
      };
      "battery#bat2" = {
        bat = "BAT2";
      };
      "power-profiles-daemon" = {
        format = "{icon}";
        "tooltip-format" =
          "Power profile: {profile}\nCPU driver: {cpu_driver}\nPlatform driver: {platform_driver}";
        tooltip = true;
        "format-icons" = {
          default = "\uF0E7";
          performance = "\uF0E7";
          balanced = "\uF24E";
          "power-saver" = "\uF06C";
        };
      };
      network = {
        # "interface": "wlp2*", // (Optional) To force the use of this interface
        "format-wifi" = "{essid} ({signalStrength}%) \uF1EB";
        "format-ethernet" = "{ipaddr}/{cidr} \uD800\uDE97";
        "tooltip-format" = "{ifname} via {gwaddr} \uD800\uDE97";
        "format-linked" = "{ifname} (No IP) \uD800\uDE97";
        "format-disconnected" = "Disconnected \u26A0";
        "format-alt" = "{ifname}: {ipaddr}/{cidr}";
      };
      pulseaudio = {
        # "scroll-step": 1, // %, can be a float
        format = "{volume}% {icon} {format_source}";
        "format-bluetooth" = "{volume}% {icon}\uF294 {format_source}";
        "format-bluetooth-muted" = "\uD800\uDD76 {icon}\uF294 {format_source}";
        "format-muted" = "\uD800\uDD76 {format_source}";
        "format-source" = "{volume}% \uF130";
        "format-source-muted" = "\uF131";
        "format-icons" = {
          headphone = "\uF025";
          "hands-free" = "\uD800\uDC91";
          headset = "\uD800\uDC91";
          phone = "\uF095";
          portable = "\uF095";
          car = "\uF1B9";
          default = [
            "\uF026"
            "\uF027"
            "\uF028"
          ];
        };
        "on-click" = "pavucontrol";
      };
      "custom/media" = {
        format = "{icon} {text}";
        "return-type" = "json";
        "max-length" = 40;
        "format-icons" = {
          spotify = "\uF1BC";
          default = "\uD83C\uDF9C";
        };
        escape = true;
        exec = "$HOME/.config/waybar/mediaplayer.py 2> /dev/null"; # Script in resources folder
        # "exec": "$HOME/.config/waybar/mediaplayer.py --player spotify 2> /dev/null" // Filter player based on name
      };
      "custom/power" = {
        format = "\u23FB ";
        tooltip = false;
        menu = "on-click";
        "menu-file" = "$HOME/.config/waybar/power_menu.xml"; # Menu file in resources folder
        "menu-actions" = {
          shutdown = "shutdown";
          reboot = "reboot";
          suspend = "systemctl suspend";
          hibernate = "systemctl hibernate";
        };
      };
    };
  };
}
