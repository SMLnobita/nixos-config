{
  config,
  pkgs,
  ...
}: {
  programs.dconf.enable = true;

  programs.dconf.profiles.user.databases = [
    {
      settings = {
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
      };
    }
  ];
}
