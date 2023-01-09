local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
      },
    },
  }
}


vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '<c-f>', builtin.find_files, {})

-- Search for a keyword like AG
-- You must install ripgrep for this function to work
-- brew install ripgrep
-- https://github.com/BurntSushi/ripgrep
vim.keymap.set('n', '<leader>Ag', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
