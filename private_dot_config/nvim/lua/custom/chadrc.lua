-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "onedark",
}

M.plugins = {
  -- 覆盖默认的插件配置
  override = {},

  -- 移出默认的插件
  remove = {},

  -- 添加新的插件 或 修改默认插件的部分配置
  user = {
    ["goolord/alpha-nvim"] = {
      disable = false,
      config = function()
        require "custom.plugins.alpha"
      end,
    },
    ["folke/which-key.nvim"] = {
      disable = false,
    },
    ["PHSix/faster.nvim"] = {
      event = {"VimEnter *"},
      config = function()
        vim.api.nvim_set_keymap('n', 'j', '<Plug>(faster_move_j)', {noremap=false, silent=true})
        vim.api.nvim_set_keymap('n', 'k', '<Plug>(faster_move_k)', {noremap=false, silent=true})
        -- or
        -- vim.api.nvim_set_keymap('n', 'j', '<Plug>(faster_move_gj)', {noremap=false, silent=true})
        -- vim.api.nvim_set_keymap('n', 'k', '<Plug>(faster_move_gk)', {noremap=false, silent=true})
        -- if you need map in visual mode
        -- vim.api.nvim_set_keymap('v', 'j', '<Plug>(faster_vmove_j)', {noremap=false, silent=true})
        -- vim.api.nvim_set_keymap('v', 'k', '<Plug>(faster_vmove_k)', {noremap=false, silent=true})
      end,
    },
  },
}

return M
