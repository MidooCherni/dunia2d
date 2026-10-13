TODO
	64x64 grid and localmap tile system
	character and numpad movement (check against localsolids)
	localcoll solid tiles 
	server and netcode
		map plist, connect packet, handle disconnects nicely
		move packet (click sends pcoords+tarcoords, calcs pathfinding, then returns servermovearray
			if movearray over 0 meaning player is currently moving somewhere, clear all past 0. then add server's-
			to not interrupt if the player is currently moving somewhere)
			deal with movearray: if movearray.len over 0 and coords != movearray zero then movetowards at AGI spd
				and once coords = movearray zero, movearray zero is deleted and the next is moved down
		mobs, creatures, combat, wandering
		extended stats, inventory, stored off-server loaded into map plist and saved nicely
		chatbox, chat bubbles, UI
		map transition, overworld
