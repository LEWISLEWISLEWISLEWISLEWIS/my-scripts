local MT = getrawmetatable(game)
local NC = MT.__namecall
setreadonly(MT, false)

MT.__namecall = newcclosure(function(self, ...)
    local A = {...}
    local GNCM = getnamecallmethod() or get_namecall_method()
    if GNCM == "FireServer" and self.Name == "MainEvent" then
        return wait(9e9)
    end
    return NC(self, unpack(A))
end)
setreadonly(MT, true)

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Anti Cheat Bypass by zefify/REVlENGE")

function RAC()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("Script") and v.Name == "LocalScript" and v.Disabled == false then
            v.Disabled = true
        end
    end
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(""):Destroy()
    else
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("") then
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(""):Destroy()
        end
    end
end

game:GetService("RunService").Stepped:Connect(function()
    RAC()
end)
