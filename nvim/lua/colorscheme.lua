local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"

require("catppuccin").setup {
    flavor = "mocha",
    background = {
        light = "latte",
        dark = "mocha"
    },
    color_overrides = {
        all = {},
        latte = {
            -- base = "#ff0000",
            -- mantle = "#242424",
            -- crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {},
    }
}

local colorscheme = 'catppuccin'
local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. 'not found!')
    return
end
