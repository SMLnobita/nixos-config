{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.dconf.enable = true;

  services.desktopManager.gnome = {
    extraGSettingsOverridePackages = [
      pkgs.gsettings-desktop-schemas
    ];

    extraGSettingsOverrides = ''
      [org.gnome.desktop.background]
      picture-uri='file://${../Wallpapers/light.png}'
      picture-uri-dark='file://${../Wallpapers/dark.jpg}'
      picture-options='zoom'

      [org.gnome.desktop.screensaver]
      picture-uri='file://${../Wallpapers/dark.jpg}'
    '';
  };
}
