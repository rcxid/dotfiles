return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "lua", "rust", "python", "bash", "json" },
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      -- todo ?
      modules = {},
      highlight = {
        enable = true,
        disable = function(lang, buf)
          -- 语言禁用
          local disables = {}
          for _, value in ipairs(disables) do
            if lang == value then
              return true
            end
          end
          -- 文件大于100KB禁用
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      }
    }
  end
}
