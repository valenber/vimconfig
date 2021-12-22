local status_ok, formatter = pcall(require, "formatter")
if not status_ok then
  vim.notify("Failed to load Formatter ")
  return
end

formatter.setup(
  {
    filetype = {
      typescriptreact = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      json = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
      },
      javascript = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)

-- autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.lua FormatWrite

vim.api.nvim_exec(
  [[
augroup FormatLuaAutogroup
  autocmd!
  autocmd BufWritePost *.lua FormatWrite
augroup END

augroup FormatJTSXAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx EslintFixAll
augroup END
]],
  true
)
