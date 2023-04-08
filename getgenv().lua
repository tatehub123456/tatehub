getgenv().SwordClick = false
getgenv().AutoNpcKill = false
function SwordAutoPower()
    spawn(function()
        while SwordClick == true do
            task.wait()
            mouse1press()
        end
    end)
end
SwordAutoPower()
function AutoKillNPCS()
    spawn(function()
        if AutoNpcKill == true then
     for i, v in pairs(game:GetService("Workspace").Live.NPCs.Client:GetDescendants()) do
        if v.Name == "HumanoidRootPart" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,5,5)
            task.wait(4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,5,5)
            while AutoNpcKill == true do
                task.wait(0.6)
                mouse1press()
                end
        end
    end
   end
end)
end
while AutoNpcKill == true do
    task.wait()
    AutoKillNPCS()
end