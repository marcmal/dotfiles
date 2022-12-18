local M = {}

function M.configure()
  vim.cmd("set completeopt=menu,menuone,noselect")

  local cmp = require('cmp')
  local icons = require('util.icons')

  M.config = {
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    formatting = {
      fields = { "kind", "abbr", "menu" },
      max_width = 80,
      kind_icons = icons.kind,
      source_names = {
        nvim_lsp = "(LSP)",
        path = "(Path)",
        vsnip = "(Snippet)",
        luasnip = "(Snippet)",
        buffer = "(Buffer)",
        treesitter = "(TreeSitter)",
      },
      experimental = {
        ghost_text = false,
        native_menu = false,
      },
      duplicates = {
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
        luasnip = 1,
      },
      duplicates_default = 0,
      format = function(entry, vim_item)
        local max_width = M.config.formatting.max_width
        if max_width ~= 0 and #vim_item.abbr > max_width then
          vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 1) .. icons.ui.Ellipsis
        end

        vim_item.kind = M.config.formatting.kind_icons[vim_item.kind]
        vim_item.menu = M.config.formatting.source_names[entry.source.name]
        vim_item.dup = M.config.formatting.duplicates[entry.source.name] or M.config.formatting.duplicates_default
        return vim_item
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'nvim_lua' },
      { name = 'vsnip' },
      { name = 'buffer' },
      { name = 'path' }
    })
  }

  cmp.setup(M.config)
end

return M
