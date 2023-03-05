local db = require("dashboard")

db.setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{ desc = " Update", group = "@property", action = "PackerSync", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = " Config",
				group = "Number",
				action = "e ~/AppData/Local/nvim/",
				key = "d",
			},
		},
	},
})
