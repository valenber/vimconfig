--------------------------------------------------------------------------
-- Options
--------------------------------------------------------------------------
local options = {
  number = true,
  relativenumber = true,
  backup = true,
  backupdir = "../../.local/share/nvim/backup//",
  clipboard = "unnamedplus",
  cmdheight = 2,
  expandtab = true,
  tabstop = 2,
  cursorline = true,
  numberwidth = 4,
  hidden = true,
  signcolumn = "yes",
  termguicolors = true,
  undofile = true,
  title = true,
  ignorecase = true,
  smartcase = true,
  wrap = true,
  mouse = "a",
  list = true,
  scrolloff = 8,
  sidescrolloff = 8,
  splitright = true,
  splitbelow = true,
  updatetime = 300,
  redrawtime = 10000,
  autoindent = true,
  smartindent = true,
  smartcase = true,
  swapfile = false,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  pumheight = 10,
  showmode = false,
  showtabline = 2,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]

--------------------------------------------------------------------------
-- Keymaps
--------------------------------------------------------------------------
local opts = { noremap = true, silent = true }
local cmd_opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader =','

-- Normal Mode --
keymap("n", "<leader>vr", ":source ~/.config/nvim/init.lua<cr>", opts)
keymap("n", "<leader>ve", ":edit ~/.config/nvim/init.lua<cr>", opts)

keymap("i", "jk", "<Esc>", opts)

-- start in-file search on Spacebar
keymap("n", "<Space>", "/", cmd_opts)

-- clear search highlighting
keymap("n", "<Esc>", ":noh<cr>", cmd_opts)

-- allow gf to open non-existent files
keymap("n", "<leader>gf", ":edit <cfile><cr>", opts)

-- splits navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- buffers navigation
keymap("n", "<C-s>", ":bnext<CR>", opts)
keymap("n", "<C-a>", ":bprevious<CR>", opts)

-- Visual Mode --
keymap("v", "jk", "<Esc>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------
require("user.plugins")

-- plugin configurations
require("user.onedark")
require("user.lualine")
require("user.bufferline")
require("user.treesitter")
