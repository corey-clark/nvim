vim.g.mapleader = ','

vim.opt.cursorline = true
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true

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

vim.keymap.set('n', '<leader>tvt', '<Plug>(toggle-lsp-diag-vtext)')

-- Remove highlight after search with :H
vim.cmd [[command! H let @/=""]]

