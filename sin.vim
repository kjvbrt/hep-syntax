" Vim syntax file
" Language: Whizard command file
" Maintainer: Juraj Smiesko
" Latest Revision: 05 May 2025

if exists("b:current_syntax")
  finish
endif


" Comments
syn keyword sinTodo contained TODO Todo FIXME FixMe NOTE Note
syn match sinComment "#.*$" contains=celTodo
syn match sinComment "!.*$" contains=celTodo

" Constants
syn keyword sinBool true contained
syn keyword sinBool false contained
syn region sinString start='"' end='"' contained contains=@NoSpell


" Regions
syn region sinBoolRegion start="?" end="$" transparent keepend contains=sinBool
syn region sinStringRegion start="\$" end="$" transparent keepend
    \ contains=sinString
syn region sinNumRegion
    \ start="^\(.*?\|.*\$\|.*#\|.*!\|.*alias\|.*process\|integrate\|simulate\)\@!"
    \ end="$" transparent keepend
    \ contains=sinUnits

" Keywords
syn match sinKeyword "model" contains=@NoSpell
syn match sinKeyword "alias" contains=@NoSpell
syn match sinKeyword "process" contains=@NoSpell
syn match sinKeyword "beams" contains=@NoSpell
syn match sinKeyword "integrate" contains=@NoSpell
syn match sinKeyword "simulate" contains=@NoSpell

" Operators
syn match pythia8EqOperator "="
  \ nextgroup=pythia8Int,pythia8Float,pythia8String,pythia8Bool
  \ skipwhite

" Units
syn match sinUnits "GeV" contained contains=@NoSpell
syn match sinUnits "%" contained contains=@NoSpell

" Syntax name
let b:current_syntax = "sin"


" How to highlight
hi def link sinTodo        Todo
hi def link sinComment     Comment
hi def link sinBool        Constant
hi def link sinString      Constant
hi def link sinKeyword     Statement
hi def link sinUnits       Special
