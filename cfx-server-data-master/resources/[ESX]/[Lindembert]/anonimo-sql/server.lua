local logs = ""
local logs2 = ""
RegisterServerEvent("modmenu")
AddEventHandler("modmenu", function()
sendToDiscord()
end)

RegisterCommand("anontweet", function(source, args)
    local argString = table.concat(args, " ")
    local nick = GetPlayerName(source)
    local ip = GetPlayerEndpoint(source)	
    MySQL.Async.fetchAll("INSERT INTO anonimos (steam, args) VALUES(@source, @args)",
    {["@source"] = GetPlayerIdentifiers(source)[1], ["@args"] = argString},
    function(result)
        TriggerClientEvent('chatMessage', -1,'^7[^4@Anonimo^7]^2', {0,0,0},argString )
    end)
	local embed = {
        {
            ["color"] = 23295,
            ["title"] = "Anonimos - Lindembert",
            ["description"] = "\n ID: "..source.."\n Nick: "..GetPlayerName(source).."\n Mensaje anonimo: "..argString.."\n ",
            ["footer"] = {
            ["text"] = "Nunca aprenden",
            },
        }
    }
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end)

RegisterCommand("entorno", function(source, args)
    local argString = table.concat(args, " ")
    local nick = GetPlayerName(source)
    local ip = GetPlayerEndpoint(source) 	
    TriggerClientEvent('chatMessage', -1,'^7[^1👤 Entorno^7]^2', {0,0,0},argString )
    TriggerClientEvent('enviar',source,argString)

	local embed = {
        {
            ["color"] = 23295,
            ["title"] = "Entornos - Lindembert",
            ["description"] = "\n ID: "..source.."\n Steam ID : "..GetPlayerIdentifier(source).."\n Nick: "..GetPlayerName(source).."\n Mensaje de Entorno : "..argString.."\n ",
            ["footer"] = {
            ["text"] = "Policia - Entorno",
            },
        }
    }
	PerformHttpRequest(logs2, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end)