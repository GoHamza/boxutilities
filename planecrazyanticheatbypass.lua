game:GetService("ReplicatedStorage").Remotes.KickEvent:Destroy()
for b,v in next, game.Players.LocalPlayer:GetDescendants() do
if not v.Name:lower():find("chat") and v:IsA("LocalScript") then
v:Destroy()
end
end
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function
setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
game.Players.LocalPlayer.Character.Head.Anchored = false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
print("no")
wait(9e9)
return
end
return old(self, ...)
end)
game.Players.LocalPlayer.Character.Torso:Destroy()
