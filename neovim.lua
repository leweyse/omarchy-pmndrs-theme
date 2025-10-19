return {
	{
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup({
        bold_vert_split = false, -- use bold vertical separators
        dim_nc_background = true, -- dim 'non-current' window backgrounds
        disable_background = true, -- disable background
        disable_float_background = true, -- disable background for floats
        disable_italics = true, -- disable italics
      })
    end,
  },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "poimandres",
		},
	},
}
