require("conform").setup({
  formatters_by_ft = {
    go = { "gofumpt" },
  },
  format_on_save = {
    lsp_fallback = true,
  }
})
