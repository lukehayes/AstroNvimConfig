return {

    colorscheme = "rose-pine",

    options = {
        g = {
            zenbones_compat = 1
        }
    },

    plugins = {
        init = {

            -- Colorschemes DARK
            --
            --
            -- Catpuccin
            {
                "catppuccin/nvim",
                as = "catppuccin",
                config = function()
                    require("catppuccin").setup {}
                end,
            },

            -- Gruvbox 
            {"ellisonleao/gruvbox.nvim"},

            -- Nightfox - dark and light themes
            {'EdenEast/nightfox.nvim'},

            -- Solarized theme
            {'ishan9299/nvim-solarized-lua'},

            -- LunarVim One Darker
            {'Lunarvim/onedarker.nvim'},

            -- Eva01
            {'hachy/eva01.vim'},

            -- Neon
            {'rafamadriz/neon'},

            -- Boo
            {'rockerBOO/boo-colorscheme-nvim'},

            -- Palenight Fall
            {'JoosepAlviste/palenightfall.nvim'},

           -- Poimandres
            {'olivercederborg/poimandres.nvim'},

            -- Doom One
            {'NTBBloodbath/doom-one.nvim'},

            -- Nightfly
            {"bluz71/vim-nightfly-colors", as = "nightfly"},

            {"savq/melange-nvim"},

            -- Nvim-Quantum
            {'mastertinner/nvim-quantum',
              config = function() 
                  require('quantum').setup() 
              end
            },

            -- Colorschemes LIGHT
            --
            --
            -- Acme
            {"plan9-for-vimspace/acme-colors"},

            -- Rusticated
            {"d00h/nvim-rusticated"},

            -- ZenBones/ZenWritten
             {"mcchrish/zenbones.nvim"},
             --{ 'rktjmp/lush.nvim' }, -- Required by Zenbones theme.

            -- Vim Paper
            {"yorickpeterse/vim-paper"},

            -- Rose Pine
            {"rose-pine/neovim"},


            {"mg979/vim-visual-multi"}, -- Multi cursor editing.

            -- Additional Plugins
            -- 
            -- 
            -- Zen Mode
            {
                "folke/zen-mode.nvim",
                config = function()
                    require("zen-mode").setup {
                        window = {
                            width = 80
                        }
                    }
                end
            },

            {"mattn/emmet-vim"}, -- Emmet for HTML/CSS help.
        },


        -- Default Plugin Customization
        -- 
        -- 
        ["neo-tree"] = {
            filesystem = {
                follow_current_file = false
            }
        },

        ["notify"] = {
            stage = "static",
            timeout = 1000 -- time until notification closes - in milliseconds
        }
    },

    lsp = {
        formatting = {
            format_on_save = false, -- enable or disable automatic formatting on save
        },
    },

    polish = function()
         --Final setup can happen here.

        vim.g.zenbones_compat = 1 -- Make zenbones themes actually work
    end,
}
