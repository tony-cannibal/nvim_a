return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")
		wk.setup({
			preset = "classic",
			win = {
				-- don't allow the popup to overlap with the cursor
				-- no_overlap = true,
				-- width = 1,
				-- height = { min = 4, max = 25 },
				-- col = 0,
				-- row = math.huge,
				border = "single",
				-- padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
				title = false,
				-- title_pos = "center",
				zindex = 1000,
				-- Additional vim.wo and vim.bo options
				bo = {},
				wo = {
					winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
				},
			},
		})
	end,
}
