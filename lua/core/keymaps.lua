-- Use comma as the <leader> key
vim.g.mapleader = ','

-- Visually indicate the current line we're on
vim.opt.cursorline = true

-- Enable default syntax highlighting
vim.opt.syntax = 'on'

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep at least 10 lines beneath the
-- cursor when scrolling through a file
vim.opt.scrolloff = 10

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Disable line wrapping
vim.opt.wrap = false

-- Set proper indentations
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Don't save swap files
-- This eliminates the errors you get
-- when you open the same file in two
-- different vim sessions
vim.opt.swapfile = false
vim.opt.backup = false

-- Allows undotree to save changes
-- so we can use the undo command for
-- the entire life of the file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Incrementally highlight your search terms
vim.opt.incsearch = true

-- Copy yanks to system clipboard
vim.opt.clipboard = 'unnamed'

-- Open :vsplit to the right
-- This is great for gd (go to defenition)
vim.opt.splitright = true

-- Exit insert mode with jj
-- I know, I'm old school 😅
vim.keymap.set('i', 'jj', '<esc>')

-- Save and close with ,w
vim.keymap.set('n', '<leader>w', ':w!<cr>')

-- Zoom a split window into a tab and or close it
-- This is great for when you run out of screen for your split
-- windows. It allows you to zoom in and out of a file.
vim.keymap.set('n', '<leader>zi', ':tabnew %<cr>')
vim.keymap.set('n', '<leader>zo', ':tabclose<cr>')

-- Toggle lsp virtual text on and off
-- Helpful when inline error message get noisy
vim.keymap.set('n', '<leader>tvt', '<Plug>(toggle-lsp-diag-vtext)')

-- Remove highlight after search with :H
vim.cmd [[command! H let @/=""]]

