-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local discipline = require("bereghicidev.discipline")
discipline.cowboy()

-- Move lines remap
vim.keymap.set("n", "<C-k>", "<A-k>", { remap = true })
vim.keymap.set("n", "<C-j>", "<A-j>", { remap = true })

vim.keymap.set("v", "<C-k>", "<A-k>", { remap = true })
vim.keymap.set("v", "<C-j>", "<A-j>", { remap = true })

vim.keymap.set("i", "<C-k>", "<A-k>", { remap = true })
vim.keymap.set("i", "<C-j>", "<A-j>", { remap = true })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines (cursor stationary)" })
