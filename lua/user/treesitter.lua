local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
    highlight = { enable = true},
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
