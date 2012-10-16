function! LoadRope(current_path)
python << EOF
import sys
import os
import vim
sys.path.append(os.path.dirname(vim.eval("a:current_path")))
try:
    import ropevim
except ImportError:
    pass
EOF
endfunction

if has('python')
    let current_path = expand("<sfile>")
    call LoadRope(current_path)
endif
