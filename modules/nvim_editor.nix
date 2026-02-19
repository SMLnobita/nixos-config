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
          indent = {
            enable = true;
          };
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

        # --- 5. GIAO DIỆN CHUẨN VSCODE ---

        # 5.1. Thanh Tab hiển thị các file đang mở ở trên cùng
        tabline.nvimBufferline.enable = true;

        # 5.2. Terminal tích hợp (Bấm phím Ctrl + \ để bật/tắt terminal ở dưới đáy)
        terminal.toggleterm = {
          enable = true;
          lazygit.enable = true; # Tích hợp thêm giao diện git xịn xò
        };

        # 5.3. Hiển thị vạch màu Git ở mép trái (báo hiệu dòng nào mới thêm/sửa/xóa)
        git.gitsigns.enable = true;

        # 5.4. Breadcrumbs (Thanh hiển thị tên hàm/class đang đứng ở trên đỉnh màn hình)
        ui.breadcrumbs = {
          enable = true;
          navbuddy.enable = true;
        };

        # 5.5. Kẻ đường chỉ dọc mờ mờ để dễ nhìn các khối { } (Indent guides)
        visuals.indent-blankline.enable = true;

        # 5.6. Màn hình Welcome khi vừa mở nvim lên (giống màn hình khởi động VSCode)
        dashboard.alpha.enable = true;
      };
    };
  };
}
