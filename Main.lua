if game:IsLoaded() == nil then

    game.Loaded:Wait()

end

local Requests = (syn and syn.request) or request or http_request

local Teleports = (syn and syn.queue_on_teleport) or queueonteleport or queue_on_teleport


if not isfolder("R2O") then
    makefolder("R2O")
    
    makefolder("R2O/UPDATES")
    makefolder("R2O/LOGS")

end


local getLink = Requests({
    
    Url = "https://raw.githubusercontent.com/cheesynob39/R20/IDS/"..game.PlaceId..".lua",
    
    Method = "GET"
})


if getLink.Body == 404 then
    
print("Game Not Supported")
    
    else
        
Teleports([[loadstring(game:HttpGet("https://raw.githubusercontent.com/cheesynob39/R20/Main.lua", true))()]])

        
        loadstring((getLink.Body))()

    
end


