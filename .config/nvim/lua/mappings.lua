local map = vim.keymap.set

-- <Space> is the <Leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Copy to system clipboard
map({ "n", "v" }, "<Leader>y", [["+y]])
map("n", "<Leader>yy", [["+yy]])
map("n", "<Leader>Y", [["+Y]])

-- Paste from system clipboard
map({ "n", "v" }, "<Leader>p", [["+p]])
map({ "n", "v" }, "<Leader>P", [["+P]])
