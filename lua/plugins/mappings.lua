return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },

          ["<Tab>"] = { ":bnext<cr>", desc = "switch next tab" },
          ["<S-Tab>"] = { ":bprev<cr>", desc = "switch previous tab" },

          ["<leader>bv"] = { ":vsplit<cr>", desc = "new window vertical" },
          ["<leader>bh"] = { ":split<cr>", desc = "new window horizontal" },

          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
      },
    },
  },
}
