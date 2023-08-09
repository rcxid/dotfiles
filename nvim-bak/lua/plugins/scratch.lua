local status_ok, scratch = pcall(require, 'scratch')
if not status_ok then
  return
end

scratch.setup {
  -- Where the scratch files will be saved
  scratch_file_dir = vim.fn.stdpath("cache") .. "/scratch.nvim",
  -- filetypes to select from
  filetypes = { "json", "xml", "go", "lua", "js", "py", "sh" },
}

-- vim.keymap.set("n", "<M-C-n>", "<cmd>Scratch<cr>")
vim.keymap.set("n", "<space>sn", "<cmd>ScratchWithName<cr>")
vim.keymap.set("n", "<space>so", "<cmd>ScratchOpen<cr>")
