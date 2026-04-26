return {
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local p = require('poimandres.palette')

      require('poimandres').setup({
        bold_vert_split = false, -- use bold vertical separators
        dim_nc_background = true, -- dim 'non-current' window backgrounds
        disable_background = true, -- disable background
        disable_float_background = true, -- disable background for floats
        disable_italics = true, -- disable italics

        -- the default values make the highlight group unreadable
        highlight_groups = {
          LspReferenceText = { link = 'Visual' },
          LspReferenceRead = { link = 'Visual' },
          LspReferenceWrite = { link = 'Visual' },
          NormalFloat = { bg = p.background1, fg = p.text },
          FloatBorder = { bg = p.background1, fg = p.text },

          ["Boolean"] = { fg = p.pink3 },
          ["@constructor"] = { fg = "#D66ED2" },
          ["@keyword.coroutine"] = { fg = "#5de4c7" },
          ["@keyword.import"] = { link = "@keyword.coroutine" },
          ["@punctuation.bracket"] = { fg = p.yellow },
          ["@punctuation.special"] = { link = "@constructor" },
          ["@lsp.type.function"] = { fg = p.text },
          ["@lsp.type.function.lua"] = { fg = "#bec7d1" },
          ["@lsp.type.property"] = { fg = p.white },
          ["@lsp.type.property.typescript"] = { fg = p.blue2 },
          ["@lsp.type.function.typescriptreact"] = { fg = "#bec7d1" },

          ["typescriptBlock"] = { fg = p.blue2 },
          ["typescriptBraces"] = { fg = p.yellow },
          ["typescriptParens"] = { fg = "#D66ED2" },
          ["typescriptImport"] = { fg = p.teal1 },
          ["typescriptImportBlock"] = { fg = p.blue2 },
          ["typescriptStatementKeyword"] = { fg = p.teal2 },
          ["typescriptFuncName"] = { fg = p.blue2 },
          ["typescriptVariable"] = { fg = p.blue3 },
          ["typescriptCall"] = { fg = "#D66ED2" },
          ["typescriptTypeAnnotation"] = { fg = p.blue2 },
          ["typescriptObjectLabel"] = { fg = p.blue2 },

          ["tsxTagName"] = { fg = p.teal1 },
          ["tsxIntrinsicTagName"] = { fg = p.teal1 },
          ["tsxAttrib"] = { fg = p.blue3 },
          ["tsxEqual"] = { fg = p.blue3 },

          ["jsonBraces"] = { fg = "#D66ED2" },
        },
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")

      local p = require('poimandres.palette')

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, 'Quote', { fg = p.blueGray1 })

          vim.fn.matchadd('Quote', '"')
          vim.fn.matchadd('Quote', "'")
          vim.fn.matchadd('Quote', '`')
          vim.fn.matchadd('Quote', 'from')
        end,
      })
    end
  },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "poimandres",
		},
	},
}
