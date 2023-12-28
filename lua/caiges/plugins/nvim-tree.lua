local api = vim.api

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Open nvim-tree
api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true})

