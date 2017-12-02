# Defined in /var/folders/cn/yhht0w1n2qzc3j09scgf2s640000gn/T//fish.HQ2DBc/autorm.fish @ line 1
function autorm
	echo "Searching for formulas not depended on by other formulas..."	
	set -l visited_formulas 'brew-cask'
	
	for formula in (brew list)
    		set -l dependees (brew uses --installed $formula)
      		if [ -z "$dependees" ]; and \
      		not contains $formula $visited_formulas 
        		read -p "echo \"$formula is not depended on by other formulas. Remove? [Y/n] \"" -l input
        		set visited_formulas $visited_formulas $formula
        		if [ "$input" = "Y" ]
            			brew remove $formula
            			check_formulas (brew deps --1 --installed $formula)
        		end
    		end
	end
end
