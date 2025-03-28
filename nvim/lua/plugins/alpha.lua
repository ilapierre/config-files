return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }

    dashboard.section.buttons.val = {
      -- dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      -- dashboard.button("SPC f f", "󰱼  Find file", ":Telescope find_files<CR>"),
      -- dashboard.button("SPC f r", "  Recent files", ":Telescope oldfiles<CR>"),
      -- dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    dashboard.section.footer.val = "Loaded ⚡"

    alpha.setup(dashboard.opts)
  end,
}
