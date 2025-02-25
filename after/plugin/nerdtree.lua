-- Autocomandos para abrir NERDTree automáticamente si no hay archivos abiertos
vim.api.nvim_create_autocmd("StdinReadPre", {
  pattern = "*",
  callback = function() vim.g.std_in = 1 end
})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    if vim.fn.argc() == 0 and not vim.g.std_in then
      vim.cmd("NERDTree")
    end
  end
})

vim.g.NERDTreeWinSize = 100

-- Configuración de NERDTree
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'
vim.g.NERDTreeDirArrows = 1
vim.g.NERDTreeShowLineNumbers = 1
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeWinPos = "right"
vim.g.NERDTreeHighlightFoldersFullName = 1

-- Configuración de DevIcons en NERDTree
vim.g.WebDevIconsUnicodeDecorateFolderNodes = 1
vim.g.DevIconsEnableFoldersOpenClose = 1
vim.g.DevIconsEnableFolderExtensionPatternMatching = 1
vim.g.webdevicons_conceal_nerdtree_brackets = 1
