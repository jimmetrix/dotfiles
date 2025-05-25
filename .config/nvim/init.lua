-- Terminal Colors
vim.opt.termguicolors = true

-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require 'configs.options'
require 'configs.keymaps'
require 'configs.autocommands'
require 'configs.bootstrap'
require 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
