-- backup files
vim.opt.backupdir = vim.env.HOME .. '/.vim_backup//'
vim.opt.swapfile = false
vim.opt.undodir = vim.env.HOME .. '/.vim_undo//'

-- history and undo
vim.opt.history = 1000 -- vim-sensible
vim.opt.undolevels = 1000

-- cursor always in the middle of the screen
vim.opt.scrolloff = 999

-- line numbers
vim.opt.number = true

-- more natural split directions
vim.opt.splitbelow = true
vim.opt.splitright = true

-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldexpr = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

---- search options
vim.opt.wildmenu = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true -- vim-sensible
vim.opt.showmatch = true

-- expand tabs as white-spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

-- -- autocomplete
-- vim.opt.wildmode = 'longest:full,full'
-- vim.opt.completeopt = 'menu,menuone,noselect'
-- vim.opt.complete:remove 'i'

-- vim.g.latex_flavor = 'latex'
-- vim.g.python3_host_skip_check = 1
-- vim.g.python3_host_prog = vim.env.HOME .. '/venvs/vim/bin/python3'
