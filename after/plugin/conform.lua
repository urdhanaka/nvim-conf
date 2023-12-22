require("conform").setup({
  formatters_by_ft = {
    go = { "gofumpt" },
    php = { "phpcbf" },
    html = { "prettierd" },
    python = { "black" }
  },
})

