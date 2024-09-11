return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	-- indent = {
	-- opts = {
	-- 		char = "┊",
	-- 	},
	-- },
	config = function()
		local highlight = {
			"CursorColumn",
			-- "Whitespace",
		}
		require("ibl").setup({
			indent = { highlight = highlight, char = "|" },
			whitespace = {
				highlight = highlight,
				remove_blankline_trail = false,
			},
			scope = { enabled = true },
		})
	end,
}
