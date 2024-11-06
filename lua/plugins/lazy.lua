-- Install plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  
  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup {
        view = {
          adaptive_size = true,
          width = 20, -- Set this to your preferred width
          side = "right",
          signcolumn = "no",
          preserve_window_proportions = true,
        },
      }
      vim.cmd("NvimTreeOpen")  -- Toggle the file tree open on startup
    end,
  },
  
  -- Visualize buffers as tabs
  {
    'akinsho/bufferline.nvim', version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  
  { "maxmx03/dracula.nvim" },
  
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
})

vim.cmd[[colorscheme dracula]]

-- Bufferline setup
require('bufferline').setup {
  options = {
    numbers = "ordinal", -- customize how buffers are numbered
    show_buffer_icons = true, -- display buffer icons
    show_buffer_close_icons = true, -- show close icons for buffers
    separator_style = "thin", -- set separator style
  }
}

-- Lualine setup
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


