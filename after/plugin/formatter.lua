require("formatter").setup {
  logging = false,
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettierd },
    typescript = {
      require("formatter.filetypes.typescript").prettierd
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettierd
    },
    json = {
      require("formatter.filetypes.json").prettierd
    },
    html = {
      require("formatter.filetypes.html").prettierd
    },
    css = {
      require("formatter.filetypes.css").prettierd
    },
    markdown = {
      require("formatter.filetypes.markdown").prettierd
    },
    go = {
      function()
        return {
          exe = "gofmt",
          args = { "-w", vim.api.nvim_buf_get_name(0) },
          stdin = false,
        }
      end,
    },
    lua = {
      function()
        return {
          exe = "stylua",
          args = {
            "--config-path",
            vim.fn.expand("~/.config/stylua.toml"),
            "-",
          },
          stdin = true,
        }
      end,
    },
  },
}
