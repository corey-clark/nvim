vim.g.mapleader = ','

vim.opt.cursorline = true
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = false


vim.keymap.set('i', 'jj', '<esc>')

-- Save and close with ,w
vim.keymap.set('n', '<leader>w', ':w!<cr>')

-- Yank from vim to clipboard
-- for some reason it doesn't copy
-- until the next key stroke 🤷
vim.keymap.set('n', '<leader>c', '"*y<cr>')


-- Zoom a split window into a tab and or close it
vim.keymap.set('n', '<leader>zi', ':tabnew %<cr>')
vim.keymap.set('n', '<leader>zo', ':tabclose<cr>')

-- Remove highlight after search with :H
vim.cmd [[command! H let @/=""]]

