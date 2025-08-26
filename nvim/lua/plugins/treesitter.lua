if true then
	return { }
end

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c_sharp",
				"lua",
				"css",
				"json",
				"markdown_inline",
			},
			sync_install = false,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			}})
	end
}
