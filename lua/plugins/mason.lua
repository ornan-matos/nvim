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
				"clangd",
				"csharp-language-server",
				"css-lsp",
				"docker-compose-language-service",
				"dockerfile-language-server",
				"dot-language-server",
				"gopls",
				"html-lsp",
				"json-lsp",
				"lua-language-server",
				"pyright",
				"ruff", -- ruff também atua como um LSP
				"sqlls",
				"tailwindcss-language-server",
				"terraform-ls",
				"typescript-language-server",
				"vim-language-server",
				"yaml-language-server",

				-- Linters e Formatters
				"black",
				"csharpier",
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
