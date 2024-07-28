return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
  	modes = {
  		-- sources define their own modes, which you can use directly,
  		-- or override like in the example below
  		lsp_references = {
  			-- some modes are configurable, see the source code for more details
  			params = {
  				include_declaration = true,
  			},
  		},
  		-- The LSP base mode for:
  		-- * lsp_definitions, lsp_references, lsp_implementations
  		-- * lsp_type_definitions, lsp_declarations, lsp_command
  		lsp_base = {
  			params = {
  				-- don't include the current location in the results
  				include_current = false,
  			},
  		},
  		-- more advanced example that extends the lsp_document_symbols
  		symbols = {
  			desc = "document symbols",
  			mode = "lsp_document_symbols",
  			focus = false,
  			win = { position = "right" },
  			filter = {
  				-- remove Package since luals uses it for control flow structures
  				["not"] = { ft = "lua", kind = "Package" },
  				any = {
  					-- all symbol kinds for help / markdown files
  					ft = { "help", "markdown" },
  					-- default set of symbol kinds
  					kind = {
  						"Class",
  						"Constructor",
  						"Enum",
  						"Field",
  						"Function",
  						"Interface",
  						"Method",
  						"Module",
  						"Namespace",
  						"Package",
  						"Property",
  						"Struct",
  						"Trait",
  					},
  				},
  			},
  		},
  	},
    -- stylua: ignore
    icons = {
      indent        = {
        top         = "│ ",
        middle      = "├╴",
        last        = "└╴",
        -- last          = "-╴",
        -- last       = "╰╴", -- rounded
        fold_open   = " ",
        fold_closed = " ",
        ws          = "  ",
      },
      folder_closed = " ",
      folder_open   = " ",
      kinds         = {
        Array         = " ",
        Boolean       = "󰨙 ",
        Class         = " ",
        Constant      = "󰏿 ",
        Constructor   = " ",
        Enum          = " ",
        EnumMember    = " ",
        Event         = " ",
        Field         = " ",
        File          = " ",
        Function      = "󰊕 ",
        Interface     = " ",
        Key           = " ",
        Method        = "󰊕 ",
        Module        = " ",
        Namespace     = "󰦮 ",
        Null          = " ",
        Number        = "󰎠 ",
        Object        = " ",
        Operator      = " ",
        Package       = " ",
        Property      = " ",
        String        = " ",
        Struct        = "󰆼 ",
        TypeParameter = " ",
        Variable      = "󰀫 ",
      },
    },
  }, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
