local actions = require("telescope.actions")
local sorters = require("telescope.sorters")
-- local utils = require('telescope.utils')
-- local trouble = require('telescope.providers.telescope')

require("telescope").setup({
	defaults = {
		sorting_strategy = "ascending",
		file_sorter = sorters.get_fuzzy_file,
		color_devicons = true,
		disable_devicons = false,
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-c>"] = actions.close,
			},
			n = {
				["<C-c>"] = actions.close,
			},
		},
		layout_config = {
			horizontal = {
				height = 47,
				prompt_position = "top",
			},
		},
	},
	extensions = {
		file_browser = {
      cwd_to_path = true
    },
	},
})

require("telescope").load_extension("file_browser")
