--// THIS IS A SIMPLE WHITELIST \\--

local Player = game:GetService("Players").LocalPlayer
local UserIdWhitelist = {
    [123] = true;
    [1234] = true;
}

if not UserIdWhitelist[Player.UserId] then
    Player:Kick("Not whitelisted")
    else
        if UserIdWhitelist[Player.UserId] then
            -- put your script here
        end
end