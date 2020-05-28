function SaveSession()
  call inputsave()
  let name = input('Enter session name: ')
  call inputrestore()
  let sessionFolder = $VIM_SESSION
  let currentDir = substitute(getcwd(), "^.*/", "", "")
  let sessionPath = sessionFolder . "/" . name . ".session.vim"
  let cmd = "mksession! " . sessionPath
  execute cmd
  echo "Saved session on " . sessionPath
endfunction
