# XCODE
xcode-select --install

# HOMEBREW
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update bash
brew install bash
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash

# install various packages
brew install \
  ruby \
  vim \
  git \
  wget \
  tmux

brew install \
  bash-completion \
  git-completion \
  docker-completion

brew install \
  tig \
  ncurses \
  iconv \
  readline

# CASK
brew tap caskroom/cask

# quicklook apps
brew cask install \
  qlcolorcode \
  qlstephen \
  qlmarkdown \
  quicklook-json \
  qlprettypatch \
  quicklook-csv \
  betterzip \
  webpquicklook \
  suspicious-package

# other useful apps
brew cask install \
  iterm2 \
  visual-studio-code \
  alfred \
  appcleaner \
  cheatsheet \
  docker \
  dropbox \
  google-chrome \
  google-drive \
  vlc \
  skype

# CASK FONTS
brew tap homebrew/cask-fonts

# NODE.JS
curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ \
  | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" \
  > "$HOME/Downloads/node-latest.pkg" \
  && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"
rm "$HOME/Downloads/node-latest.pkg"

# npm packages
npm install -g vtop
