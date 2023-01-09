local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

-- Use j/k vim key bindings to scroll results list
-- Use <esc> to close preview window instead of
-- needing to exit insert mode first
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


-- Search for all git files - excludes node_modules
vim.keymap.set('n', '<c-p>', builtin.git_files, {})

-- Search for all files in the project
vim.keymap.set('n', '<c-f>', builtin.find_files, {})

-- Search for a keyword instead of file
-- You must install ripgrep for this function to work
-- brew install ripgrep
-- https://github.com/BurntSushi/ripgrep
vim.keymap.set('n', '<leader>Ag', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
