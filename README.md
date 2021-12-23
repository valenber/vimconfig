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
Entry configuration file `init.lua` should be located inside `/$HOME/.config/nvim/`

Add plugin manager to your system

E.g. packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Configuration components

* [x] Keymapping
* [x] Plugin manager
* [x] Code completion
* [x] Status line
  * [ ] Display number of linting errors
* [x] Color scheme
* [x] Buffers tabs
* [x] Syntax highlighting
* [x] MarkdownPreview
* [x] Git helper
* [x] LSP
  * [x] Code completion
  * [x] Code navigation
  * [x] Code actions
* [x] File navigation

* [ ] Autoformat
  * [x] lua
  * [x] prettier, eslint
  * [ ] stylelint

* [ ] Custom snippets (input helpers)
* [ ] Debugger
