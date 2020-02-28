--[[ mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
function Tlprt(Cframe)
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Cframe
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
--]]

mouse = game.Players.LocalPlayer:GetMouse()


hotkey = Enum.KeyCode.G

UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(key, gp)
if key.KeyCode == hotkey then
	local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
function Tlprt(Cframe)
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Cframe
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end
end)