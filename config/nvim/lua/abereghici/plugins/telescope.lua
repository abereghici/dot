return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<C-p>", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git project files" })
    keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>ps",
    function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end,
    { desc = "Find string under cursor in cwd" })
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "Lists available help tags and opens a new window with the relevant help info on <cr>"})
  end,
}
