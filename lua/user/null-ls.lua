local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	vim.notify("Failed to load null-ls ")
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier,
		formatting.stylua,
		formatting.stylelint,
		diagnostics.eslint,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})

-- vim.api.nvim_exec(
-- 	[[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWrite *.js,*.jsx,*.ts,*.tsx,*.lua lua vim.lsp.buf.formatting_sync(nil, 100)
-- augroup END
-- ]],
-- 	true
-- )
