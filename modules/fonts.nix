{pkgs, ...}: {
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      ubuntu-classic
    ];

    fontconfig.defaultFonts = {
      monospace = ["JetBrainsMono Nerd Font Mono"];
      sansSerif = ["Ubuntu"];
      serif = ["Ubuntu"];
    };
  };

  programs.dconf = {
    enable = true;
    profiles.user.databases = [
      {
        settings = {
          "org/gnome/desktop/interface" = {
            font-name = "Ubuntu 12";
            document-font-name = "Ubuntu 12";
            monospace-font-name = "JetBrainsMono Nerd Font Mono 12";
            text-scaling-factor = 1.0;
          };

          "org/gnome/desktop/wm/preferences" = {
            titlebar-font = "Ubuntu Bold 12";
          };
        };
      }
    ];
  };
}
