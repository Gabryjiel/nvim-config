return {
  {
    'folke/which-key.nvim',
    opts = {},
    config = function()
      local wk = require "which-key"

      wk.register {
        ['<leader>c'] = { name = '[c]ode', _ = 'which_key_ignore' },
        ['<leader>d'] = { name = '[d]ocument', _ = 'which_key_ignore' },
        ['<leader>g'] = { name = '[g]it', _ = 'which_key_ignore' },
        ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[r]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[s]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[w]orkspace', _ = 'which_key_ignore' },
        ['<leader>n'] = { name = "Package.json info" },
        ['<leader>ns'] = "Show dependency version",
        ['<leader>nc'] = "Hide dependency versions",
        ['<leader>nt'] = "Toggle depndecy versions",
        ['<leader>nu'] = "Update dependency on the line",
        ['<leader>nd'] = "Delete dependency on the line",
        ['<leader>ni'] = "Install a new dependency",
        ['<leader>np'] = "Install a different dependency version",
        ['<leader>f'] = { name = '[f]ormat & lint', _ = 'which_key_ignore' },
        ['<leader>fp'] = { '<Plug>(Prettier)', 'Format with Prettier' },
        ['<leader>fl'] = { function() vim.lsp.buf.format({ timeout_ms = 2000 }) end, 'Format buffer with LSPs' },
      }
    end,
  },
}
