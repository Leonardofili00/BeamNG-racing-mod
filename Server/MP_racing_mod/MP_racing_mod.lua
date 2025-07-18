--MP_racing_mod (SERVER)

local commandPrefix = "/" --prefix used to identify commands entered through chat

local debugOutput = true --set to false to hide console printed information

function onInit() --runs when plugin is loaded
	print("MP_racing_mod loaded")
end

function onCommand(player_id, data)
	local data = split(data)
	local command = data[1] --get the command from the data

	if command == "help" then
		MP.SendChatMessage(-1, "available commands:\n- help | send this list\n")
	end

	if debugOutput then
		print("onCommand: player_id: " .. player_id .. " | command: " .. command)
		print("args:")
		print(args)
	end
	MP.TriggerClientEventJson(player_id, command, args) --trigger the client event for the player that entered the command, sending arguments
end
