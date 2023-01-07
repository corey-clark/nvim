local builtin = require('telescope.builtin')


vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '<c-f>', builtin.find_files, {})

-- Search for a keyword like AG
-- You must install ripgrep for this function to work
-- https://github.com/BurntSushi/ripgrep
vim.keymap.set('n', '<leader>Ag', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
