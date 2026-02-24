return {
  'github/copilot.vim',
  lazy = false,
  event = 'VeryLazy',
  config = function()
    vim.g.copilot_no_tab_map = true -- Prevent conflicts with other mappings
    vim.cmd 'Copilot enable' -- Ensure Copilot starts
  end,
}
