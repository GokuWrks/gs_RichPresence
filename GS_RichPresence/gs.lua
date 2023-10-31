local refresh  =  30000                    -- Update zeit (In ms)
local appid    =  'Deine ID'               -- application ID https://discordapp.com/developers/applications/ hier findest du deine ID.
local asset1   =  'großes Logo'            -- großes Logo // Hier fügst du dein bild hinzu https://discordapp.com/developers/applications/APPID/rich-presence/assets
local asset2   =  'kleines Logo'           -- kleines logo 
local text1    =  'GS Developement'        -- Der Text wenn man das große Logo hovert
local text2    =  'GS Developement'        -- Der Text wenn man das kleine Logo hovert

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(refresh)

        local id = GetPlayerServerId(PlayerId())
        local name = GetPlayerName(PlayerId())
        local playerCount = #GetActivePlayers()

        SetDiscordAppId(appid)
        SetDiscordRichPresenceAsset(asset1)
        SetDiscordRichPresenceAssetText(text1)
        SetDiscordRichPresenceAssetSmall(asset2)
        SetDiscordRichPresenceAssetSmallText(text2)

        SetDiscordRichPresenceAction(0, "Discord", "https://dsc.gg/gsdev") 
        SetDiscordRichPresenceAction(1, "FiveM", "https://dsc.gg/gsdev")

        SetRichPresence(playerCount.."/69 - ID: "..id.." | Name: "..name)
        
    end
end)