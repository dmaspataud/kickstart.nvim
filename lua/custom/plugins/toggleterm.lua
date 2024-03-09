return {
  'akinsho/toggleterm.nvim',
  event = 'VeryLazy',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'horizontal',
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = 'single',
        width = 100,
        height = 100,
        winblend = 3,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    }

    vim.api.nvim_set_keymap('n', '<leader>h', ':ToggleTerm<CR>', { noremap = true, silent = true })
  end,
  opts = {},
}
