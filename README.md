# Nvim configuration

## Install nvim from source

* Clone repository
* Checkout realease branch e.g. `git checkout -t origin/release-0.6`
* build from source
```
  make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## Configuration
Entry configuration file `init.lua` should be located inside `/$HOME/.config/nvim/`

Add packer plugin manager to your system
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


## TODO

* [x] Plugin manager
* [x] Color scheme
* [x] LSP (tsserver)
* [x] Code completion
* [x] Code actions
* [x] Autoformat
* [x] Status line
* [x] File navigation
* [x] Buffers tabs
* [x] Custom snippets
* [ ] Debugger (run individual tests)
