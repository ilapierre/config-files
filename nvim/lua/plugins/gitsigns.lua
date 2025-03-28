return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
      signcolumn = true,  -- Show symbols in the sign column
      numhl      = false, -- Or use line number highlight
      linehl     = false, -- Or highlight entire changed lines
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      current_line_blame = false, -- Enable later if you want
      current_line_blame_opts = {
        delay = 500,
        virt_text_pos = 'eol',
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        -- keymaps for hunk navigation
        vim.keymap.set("n", "]c", function() gs.next_hunk() end, { buffer = bufnr, desc = "Next hunk" })
        vim.keymap.set("n", "[c", function() gs.prev_hunk() end, { buffer = bufnr, desc = "Prev hunk" })

        -- staging/resetting hunks
        vim.keymap.set("n", "<leader>gs", gs.stage_hunk, { buffer = bufnr })
        vim.keymap.set("n", "<leader>gr", gs.reset_hunk, { buffer = bufnr })

        -- preview and blame
        vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr })
        vim.keymap.set("n", "<leader>gb", gs.blame_line, { buffer = bufnr })
      end
    })
  end,
}
