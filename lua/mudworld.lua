local Mudworld = {}

local default_config = {
	italics = true,
	bold = true,
}

Mudworld.setup = function(config)
  Mudworld.config = vim.deepcopy(default_config)
  Mudworld.config = vim.tbl_deep_extend("force", Mudworld.config, config or {})
end

local defaults = {
  italics = true,
}

Mudworld.load = function()
	if not Mudworld.config then
		Mudworld.config = vim.deepcopy(default_config)
	end

  if vim.g.colors_name then
    vim.cmd.hi 'clear'
		if vim.fn.exists('syntax_on') then
			vim.cmd 'syntax reset'
		end
  end
  vim.g.colors_name = "mudworld"
  vim.o.termguicolors = true

  local colors = {
    bg = '#000000',
    fg = '#cdaa7d',
    bg_faded = '#7d6d59',
    white = '#ffffff',
    orange = '#cf7044',
    blue = '#5b909a',
    grey_light_blue = '#bac4cf',
    yellow = '#f1c84b',
    darker_yellow = '#c78b3d',
    muted_purple = '#9b6f8d',
    green = '#6c9a5b'
  }

	local config = Mudworld.config

  local ghl = function(groupnames, opts)
    if type(groupnames) == "string" then
      vim.api.nvim_set_hl(0, groupnames, opts)
    else
      for _, group in ipairs(groupnames) do
        vim.api.nvim_set_hl(0, group, opts)
      end
    end
  end

  -- UI
  ghl('Normal', { fg = colors.fg, bg = colors.bg })
  ghl('StatusLine', { fg = colors.bg, bg = colors.fg }) -- Inverted 
  ghl('StatusLineNC', { fg = colors.bg_faded, bg = colors.fg }) -- Inverted, faded
  ghl('LineNr', { fg = colors.bg_faded })
  ghl('CursorLineNr', { fg = colors.fg, bold = config.bold })

  -- Syntax
  ghl('Comment', { fg = colors.green, italic = config.italics })
  ghl({ 'String', 'Number' }, { fg = colors.orange })
  ghl('Keyword', { fg = colors.yellow })
  ghl('Function', { fg = colors.white, bold = config.bold })
  ghl('Boolean', { fg = colors.muted_purple, bold = config.bold })
  ghl('Type', { fg = colors.blue, bold = config.bold })
  ghl({
    '@variable',
    'ModeMsg',
    'Operator',
    'Delimiter',
    'Special',
    'Punct',
    '@parameter',
    '@property',
  }, { fg = colors.fg })
end

return Mudworld
