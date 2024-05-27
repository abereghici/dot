return {
  {
    "garymjr/nvim-snippets",
    enabled = false, -- disable until all features are supported
    -- opts = {
    --   search_paths = {
    --     vim.fn.stdpath("config") .. "/snippets",
    --   },
    -- },
  },
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/snippets" } })
    end,
  },
}
