-- keymap
local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("Grep String > ") })
end, {})

-- setup
require("telescope").setup {
  defaults = {
    color_devicons = false,
  }
}
