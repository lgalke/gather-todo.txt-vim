if exists('did_gather_todo') || &cp || version < 700
  finish
endif
let did_gather_todo = 1

function! s:gather_todo(bang, ...) abort
  if a:0
    let roots = deepcopy(a:000)
    let roots = map(roots, 'fnamemodify(expand(v:val), ":p")')
  else
    let roots = [getcwd()]
  endif
  let roots = join(roots, ',')
  let todofiles = globpath(roots, '**/*todo.txt', 0, 1)
  new
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
  setlocal ft=todo
  if a:bang
    let failed = append(0, todofiles)
  else
    for todofile in todofiles
      let lines = readfile(fnameescape(todofile))
      let lines = map(lines, 'substitute(v:val, "$", " @".todofile, "")')
      let lines = filter(lines, 'v:val =~ "^(.).*$"')
      let failed = append(line('$'), lines)
    endfor
  endif
endfunction

command! -bang -nargs=* -complete=file GatherTodo call s:gather_todo(<bang>0,<f-args>)
