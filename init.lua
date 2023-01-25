return {
    plugins = {
        init = {

            -- Colorschemes
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
    end

}
