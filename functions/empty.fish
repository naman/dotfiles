# Defined in /var/folders/cn/yhht0w1n2qzc3j09scgf2s640000gn/T//fish.fWMdnj/empty.fish @ line 1
function empty
	sudo rm -rfv /Volumes/*/.Trashes
    sudo rm -rfv ~/.Trash
    sudo rm -rfv /private/var/log/asl/*.asl
    sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'
end
