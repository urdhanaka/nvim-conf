require("lualine").setup {
  options = {
    section_separators = { left = "", right = "" },
    component_separators = { left = "|", right = "|" },
  },
  sections = {
    lualine_x = { 'filetype' },
    lualine_y = { '' }
  },
}
