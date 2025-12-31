# Introduction

This plugin is introduced in the Book, "Vim script technique bible", and the sample plugin is written by thinca-san.
The original version is available at [https://github.com/vim-jp/vim-sweep_trail](https://github.com/vim-jp/vim-sweep_trail).

# Install

Please install the plugin using the plugin manager you prefer.
If you use the plugin manager "vim-plug", you can install the plugin by addng the following command:

``` Vim script
Plug 'mmitsuzo/sweep_trail'
```

# Usage

- Executing the command `:SweepTrail`, you can remove white spaces at the end of line in the current buffer.
- If `g:sweep_trail_enable` is set to non-zero value, `sweep_trail#sweep()` is automatically executed when the buffer is saved.
- You can set the custom key mapping by reffering the command `<Plug>(sweep_trail)`, and cancel default key mapping by setting `g:sweep_trail_no_default_key_mappings' to 1.

