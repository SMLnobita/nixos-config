{ pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;

    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];

    fontconfig.defaultFonts = {
      monospace = [ "JetBrainsMono Nerd Font Mono" ];
    };
  };
}

