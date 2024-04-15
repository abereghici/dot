local discipline = require("bereghicidev.discipline")

discipline.cowboy()

local keymap = vim.keymap

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move visual selections
keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move visual selection up" })
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down" })

-- Keep cursor centered
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center the cursor" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center the cursor" })

-- Center search matches
keymap.set("n", "n", "nzzzv", { desc = "Keep search matches in window center" })
keymap.set("n", "N", "Nzzzv", { desc = "Keep search matches in window center" })

-- window management
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>w<Up>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
keymap.set("n", "<leader>w<Down>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
keymap.set("n", "<leader>w<Right>", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
keymap.set("n", "<leader>w<Left>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })
