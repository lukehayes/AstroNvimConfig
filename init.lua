return {
  plugins = {
    init = {

      -- Additional Plugins
      -- 
      -- 
      -- Catpuccin Colorscheme
      {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
          require("catppuccin").setup {}
        end,
      },

      -- Zen Mode
      {
        "folke/zen-mode.nvim",
        config = function()
          require("zen-mode").setup {
            window = {
              width = 180
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
      stage = "static"
    }
  }
}
