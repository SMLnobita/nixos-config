{pkgs, ...}: let
  apple-fonts = pkgs.stdenvNoCC.mkDerivation {
    pname = "apple-fonts";
    version = "1.0";
    src = ./../fonts;

    dontBuild = true;

    installPhase = ''
      mkdir -p $out/share/fonts/opentype
      cp $src/*.otf $out/share/fonts/opentype/
    '';
  };
in {
  fonts = {
    fontDir.enable = true;

    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      apple-fonts
    ];

    fontconfig = {
      hinting.enable = false;
      antialias = true;
      subpixel.rgba = "rgb";
    };

    fontconfig.defaultFonts = {
      monospace = ["JetBrainsMono Nerd Font Mono:style=SemiBold"];
      sansSerif = ["SF Pro Text"];
      serif = ["SF Pro Text"];
    };
  };

  programs.dconf.enable = true;

  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/desktop/interface" = {
          font-name = "SF Pro Text 12";
          document-font-name = "SF Pro Text 12";
          monospace-font-name = "JetBrainsMono Nerd Font Mono, SemiBold 12";
          text-scaling-factor = 1.0;
        };

        "org/gnome/desktop/wm/preferences" = {
          titlebar-font = "SF Pro Text Semibold 12";
        };
      };
    }
  ];
}
