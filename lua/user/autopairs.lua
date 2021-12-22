local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
  vim.notify("Autopairs not found")
  return
end

autopairs.setup()
