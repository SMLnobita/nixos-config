{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    gnomeExtensions.user-themes
  ];

  systemd.user.services.enable-user-theme = {
    description = "Enable GNOME User Themes extension";
    wantedBy = ["default.target"];
    after = ["graphical-session.target"];

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.gnome-shell}/bin/gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com";
    };
  };
}
