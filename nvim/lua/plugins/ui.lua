return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "decay-dark",
    },
  },
  -- Using Lazy
  {
    "decaycs/decay.nvim",
    name = "decay",
    lazy = false,
    priority = 1000,
    config = function()
      -- SNIP
    end,
  },
  { "navarasu/onedark.nvim", enabled = false },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { theme = "decay" },
    },
  },

  {
    "snacks.nvim",
    opts = function(_, opts)
      opts.dashboard = opts.dashboard or {}
      opts.dashboard.preset = opts.dashboard.preset or {}
      opts.dashboard.preset.header = [[
                  ▄                      
                 ▟█▙                     
                ▟███▙                    
               ▟█████▙                   
              ▟███████▙                  
             ▂▔▀▜██████▙                 
            ▟██▅▂▝▜█████▙                
           ▟█████████████▙               
          ▟███████████████▙              
         ▟█████████████████▙             
        ▟███████████████████▙            
       ▟█████████▛▀▀▜████████▙           
      ▟████████▛      ▜███████▙          
     ▟█████████        ████████▙         
    ▟██████████        █████▆▅▄▃▂        
   ▟██████████▛        ▜█████████▙       
  ▟██████▀▀▀              ▀▀██████▙      
 ▟███▀▘                       ▝▀███▙     
▟▛▀                               ▀▜▙  
]]
      return opts
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = { hide_dotfiles = false },
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│" },
      scope = { enabled = false },
    },
  },

  {
    "folke/noice.nvim",
    opts = {
      presets = { lsp_doc_border = true },
    },
  },
}
