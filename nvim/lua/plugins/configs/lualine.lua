local theme = require('lualine.themes.onedark')
theme.normal.c.bg = require('gruvbox.palette').colors.dark0

local colors = {
  blue   = '#61afef',
  green  = '#98c379',
  purple = '#c678dd',
  cyan   = '#56b6c2',
  red1   = '#e06c75',
  red2   = '#be5046',
  yellow = '#e5c07b',
  fg     = '#abb2bf',
  bg     = '#282c34',
  gray1  = '#828997',
  gray2  = '#2c323c',
  gray3  = '#3e4452',
}

local opts = {
  separator = { left = '', right = '' },
  -- separator = { left = '', right = ''},
	-- separator = { left = "", right = "" },
  -- separator = { left = "", right = "" }
}

local space = {
	function()
		return " "
	end,
	color = { bg = theme.normal.c.bg, fg = "#80A7EA" },
}

local mode = {
  'mode',
  fmt = function(str) return " " end,
	separator = { right = opts.separator.right },
}

local filename = {
	'filename',
	color = { bg = colors.blue, fg = "#242735" },
	separator = opts.separator,
}

local filetype = {
	"filetype",
	icon_only = true,
	colored = true,
	color = { bg = colors.gray2 },
	separator = opts.separator,
}

local branch = {
	'branch',
	color = { bg = colors.green, fg = "#313244" },
	separator = opts.separator,
}

local diff = {
	"diff",
	color = { bg = colors.gray2, fg = "#313244" },
	separator = opts.separator,
}

local progress = {
	'progress',
	color = { bg = colors.gray3, fg = colors.fg },
	separator = opts.separator,
}

local location = {
	'location',
	color = { bg = colors.gray2, fg = colors.fg },
	separator = opts.separator,
}

local encoding = {
	'encoding',
	color = { bg = colors.gray2, fg = colors.fg },
	separator = opts.separator,
}

local fileformat = {
	'fileformat',
	color = { bg = colors.gray3, fg = colors.fg },
	separator = opts.separator,
}

local tabs = {
  'tabs',
  max_length = vim.o.columns,
  mode = 2,
	separator = opts.separator,
}

local function getLspName()
	local msg = 'No LSP'
	local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
	local clients = vim.lsp.get_active_clients()
	if next(clients) == nil then
	return " " .. msg
	end
	for _, client in ipairs(clients) do
		local filetypes = client.config.filetypes
		if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
			return "  " .. client.name
		end
	end
	return "  " .. msg
end

local dia = {
	'diagnostics',
	color = { bg = "#313244", fg = "#80A7EA" },
	separator = opts.separator,
}

local lsp = {
	function()
		return getLspName()
	end,
	separator = { left = opts.separator.left },
	color = { bg = colors.red1, fg = "#1e1e2e" },
}

require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = theme,
		component_separators = { left = '', right = '' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},

	sections = {
		lualine_a = {
      mode,
		},
		lualine_b = {
			space,
		},
		lualine_c = {
			filename,
			filetype,
			space,
			branch,
			diff,
		},
		lualine_x = {
			progress,
      location,
      space,
		},
		lualine_y = {
			encoding,
			fileformat,
			space,
		},
		lualine_z = {
			dia,
			lsp,
		}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {
		lualine_a = {
			tabs,
		},
		lualine_b = {
		},
		lualine_c = {},
		lualine_x = {
		},
		lualine_y = {
			space,
		},
		lualine_z = {
		},
	},
	winbar = {},
	inactive_winbar = {},

}
