" Vim syntax file
" Language: EvtGen decay file
" Maintainer: Juraj Smiesko
" Latest Revision: 25 April 2025

if exists("b:current_syntax")
  finish
endif


" Comments
syn keyword decTodo contained TODO Todo FIXME FixMe NOTE Note
syn match decComment "#.*$" contains=celTodo


" Constants
" Integers and integer arrays
syn match decInt "\d\+" contained
syn match decInt "[-+]\d\+" contained
syn match decLineInt "\(\d\+\|[-+]\d\+\)" contained
  \ nextgroup=decLineInt,decLineFloat,decLineVar skipwhite

" Floats with and without exponents
syn match decFloat '\d\+\.\d*' contained
syn match decFloat '[-+]\d\+\.\d*' contained
syn match decFloat '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
  \ contained contains=@NoSpell
syn match decFloat '\d[[:digit:]]*[eE][\-+]\=\d\+' contained contains=@NoSpell
syn match decFloat "[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+"
  \ contained contains=@NoSpell
syn match decFloat "\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+"
  \ contained contains=@NoSpell
syn match decLineFloat '\(\d\+\.\d*\|[-+]\d\+\.\d*\)' contained
  \ nextgroup=decLineInt,decLineFloat,decLineVar skipwhite

" Decay fraction
syn match decFraction '^\s\+\d\+\.\d*' contained nextgroup=decLineParticle,decMode,decSpecial skipwhite
syn match decFraction '^\d\+\.\d*' contained nextgroup=decLineParticle,decMode,decSpecial skipwhite

syn region decString start='"' end='"' contained


" Keywords
syn keyword decKeyword Define nextgroup=decVarAtDef skipwhite
syn keyword decKeyword Alias nextgroup=decParticle2 skipwhite
syn match decKeyword "ChargeConj" contains=@NoSpell nextgroup=decParticle2
  \ skipwhite
syn match decKeyword "yesPhotos" contains=@NoSpell
syn match decKeyword "yesFSR" contains=@NoSpell
syn match decKeyword "SetLineshapePW" contains=@NoSpell nextgroup=decLineshapeParticle skipwhite
syn keyword decBlockKeyword Decay contained nextgroup=decParticle1 skipwhite
syn match decBlockKeyword "Enddecay" contains=@NoSpell contained
syn match decKeyword "CDecay" contains=@NoSpell nextgroup=decParticle1
  \ skipwhite
syn keyword decKeyword End


" Particles
syn match decParticle1 "[a-zA-Z]" contained contains=@NoSpell
syn match decParticle1 "[a-zA-Z]\(\w\|*\|-\|+\|(\|)\|/\|'\)\+" contained contains=@NoSpell
syn match decParticle2 "[a-zA-Z]" contained contains=@NoSpell
  \ nextgroup=decParticle1 skipwhite
syn match decParticle2 "[a-zA-Z]\(\w\|*\|-\|+\|(\|)\|/\|'\)\+" contained contains=@NoSpell
  \ nextgroup=decParticle1 skipwhite
syn match decLineshapeParticle "[a-zA-Z]" contained contains=@NoSpell
  \ nextgroup=decLineshapeParticle,decInt skipwhite
syn match decLineshapeParticle "[a-zA-Z]\(\w\|*\|-\|+\|(\|)\|/\|'\)\+" contained contains=@NoSpell
  \ nextgroup=decLineshapeParticle,decInt skipwhite
syn match decLineParticle "[a-zA-Z]" contained contains=@NoSpell
  \ nextgroup=decLineParticle,decMode,decSpecial skipwhite
syn match decLineParticle "[a-zA-Z]\(\w\|*\|-\|+\|(\|)\|/\|'\)\+" contained contains=@NoSpell
  \ nextgroup=decLineParticle,decMode,decSpecial skipwhite


" Variables
syn match decVarAtDef "[a-zA-Z]\w\+" contained contains=@NoSpell
  \ nextgroup=decInt,decFloat skipwhite
syn match decLineVar "[a-zA-Z]\w\+" contained contains=@NoSpell
  \ nextgroup=decLineInt,decLineFloat,decLineVar skipwhite


" Decay modes
syn match decMode "PHSP" contained contains=@NoSpell
syn match decMode "VSS" contained contains=@NoSpell
syn match decMode "SVS" contained contains=@NoSpell
syn match decMode "VSS_BMIX" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "VLL" contained contains=@NoSpell
syn match decMode "PARTWAVE" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "HELAMP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "ISGW2" contained contains=@NoSpell
syn match decMode "HQET" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "HQET2" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "GOITY_ROBERTS" contained contains=@NoSpell
syn match decMode "VUB" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "SVV_HELAMP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "SVP_HELAMP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "BTOSLLBALL" contained contains=@NoSpell
syn match decMode "BTOXSLL" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "BTO3PI_CP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "STS" contained contains=@NoSpell
syn match decMode "BTOXSGAMMA" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "SLN" contained contains=@NoSpell
syn match decMode "CB3PI-MPP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "CB3PI-P00" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "VSP_PWAVE" contained contains=@NoSpell
syn match decMode "BTOSLLALI" contained contains=@NoSpell
syn match decMode "TAULNUNU" contained contains=@NoSpell
syn match decMode "TAUSCALARNU" contained contains=@NoSpell
syn match decMode "TAUVECTORNU" contained contains=@NoSpell
syn match decMode "TAUHADNU" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "D_DALITZ" contained contains=@NoSpell
syn match decMode "PI0_DALITZ" contained contains=@NoSpell
syn match decMode "ETA_DALITZ" contained contains=@NoSpell
syn match decMode "OMEGA_DALITZ" contained contains=@NoSpell
syn match decMode "VVS_PWAVE" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "TVS_PWAVE" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "TSS" contained contains=@NoSpell
syn match decMode "VVP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite
syn match decMode "VVPIPI" contained contains=@NoSpell
syn match decMode "THREEBODYPHSP" contained contains=@NoSpell nextgroup=decLineInt,decLineFloat,decLineVar skipwhite

" Decay specials
syn match decSpecial "PHOTOS" contained contains=@NoSpell
syn match decSpecial "FSR" contained contains=@NoSpell
syn match decSpecial "PYTHIA" contained contains=@NoSpell nextgroup=decInt skipwhite

" Decay line
syn region decLine start="\(^\s\+\d\+\.\d*\|^\d\+\.\d*\)" end=";" transparent keepend contained
  \ contains=decFraction,decMode,decSpecial

" Decay block
syn region decBlock start="Decay" end="Enddecay" fold transparent keepend
  \ contains=decBlockKeyword,decLine,decComment



" Syntax settings
let b:current_syntax = "dec"
syn sync minlines=2000


" How to highlight
hi def link decTodo         Todo
hi def link decComment      Comment
hi def link decKeyword      Statement
hi def link decBlockKeyword Statement
hi def link decParticle1    Type
hi def link decParticle2    Type
hi def link decLineshapeParticle Type
hi def link decLineParticle Type
hi def link decVarAtDef     Identifier
hi def link decLineVar      Identifier
hi def link decInt          Constant
hi def link decLineInt      Constant
hi def link decFloat        Constant
hi def link decLineFloat    Constant
hi def link decFraction     Constant
hi def link decString       Constant
hi def link decMode         Function
hi def link decSpecial      Special
