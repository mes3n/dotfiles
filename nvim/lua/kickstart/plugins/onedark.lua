return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'onedark'
      require('onedark').setup {
        style = 'warmer',
        -- transparent = true, -- Show/hide background
        -- -- Lualine options --
        -- lualine = {
        --   transparent = true, -- lualine center bar transparency
        -- },
      }
      require('onedark').load()
    end,
  },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'onedark',
          component_separators = '|',
          section_separators = '',
        },
      }
    end,
  },
}
