vim.cmd([[
  let g:gitdir = substitute(system("git rev-parse --show-toplevel 2>&1 | grep -v fatal:"), '\n', '', 'g')

  if g:gitdir != '' && isdirectory(g:gitdir) && index(split(&path, ","), g:gitdir) < 0
	exe "set path+=".g:gitdir."/**"
  endif
]])
