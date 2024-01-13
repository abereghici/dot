return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    keymap.set("n", "<leader>a", function() mark.add_file() end, { desc = "Mark file with harpoon" })
    keymap.set("n", "<C-e>", function() ui.toggle_quick_menu() end, { desc = "Open harpoon menu" })
    keymap.set("n", "<C-[>", function() ui.nav_next() end, { noremap = true, silent = true, desc = "Go to next harpoon mark" })
    keymap.set("n", "<C-]>", function() ui.nav_prev() end, { noremap = true, silent = true, desc = "Go to previous harpoon mark" })
  end,
}
