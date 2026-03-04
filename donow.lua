local tablee = {}
local tokens = 1000
if getgenv().tokencountthing then
	tokens = getgenv().tokencountthing
end
function checkcaves()
	local c = 0
	for i,v in workspace:GetChildren() do
		if v.Name == "specificOresCave" and v.Anchored == false or v.Name == "whatsupguys" then
			c = c + 1
			table.insert(tablee,v)
		end
	end
	return c
end
function rj()
	game:GetService("TeleportService"):Teleport(15434645479)
end
repeat task.wait() until checkcaves() >= 1
local x10 = game:GetService("Players").LocalPlayer.PlayerGui.tokenshop.convertx10.MouseButton1Click
local x1 = game:GetService("Players").LocalPlayer.PlayerGui.tokenshop.convert.MouseButton1Click
local ore0 = game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore0.MouseButton1Click
local ore1 = game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore1.MouseButton1Click
local ore2 = game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore2.MouseButton1Click
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Mutestuff.settings.showPoints.MouseButton1Click)
fireclickdetector(workspace.freeee.cd)
replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.shop2buttons.pickbuy.MouseButton1Click)
local pick = game.Players.LocalPlayer.Backpack:WaitForChild("Pickaxe")
pick.Parent = game.Players.LocalPlayer.Character
for i,v in pick:GetChildren() do
	if v:IsA("BasePart") or v:IsA("UnionOperation") or v:IsA("MeshPart") then
		v.Massless = true
		v.Size = Vector3.new(5,5,5)
	end
end
checkcaves = function()
	local c = 0
	for i,v in workspace:GetChildren() do
		if v.Name == "specificOresCave" and v.Anchored == false or v.Name == "whatsupguys" then
			c = c + 1
			v.CFrame = pick:GetPivot()*Vector3.new(math.random(-3,3),0,math.random(-3,3))
			v.CanCollide = false
			v.Anchored = true
			v.Name = "whatsupguys"
			v.Size = Vector3.one
		end
	end
	return c
end

function checkitems()
	local c = 0
	for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
		if string.find(v.Name, "Ore") then
			c = c + 1
		end
	end
	return c
end
repeat task.wait() pick:Activate() until checkcaves() == 0
function sellores()
	replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore0.MouseButton1Click)
	replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore1.MouseButton1Click)
	replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore2.MouseButton1Click)
	--replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.shop2buttonsores.ore3.MouseButton1Click)
end
repeat task.wait() sellores() until checkitems() == 0
task.spawn(function()
	for i = 1, 25 do
		replicatesignal(x1)
	end
end)
task.spawn(function()
	for i = 1, 8 do
		replicatesignal(x10)
	end
end)
	queue_on_teleport([[
loadstring(game:HttpGet("https://raw.githubusercontent.com/digitaldoomsdayy-ui/b/main/donow.lua"))()
getgenv().tokencountthing = ]]..tokens..[[
]])
game:GetService("Players").LocalPlayer.PlayerGui.tokenshop.Enabled = true

if game:GetService("Players").LocalPlayer.leaderstat.Savecoins.Value >= tokens then
	queue_on_teleport([[
		game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Mutestuff")
		replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.Mutestuff.settings.showPoints.MouseButton1Click)
		replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.Mutestuff.settings.disablesky.MouseButton1Click)
		replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.Mutestuff.settings.m10.MouseButton1Click)
		replicatesignal(game:GetService("Players").LocalPlayer.PlayerGui.Mutestuff.settings.convertt.MouseButton1Click)
		]])
	game:GetService("TeleportService"):Teleport(15467177984)
else
	rj()
end

