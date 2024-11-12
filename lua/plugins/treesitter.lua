return {
  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, just setting opts replaces them
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add / ensure specific languages are installed
      vim.list_extend(opts.ensure_installed, {
        "c",
        "cpp",
        "css",
        "glsl",
        "hlsl",
        "html",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "meson",
        "python",
      })
    end,
  },
}
