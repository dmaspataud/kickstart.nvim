return {
  'FabijanZulj/blame.nvim',
  event = 'VeryLazy',
  version = '*',
  opts = {},
  config = function()
    require('blame').setup {}
    vim.api.nvim_set_keymap('n', '<leader>gb', ':ToggleBlame virtual<CR>', { noremap = true, silent = true })
  end,
}
