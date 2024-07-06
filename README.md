
# Install Neo Vim on Windows

1. install scoop 

``` PowerShell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

2. install neovim

``` PowerShell
scoop install main/neovim
```

### Next, we do the configuration

1. Install vim plug for plugins

``` PowerShell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

```

2. Go to `C:\Users\YOURUSER\AppData\Local\nvim` , if not exist, create it
3. Create `init.vim` (You can copy mine `https://github.com/marcozsh/init.vim.git`)
4. Make the config
5. Open vim and install the plugins `:PlugInstall`
6. Then Update Coc `:CocUpdate`

#### Note: For linters it needs Node

If Coc fails in python files, install jedi-language-server with pip

```PowerShell
pip install jedi-language-server
```

And there you go. Enjoy Nvim
