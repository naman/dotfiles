# Defined in /var/folders/cn/yhht0w1n2qzc3j09scgf2s640000gn/T//fish.jZVIDx/setup.fish @ line 2
function setup
	# abbr mci mvn clean install
    abbr g git
    abbr gf git fetch
    abbr gs git status
    abbr gc git commit -m
    abbr gm git merge FETCH_HEAD --ff-only
    abbr gr git rb FETCH_HEAD
    abbr ga git add
    abbr gp git push
    abbr gd git diff
    abbr gco git checkout
    abbr ll ls -lhA
end
