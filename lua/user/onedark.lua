local status_ok, onedark = pcall(require, "onedark")

if not status_ok then
  vim.notify("Onedark colourscheme is not found!")
  return
end

onedark.setup {
  style = 'warm',
  transparent = true,
  code_style = {
        comments = 'italic',
    },
}

onedark.load()
