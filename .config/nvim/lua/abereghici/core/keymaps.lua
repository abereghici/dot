-- set <space> as the leader key
-- note: must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move the visual selection down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- move the visual selection up
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- yank in the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- yank the entire line in the system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete without placing in system clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- scroll down and center the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- scroll up and center the cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- join the lines without losing cursor
vim.keymap.set("n", "J", "mzJ`z")

-- keep search matches in window center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- reload vim configuration
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so " .. vim.fn.stdpath("config") .. "/init.lua") 
end)
