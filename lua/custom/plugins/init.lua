-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
}

-- return {
--   {
--     'lukas-reineke/indent-blankline.nvim',
--     main = 'ibl',
--     ---@module "ibl"
--     ---@type ibl.config
--     opts = {},
--     config = function(_, opts)
--       require('ibl').setup(opts)
--
--       local highlight = {
--         'RainbowRed',
--         'RainbowYellow',
--         'RainbowBlue',
--         'RainbowOrange',
--         'RainbowGreen',
--         'RainbowViolet',
--         'RainbowCyan',
--       }
--
--       -- create the highlight groups in the highlight setup hook, so they are reset
--       -- every time the colorscheme changes
--       require('ibl.hooks').register(hooks.type.HIGHLIGHT_SETUP, function()
--         vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
--         vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
--         vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
--         vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
--         vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
--         vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
--         vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
--       end)
--
--       vim.cmd [[highlight IndentBlanklineIndent1 guifg=#FDC9C9 gui=nocombine]]
--       vim.cmd [[highlight IndentBlanklineIndent2 guifg=#FFE7C9 gui=nocombine]]
--       vim.cmd [[highlight IndentBlanklineIndent3 guifg=#FFFAC9 gui=nocombine]]
--       vim.cmd [[highlight IndentBlanklineIndent4 guifg=#C9EFCB gui=nocombine]]
--       vim.cmd [[highlight IndentBlanklineIndent5 guifg=#C9F4FB gui=nocombine]]
--       vim.cmd [[highlight IndentBlanklineIndent6 guifg=#DBC9E9 gui=nocombine]]
--
--       vim.cmd [[highlight IndentContext1 guifg=#FDC9C9 gui=nocombine]]
--       vim.cmd [[highlight IndentContext2 guifg=#FFE7C9 gui=nocombine]]
--       vim.cmd [[highlight IndentContext3 guifg=#FFFAC9 gui=nocombine]]
--       vim.cmd [[highlight IndentContext4 guifg=#C9EFCB gui=nocombine]]
--       vim.cmd [[highlight IndentContext5 guifg=#C9F4FB gui=nocombine]]
--       vim.cmd [[highlight IndentContext6 guifg=#DBC9E9 gui=nocombine]]
--
--       require('ibl').update { highlight = highlight }
--     end,
--   },
-- }
