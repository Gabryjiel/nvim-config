return {
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    lazy = false,
    dependencies = {
      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
    config = function()
      local cmp = require 'cmp'
      local types = require 'cmp.types'

      cmp.setup({
        enabled = true,
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'path' },
        }, {
          { name = 'buffer' },
        }),
        mapping = {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping(
            cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Insert,
              select = true
            }),
            { 'i', 'c' }
          ),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        },
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
        sorting = {
          priority_weight = 2,
          comparators = {
            cmp.config.compare.locality,
            cmp.config.compare.scopes,
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
          }
        },
        revision = 1,
        performance = {
          async_budget = 1,
          confirm_resolve_timeout = 80,
          debounce = 60,
          fetching_timeout = 500,
          max_view_entries = 200,
          throttle = 30,
        },
        view = {
          docs = {
            auto_open = true,
          },
          entries = {
            name = 'custom',
            selection_order = 'top_down',
          }
        },
        preselect = types.cmp.PreselectMode.Item,
        completion = {
          autocomplete = {
            types.cmp.TriggerEvent.TextChanged,
          },
          completeopt = 'menu,menuone,noselect',
          get_trigger_characters = function()
            return {}
          end,
          keyword_length = 1,
          keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
        },
        confirmation = {
          default_behavior = types.cmp.ConfirmBehavior.Insert,
          get_commit_characters = function(commit_characters)
            return commit_characters
          end
        },
        experimental = {
          ghost_text = false,
        },
        formatting = {
          expandable_indicator = true,
          fields = {
            types.cmp.ItemField.Abbr,
            types.cmp.ItemField.Kind,
            types.cmp.ItemField.Menu,
          },
          format = function(_, vim_item)
            return vim_item
          end
        },
        matching = {
          disallow_fuzzy_matching = false,
          disallow_fullfuzzy_matching = false,
          disallow_partial_fuzzy_matching = true,
          disallow_partial_matching = false,
          disallow_prefix_unmatching = false,
          disallow_symbol_nonprefix_matching = true,
        }
      })
    end,
  },
}
