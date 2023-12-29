local api = vim.api

-- Lazy Vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = require('caiges.plugins')

require('lazy').setup(plugins)
require('caiges')

-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not auto-select, nvim-cmp plugin will handle this for us.
vim.o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing extra messages when using completion
vim.opt.shortmess = vim.opt.shortmess + "c"

vim.cmd.syntax("on")
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd.colorscheme("everforest")

vim.opt.number = true

-- LSP config
vim.opt.signcolumn = "yes"

-- Open ctrl-p
api.nvim_set_keymap("n", "<C-p>", ":Files<CR>", {noremap = true})

-- Choosewin settings
api.nvim_set_keymap("n", "-", "<Plug>(choosewin)", {noremap = true})
vim.g.choosewin_overlay_module = true

-- nvim-tree settings
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()


-- Mason
-- require("mason").setup()
-- require("mason-lspconfig").setup()

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
--vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Format on save
--vim.api.nvim_exec(
--  [[
--augroup FormatAutogroup
--  autocmd!
--  autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.vue,*.html,*css,*json FormatWrite
--  autocmd BufWritePre *.rs lua vim.lsp.buf.format({ async = false })
--augroup END
--]],
--  true
--)
