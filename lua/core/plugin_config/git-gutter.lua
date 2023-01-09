-- Change git gutter background color
vim.g.gitgutter_override_sign_column_highlight = 1

vim.cmd([[
  :highlight SignColumn guibg=bg
  :highlight SignColumn ctermbg=bg
]])

