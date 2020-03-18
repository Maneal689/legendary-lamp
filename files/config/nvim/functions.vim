function SaveSession()
  let sessionFolder = $VIM_SESSION
  let currentDir = substitute(getcwd(), "^.*/", "", "")
  let sessionPath = sessionFolder . "/" . currentDir . ".session.vim"
  let cmd = "mksession! " . sessionPath
  execute cmd
  echo "Saved session on " . sessionPath
endfunction
