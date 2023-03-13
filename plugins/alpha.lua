local present, alpha = pcall(require, "alpha")

if not present then
  return
end

local plugins = ""
if vim.fn.has("linux") == 1 or vim.fn.has("mac") == 1 then
  local handle = io.popen('fdfind -d 1 . $HOME"/.local/share/nvim/site/pack/packer/start" | wc -l | tr -d "\\n" ')
  if handle == nil then
    return nil
  end
  plugins = handle:read("*a")
  handle:close()

  plugins = plugins:gsub("^%s*(.-)%s*$", "%1")
else
  plugins = "N/A"
end

local function footer()
  local total_plugins = plugins
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

  return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
end

local options = {
  footer = {
    type = "text",
    val = footer(),
  }
}

alpha.setup {
  layout = {
    options.footer,
  },
  opts = {},
}
