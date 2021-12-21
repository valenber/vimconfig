vim.g.onedark_transparent_background = true
vim.g.onedark_italic_comment = true
-- vim.g.onedark_style = 'darker'

local status_ok, onedark = pcall(require, "onedark")

if not status_ok then
  vim.notify("Onedark colourscheme is not found!")
  return
end

onedark.setup()
