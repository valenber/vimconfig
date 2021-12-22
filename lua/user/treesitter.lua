local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("TreeSitter is not found!")
  return
end

configs.setup {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
    indend = {
      enable = true,
    },
    ensure_installed = {
        'typescript',
        'html',
        'javascript',
        'json',
        'dockerfile',
        'tsx',
        'css',
        'scss',
        'vim',
        'lua',
        'graphql',
        'cmake',
        'bash'
    },
}
