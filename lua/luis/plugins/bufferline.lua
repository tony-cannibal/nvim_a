return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			separator_style = "slant",
		},
		highlights = {
			buffer_selected = {
				fg = {
					attribute = "fg",
					highlight = "Normal",
				},
				bg = {
					attribute = "bg",
					highlight = "Normal",
				},
				bold = true,
				italic = true,
			},
		},
	},
}
