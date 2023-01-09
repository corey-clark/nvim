local cmp = require('cmp')
local luasnip = require('luasnip')

-- custom mappings for lsp auto complete
-- this allows us to use tab for completion and jk vim bindings
-- to move around suggestion popup list

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

cmp.setup({
  mapping = {
     ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({select = true})
      elseif luasnip.jumpable(1) then
        luasnip.jump(1)
      elseif check_back_space() then
        fallback()
      else
        cmp.complete()
      end
    end, {'i', 's'}),
    ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
    ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'})
    }
})
