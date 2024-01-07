local api = vim.api

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require('caiges.keybindings')
require('caiges.plugins.cmp')
require('caiges.plugins.conform')
require('caiges.plugins.neotree')
require('caiges.plugins.telescope')
require('caiges.lsp')
