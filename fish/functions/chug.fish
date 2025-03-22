# chug for homebrew

function chug
    brew update && { brew upgrade; brew upgrade --cask; }; brew autoremove; brew cleanup; brew doctor
end