return {
  "folke/snacks.nvim",

  opts = {
    picker = {
      enabled = true,
      sources = {
        explorer = {
          layout = { layout = { position = "right" } },
          win = {
            list = {},
            input = {},
          },
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
