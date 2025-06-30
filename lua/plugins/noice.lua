return {
  "folke/noice.nvim",
  opts = {
    views = {
      mini = {
        timeout = 500, -- Messages disappear after 500ms (adjust as needed)
        size = {
          height = "auto",
          width = "auto",
          max_height = 3, -- Limit height to 3 lines
        },
        win_options = {
          winblend = 50, -- Make it more transparent
        },
      },
    },
    routes = {
      {
        filter = { event = "lsp", kind = "progress" },
        opts = { skip = true }, -- Skip LSP progress messages entirely
      },
      {
        filter = { event = "msg_show", kind = "" },
        view = "mini",
      },
    },
  },
}

