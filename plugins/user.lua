return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup {
        openai_params = {
          model = "gpt-4",
        },
        openai_edit_params = {
          model = "gpt-3.5-turbo",
          temperature = 0,
          top_p = 1,
          n = 1,
        },
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "github/copilot.vim",
    event = "VeryLazy",
    autoStart = true,
  },
  {
    "dense-analysis/neural",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "ElPiloto/significant.nvim",
    },
    opts = {
      mappings = {
        prompt = "<C-Space>",
        swift = "<C-n>",
      },
      open_ai = {
        api_key = vim.env.OPENAI_API_KEY,
      },
      ui = { icon = "" },
    },
  },
  { -- Keep clipboard in sync with Neovim without the peformance hit.
    "EtiamNullam/deferred-clipboard.nvim",
    event = "VeryLazy",
    opts = {
      lazy = true,
      -- this option makes paste the yank from neovim itself slow so turning it off fow now
      -- fallback = 'unnamedplus',
    },
  },
  {
      "AckslD/swenv.nvim",
      enabled = true,
      ft = "python",
      event = { "BufRead", "BufNew" },
    },
  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    autoStart = true,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
    config = function() end,
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "rfs-notes",
          path = "/Users/ryan/Documents/rfs-notes/",
        },
      },
    },
  },
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    enabled = true,
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
        vim.cmd "colorscheme astrodark"
      end,
      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
        vim.cmd "colorscheme astrolight"
      end,
    },
    init = function() require("auto-dark-mode").init() end,
  },
}
