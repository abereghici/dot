return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        graphql = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              -- Ensure graphql files are detected in monorepos
              "package.json",
              ".git",
              ".graphqlrc*",
              ".graphql.config.*",
              "graphql.config.*"
            )(fname)
          end,
        },
      },
    },
  },
}
