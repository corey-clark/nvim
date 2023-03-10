local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- Adds icons to git gutter - left of line numbers
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        -- warn = 'W',
        -- hint = 'H',
        -- info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  -- Use :vsplit to open new file when jumping to defenition
  vim.keymap.set('n', 'gd', ':vsplit | lua vim.lsp.buf.definition()<CR>', opts)
end)

lsp.setup()

-- Enable lsp virtual text
-- This will display error messages inline
vim.diagnostic.config({
    virtual_text = true,
})

