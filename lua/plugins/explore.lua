--[[
-- Spec for explorer/IDE-style plugins
-- Primarily exists because I ended up not liking mini.files
-- and wanted to swap back to this setup. No hard feelings Echasnovski
--]]

return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = true,
        replace_netrw = true,
      },
    },
  },
  {
    "prichrd/netrw.nvim", opts = {}
  },
}
