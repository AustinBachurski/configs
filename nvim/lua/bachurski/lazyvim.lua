local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- TreeSitter
    {"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
                    "asm", "awk", "bash", "c", "c_sharp",
                    "cmake", "cpp", "css", "csv", "dockerfile",
                    "doxygen", "gitattributes", "gitignore",
                    "html", "java", "javascript", "json", "lua",
                    "markdown", "Path of Exile item filter",
                    "python", "regex", "rust", "ssh_config",
                    "toml", "typescript", "vim", "vimdoc",
                    "xml", "yaml", "zig"
                    },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
    },

    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',

    -- Colorscheme
    "EdenEast/nightfox.nvim",

    -- Telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
