local latte = require("catppuccin.palettes").get_palette("latte")
local frappe = require("catppuccin.palettes").get_palette("frappe")
local macchiato = require("catppuccin.palettes").get_palette("macchiato")
local mocha = require("catppuccin.palettes").get_palette("mocha")
local status, _ = pcall(vim.cmd.colorscheme, "catppuccin")
if not status then
	print("Colorscheme not found")
	return
end

require("catppuccin").setup({
	color_overrides = {
		all = {
			text = "#ffffff",
		},
		latte = {},
		frappe = {},
		macchiato = {},
		mocha = {},
	},
})
