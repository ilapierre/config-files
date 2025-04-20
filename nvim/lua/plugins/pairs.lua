return {
	'echasnovski/mini.pairs', 
	version = '*',
	opts = {},
	config = function (_, opts)
		require("mini.pairs").setup(opts)
	end
}
