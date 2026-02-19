{
  config,
  pkgs,
  ...
}: {
  programs.nvf = {
    enable = true;
    enableManpages = true;

    settings.vim = {
      viAlias = true;
      vimAlias = true;

      # Leader là Space
      globals.mapleader = " ";

      options = {
        autoindent = true;
        smartindent = true;
        shiftwidth = 2;
        tabstop = 2;
        expandtab = true;
        number = true; # Hiện số dòng tuyệt đối
        relativenumber = true; # Hiện số dòng tương đối để nhảy nhanh
        signcolumn = "yes"; # Giữ chỗ cho icon lỗi/git
        wrap = false; # Không tự động xuống dòng tràn lề
      };

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

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;
      autopairs.nvim-autopairs.enable = true;
      dashboard.dashboard-nvim.enable = true;
      filetree.neo-tree.enable = true;
      tabline.nvimBufferline.enable = true;

      # Terminal + LazyGit
      terminal.toggleterm = {
        enable = true;
        lazygit.enable = true;
      };

      keymaps = [
        # Telescope & Filetree
        {
          key = "<leader><leader>";
          action = ":Telescope find_files<CR>";
          mode = "n";
        }
        {
          key = "<leader>e";
          action = ":Neotree toggle<CR>";
          mode = "n";
        }
        {
          key = "<leader>sg";
          action = ":Telescope live_grep<CR>";
          mode = "n";
        }
        {
          key = "<leader>fr";
          action = ":Telescope oldfiles<CR>";
          mode = "n";
        }

        # Cửa sổ (Windows)
        {
          key = "<leader>|";
          action = ":vsplit<CR>";
          mode = "n";
        }
        {
          key = "<leader>-";
          action = ":split<CR>";
          mode = "n";
        }
        {
          key = "<C-h>";
          action = "<C-w>h";
          mode = "n";
        }
        {
          key = "<C-j>";
          action = "<C-w>j";
          mode = "n";
        }
        {
          key = "<C-k>";
          action = "<C-w>k";
          mode = "n";
        }
        {
          key = "<C-l>";
          action = "<C-w>l";
          mode = "n";
        }

        # Buffers & Terminal
        {
          key = "<S-h>";
          action = ":bprevious<CR>";
          mode = "n";
        }
        {
          key = "<S-l>";
          action = ":bnext<CR>";
          mode = "n";
        }
        {
          key = "<leader>bd";
          action = ":bdelete<CR>";
          mode = "n";
        }
        {
          key = "<C-\\>";
          action = ":ToggleTerm<CR>";
          mode = "n";
        }
        {
          key = "<leader>gg";
          action = ":LazyGit<CR>";
          mode = "n";
        }
      ];

      lsp = {
        enable = true;
        formatOnSave = true;
      };

      treesitter.indent.enable = true;

      languages = {
        enableTreesitter = true;
        enableFormat = true;
        nix.enable = true;
        clang.enable = true;
        python.enable = true;
      };
    };
  };
}
