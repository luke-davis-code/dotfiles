vim.lsp.enable("lua_ls")

vim.lsp.enable("clangd")

vim.lsp.enable("vue_ls")

vim.lsp.config("ts_ls", {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.stdpath("data")
					.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},
	filetypes = {
		"typescript",
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"vue",
	},
})
vim.lsp.enable("ts_ls")

vim.lsp.enable("eslint")

vim.lsp.enable("html")

vim.diagnostic.config({
	virtual_text = true,
})
