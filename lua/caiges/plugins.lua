local plugins = {
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "sainnhe/everforest",
  "fatih/vim-go",
  "t9md/vim-choosewin",
  "sainnhe/everforest",
  "ntpeters/vim-better-whitespace",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  "simrat39/rust-tools.nvim",
  "nvim-lua/popup.nvim",
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
  "nvim-telescope/telescope.nvim",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  "stevearc/conform.nvim",
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
}

return plugins
