pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LEWISLEWISLEWISLEWISLEWIS/my-scripts/main/Da-Hood/Auto-Unban.lua"))()
end)

wait(7.5)

pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LEWISLEWISLEWISLEWISLEWIS/my-scripts/main/Da-Hood/Godblock.lua"))()
end)

Money = game:GetService("Players").LocalPlayer.DataFolder.Currency.Value
Tool = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
Tool.Name = "Crash"
Tool.ToolTip = "Hold this tool to buy tasers"

wait(0.5)

game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crash").Parent = game:GetService("Players").LocalPlayer.Character

game:GetService("RunService").Stepped:Connect(function()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crash") then
        HoldingCrash = true
    end
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crash") then
        HoldingCrash = false
    end
    if HoldingCrash == true then
        if Money > 100000 then -- You're probably gonna need atleast 100k
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
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") and v.Name == "[Taser]" then
                    v:Activate()
                end
            end
        end
    end
end)
