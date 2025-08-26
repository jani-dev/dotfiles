if true then
	return { }
end

return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true }) ()
	end,
	opts = {
		ensure_installed = {
			"c_sharp",
			"lua",
			"css",
			"json",
			"markdown_inline",
		},
		sync_install = false,
		auto_installe = false,
		highlight = {
			enable = true,
		}
	},
}
