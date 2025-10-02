cd ~/
# source
sudo spctl --master-disable

# Create iCloud Link
echo 'Link iCloud To Home'
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs iCloud

## Create ssh link
mkdir ~/.ssh

## TODO set up your own config 
ln -s ~/iCloud/config/ssh/config ~/.ssh/config

# TODO set your proxy if needed
export https_proxy=http://localhost:6152;export http_proxy=http://localhost:6152;export all_proxy=socks5://localhost:6153

# homebrew
echo 'Installing homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# activate homebrew
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# apps
echo 'Installing homebrew apps'
brew install --cask downie 1password miniconda spotify telegram jetbrains-toolbox raycast snipaste visual-studio-code iterm2 fork google-chrome rapidapi appcleaner iina the-unarchiver sequel-ace 
brew install tree nmap ffmpeg typst wget eza go rsync telnet font-mononoki yt-dlp iproute2mac typst docker podman keyboardcleantool nmap

# localsend
# brew tap localsend/localsend
# brew install localsend

# My Fish scripts
echo 'Installing Fish Shell'
brew install fish fisher starship

echo 'Setting up Fish Shell'
mkdir -p ~/.config/fish
fish -c "conda init fish"
fish -c "fisher install jorgebucaran/autopair.fish"
fish -c "fisher install jethrokuan/z"
fish -c "fisher install joseluisq/gitnow@2.12.0"
fish -c "fisher install jorgebucaran/nvm.fish"
fish -c "fisher install nickeb96/puffer-fish"

# add to config.fish
echo "source /Users/$USER/iCloud/config/fish/$USER.profile" >>  ~/.config/fish/config.fish
echo "starship init fish | source" >>  ~/.config/fish/config.fish

## apps from apple store
# amphetamine
