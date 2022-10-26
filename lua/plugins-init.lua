Rivim = {}
local user_cfg = require("user." .. User)
local plugins_init = user_cfg["plugins_init"]
local keymap = user_cfg["keymap"]
Rivim.syntax = user_cfg["syntax"]
require("user.keymap." .. keymap)

require('lsp-config.handler')
require("config.formatter")
require("config.wilder")
require("config.mason")
require("config.treesitter")
require("config.harpoon")
require("config.toggleterm")
require("config.neotree")

-- Override default setup --
for key, init in pairs(plugins_init) do
    if type(init) == "function" then
        require(key).setup(init())
    else
        require(key).setup(init)
    end
end

vim.wo.number = user_cfg["number"]

-- Override Vim options --
for key, opt in pairs(user_cfg["options"]) do
    vim.o[key] = opt
end
