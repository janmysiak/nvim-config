local options = {
	clipboard = "unnamedplus", -- Allows neovim to access the system clipboard
	-- completeopt = { "menuone", "noselect" },
	expandtab = true,         -- Convert tabs to spaces
	fileencoding = "utf-8",   -- The encoding written to a file
	guifont = "Hack",         -- The font used in graphical neovim applications
	hlsearch = true,          -- Highlight all matches on previous search pattern
	ignorecase = true,        -- Ignore case in search patterns
	-- pumheight = 10, -- Pop up menu height
	number = true,
	numberwidth = 2,
	-- relativenumber = true, -- Set relative numbered lines
	shiftwidth = 2,      -- The number of spaces inserted for each indentation
	showtabline = 1,     -- Always show tabs
	scrolloff = 8,       -- Minimal number of screen lines to keep above and below the cursor
	sidescrolloff = 8,   -- Minimal number of screen columns to keep left and right of the cursor
	smartcase = true,    -- Override the 'ignorecase' option if the search pattern contains upper case characters
	smartindent = true,  -- Make indenting smarter again
	splitbelow = true,   -- Force all horizontal splits to go below current window
	splitright = true,   -- Force all vertical splits to go to the right of current window
	tabstop = 2,         -- Insert 2 spaces for a tab
	termguicolors = true, -- set term gui colors (most terminals support this)
	updatetime = 700,    -- Faster completion (4000ms default)
	wrap = false,        -- Display lines as one long line
	cursorline = true,   -- highlight the current line
}

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
	underline = true,
})

for k, v in pairs(options) do
	vim.opt[k] = v
end
