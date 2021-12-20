--------------------------------------------------------------------------
-- Options
--------------------------------------------------------------------------
local options = {
  number = true,
  relativenumber = truer,
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
  wrap = false,
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
