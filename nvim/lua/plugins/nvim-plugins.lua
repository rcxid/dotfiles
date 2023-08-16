return {
  "rcxid/nvim-plugins",
  url = "https://gitee.com/rcxid/nvim-plugins.git",
  build = "./update.sh",
  config = function()
    require("comment").setup()
  end
}
