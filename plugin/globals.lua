--g
----
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Set highlight on search

----
--wo
----
-- Make line numbers default
vim.wo.number = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
vim.wo.relativenumber = true
vim.wo.colorcolumn = "81"

----
--o
----
-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true


-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.o.hlsearch = false

vim.o.list = true
vim.o.listchars = 'eol:↵,trail:~,tab:> ,nbsp:o'

vim.cmd("highlight SpecialKey ctermbg=blue guibg=blue")
vim.cmd("highlight ExtraWhitespace ctermbg=red guibg=red")
vim.cmd("match ExtraWhitespace /\\s\\+$/")
----
--opt
----
vim.opt.scrolloff = 8

