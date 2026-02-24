-- exit insert mode
vim.keymap.set('i', 'kj', '<ESC>')

-- move across wrapped lines
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- move across panes
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- move across buffers
-- vim.keymap.set('n', '<C-i>', ':bp<CR>')
-- vim.keymap.set('n', '<C-o>', ':bn<CR>')
-- vim.keymap.set('n', 'H', ':bp<CR>')
-- vim.keymap.set('n', 'L', ':bn<CR>')
vim.keymap.set('n', 'H', '<cmd>BufferPrevious<cr>')
vim.keymap.set('n', 'L', '<cmd>BufferNext<cr>')
-- terminal bindings don't like shift+key combos by default
-- vim.keymap.set('n', '<C-S-h>', '<cmd>BufferMovePrevious<cr>')
-- vim.keymap.set('n', '<C-S-l>', '<cmd>BufferMoveNext<cr>')

-- move across quickfix list
vim.keymap.set('n', '<leader>p', ':cp<CR>')
vim.keymap.set('n', '<leader>n', ':cn<CR>')

-- harpoon
vim.keymap.set('n', '<leader>hh', function()
  require('harpoon.ui').toggle_quick_menu()
end)
vim.keymap.set('n', '<leader>ha', function()
  require('harpoon.mark').add_file()
end)
vim.keymap.set('n', '<leader>hd', function()
  require('harpoon.mark').rm_file()
end)
vim.keymap.set('n', '<leader>hc', function()
  require('harpoon.mark').clear_all()
end)
vim.keymap.set('n', '<leader>hn', function()
  require('harpoon.ui').nav_next()
end)
vim.keymap.set('n', '<leader>hp', function()
  require('harpoon.ui').nav_prev()
end)
-- -- " nmap <leader>h1 <cgd>lua require("harpoon.ui").nav_file(1)<CR>
-- -- " nmap <leader>h2 <cmd>lua require("harpoon.ui").nav_file(2)<CR>
-- -- " nmap <leader>h3 <cmd>lua require("harpoon.ui").nav_file(3)<CR>
-- -- " nmap <leader>h4 <cmd>lua require("harpoon.ui").nav_file(4)<CR>
vim.keymap.set('n', '<leader>h1', function()
  require('harpoon.term').gotoTerminal(1)
end)
vim.keymap.set('n', '<leader>h2', function()
  require('harpoon.term').gotoTerminal(2)
end)

-- lsp
-- map('n', '<leader>gd', vim.lsp.buf.definition, { silent = true, desc = "Go to definition" })
-- map('n', '<leader>gr', vim.lsp.buf.references, { silent = true, desc = "Go to references" })
vim.keymap.set('n', '<leader>gd', '<CMD>:Telescope lsp_definitions<CR>', { silent = true, desc = 'Go to definition' })
vim.keymap.set('n', '<leader>gr', '<CMD>:Telescope lsp_references<CR>', { silent = true, desc = 'Go to references' })
vim.keymap.set('n', 'K', function() vim.lsp.buf.hover { border = 'rounded' } end, { silent = true, desc = 'Show hover info' })
-- vim.keymap.set('n', 'F', vim.lsp.buf.format, { silent = true, desc = 'Run formatter' })

-- dap
vim.keymap.set('n', '<leader>db', function()
  require('dap').toggle_breakpoint()
end)
vim.keymap.set('n', '<leader>dc', function()
  require('dap').continue()
end)
vim.keymap.set('n', '<leader>ds', function()
  require('dap').step_over()
end)
vim.keymap.set('n', '<leader>di', function()
  require('dap').step_into()
end)
vim.keymap.set('n', '<leader>dr', function()
  require('osv').launch { port = 8086 }
end)
-- vim.keymap.set('n', '<leader>dr', function() require('osv').run_this() end)

-- move across diagnostics
vim.keymap.set('n', '<C-p>', vim.diagnostic.goto_prev, { silent = true, desc = 'Go to previous diagnostic' })
vim.keymap.set('n', '<C-n>', vim.diagnostic.goto_next, { silent = true, desc = 'Go to next diagnostic' })

-- neorg
vim.keymap.set('n', '<leader>nc', ':Neorg toggle-concealer<CR>')

-- oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- lazy
vim.keymap.set('n', '<leader>pi', '<CMD>:Lazy update<CR>', { silent = true })
vim.keymap.set('n', '<leader>pu', '<CMD>:Lazy update<CR>', { silent = true })
vim.keymap.set('n', '<leader>pc', '<CMD>:Lazy clean<CR>', { silent = true })

-- telescope
vim.keymap.set('n', '<leader>fb', '<CMD>:Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fc', '<CMD>:Telescope commands<CR>')
vim.keymap.set('n', '<leader>fd', '<CMD>:Telescope diagnostics<CR>')
vim.keymap.set('n', '<leader>ff', '<CMD>:Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<CMD>:Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fgit', '<CMD>:Telescope git_files<CR>')
vim.keymap.set('n', '<leader>fh', '<CMD>:Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>fk', '<CMD>:Telescope keymaps<CR>')
vim.keymap.set('n', '<leader>fl', '<CMD>:Telescope loclist<CR>')
vim.keymap.set('n', '<leader>flr', '<CMD>:Telescope lsp_references<CR>')
vim.keymap.set('n', '<leader>ftd', '<CMD>:TodoTelescope<CR>')
vim.keymap.set('n', '<leader>fq', '<CMD>:Telescope quickfix<CR>')

-- todo
vim.keymap.set('n', '<leader>tdq', '<CMD>:TodoQuickFix<CR>')
vim.keymap.set('n', '<leader>tdl', '<CMD>:TodoLocList<CR>')
vim.keymap.set('n', '<leader>tdt', '<CMD>:TodoTrouble<CR>')

-- barbar
vim.keymap.set('n', '<C-b>p', '<cmd>BufferPin<cr>')
vim.keymap.set('n', '<C-b>d', '<cmd>BufferDelete<cr>')

-- copilot
vim.g.copilot_no_tab_map = true
-- no idea why this only makes shift-enter work
vim.api.nvim_set_keymap('i', '<C-M>', 'copilot#Accept("<CR>")', { silent = true, expr = true, noremap = true })

-- local operate_tag = require("core.utils").operate_tag
-- map('n', '<leader>b', function() operate_tag(vim.fn.line('.'), 'breakpoint()  # XXX BREAKPOINT') end)

-- Function to toggle breakpoint on current line
local function toggle_breakpoint()
  local line = vim.api.nvim_get_current_line()
  local pos = vim.api.nvim_win_get_cursor(0)
  local row = pos[1]

  -- Check if current line has breakpoint
  if line:match 'breakpoint%(%)' then
    -- Remove the entire line if it only contains breakpoint
    if line:match '^%s*breakpoint%(%)%s*$' then
      vim.api.nvim_buf_set_lines(0, row - 1, row, false, {})
    else
      -- Just remove breakpoint() from the line
      local new_line = line:gsub('%s*breakpoint%(%)', '')
      vim.api.nvim_set_current_line(new_line)
    end
  else
    -- Add breakpoint on a new line above
    local indent = line:match '^(%s*)' or ''
    vim.api.nvim_buf_set_lines(0, row - 1, row - 1, false, { indent .. 'breakpoint()' })
    -- Move cursor back to original line (now one line down)
    vim.api.nvim_win_set_cursor(0, pos)
  end
end

-- Set keybinding
vim.keymap.set('n', '<leader>b', toggle_breakpoint, { desc = 'Toggle breakpoint' })
