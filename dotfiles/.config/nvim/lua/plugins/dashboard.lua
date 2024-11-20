return {
  -- "nvimdev/dashboard-nvim",
  -- opts = function(_, opts)
  --   local header_logo = {
  --     [[                                                                       ]],
  --     [[                                                                     ]],
  --     [[       ████ ██████           █████      ██                     ]],
  --     [[      ███████████             █████                             ]],
  --     [[      █████████ ███████████████████ ███   ███████████   ]],
  --     [[     █████████  ███    █████████████ █████ ██████████████   ]],
  --     [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
  --     [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
  --     [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
  --     [[                                                                       ]],
  --   }
  --   local logo = table.concat(header_logo, "\n")
  --   logo = string.rep("\n", 4) .. logo .. "\n\n"
  --   opts.config.header = vim.split(logo, "\n")
  -- end,
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
                                                                       
                                                                     
       ████ ██████           █████      ██                     
      ███████████             █████                             
      █████████ ███████████████████ ███   ███████████   
     █████████  ███    █████████████ █████ ██████████████   
    █████████ ██████████ █████████ █████ █████ ████ █████   
  ███████████ ███    ███ █████████ █████ █████ ████ █████  
 ██████  █████████████████████ ████ █████ █████ ████ ██████ 
                                                                       
        ]],
        },
      },
    },
  },
}
