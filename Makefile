all: pythia8 ftdetect-pythia8 dec ftdetect-dec

pythia8: pythia8.vim
	@mkdir -p ${HOME}/.config/nvim/syntax
	@cp pythia8.vim ${HOME}/.config/nvim/syntax/

ftdetect-pythia8: ftdetect-pythia8.vim
	@mkdir -p ${HOME}/.config/nvim/ftdetect
	@cp ftdetect-pythia8.vim ${HOME}/.config/nvim/ftdetect/

dec: dec.vim
	@mkdir -p ${HOME}/.config/nvim/syntax
	@cp dec.vim ${HOME}/.config/nvim/syntax/

ftdetect-dec: ftdetect-dec.vim
	@mkdir -p ${HOME}/.config/nvim/ftdetect
	@cp ftdetect-dec.vim ${HOME}/.config/nvim/ftdetect/
