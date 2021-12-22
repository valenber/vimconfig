local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  vim.notify("Telescope not found")
  return
end

local opts = {noremap = true}
local keymap = vim.api.nvim_set_keymap

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = {"smart"}
  }
}

keymap("n", "<C-p>", ":Telescope find_files theme=dropdown<CR>", opts)
keymap("n", "<leader>gb", ":Telescope buffers theme=dropdown<CR>", opts)
keymap("n", "<leader>ca", ":Telescope lsp_code_actions theme=cursor<CR>", opts)
keymap("n", "<leader><Space>", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>gr", ":Telescope lsp_references theme=dropdown<CR>", opts)
keymap("n", "<leader>*", ":Telescope grep_string theme=dropdown<CR>", opts)
