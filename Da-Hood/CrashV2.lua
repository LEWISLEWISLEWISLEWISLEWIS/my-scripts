-- CrashV2 allows you to walk about while crashing unlike CrashV1

game:GetService("Players").LocalPlayer.PlayerGui.Framework.CurrencySound.Volume = 0

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Crash by zefify/REVlENGE")

function Sound()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and v.Name == "[Taser]" then
            if v.Handle.Sound.Volume ~= 0 then
                v.Handle.Sound.Volume = 0
            end
        end
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head.Position).Magnitude <= 9 then -- Dont put the magnitude above 9
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].ClickDetector)
        wait()
        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Taser]").Parent = game:GetService("Players").LocalPlayer.Character
        wait()
        Sound()
        wait()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") and v.Name == "[Taser]" then
                v:Activate()
            end
        end
    end
end)
