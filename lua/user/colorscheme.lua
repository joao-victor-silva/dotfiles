local catppuccin_status_ok, catppuccin = pcall(require, "catppuccin")
if not catppuccin_status_ok then
    return
end

local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
    return
end

local colorizer_status_ok, colorizer = pcall(require, "colorizer")
if not colorizer_status_ok then
    return
end

-- vim.g.catppuccin_flavour = "mocha"

vim.cmd([[colorscheme catppuccin]])

catppuccin.setup({
    flavour = "mocha"
})

lualine.setup({
    options = {
        theme = "catppuccin",
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",
    },
})

colorizer.setup()
