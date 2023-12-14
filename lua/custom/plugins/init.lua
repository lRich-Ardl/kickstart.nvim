-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
	{
		'mbbill/undotree',
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end
	},
	{
		'phaazon/hop.nvim',
		branch = 'v2',
		config = function()
			require 'hop'.setup { keys = '"tovxqpdygfblzhckisuran' }
			vim.keymap.set("n", "<localleader>h", ":HopChar1<CR>")
			vim.keymap.set("v", "<localleader>h", "<cmd>HopChar1<CR>")
		end
	},

	{ 'vimwiki/vimwiki' },
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()
			vim.keymap.set("n", "<localleader>a", function() harpoon:list():append() end)
			vim.keymap.set("n", "<localleader>f", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

			vim.keymap.set("n", "<localleader>r", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<localleader>s", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<localleader>t", function() harpoon:list():select(3) end)
			vim.keymap.set("n", "<localleader>g", function() harpoon:list():select(4) end)
		end,
		requires = { { "nvim-lua/plenary.nvim" } }
	},
	{
		'dracula/vim',
		as = 'dracula',
		config = function()
			vim.cmd('colorscheme dracula')
		end
	},
	{
		'mfussenegger/nvim-dap-python',
		dependencies = {
			'mfussenegger/nvim-dap',
		},
		config = function()
			require('dap-python').setup('/home/dev/.pyenv/shims/python')
		end
	},
	-- { -- setup in kickstart own file debug.lua
	-- 	'leoluz/nvim-dap-go',
	-- 	dependencies = {
	-- 		'mfussenegger/nvim-dap',
	-- 	},
	-- 	config = function()
	-- 		require('dap-go').setup()
	-- 	end
	-- },
	{ 'tpope/vim-sensible' },
	{ 'tpope/vim-dotenv' },
	{ 'tpope/vim-dadbod' },
	{ 'kristijanhusak/vim-dadbod-ui' },
	{ 'kristijanhusak/vim-dadbod-completion' },
	-- { 'github/copilot.vim' },
}
