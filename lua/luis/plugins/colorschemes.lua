-- return {
--     {
--         "rose-pine/neovim",
--         name = "rose-pine"
--     },
--     {
--         "folke/tokyonight.nvim",
--         lazy = false,
--     }
-- }
--
--
--
return {
	{
		"folke/tokyonight.nvim",
		-- priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "#011628"
			local bg_dark = "#011423"
			local bg_highlight = "#143652"
			local bg_search = "#0A64AC"
			local bg_visual = "#275378"
			local fg = "#CBE0F0"
			local fg_dark = "#B4D0E9"
			local fg_gutter = "#627E97"
			local border = "#547998"

			require("tokyonight").setup({
				style = "night",
				on_colors = function(colors)
					colors.bg = bg
					colors.bg_dark = bg_dark
					colors.bg_float = bg_dark
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg_dark
					colors.bg_search = bg_search
					colors.bg_sidebar = bg_dark
					colors.bg_statusline = bg_dark
					colors.bg_visual = bg_visual
					colors.border = border
					colors.fg = fg
					colors.fg_dark = fg_dark
					colors.fg_float = fg
					colors.fg_gutter = fg_gutter
					colors.fg_sidebar = fg_dark
				end,
			})
			-- load the colorscheme here
			-- vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"rose-pine/neovim",
		priority = 1000, -- make sure to load this before all the other start plugins
		name = "rose-pine",
		config = function()
			-- vim.cmd("colorscheme rose-pine")
			-- vim.cmd("colorscheme rose-pine-main")
			-- vim.cmd("colorscheme rose-pine-moon")
			-- vim.cmd("colorscheme rose-pine-dawn")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = function()
			-- vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"oncomouse/lushwal.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		cmd = { "LushwalCompile" },
		dependencies = {
			{ "rktjmp/lush.nvim" },
			{ "rktjmp/shipwright.nvim" },
		},
		config = function()
			vim.g.lushwal_configuration = {
				compile_to_vimscript = true,
				terminal_colors = true,
				color_overrides = nil,
				addons = {
					ale = false,
					barbar = false,
					bufferline_nvim = true,
					coc_nvim = false,
					dashboard_nvim = false,
					fern_vim = false,
					gina = false,
					gitsigns_nvim = false,
					hop_nvim = false,
					hydra_nvim = false,
					indent_blankline_nvim = false,
					lightspeed_nvim = false,
					lspsaga_nvim = false,
					lsp_trouble_nvim = false,
					lualine = true,
					markdown = false,
					mini_nvim = false,
					native_lsp = true,
					neogit = false,
					neomake = false,
					nerdtree = false,
					nvim_cmp = false,
					nvim_tree_lua = false,
					nvim_ts_rainbow = false,
					semshi = false,
					telescope_nvim = false,
					treesitter = true,
					vim_dirvish = false,
					vim_gitgutter = false,
					vim_signify = false,
					vim_sneak = false,
					which_key_nvim = false,
				},
			}
		end,
	},
}
