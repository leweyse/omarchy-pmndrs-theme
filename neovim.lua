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

          ["Function"] = { fg = "#bec7d1" },

          ["@property"] = { fg = p.white },
          ["@constructor"] = { fg = "#D66ED2" },
          ["@keyword.coroutine"] = { fg = "#5de4c7" },
          ["@keyword.import"] = { link = "@keyword.coroutine" },
          ["@punctuation.bracket"] = { fg = p.yellow },
          ["@punctuation.special"] = { link = "@constructor" },
          ["@function.builtin"] = { fg = "#bec7d1" },
          ["@function.method.tsx"] = { fg = p.blue2 },
          ["@lsp.type.property.typescript"] = { fg = p.blue2 },
          ["@punctuation.bracket.json"] = { fg = "#D66ED2" },
        },
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")

      local p = require('poimandres.palette')

      local group = vim.api.nvim_create_augroup("OmarchyPoimandres", { clear = true })

      vim.api.nvim_create_autocmd("FileType", {
        group = group,
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
