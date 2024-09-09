return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
      },
    },
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("live_grep_args")

      telescope.setup({
        extensions = {
          live_grep_args = {
            auto_quoting = true,
            theme = "dropdown",
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          },
          grep_string = {
            additional_args = { "--hidden" },
          },
          live_grep = {
            file_ignore_patterns = { ".git" },
            additional_args = { "--hidden" },
          },
        },
      })

      local live_grep_args = telescope.extensions.live_grep_args.live_grep_args

      local function search_files()
        live_grep_args()
      end

      local function search_tests()
        live_grep_args({
          additional_args = { "-ig", "*.test.*" },
        })
      end

      local function search_storybooks()
        live_grep_args({
          additional_args = { "-ig", "*.story.*" },
        })
      end

      local function search_gql()
        live_grep_args({
          additional_args = { "-tgraphql" },
        })
      end

      local function search_css()
        live_grep_args({
          additional_args = { "-tcss" },
        })
      end

      vim.keymap.set("n", "<leader>sff", search_files, { noremap = true, desc = "Filter with args" })
      vim.keymap.set("n", "<leader>sft", search_tests, { noremap = true, desc = "Tests" })
      vim.keymap.set("n", "<leader>sfs", search_storybooks, { noremap = true, desc = "Storybooks" })
      vim.keymap.set("n", "<leader>sfg", search_gql, { noremap = true, desc = "Graphql" })
      vim.keymap.set("n", "<leader>sfc", search_css, { noremap = true, desc = "CSS" })
    end,
    keys = {
      { "<leader>sf", "", desc = "+Filters", mode = { "n", "v" } },
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      { "<leader>/", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    },
  },
}
