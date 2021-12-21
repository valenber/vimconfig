# Nvim configuration

## Install neovim from source

* Clone repository
* Checkout realease branch e.g. `git checkout -t origin/release-0.6`
* build from source
```
  make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## Configuration
Entry configuration file `init.lua` of `vim.init` should be located inside `/$HOME/.config/nvim/`

Add plugin manager to your system

E.g. packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


## Configuration components

* [x] Keymapping
* [x] Plugin manager
* [ ] LSP
	* [ ] Code completion
	* [ ] Code actions
	* [ ] Autoformat
* [x] Status line
* [x] Color scheme
* [x] Buffers tabs
* [x] Syntax highlighting
* [ ] File navigation
* [x] MarkdownPreview
* [x] Git helper
* [ ] Custom snippets (input helpers)
* [ ] Debugger (run individual tests)
