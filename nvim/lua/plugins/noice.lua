return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.routes = opts.routes or {}

      table.insert(opts.routes, {
        filter = {
          any = {
            { find = "textDocument/inlayHint failed" },
            { find = "TypeScript Server Error %(5%.9%.3%)" },
            { find = "Node PropertyAccessExpression was unexpected" },
          },
        },
        opts = { skip = true },
      })
    end,
  },
}
