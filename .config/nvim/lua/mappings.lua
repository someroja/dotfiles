vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<Leader>y", [["+y]])
vim.keymap.set("n", "<Leader>yy", [["+yy]])
vim.keymap.set("n", "<Leader>Y", [["+Y]])

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<Leader>p", [["+p]])
vim.keymap.set({ "n", "v" }, "<Leader>P", [["+P]])
