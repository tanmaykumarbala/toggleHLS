if exists('g:default_toggle_hls_map_key_user')
	let g:default_toggle_hls_map_key = g:default_toggle_hls_map_key_user
else
	let g:default_toggle_hls_map_key = "<leader>h"
endif

""" Function to toogle HLS
function ToggleHLS()
	if &l:hlsearch == "1"
		set nohlsearch
		echo "Search High lights off"
	else
		set hlsearch
		echo "Search High lights on"
	endif
endfunction

""" Setting the command for easy refrence.
command! -nargs=0 ToggleHighLightSearch :call ToggleHLS()

""" Default key maping.
execute 'nnoremap '.g:default_toggle_hls_map_key.' :ToggleHighLightSearch <cr>'
