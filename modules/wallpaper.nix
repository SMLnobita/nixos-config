{
  config,
  lib,
  pkgs,
  ...
}: let
  light = ../wallpapers/light.png;
  dark = ../wallpapers/dark.jpg;
in {
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
      };
    }
  ];
}
