require("conform").setup({
  formatters_by_ft = {
    go = { "gofumpt" },
    php = { "phpcbf" },
    html = { "prettierd" },
    python = { "black" }
  },
  format_on_save = {
    lsp_fallback = true,
  }
})

