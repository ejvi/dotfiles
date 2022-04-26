call plug#begin()

Plug 'preservim/vim-pencil'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

let g:pencil#wrapModeDefault = 'soft'
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240


augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
  inoremap -- —
augroup END

   let w:ProseModeOn = 0

   function EnableProseMode()
       setlocal spell spelllang=ru
       Goyo 66
       SoftPencil
       echo "Prose Mode On"
   endfu

   function DisableProseMode()
       Goyo!
       NoPencil
       setlocal nospell
       echo "Prose Mode Off"
   endfu

   function ToggleProseMode()
       if w:ProseModeOn == 0
           call EnableProseMode()
           let w:ProseModeOn = 1
       else
           call DisableProseMode()
       endif
   endfu

   command Prose call EnableProseMode()
   command UnProse call DisableProseMode()
   command ToggleProse call ToggleProseMode()
