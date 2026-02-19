{
  config,
  lib,
  pkgs,
  ...
}: let
  light = ../wallpapers/light.png;
  dark = ../wallpapers/dark.jpg;
in {
  programs.dconf.enable = true;

  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/desktop/background" = {
          picture-uri = "file://${light}";
          picture-uri-dark = "file://${dark}";
          picture-options = "zoom";
          color-shading-type = "solid";
        };

        "org/gnome/desktop/screensaver" = {
          picture-uri = "file://${dark}";
        };

        "org/gnome/desktop/interface" = {
          enable-hot-corners = true;
          show-battery-percentage = true;
          clock-show-weekday = true;
          clock-show-seconds = false;
          enable-animations = true;
          gtk-enable-primary-paste = false;
        };

        "org/gnome/mutter" = {
          dynamic-workspaces = true;
          edge-tiling = true;
          center-new-windows = true;
          experimental-features = ["scale-monitor-framebuffer"];
        };

        "org/gnome/shell" = {
          disable-user-extensions = false;
          enabled-extensions = [
            "user-theme@gnome-shell-extensions.gcampax.github.com"
          ];
        };
      };
    }
  ];
}
