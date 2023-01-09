vim.keymap.set('n', '<c-b>', ':NERDTreeToggle<cr>')
vim.keymap.set('n', '<c-v>', ':NERDTreeFind<cr>')

vim.g.NERDTreeShowHidden = 1

-- Close nerdtree when we open a file
vim.g.NERDTreeQuitOnOpen = 1
