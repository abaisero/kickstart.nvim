return {
  'nvim-neorg/neorg',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-neorg/neorg-telescope',
  },
  lazy = false,
  version = '*',
  ft = 'norg',
  -- build = ':Neorg sync-parsers',
  config = true,
  opts = {
    load = {
      ['core.defaults'] = {},
      ['core.concealer'] = {},
      ['core.summary'] = {},
      ['core.dirman'] = {
        config = {
          workspaces = {
            main = '~/neorg',
            gtd = '~/gtd',
            default_workspace = 'main',
          },
        },
      },
      ['core.ui'] = {}, -- General UI improvements
    },
  },
}
