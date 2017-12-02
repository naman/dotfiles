# Defined in /var/folders/cn/yhht0w1n2qzc3j09scgf2s640000gn/T//fish.1yyM6E/up.fish @ line 1
function up
	sudo softwareupdate -i -a
    brew update
    brew upgrade
    brew cleanup
    brew cask cleanup
    sudo gem update --system
    sudo gem update
end
