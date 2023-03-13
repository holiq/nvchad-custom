local present, indent = pcall(require, "indent-o-matic")

if not present then
  return
end

indent.setup {
    max_lines = 2048,
    standard_widths = { 2, 4 },

    filetype_lisp = {
        max_lines = 0,
    },

    filetype_lua = {
        standard_widths = { 2 },
    },

    filetype_php = {
        standard_widths = { 4 },
    },

    filetype_ = {
        standard_widths = { 2, 4 },
    },
}

