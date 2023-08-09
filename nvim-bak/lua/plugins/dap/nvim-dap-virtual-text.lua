local status_ok, text = pcall(require, "nvim-dap-virtual-text")
if not status_ok then
  vim.notify("nvim-dap-virtual-text not found!")
  return
end

text.setup()
