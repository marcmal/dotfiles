local present, telescope = pcall(require, "telescope")

if not present then
  return
end

local config = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "   ",
    mappings = {
      n = { ["q"] = require("telescope.actions").close },
    }
  }
}

require('telescope').setup(config)
