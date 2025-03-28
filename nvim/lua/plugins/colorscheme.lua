return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		transparent_background = true,
		    default_integrations = true,
		    integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			notify = false,
			mini = {
			    enabled = true,
			    indentscope_color = "",
			},
			-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
		    },
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd([[colorscheme catppuccin]])
	end,
}
