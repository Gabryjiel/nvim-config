return {
  'tpope/vim-surround',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'ThePrimeagen/vim-be-good',
  'tpope/vim-sleuth',
  'mfussenegger/nvim-dap',
  'leoluz/nvim-dap-go',
  'rcarriga/nvim-dap-ui',

  'tpope/vim-unimpaired',
  'simrat39/rust-tools.nvim',
  {'prettier/vim-prettier', config = function ()
    vim.keymap.set('n', '<leader>p', '<nop>', {});
  end},

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
}
