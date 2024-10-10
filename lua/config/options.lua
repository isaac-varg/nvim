vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

-- this is so that visual block mode can move beyond the line
vim.opt.virtualedit = "block"

-- when doing a command like /%s/x/y shows changes throughout entire file below
vim.opt.inccommand = "split"

-- ignore casing throughout editor, e.g., : complete
vim.opt.ignorecase = true

-- allow true color support of modern terminal emulators
vim.opt.termguicolors = true 

-- removes the default `~` used to show blank areas
vim.opt.fillchars = { eob = " " }

-- for nvchad/ui setup
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"
