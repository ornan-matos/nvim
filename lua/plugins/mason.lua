---@type LazySpec
return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			-- A lista de todas as ferramentas que o Mason deve garantir que estejam instaladas.
			ensure_installed = {
				-- Language Servers (LSPs)
				"ansible-language-server",
				"bash-language-server",
				"docker-compose-language-service",
				"dockerfile-language-server",
				"json-lsp",
				"lua-language-server",
				"pyright",
				"terraform-ls",
				"vim-language-server",
				"yaml-language-server",
				"yamlls",

				-- Linters e Formatters
				"black",
				"isort",
				"sqlfmt",
				"stylua",

				-- Debuggers
				"debugpy",

				-- Outras Ferramentas
				"terraform",
				"tree-sitter-cli",
			},
		},
	},
}
