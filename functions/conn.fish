# Defined in /var/folders/st/_d0t55l97zq3j8ct2ltk6rmw0000gn/T//fish.BP3ncj/conn.fish @ line 2
function conn
	netstat -an | grep LISTEN
end
