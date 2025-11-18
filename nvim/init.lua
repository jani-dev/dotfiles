-- Plugins --
require("config.lazy")

-- Lines
vim.o.number = true
vim.o.relativenumber = true

-- Indentation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Behavior
vim.o.clipboard = "unnamedplus"

vim.lsp.config("roslyn", {
	on_attach = function(client, bufnr)
		print("Roslyn started now")
		vim.lsp.completion.enable(true, client.id, bufnr, {
			autotrigger = true,
			convert = function(item)
				return { abbr = item.label:gsub('%b()', '') }
			end,
		})
	end,
	settings = {
		["csharp|completion"] = {
			dotnet_provide_regex_completions = true,
			dotnet_show_name_completion_suggestions = true,
		},
		["csharp|code_lens"] = {
			dotnet_enable_references_code_lens = true,
		}
	},
})
