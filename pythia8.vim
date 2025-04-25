" Vim syntax file
" Language: Pythia8 command file
" Maintainer: Juraj Smiesko
" Latest Revision: 23 April 2025

if exists("b:current_syntax")
  finish
endif


" Comments
syn keyword pythia8Todo contained TODO Todo FIXME FixMe NOTE Note
syn match pythia8Comment "#.*$" contains=celTodo
syn match pythia8Comment "!.*$" contains=celTodo


" Sections
syn keyword pythia8Section Main
syn match pythia8Section "Init" contains=@NoSpell
syn keyword pythia8Section Next
syn keyword pythia8Section Stat
syn keyword pythia8Section Random
syn keyword pythia8Section Beams
syn match pythia8Section "PDF" contains=@NoSpell
syn match pythia8Section "PartonLevel" contains=@NoSpell
syn match pythia8Section "PromptPhoton" contains=@NoSpell
syn match pythia8Section "WeakZ0" contains=@NoSpell
syn match pythia8Section "WeakBosonExchange" contains=@NoSpell
syn match pythia8Section "WeakSingleBoson" contains=@NoSpell
syn match pythia8Section "WeakDoubleBoson" contains=@NoSpell
syn match pythia8Section "WeakBosonAndParton" contains=@NoSpell
syn match pythia8Section "PhotonCollision" contains=@NoSpell
syn match pythia8Section "PhotonParton" contains=@NoSpell
syn match pythia8Section "Higgs" contains=@NoSpell
syn match pythia8Section "HiggsSM" contains=@NoSpell
syn match pythia8Section "HiggsBSM" contains=@NoSpell
syn match pythia8Section "HiggsH1" contains=@NoSpell
syn match pythia8Section "HiggsH2" contains=@NoSpell
syn match pythia8Section "HiggsA3" contains=@NoSpell
syn match pythia8Section "HiggsHchg" contains=@NoSpell
syn match pythia8Section "HardQCD" contains=@NoSpell
syn match pythia8Section "SoftQCD" contains=@NoSpell
syn match pythia8Section "LowEnergyQCD" contains=@NoSpell
syn keyword pythia8Section Top
syn match pythia8Section "SecondHard" contains=@NoSpell
syn match pythia8Section "PhaseSpace" contains=@NoSpell
syn match pythia8Section "SUSY" contains=@NoSpell
syn match pythia8Section "Onia" contains=@NoSpell
syn match pythia8Section "Charmonium" contains=@NoSpell
syn match pythia8Section "Bottomonium" contains=@NoSpell
syn match pythia8Section "NewGaugeBoson" contains=@NoSpell
syn match pythia8Section "Zprime" contains=@NoSpell
syn match pythia8Section "Wprime" contains=@NoSpell
syn match pythia8Section "LeptoQuark" contains=@NoSpell
syn match pythia8Section "LeftRightSymmmetry" contains=@NoSpell
syn match pythia8Section "HiddenValley" contains=@NoSpell
syn match pythia8Section "ExcitedFermion" contains=@NoSpell
syn match pythia8Section "ContactInteractions" contains=@NoSpell
syn match pythia8Section "DM" contains=@NoSpell
syn match pythia8Section "Sdm" contains=@NoSpell
syn match pythia8Section "Zp" contains=@NoSpell
syn match pythia8Section "ExtraDimensionsG*" contains=@NoSpell
syn match pythia8Section "ExtraDimensionsTEV" contains=@NoSpell
syn match pythia8Section "ExtraDimensionsLED" contains=@NoSpell
syn match pythia8Section "ExtraDimensionsUnpart" contains=@NoSpell
syn match pythia8Section "FourthBottom" contains=@NoSpell
syn match pythia8Section "FourthTop" contains=@NoSpell
syn match pythia8Section "FourthPair" contains=@NoSpell
syn match pythia8Section "FourthGeneration" contains=@NoSpell
syn match pythia8Section "ParticleDecays" contains=@NoSpell
syn match pythia8Section "TauDecays" contains=@NoSpell
" Matches for the PDGs
syn match pythia8Section "^\d\+\ze\:"
syn match pythia8Section "^\d\+\ze\s\+\:"
syn match pythia8Section "^\s\+\d\+\ze\:"
syn match pythia8Section "^\s\+\d\+\ze\s\+\:"


" Flags
" Except word character adds also '(', ')', and ':'
syn match pythia8Flag "\(\w\|(\|)\|\[\|\]\|:\)\+" contained contains=@NoSpell


" Constants
" Integers and integer arrays
syn match pythia8Int "\(\d\+\s\+\|\d\+\|[-+]\d\+\s\+\|[-+]\d\+\)\+" contained

" Floats with and without exponents
syn match pythia8Float '\d\+\.\d*' contained
syn match pythia8Float '[-+]\d\+\.\d*' contained
syn match pythia8Float '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained
syn match pythia8Float '\d[[:digit:]]*[eE][\-+]\=\d\+' contained
syn match pythia8Float "[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+" contained
syn match pythia8Float "\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+" contained

syn region pythia8String start='"' end='"' contained

syn keyword pythia8Bool on contained
syn keyword pythia8Bool off contained


" Operators
syn match pythia8EqOperator "="
  \ nextgroup=pythia8Int,pythia8Float,pythia8String,pythia8Bool
  \ skipwhite

syn match pythia8SubOperator ":" nextgroup=pythia8Flag skipwhite


" Syntax name
let b:current_syntax = "pythia8"


" How to highlight
hi def link pythia8Todo        Todo
hi def link pythia8Comment     Comment
hi def link pythia8Section     Type
hi def link pythia8Flag        Identifier
hi def link pythia8Int         Constant
hi def link pythia8Float       Constant
hi def link pythia8String      Constant
hi def link pythia8Bool        Constant
hi def link pythia8EqOperator  Operator
hi def link pythia8SubOperator Operator
