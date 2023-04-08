local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.formatting.deno_fmt.with { filetypes = { "typescript", "javascript" } },

  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

  b.formatting.stylua.with { filetypes = { "lua" } },

  b.formatting.pint.with { filetypes = { "php" } },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
