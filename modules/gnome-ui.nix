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
          cursor-theme = "WhiteSur-cursors";
          icon-theme = "Dracula";
          gtk-theme = "Dracula";
        };

        "org/gnome/mutter" = {
          dynamic-workspaces = true;
          edge-tiling = true;
          center-new-windows = true;
          experimental-features = ["scale-monitor-framebuffer"];
        };

        "org/gnome/desktop/wm/preferences" = {
          button-layout = "appmenu:minimize,maximize,close";
        };
        "org/gnome/shell/extensions/user-theme" = {
          name = "Dracula";
        };
      };
    }
  ];
}
