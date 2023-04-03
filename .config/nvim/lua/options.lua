vim.api.nvim_exec("language en_US", true)

local opt = vim.opt

opt.termguicolors = true
opt.background = "dark"

opt.laststatus = 3

opt.mouse = "a"

opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.number = true
opt.relativenumber = true
opt.scrolloff = 8

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

opt.swapfile = false
opt.backup = false
opt.undofile = false
