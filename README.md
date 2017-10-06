*Proceed with caution: This is for my personal use. I can't guarantee any of the scripts or configurations work on other computers as is.*

# dotfiles

## Setup
```sh
git clone https://github.com/monicaycli/dotfiles.git
cd dotfiles
chmod +x setup.sh
sh setup.sh
```

## some other manual settings
* iTerms2
	- Profiles > Keys:
		+ ⌘←: Send Hex Codes: 0x01
		+ ⌘→: Send Hex Codes: 0x05
		+ ⌘←Delete: Send Hex Codes: 0x15
		+ ⌥←: Send ^[ b
		+ ⌥→: Send ^[ f
		+ ⌥←Delete: Send Hex Codes: 0x1b 0x08
* tig
	- install diff-highlight: copy complied diff-highlight to /opt/local/bin
* Sublime
	- install package control
	- install Spacegray Theme
	- install GitGutter
	- install AcademicMarkdown
	- install Markdown Preview
	- install Markdown Editing
	- install R-Box
	- install Citer
	- install LatexTools
	- install SendCode
* vim
	- install Plug

## Things to update regularly
* AFNI: `@update.afni.binaries -defaults` in `~/abin`
* fink: `fink reinstall fink` or `fink selfupdate`
* tig
* git
