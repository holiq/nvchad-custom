local present, upair = pcall(require, "npairs-int-upair")

if not present then
  return
end

upair.setup {
  map = "n", --which of them should be the insert mode autopair
  cmap = "u", --which of them should be the cmd mode autopair (only 'u' supported)
  bs = "n", --which of them should be the backspace
  cr = "n", --which of them should be the newline
  space = "u", --which of them should be the space (only 'u' supported)
  c_h = "", --which of them should be the <C-h> (only 'n' supported)
  c_w = "", --which of them should be the <C-w> (only 'n' supported)
  --
  fastwarp = "<A-e>", --ultimate-autopair's fastwarp mapping ('' for disable)
  rfastwarp = "<A-E>", --ultimate-autopair's reverse fastwarp mapping ('' for disable)
  fastwrap = "<A-]>", --nvim-autopairs's fastwrap mapping ('' for disable)
  npairs_conf = {}, --nvim-autopairs's configuration
  upair_conf = {}, --ultimate-autopair's configuration
}
