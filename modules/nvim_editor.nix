{ config, pkgs, ... }:

{
  programs.nvf = {
    enable = true;
    
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

        # Các tính năng cốt lõi (gần giống trải nghiệm LazyVim)
        statusline.lualine.enable = true; # Thanh trạng thái
        telescope.enable = true;          # Tìm kiếm file cực nhanh (dùng phím Space + f + f)
        filetree.neo-tree.enable = true;  # Cây thư mục bên trái
        
        # Bật gợi ý code (Autocomplete)
        autocomplete.nvim-cmp.enable = true;

        # Cấu hình ngôn ngữ lập trình
        languages = {
          enableLSP = true;        # Bật Language Server Protocol
          enableTreesitter = true; # Bật highlight code thông minh
          
          # Kích hoạt các ngôn ngữ bạn cần
          nix.enable = true;
          c.enable = true;
          python.enable = true;
        };

        # Bật tra cứu tài liệu nvf bằng lệnh man 5 nvf
        enableManpages = true;
      };
    };
  };
}
