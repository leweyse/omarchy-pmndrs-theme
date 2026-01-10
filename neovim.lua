return {
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local p = require('poimandres.palette')

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, 'Quote', { link = 'Comment' })

          vim.fn.matchadd('Quote', '"')
          vim.fn.matchadd('Quote', "'")
          vim.fn.matchadd('Quote', '`')
          vim.fn.matchadd('Quote', 'from')
        end,
      })

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

          ["@constructor"] = { fg = "#D66ED2" },
          ["@keyword.coroutine"] = { fg = "#5de4c7" },
          ["@keyword.import"] = { link = "@keyword.coroutine" },
          ["@punctuation.bracket"] = { fg = p.yellow },
          ["@punctuation.special"] = { link = "@constructor" },
          ["@lsp.type.function"] = { link = "Type" },
          ["@lsp.type.property"] = { fg = p.white },
        },
      })
    end,

    -- optionally set the colorscheme within lazy config
    -- init = function()
    --   vim.cmd("colorscheme poimandres")
    -- end
  },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "poimandres",
		},
	},
}
