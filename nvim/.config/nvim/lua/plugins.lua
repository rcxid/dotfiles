-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- auto install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	-- fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	fn.system({'git', 'clone', '--depth', '1', 'https://hub.fastgit.org/wbthomason/packer.nvim.git', install_path})
	vim.cmd 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup({
	function()
        -- Packer can manage itself
		use 'wbthomason/packer.nvim'
        -- vim startify
        use 'mhinz/vim-startify'
        -- vim theme
        use 'sainnhe/gruvbox-material'
        -- vim-airline
        use {
            "vim-airline/vim-airline",
            requires = {
                "vim-airline/vim-airline-themes",
                -- 综合图标支持such vim-airline lightline, vim-startify
                "ryanoasis/vim-devicons"
            }
        }
	end,
	config = {
		max_jobs = 16,
		git = {
			default_url_format = 'https://hub.fastgit.org/%s'
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})
