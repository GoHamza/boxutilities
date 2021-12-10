-- Loader: Use this to load the reanimation.
--[[
_G.RejoinButton = true -- Makes the reset button in the menu rejoin you.
_G.PermanentDeath = true  -- Permanent death for moving the head and using fling.
_G.Fling = false -- Turns your root part into a block that can send people to the orbit.
_G.NetworkOwnershipBypass = 50 -- The higher the number, the more your character will jitter but it will be less prone to limbs falling. Set to 0 if you don't want it. Recommended number is 30.
_G.Noclip = true -- Makes your character unflingable and pass through walls.
_G.ReanimatePlatform = true -- Teleports your character to a platform while reanimating. Prevents people from taking NetworkOwnership of your limbs.
loadstring(game:HttpGet(string.reverse("aul.etaminaer/niam/seitilituxob/azmaHoG/moc.tnetnocresubuhtig.war//:sptth")))()
]]

-- Don't be surprised if it's similar to Mizt's reanimation. It's a fork of it. Completely open-source, I don't care if you skid it or make a fork.
-- If you're converting a script from Mizt's reanimation, replace workspace.non with workspace.AnimatorCharacter and Ali_P or Ali_O are simply AlignPosition and AlignOrientation respectivly.
-- This script will be updated when I feel like it. You can message me ideas on my Discord, GoHamza#6766.
-- Also tell me what happens when an apple becomes a doctor. Does it create a blackhole?

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local thebox = Instance.new("Frame")
thebox.Name = "thebox"
thebox.Parent = ScreenGui
thebox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thebox.BorderColor3 = Color3.fromRGB(198, 198, 198)
thebox.BorderSizePixel = 0
thebox.Position = UDim2.new(0.00600000005, 0, 1.20000005, 0)
thebox.Size = UDim2.new(0, 50, 0, 50)
local Frame = Instance.new("Frame")
Frame.Parent = thebox
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(198, 198, 198)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.993090868, 0, -0.0118128657, 0)
Frame.Size = UDim2.new(0, 84, 0, 57)
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-1.06700003, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 83, 0, 57)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "BOX"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 38.000
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = thebox
coroutine.wrap(function()
thebox:TweenPosition(UDim2.new(0.006, 0, 0.932, 0),"Out","Sine",1.5)
wait(1.6)
TextLabel:TweenPosition(UDim2.new(-0.002, 0, 0, 0),"Out","Sine",0.5)
end)()

print("BOX REANIMATION BY GOHAMZA. TO CONTACT THE OWNER, MESSAGE GoHamza#6766.")
local BOXstart = tick()
if _G.PermanentDeath == true then
	print("Reanimating with permanent death...")
else
	print("Reanimating without permanent death...")
	if Fling == true then
		warn("Cannot use fling without permanent death!")
		Fling = false
	end
end
local reanimationstart = tick()
if _G.ReanimatePlatform == true and _G.PermanentDeath == true then
	print("Created platform.")
	baseplatium = Instance.new("Part", workspace)
	baseplatium.Name = "FO10 is a skid"
	baseplatium.Position = Vector3.new(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y + 300,game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z)
	baseplatium.CanCollide = true
	baseplatium.Anchored = true
	baseplatium.Transparency = 0.5
	baseplatium.BrickColor = BrickColor.new("Forest green")
	baseplatium.Material = "Neon"
	baseplatium.Size = Vector3.new(0,0,0)
	previouscf = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	coroutine.wrap(function()
		for i = 0, 10, 0.5 do
			wait()
			baseplatium.Size = Vector3.new(i,i/8,i)
			baseplatium.Orientation = Vector3.new(0,i*18,0)
		end
	end)()
    local goal = {}
	goal.CFrame = baseplatium.CFrame + Vector3.new(0,20,0)
	local tweenInfo = TweenInfo.new(0.5)
	local tween = game:GetService("TweenService"):Create(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), tweenInfo, goal):Play()
end

if _G.PermanentDeath == true then
	Bypass = "death"
else
	Bypass = "limbs"
end
ded = false
if _G.PermanentDeath == true then
	local startsound = Instance.new("Sound", game:GetService("ReplicatedStorage"))
	startsound.SoundId = "rbxassetid://4462044869"
	startsound.Parent = workspace
	startsound.Volume = 0.7
	startsound.PlayOnRemove = true
	startsound:Destroy()
end
function align(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1);
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 1000000000;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1);
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 1000000000;
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1);
	local AttachmentB=Instance.new('Attachment',Part0);
	local AttachmentC=Instance.new('Attachment',Part1);
	local AttachmentD=Instance.new('Attachment',Part0);
	AttachmentC.Orientation = Angle
	AttachmentA.Position = Position
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentC;
	AlignOri.Attachment0 = AttachmentD;
end
if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
	game:GetService("Players").LocalPlayer["Character"].Archivable = true 
	local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
	CloneChar.Parent = workspace 
	CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	wait() 
	CloneChar.Humanoid.BreakJointsOnDeath = false
	workspace.Camera.CameraSubject = CloneChar.Humanoid
	CloneChar.Name = "AnimatorCharacter" 
	CloneChar.Humanoid.DisplayDistanceType = "None"
	if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
	
	local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
	DeadChar.HumanoidRootPart:Destroy()

	local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
	local CONVEC
	local function VECTORUNIT()
	if ded then CONVEC:Disconnect(); return end
	local lookVec = workspace.Camera.CFrame.lookVector
	local Root = CloneChar["HumanoidRootPart"]
	LVecPart.Position = Root.Position
	LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
	end
	CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

	local CONDOWN
	local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
	local function KEYDOWN(_,Processed) 
	if ded then CONDOWN:Disconnect(); return end
	if Processed ~= true then
	local Key = _.KeyCode
	if Key == Enum.KeyCode.W then
	WDown = true end
	if Key == Enum.KeyCode.A then
	ADown = true end
	if Key == Enum.KeyCode.S then
	SDown = true end
	if Key == Enum.KeyCode.D then
	DDown = true end
	if Key == Enum.KeyCode.Space then
	SpaceDown = true end end end
	CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

	local CONUP
	local function KEYUP(_)
	if ded then CONUP:Disconnect(); return end
	local Key = _.KeyCode
	if Key == Enum.KeyCode.W then
	WDown = false end
	if Key == Enum.KeyCode.A then
	ADown = false end
	if Key == Enum.KeyCode.S then
	SDown = false end
	if Key == Enum.KeyCode.D then
	DDown = false end
	if Key == Enum.KeyCode.Space then
	SpaceDown = false end end
	CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

	local function MoveClone(X,Y,Z)
	LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
	workspace["AnimatorCharacter"].Humanoid.WalkToPoint = LVecPart.Position
	end

	coroutine.wrap(function() 
	while true do game:GetService("RunService").RenderStepped:Wait()
	if ded then break end
	if WDown then MoveClone(0,0,1e4) end
	if ADown then MoveClone(1e4,0,0) end
	if SDown then MoveClone(0,0,-1e4) end
	if DDown then MoveClone(-1e4,0,0) end
	if SpaceDown then CloneChar["Humanoid"].Jump = true end
	if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
	workspace["AnimatorCharacter"].Humanoid.WalkToPoint = workspace["AnimatorCharacter"].HumanoidRootPart.Position end
	end 
	end)()

	local con
	function UnCollide()
		if ded then con:Disconnect(); return end
		for _,Parts in next, CloneChar:GetDescendants() do
			if Parts:IsA("BasePart") then
				Parts.CanCollide = false 
			end 
		end
		for _,Parts in next, DeadChar:GetDescendants() do
			if Parts:IsA("BasePart") then
			Parts.CanCollide = false
			end 
		end 
	end
	con = game:GetService("RunService").Stepped:Connect(UnCollide)

	local resetBindable = Instance.new("BindableEvent")
	resetBindable.Event:connect(function()
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		resetBindable:Destroy()
		pcall(function()
			CloneChar.Humanoid.Health = 0
			DeadChar.Humanoid.Health = 0
		end)
	end)
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

	coroutine.wrap(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()
			if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
				ded = true
				pcall(function()
					game.Players.LocalPlayer.Character = CloneChar
					CloneChar:Destroy()
					game.Players.LocalPlayer.Character = DeadChar
					if resetBindable then
						game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
						resetBindable:Destroy()
					end
					DeadChar.Humanoid.Health = 0
				end)
				break
			end		
		end
	end)()

	align(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

	coroutine.wrap(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()
			if ded then break end
			DeadChar["Torso"].CFrame = CloneChar["Torso"].CFrame
		end
	end)()

	for _,v in next, DeadChar:GetChildren() do
		if v:IsA("Accessory") then
			align(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
		end
	end

	for _,BodyParts in next, CloneChar:GetDescendants() do
	if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
	BodyParts.Transparency = 1 end end

	DeadChar.Torso["Left Shoulder"]:Destroy()
	DeadChar.Torso["Right Shoulder"]:Destroy()
	DeadChar.Torso["Left Hip"]:Destroy()
	DeadChar.Torso["Right Hip"]:Destroy()

elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
	game:GetService("Players").LocalPlayer["Character"].Archivable = true 
	local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
	game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
	game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
	game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
	local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
	Instance.new("Part",FalseChar).Name = "Head" 
	Instance.new("Part",FalseChar).Name = "Torso" 
	Instance.new("Humanoid",FalseChar).Name = "Humanoid"
	game:GetService("Players").LocalPlayer["Character"] = FalseChar
	game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
	local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
	Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
	Clone.Name = "Humanoid"
	game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
	game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
	game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
	wait(5.65) 
	game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
	CloneChar.Parent = workspace 
	CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	wait() 
	CloneChar.Humanoid.BreakJointsOnDeath = false
	workspace.Camera.CameraSubject = CloneChar.Humanoid 
	CloneChar.Name = "AnimatorCharacter" 
	CloneChar.Humanoid.DisplayDistanceType = "None"
	if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
	
	FalseChar:Destroy()

	local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

	local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
	local CONVEC
	local function VECTORUNIT()
	if ded then CONVEC:Disconnect(); return end
	local lookVec = workspace.Camera.CFrame.lookVector
	local Root = CloneChar["HumanoidRootPart"]
	LVecPart.Position = Root.Position
	LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
	end
	CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

	local CONDOWN
	local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
	local function KEYDOWN(_,Processed) 
	if ded then CONDOWN:Disconnect(); return end
	if Processed ~= true then
	local Key = _.KeyCode
	if Key == Enum.KeyCode.W then
	WDown = true end
	if Key == Enum.KeyCode.A then
	ADown = true end
	if Key == Enum.KeyCode.S then
	SDown = true end
	if Key == Enum.KeyCode.D then
	DDown = true end
	if Key == Enum.KeyCode.Space then
	SpaceDown = true end end end
	CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

	local CONUP
	local function KEYUP(_)
	if ded then CONUP:Disconnect(); return end
	local Key = _.KeyCode
	if Key == Enum.KeyCode.W then
	WDown = false end
	if Key == Enum.KeyCode.A then
	ADown = false end
	if Key == Enum.KeyCode.S then
	SDown = false end
	if Key == Enum.KeyCode.D then
	DDown = false end
	if Key == Enum.KeyCode.Space then
	SpaceDown = false end end
	CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

	local function MoveClone(X,Y,Z)
	LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
	workspace["AnimatorCharacter"].Humanoid.WalkToPoint = LVecPart.Position
	end

	coroutine.wrap(function() 
	while true do game:GetService("RunService").RenderStepped:Wait()
	if ded then break end
	if WDown then MoveClone(0,0,1e4) end
	if ADown then MoveClone(1e4,0,0) end
	if SDown then MoveClone(0,0,-1e4) end
	if DDown then MoveClone(-1e4,0,0) end
	if SpaceDown then CloneChar["Humanoid"].Jump = true end
	if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
	workspace["AnimatorCharacter"].Humanoid.WalkToPoint = workspace["AnimatorCharacter"].HumanoidRootPart.Position end
	end 
	end)()

	local con
	function UnCollide()
		if ded then con:Disconnect(); return end
		for _,Parts in next, CloneChar:GetDescendants() do
			if Parts:IsA("BasePart") then
				Parts.CanCollide = false 
			end 
		end
		for _,Parts in next, DeadChar:GetDescendants() do
			if Parts:IsA("BasePart") then
			Parts.CanCollide = false
			end 
		end 
	end
	con = game:GetService("RunService").Stepped:Connect(UnCollide)

	local resetBindable = Instance.new("BindableEvent")
	resetBindable.Event:connect(function()
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		resetBindable:Destroy()
		CloneChar.Humanoid.Health = 0
	end)
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

	coroutine.wrap(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()
			if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
				ded = true
				pcall(function()
					game.Players.LocalPlayer.Character = CloneChar
					CloneChar:Destroy()
					game.Players.LocalPlayer.Character = DeadChar
					if resetBindable then
						game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
						resetBindable:Destroy()
					end
					DeadChar.Humanoid.Health = 0
				end)
				break
			end		
		end
	end)()

	align(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   	align(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

	for _,v in next, DeadChar:GetChildren() do
		if v:IsA("Accessory") then
			align(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
		end
	end

	for _,BodyParts in next, CloneChar:GetDescendants() do
	if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
	BodyParts.Transparency = 1 end end
elseif Bypass == "hats" then
	game:GetService("Players").LocalPlayer["Character"].Archivable = true 
	local DeadChar = game.Players.LocalPlayer.Character
	DeadChar.Name = "AnimatorCharacter"
	local HatPosition = Vector3.new(0,0,0)
	local HatName = "MediHood"
	local HatsLimb = {
		Rarm = DeadChar:FindFirstChild("Hat1"),
		Larm = DeadChar:FindFirstChild("Pink Hair"),
		Rleg = DeadChar:FindFirstChild("Robloxclassicred"),
		Lleg = DeadChar:FindFirstChild("Kate Hair"),
		Torso1 = DeadChar:FindFirstChild("Pal Hair"),
		Torso2 = DeadChar:FindFirstChild("LavanderHair")
	}
	HatName = DeadChar:FindFirstChild(HatName)

	coroutine.wrap(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()
			if not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
				ded = true
				pcall(function()
					if resetBindable then
						game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
						resetBindable:Destroy()
					end
					DeadChar.Humanoid.Health = 0
				end)
				break
			end		
		end
	end)()

	local con
	function UnCollide()
		if ded then con:Disconnect(); return end
		for _,Parts in next, DeadChar:GetDescendants() do
			if Parts:IsA("BasePart") then
			Parts.CanCollide = false
			end 
		end 
	end
	con = game:GetService("RunService").Stepped:Connect(UnCollide)

	align(HatName.Handle,DeadChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
	align(HatsLimb.Torso1.Handle,DeadChar["Torso"],Vector3.new(0.5,0,0),Vector3.new(90,0,0))
	align(HatsLimb.Torso2.Handle,DeadChar["Torso"],Vector3.new(-0.5,0,0),Vector3.new(90,0,0))
	align(HatsLimb.Larm.Handle,DeadChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
	align(HatsLimb.Rarm.Handle,DeadChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
	align(HatsLimb.Lleg.Handle,DeadChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
	align(HatsLimb.Rleg.Handle,DeadChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
    
    for i,v in pairs(HatsLimb) do
		v.Handle:FindFirstChild("AccessoryWeld"):Destroy()
		if v.Handle:FindFirstChild("Mesh") then v.Handle:FindFirstChild("Mesh"):Destroy() end
		if v.Handle:FindFirstChild("SpecialMesh") then v.Handle:FindFirstChild("SpecialMesh"):Destroy() end
	end
	HatName.Handle:FindFirstChild("AccessoryWeld"):Destroy()
end
Bypass = nil
local donesound = Instance.new("Sound", game:GetService("ReplicatedStorage"))
donesound.SoundId = "rbxassetid://4462044869"
donesound.Parent = workspace
donesound.Volume = 0.7
donesound.Pitch = 1.6
donesound.PlayOnRemove = true
donesound:Destroy()
_G.NetworkOwnershipBypass = tonumber(_G.NetworkOwnershipBypass)
local as = game:GetService("Players").LocalPlayer.Character
if _G.NetworkOwnershipBypass > 0 then
	print("Setting up NetworkOwnership bypass...")
	local val = tonumber(_G.NetworkOwnershipBypass)
	for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
		if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
			BOXNETLESS = game:GetService("RunService").Heartbeat:connect(function()
				v.Velocity = Vector3.new(val,0,0)
				if as:FindFirstChild("HumanoidRootPart") then 
                    as.HumanoidRootPart.Velocity = Vector3.new(val,0,0)
                end
			end)
		end
	end

	print("NetworkOwnership bypass successfully set up!")
end
if _G.ReanimatePlatform == true and _G.PermanentDeath == true then
	wait(0.1)
	spawn(function()
		for i = 10, 0, -0.5 do
			wait()
			baseplatium.Size = Vector3.new(i,i/8,i)
			baseplatium.Orientation = Vector3.new(0,i*9,0)
		end
		baseplatium:Destroy()
	end)
    local goal = {}
	goal.CFrame = previouscf
	local tweenInfo = TweenInfo.new(1.2)
	local tween = game:GetService("TweenService"):Create(workspace.AnimatorCharacter:FindFirstChild("HumanoidRootPart"), tweenInfo, goal):Play()
	--workspace.AnimatorCharacter:FindFirstChild("HumanoidRootPart").CFrame = previouscf
end
local reanimationend = tick() - reanimationstart
print("Reanimated! Just took "..reanimationend.." seconds.")
if _G.Fling == true then
    if _G.PermanentDeath == true then
 	    local chr = game:GetService("Players").LocalPlayer.Character
	    print("Setting up fling...")
	    workspace.AnimatorCharacter.HumanoidRootPart.AlignOrientation:Destroy()
	    chr.HumanoidRootPart.Transparency = 0.7
	    chr.HumanoidRootPart.BrickColor = BrickColor.new("Bright green")
	    chr.HumanoidRootPart.CanCollide = false
	    local att = Instance.new("Attachment", chr.Torso)
    	att.Name = "Fling Attachment"
	    local angularvelocity = Instance.new("BodyAngularVelocity", chr.HumanoidRootPart)
    	angularvelocity.AngularVelocity = Vector3.new(0,math.huge,0)
	    print("Fling successfully set up!")
    else
        warn("Flinging without PermanentDeath active will result in fatal error. Please disable _G.Fling or enable _G.PermanentDeath")
    end
end
if _G.RejoinButton == true then
	local Players = game:GetService("Players")
	print("Setting up rejoin button...")
	coroutine.wrap(function()
		repeat wait() until game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:FindFirstChild("ResetCharacter")
		game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.BottomButtonFrame.ResetCharacterButtonButton.ResetCharacterButtonTextLabel.Text = "Rejoin"
		game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ResetCharacter.ResetCharacterText.Text = "Are you sure you want to rejoin?"
		game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.Players.ButtonsContainer.ResetButtonButton.ResetButtonTextLabel.Text = "Rejoin"
		game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ResetCharacter.ResetCharacterText.ResetButtonContainer.DontResetCharacterButton.DontResetCharacterTextLabel.Text = "No"
		game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ResetCharacter.ResetCharacterText.ResetButtonContainer.ResetCharacterButton.ResetCharacterTextLabel.Text = "Yes"
		game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ResetCharacter.ResetCharacterText.ResetButtonContainer.ResetCharacterButton.MouseButton1Down:Connect(function()
			if #Players:GetPlayers() <= 1 then
				Players.LocalPlayer:Kick("Server stopped. Sending you to a new server.")
				wait()
				game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
			else
				game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
			end
		end)
	end)()
	print("Successfully set up rejoin button!")
end
if _G.Noclip == true then
	local Character = game:GetService("Players").LocalPlayer.Character
	local function NoclipLoop()
		for _, child in pairs(Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
end
local BOXend = tick() - BOXstart
print("Cleaning up...")
for i, v in next, workspace:GetChildren() do
	if v.Name == "FO10 is a skid" then
		v:Destroy()
	end
end
reanimationend = nil
reanimationstart = nil
BOXstart = nil
print("All done, took just "..BOXend.." seconds!")
BOXend = nil
 
coroutine.wrap(function()
wait(1)
TextLabel:TweenPosition(UDim2.new(-1.067, 0, 0, 0),"Out","Sine",0.5)
wait(0.5)
thebox:TweenPosition(UDim2.new(0.006, 0, 1.2, 0),"Out","Sine",3)
game:GetService("Debris"):AddItem(ScreenGui, 3.2)
end)()
