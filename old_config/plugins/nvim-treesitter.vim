Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

lua  <<EOF
require'nvim-treesitter.configs'.setup { 
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
    additional_vim_regex_highlighting = false,
}
EOF
