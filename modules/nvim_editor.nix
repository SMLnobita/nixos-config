{
  config,
  pkgs,
  ...
}: {
  programs.nvf = {
    enable = true;
    enableManpages = true;

    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        # --- THIẾT LẬP PHÍM LEADER (Dấu cách) ---
        globals.mapleader = " ";

        # 1. CẤU HÌNH THỤT LỀ CƠ BẢN
        options = {
          autoindent = true;
          smartindent = true;
          shiftwidth = 2; # Độ rộng thụt lề chuẩn cho Nix
          tabstop = 2;
        };

        # Giao diện
        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
        };

        # Cấu hình Copy/Paste
        clipboard = {
          enable = true;
          registers = "unnamedplus";
          providers.wl-copy.enable = true;
        };

        # Các plugin giao diện & tiện ích
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        autopairs.nvim-autopairs.enable = true;
        dashboard.dashboard-nvim.enable = true;

        # --- CẤU HÌNH CÂY THƯ MỤC ---
        filetree.neo-tree.enable = true;

        # --- 5. THIẾT LẬP PHÍM TẮT (Keymaps) ---
        keymaps = [
          {
            key = "<leader><leader>";
            action = ":Telescope find_files<CR>";
            mode = "n";
            desc = "Tìm file nhanh (Space + Space)";
          }
          {
            key = "<leader>e";
            action = ":Neotree toggle<CR>";
            mode = "n";
            desc = "Bật/Tắt cây thư mục (Space + e)";
          }
        ];

        # 2. CẤU HÌNH LSP & TỰ ĐỘNG FORMAT
        lsp = {
          enable = true;
          formatOnSave = true;
        };

        # 3. THỤT LỀ THÔNG MINH CHO DẤU {}
        treesitter = {
          indent = {
            enable = true; # Viết dạng khối này để tránh lỗi merge option
          };
        };

        # 4. CẤU HÌNH NGÔN NGỮ (C/C++, Python, Nix)
        languages = {
          enableTreesitter = true;
          enableFormat = true;

          nix.enable = true;
          clang.enable = true;
          python.enable = true;
        };
      };
    };
  };
}
