-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local discipline = require("bereghicidev.discipline")
discipline.cowboy()

vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move visual selection up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy the word to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy the line to clipboard" })
vim.keymap.set(
  "n",
  "<leader>cR",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace under cursor" }
)

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines (cursor stationary)" })
