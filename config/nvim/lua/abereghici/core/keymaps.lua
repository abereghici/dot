local discipline = require("abereghici.utils.discipline")
discipline.cowboy()

local keymap = vim.keymap -- for conciseness

-- set <space> as the leader key
-- note: must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode with ctrl+c" })

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open explorer" })

keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move visual selection up" })
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down" })

keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy in the clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line in the clipboard" })
keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete without yank " })

keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center the cursor" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center the cursor" })

keymap.set("n", "J", "mzJ`z", { desc = "Join the lines without moving the cursor" })

keymap.set("n", "n", "nzzzv", { desc = "Keep search matches in window center" })
keymap.set("n", "N", "Nzzzv", { desc = "Keep search matches in window center" })

keymap.set("n", "<leader><leader>", function()
  vim.cmd("so " .. vim.fn.stdpath("config") .. "/init.lua") 
end, { desc = "Reload vim configuration" })
