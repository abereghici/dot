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

    keymap.set("n", "<leader>hm", function() mark.add_file() end, { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>he", function() ui.toggle_quick_menu() end, { desc = "Open harpoon menu" })

    keymap.set("n", "<leader>hn", function() ui.nav_next() end, { desc = "Go to next harpoon mark" })
    keymap.set("n", "<leader>hp", function() ui.nav_prev() end, { desc = "Go to previous harpoon mark" })
  end,
}
