return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua", 
				"c_sharp",
				"vim",
				"vimdoc",
				"html",
				"c",
				"markdown_inline"
			},
			highlight = {
				enable = true,
			},
		})
	end
}
