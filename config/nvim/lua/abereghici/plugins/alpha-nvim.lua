return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
  [[  _                         _     _      _      _           ]],
  [[| |__   ___ _ __ ___  __ _| |__ (_) ___(_)  __| | _____   __]],
  [[| '_ \ / _ | '__/ _ \/ _` | '_ \| |/ __| | / _` |/ _ \ \ / /]],
  [[| |_) |  __| | |  __| (_| | | | | | (__| || (_| |  __/\ V / ]],
  [[|_.__/ \___|_|  \___|\__, |_| |_|_|\___|_(_\__,_|\___| \_/  ]],
  [[                      |___/                                 ]]
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC pf", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC ps", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
