vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- buffer nav
vim.keymap.set("n", "<leader>l", vim.cmd.bnext)
vim.keymap.set("n", "<leader>h", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>d", vim.cmd.bd)

-- git
vim.keymap.set("n", "<leader>g", vim.cmd.Git)

-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

