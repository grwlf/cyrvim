Cyrvim
------

Cyrvim is yet another cyrilic mapper for Vim. It maps single-key sequences, some
multiple-key sequences, plus <Esc>- sequences in Insert and command
mode.

Note: escape mappings are probably useful only in console vim.

Installing
----------

Consider using pathogen 

https://github.com/tpope/vim-pathogen

Settings
--------

By default, only simple mappings are performed. Set following variables in order
to enable additional modes:

.vimrc settings:

	let g:cyrvim_map_esc = 1

maps <Esc>kyes in insert mode (use for console vim)

	let g:cyrvim_map_cmd = 1

maps letters in command mode

	let g:cyrvim_map_cmd_esc = 1

maps <Esc>keys in command mode (use for console vim)


