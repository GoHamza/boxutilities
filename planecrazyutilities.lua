local TweenService = game:service("TweenService")
local Player = game:service("Players").LocalPlayer
if gethui then thing = gethui() elseif game:GetService("CoreGui") then thing = game:GetService("CoreGui") else error("Exploit not supported." ) end
local mouse = Player:GetMouse()
local dbd = false
local breaker = false
local thezone = {}
local layerbuilding = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local container = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local up = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local down = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local hide = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local fc = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
for i,zone in pairs(workspace.BuildingZones:GetChildren()) do
	if tostring(zone.Owner.Value) == Player.Name then
		thezone = zone
		zone.Position = Vector3.new(zone.Position.X,52.6,zone.Position.Z)
		wall = Instance.new("Part")
		wall.Size = Vector3.new(130, 2.5, 130)
		wall.Material = Enum.Material.Neon
		wall.BrickColor = BrickColor.new("Forest green")
		wall.Name = "GridWall"
		wall.Transparency = 1
		wall.CanCollide = false
		wall.Anchored = true
		wall.CFrame = CFrame.new(zone.Position.x, zone.Position.y + 3.5, zone.Position.z)
		wall.Parent = zone
		local goal = {}
		goal.Transparency = 0.7
		local tweenInfo = TweenInfo.new(0.2)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
	end
end
layerbuilding.Name = "layerbuilding"
layerbuilding.Parent = thing
mainframe.Name = "mainframe"
mainframe.Parent = layerbuilding
mainframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BorderSizePixel = 6
mainframe.Position = UDim2.new(0.6, 0, 0.93, 0)
mainframe.Size = UDim2.new(0, 280, 0, 107)
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = mainframe
container.Name = "container"
container.Parent = mainframe
container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
container.BackgroundTransparency = 1.000
container.BorderSizePixel = 0
container.Position = UDim2.new(0, 20, 0.1, 0)
container.Size = UDim2.new(0, 230, 0, 55)
UIListLayout.Parent = container
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 20)
up.Name = "up"
up.Parent = container
up.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
up.Size = UDim2.new(0, 50, 0, 50)
up.AutoButtonColor = false
up.Image = "rbxassetid://247420534"
UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = up
down.Name = "down"
down.Parent = container
down.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
down.Size = UDim2.new(0, 50, 0, 50)
down.AutoButtonColor = false
down.Image = "rbxassetid://247420486"
UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = down
hide.Name = "hide"
hide.Parent = container
hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hide.Size = UDim2.new(0, 50, 0, 50)
hide.AutoButtonColor = false
hide.Image = "rbxassetid://257119678"
UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = hide
fc.Parent = container
fc.Name = "fc"
fc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fc.Size = UDim2.new(0, 35, 0, 35)
fc.AutoButtonColor = false
fc.Image = "rbxassetid://6241318618"
UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = fc
hide.MouseButton1Down:Connect(function()
	if dbd == true then
		dbd = false
		local goal = {}
		goal.Transparency = 0.7
		local tweenInfo = TweenInfo.new(1)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
		hide.Image="rbxassetid://257124044"
		local goal = {}
		goal.CFrame = CFrame.new(wall.Position.x, thezone.Position.y + 3.5, wall.Position.z)
		local tweenInfo = TweenInfo.new(0.6)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
		hide.Image="rbxassetid://257119678"
	else
		dbd = true
		local goal = {}
		goal.Transparency = 1
		local tweenInfo = TweenInfo.new(0.3)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
		hide.Image="rbxassetid://257124044"
		local goal = {}
		goal.CFrame = CFrame.new(wall.Position.x, thezone.Position.y - 3, wall.Position.z)
		local tweenInfo = TweenInfo.new(0.8)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
	end
end)
up.MouseButton1Down:Connect(function()
	if dbd == true then
		return
	end
	wall.BrickColor = BrickColor.new("Bright green")
	local goal = {}
	goal.CFrame = CFrame.new(wall.Position.x, wall.Position.y + 2.5, wall.Position.z)
	local tweenInfo = TweenInfo.new(0.1)
	local tween = TweenService:Create(wall, tweenInfo, goal):Play()
	local goal = {}
	goal.Color = BrickColor.new("Forest green").Color
	local tweenInfo = TweenInfo.new(0.6)
	local tween = TweenService:Create(wall, tweenInfo, goal):Play()
end)
down.MouseButton1Down:Connect(function()
	if dbd == true then
		return
	end
	if wall.Position.Y < thezone.Position.y + 4.5 then
		wall.BrickColor = BrickColor.new("Really red")
		local goal = {}
		goal.Color = BrickColor.new("Forest green").Color
		local tweenInfo = TweenInfo.new(0.6)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
	else
		wall.BrickColor = BrickColor.new("Bright green")
		local goal = {}
		goal.CFrame = CFrame.new(wall.Position.x, wall.Position.y - 2.5, wall.Position.z)
		local tweenInfo = TweenInfo.new(0.2)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
		local goal = {}
		goal.Color = BrickColor.new("Forest green").Color
		local tweenInfo = TweenInfo.new(0.6)
		local tween = TweenService:Create(wall, tweenInfo, goal):Play()
	end
end)
Player.Character.Humanoid.Died:Connect(function()
	layerbuilding:Destroy()
	if breaker == true then return end
	breaker = true
	local goal = {}
	goal.Transparency = 1
	local tweenInfo = TweenInfo.new(0.5)
	local tween = TweenService:Create(wall, tweenInfo, goal):Play()
	wait(0.7)
	wall:Destroy()
end)

SprintKey = Enum.KeyCode.LeftShift

localPlayer = game.Players.LocalPlayer
chr = localPlayer.Character
Camera = workspace.CurrentCamera
Mouse = localPlayer:GetMouse()

UserInputService = game:GetService("UserInputService")


movePosition = Vector2.new(0,0)
moveDirection = Vector3.new(0,0,0)

targetMovePosition = movePosition

Y_Sensitivity = 300;
X_Sensitivity = 300;

lastRightButtonDown = Vector2.new(0,0)
rightMouseButtonDown = false

targetFOV = 70

sprinting = false;
sprintingSpeed = 2;

keysDown = {}

moveKeys = {
[Enum.KeyCode.D] = Vector3.new(1,0,0),
[Enum.KeyCode.A] = Vector3.new(-1,0,0),
[Enum.KeyCode.S] = Vector3.new(0,0,1),
[Enum.KeyCode.W] = Vector3.new(0,0,-1),
[Enum.KeyCode.E] = Vector3.new(0,1,0),
[Enum.KeyCode.Space] = Vector3.new(0,1,0),
[Enum.KeyCode.Q] = Vector3.new(0,-1,0)
}

Tween = function(a,b,t)
if t == 1 then
return b
else 
if tonumber(a) then
    return a * (1-t) + (b*t)
else
return a:Lerp(b,t);
end
end
end

ClampVector3 = function(x,min,max)

return 
Vector3.new(
math.clamp(x.X,min.X,max.X),
math.clamp(x.Y,min.Y,max.Y),
math.clamp(x.Z,min.Z,max.Z)
)

end


UserInputService.InputChanged:connect(function(inputObject)
if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
movePosition = movePosition + Vector2.new(inputObject.Delta.x,inputObject.Delta.y)
end
end)

CalculateMovement = function()
local newMovement = Vector3.new(0,0,0)
for i,v in pairs(keysDown) do
newMovement = newMovement + (moveKeys[i] or Vector3.new(0,0,0))
end
return newMovement
end

Round = function(num, numDecimalPlaces)
  return math.floor((num/numDecimalPlaces) + .5)*numDecimalPlaces
end

Input = function(input,gameProcessed)
	if breaker == true then return end
if moveKeys[input.KeyCode] then
if input.UserInputState == Enum.UserInputState.Begin then
keysDown[input.KeyCode] = true
elseif input.UserInputState == Enum.UserInputState.End then
keysDown[input.KeyCode] = nil
end
else
if input.UserInputState == Enum.UserInputState.Begin then
if input.UserInputType == Enum.UserInputType.MouseButton2 then
rightMouseButtonDown = true
lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
elseif input.KeyCode == Enum.KeyCode.Z then
targetFOV = 20
elseif input.KeyCode == SprintKey then
sprinting = true
end
else
if input.UserInputType == Enum.UserInputType.MouseButton2 then
rightMouseButtonDown = false
UserInputService.MouseBehavior = Enum.MouseBehavior.Default
elseif input.KeyCode == Enum.KeyCode.Z then
targetFOV = 70
elseif input.KeyCode == SprintKey then
sprinting = false
end
end
end
end
 
Mouse.WheelForward:connect(function()
   Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0,0,-5)
end)

Mouse.WheelBackward:connect(function()
   Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0,0,5)
end)

UserInputService.InputBegan:connect(Input)
UserInputService.InputEnded:connect(Input)
local Toggled = false
fc.MouseButton1Down:Connect(function()
Toggled = not Toggled
if Toggled then
Camera.CameraType = Enum.CameraType.Scriptable
chr.HumanoidRootPart.Anchored = true
chr.Humanoid.PlatformStand = true 
else
chr.Humanoid.PlatformStand = false
chr.HumanoidRootPart.Anchored = false
workspace.CurrentCamera.CameraSubject = chr.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
end
end)

game:service("RunService").RenderStepped:Connect(function()
if breaker == true then
if f == true then return end
f=true
if Toggled then


chr.Humanoid.PlatformStand = false
chr.HumanoidRootPart.Anchored = false
workspace.CurrentCamera.CameraSubject = chr.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
end
end
if breaker == true then return end
if Toggled then
local mouseTarget = Mouse.Hit
targetMovePosition = movePosition
Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y/Y_Sensitivity ,-targetMovePosition.X/X_Sensitivity, 0) * CFrame.new(CalculateMovement() * ((({[true]=sprintingSpeed})[sprinting]) or .5) )
Camera.FieldOfView = Tween(Camera.FieldOfView,targetFOV,.5)
if rightMouseButtonDown then
UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X,Mouse.Y))
lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
end
end
end)
