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

        # --- 1. CẤU HÌNH THỤT LỀ CƠ BẢN ---
        options = {
          autoindent = true; # Tự động lấy lề theo dòng phía trên
          smartindent = true; # Tự động lấy lề theo dòng phía trên
          shiftwidth = 2; # Độ rộng thụt lề là 4 khoảng trắng (chuẩn C)
          tabstop = 2; # Độ rộng của 1 phím Tab
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
        filetree.neo-tree.enable = true;
        autocomplete.nvim-cmp.enable = true;
        autopairs.nvim-autopairs.enable = true;

        # --- 2. CẤU HÌNH LSP & TỰ ĐỘNG FORMAT ---
        lsp = {
          enable = true;
          formatOnSave = true; # Tự động format code mỗi khi bạn lưu file (:w)
        };

        # --- 3. THỤT LỀ THÔNG MINH CHO DẤU {} ---
        treesitter = {
          indent.enable = true; # Nhận diện cú pháp để tự đẩy lề vào trong khi gõ enableTreesitter
          disable = ["nix"];
        };

        # --- 4. CẤU HÌNH NGÔN NGỮ (C/C++, Python, Nix) ---
        languages = {
          enableTreesitter = true;
          enableFormat = true; # Kích hoạt bộ format cho tất cả các ngôn ngữ bên dưới

          # Các ngôn ngữ được kích hoạt
          nix.enable = true;
          clang.enable = true; # Phụ trách hỗ trợ lập trình C/C++ và tự dùng clang-format
          python.enable = true;
        };
      };
    };
  };
}
