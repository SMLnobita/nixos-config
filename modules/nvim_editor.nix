{ config, pkgs, ... }:

{
  programs.nvf = {
    enable = true;

    enableManpages = true;

    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        
        # Giao diện (Theme Catppuccin Mocha rất dịu mắt)
        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
        };
        clipboard = {
          enable = true;
          registers = "unnamedplus";
          providers.wl-copy.enable = true;
        };
        # Các tính năng cốt lõi (gần giống trải nghiệm LazyVim)
        statusline.lualine.enable = true; # Thanh trạng thái
        telescope.enable = true;          # Tìm kiếm file cực nhanh (dùng phím Space + f + f)
        filetree.neo-tree.enable = true;  # Cây thư mục bên trái
        
        # Bật gợi ý code (Autocomplete)
        autocomplete.nvim-cmp.enable = true;
        lsp.enable = true;        # Bật Language Server Protocol
        # Cấu hình ngôn ngữ lập trình
        languages = {
          enableTreesitter = true; # Bật highlight code thông minh
          
          # Kích hoạt các ngôn ngữ bạn cần
          nix.enable = true;
          clang.enable = true;
          python.enable = true;
        };

        # Bật tra cứu tài liệu nvf bằng lệnh man 5 nvf
      };
    };
  };
}
