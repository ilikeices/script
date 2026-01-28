
game:GetService("TeleportService").TeleportInitFailed:Connect(function() if game.PlaceId==168556275 then game:GetService("Players").LocalPlayer:Kick("wrong game bruh, search: [UP] Just a baseplate. - creator: the local maze") end end)
if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then local a=game:GetService("CollectionService")local b={}b["ScreenGui_1"]=Instance.new("ScreenGui",game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))b["ScreenGui_1"].IgnoreGuiInset=true b["ScreenGui_1"].ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets b["ScreenGui_1"].ZIndexBehavior=Enum.ZIndexBehavior.Sibling a:AddTag(b["ScreenGui_1"],"main")b["Frame_2"]=Instance.new("Frame",b["ScreenGui_1"])b["Frame_2"].BorderSizePixel=0 b["Frame_2"].BackgroundColor3=Color3.fromRGB(0,0,0)b["Frame_2"].AnchorPoint=Vector2.new(.5,.5)b["Frame_2"].Size=UDim2.new(.36316,0,.46667,0)b["Frame_2"].Position=UDim2.new(.5,0,.5,0)b["Frame_2"].BackgroundTransparency=.5 b["UICorner_3"]=Instance.new("UICorner",b["Frame_2"])b["UICorner_3"].CornerRadius=UDim.new(.04,0)b["TextLabel_4"]=Instance.new("TextLabel",b["Frame_2"])b["TextLabel_4"].TextWrapped=true b["TextLabel_4"].BorderSizePixel=0 b["TextLabel_4"].TextScaled=true b["TextLabel_4"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].TextColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].BackgroundTransparency=1 b["TextLabel_4"].Size=UDim2.new(.81159,0,.32143,0)b["TextLabel_4"].Text="You are in the wrong game, please copy the link below and enter the game. (game: Just a baseplate., game creator: dreammazestudio/ the local maze)"b["TextLabel_4"].Position=UDim2.new(.0942,0,.13095,0)b["TextBox_5"]=Instance.new("TextBox",b["Frame_2"])b["TextBox_5"].CursorPosition=-1 b["TextBox_5"].BorderSizePixel=0 b["TextBox_5"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextBox_5"].ClearTextOnFocus=false b["TextBox_5"].Size=UDim2.new(.81159,0,.29762,0)b["TextBox_5"].Position=UDim2.new(.1087,0,.5119,0)b["TextBox_5"].Text="https://www.roblox.com/games/123974602339071/UP-Just-a-baseplate"b["TextBox_5"].TextScaled=true b["UIAspectRatioConstraint_6"]=Instance.new("UIAspectRatioConstraint",b["Frame_2"])b["UIAspectRatioConstraint_6"].AspectRatio=1.64286 game:GetService("TeleportService"):Teleport(123974602339071,game:GetService("Players").LocalPlayer)return b["ScreenGui_1"],require end



local Vector3_101 = Vector3.new(1, 0, 1)
local netless_Y = Vector3.new(0, 25.1, 0)
local function getNetlessVelocity(realPartVelocity) --edit this if you have a better netless method
    local netlessVelocity = realPartVelocity * Vector3_101
    local mag = netlessVelocity.Magnitude
    if mag > 0.1 then
        netlessVelocity = (100 / mag) * netlessVelocity
    end
    netlessVelocity = netless_Y + netlessVelocity
    return netlessVelocity
end
local simradius = "shp" --simulation radius (net bypass) method
--"shp" - sethiddenproperty
--"ssr" - setsimulationradius
--false - disable
local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
local newanimate = true --disables the animate script and enables after reanimation
local discharscripts = true --disables all localScripts parented to your character before reanimation
local R15toR6 = true --tries to convert your character to r6 if its r15
local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
local hedafterneck = true --disable aligns for head and enable after neck is removed
local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
local method = 3 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
local alignmode = 2 --AlignPosition mode
--modes:
--1 - AlignPosition rigidity enabled true
--2 - 2 AlignPositions rigidity enabled both true and false
--3 - AlignPosition rigidity enabled false

local lp = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat
local renderstepped = rs.RenderStepped
local sg = game:GetService("StarterGui")
local ws = game:GetService("Workspace")
local cf = CFrame.new
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local inf = math.huge

local c = lp.Character

if not (c and c.Parent) then
	return
end

c.Destroying:Connect(function()
	c = nil
end)

local function gp(parent, name, className)
	if typeof(parent) == "Instance" then
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				return v
			end
		end
	end
	return nil
end

local function align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)

	local att0 = Instance.new("Attachment", Part0)
	att0.Orientation = v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment", Part1)
	att1.Orientation = v3_0
	att1.Position = v3_0
	att1.Name = "att1_" .. Part1.Name

	if (alignmode == 1) or (alignmode == 2) then
		local ape = Instance.new("AlignPosition", att0)
		ape.ApplyAtCenterOfMass = false
		ape.MaxForce = inf
		ape.MaxVelocity = inf
		ape.ReactionForceEnabled = false
		ape.Responsiveness = 200
		ape.Attachment1 = att1
		ape.Attachment0 = att0
		ape.Name = "AlignPositionRtrue"
		ape.RigidityEnabled = true
	end

	if (alignmode == 2) or (alignmode == 3) then
		local apd = Instance.new("AlignPosition", att0)
		apd.ApplyAtCenterOfMass = false
		apd.MaxForce = inf
		apd.MaxVelocity = inf
		apd.ReactionForceEnabled = false
		apd.Responsiveness = 200
		apd.Attachment1 = att1
		apd.Attachment0 = att0
		apd.Name = "AlignPositionRfalse"
		apd.RigidityEnabled = false
	end

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false

	if type(getNetlessVelocity) == "function" then
	    local realVelocity = v3_0
        local steppedcon = stepped:Connect(function()
            Part0.Velocity = realVelocity
        end)
        local heartbeatcon = heartbeat:Connect(function()
            realVelocity = Part0.Velocity
            Part0.Velocity = getNetlessVelocity(realVelocity)
        end)
        Part0.Destroying:Connect(function()
            Part0 = nil
            steppedcon:Disconnect()
            heartbeatcon:Disconnect()
        end)
    end
end

local function respawnrequest()
	local ccfr = ws.CurrentCamera.CFrame
	local c = lp.Character
	lp.Character = nil
	lp.Character = c
	local con = nil
	con = ws.CurrentCamera.Changed:Connect(function(prop)
	    if (prop ~= "Parent") and (prop ~= "CFrame") then
	        return
	    end
	    ws.CurrentCamera.CFrame = ccfr
	    con:Disconnect()
    end)
end

local destroyhum = (method == 4) or (method == 5)
local breakjoints = (method == 0) or (method == 4)
local antirespawn = (method == 0) or (method == 2) or (method == 3)

addtools = addtools and gp(lp, "Backpack", "Backpack")

local fenv = getfenv()
if simradius == "shp" then
	local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.set_hidden_prop or fenv.sethiddenprop
	if shp then
		spawn(function()
			while c and heartbeat:Wait() do
				shp(lp, "SimulationRadius", inf)
			end
		end)
	end
elseif simradius == "ssr" then
	local ssr = fenv.setsimulationradius or fenv.set_simulation_radius or fenv.set_sim_radius or fenv.setsimradius or fenv.set_simulation_rad or fenv.setsimulationrad
	if ssr then
		spawn(function()
			while c and heartbeat:Wait() do
				ssr(inf)
			end
		end)
	end
end

antiragdoll = antiragdoll and function(v)
	if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
		v.Parent = nil
	end
end

if antiragdoll then
	for i, v in pairs(c:GetDescendants()) do
		antiragdoll(v)
	end
	c.DescendantAdded:Connect(antiragdoll)
end

if antirespawn then
	respawnrequest()
end

if method == 0 then
	wait(loadtime)
	if not c then
		return
	end
end

if discharscripts then
	for i, v in pairs(c:GetChildren()) do
		if v:IsA("LocalScript") then
			v.Disabled = true
		end
	end
elseif newanimate then
	local animate = gp(c, "Animate", "LocalScript")
	if animate and (not animate.Disabled) then
		animate.Disabled = true
	else
		newanimate = false
	end
end

local hum = c:FindFirstChildOfClass("Humanoid")
if hum then
	for i, v in pairs(hum:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end

if addtools then
	for i, v in pairs(addtools:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = c
		end
	end
end

pcall(function()
	settings().Physics.AllowSleep = false
	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)

local OLDscripts = {}

for i, v in pairs(c:GetDescendants()) do
	if v.ClassName == "Script" then
		table.insert(OLDscripts, v)
	end
end

local scriptNames = {}

for i, v in pairs(c:GetDescendants()) do
	if v:IsA("BasePart") then
		local newName = tostring(i)
		local exists = true
		while exists do
			exists = false
			for i, v in pairs(OLDscripts) do
				if v.Name == newName then
					exists = true
				end
			end
			if exists then
				newName = newName .. "_"    
			end
		end
		table.insert(scriptNames, newName)
		Instance.new("Script", v).Name = newName
	end
end

c.Archivable = true
local cl = c:Clone()
for i, v in pairs(cl:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
		v.Anchored = false
	end
end

local model = Instance.new("Model", c)
model.Name = model.ClassName

model.Destroying:Connect(function()
	model = nil
end)

for i, v in pairs(c:GetChildren()) do
	if v ~= model then
		if destroyhum and v:IsA("Humanoid") then
			v:Destroy()
		else
			if addtools and v:IsA("Tool") then
				for i1, v1 in pairs(v:GetDescendants()) do
					if v1 and v1.Parent and v1:IsA("BasePart") then
						local bv = Instance.new("BodyVelocity", v1)
						bv.Velocity = v3_0
						bv.MaxForce = v3(1000, 1000, 1000)
						bv.P = 1250
						bv.Name = "bv_" .. v.Name
					end
				end
			end
			v.Parent = model
		end
	end
end
local head = gp(model, "Head", "BasePart")
local torso = gp(model, "Torso", "BasePart") or gp(model, "UpperTorso", "BasePart")
if breakjoints then
	model:BreakJoints()
else
	if head and torso then
		for i, v in pairs(model:GetDescendants()) do
			if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
				local save = false
				if (v.Part0 == torso) and (v.Part1 == head) then
					save = true
				end
				if (v.Part0 == head) and (v.Part1 == torso) then
					save = true
				end
				if save then
					if hedafterneck then
						hedafterneck = v
					end
				else
					v:Destroy()
				end
			end
		end
	end
	if method == 3 then
		spawn(function()
			wait(loadtime)
			if model then
				model:BreakJoints()
			end
		end)
	end
end

cl.Parent = c
for i, v in pairs(cl:GetChildren()) do
	v.Parent = c
end
cl:Destroy()

local modelDes = {}
for i, v in pairs(model:GetDescendants()) do
	if v:IsA("BasePart") then
		i = tostring(i)
		v.Destroying:Connect(function()
			modelDes[i] = nil
		end)
		modelDes[i] = v
	end
end
local modelcolcon = nil
local function modelcolf()
	if model then
		for i, v in pairs(modelDes) do
			v.CanCollide = false
		end
	else
		modelcolcon:Disconnect()
	end
end
modelcolcon = stepped:Connect(modelcolf)
modelcolf()

for i, scr in pairs(model:GetDescendants()) do
	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
		local Part0 = scr.Parent
		if Part0:IsA("BasePart") then
			for i1, scr1 in pairs(c:GetDescendants()) do
				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
					local Part1 = scr1.Parent
					if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
						align(Part0, Part1)
						break
					end
				end
			end
		end
	end
end

if (typeof(hedafterneck) == "Instance") and head then
	local aligns = {}
	local con = nil
	con = hedafterneck.Changed:Connect(function(prop)
	    if (prop == "Parent") and not hedafterneck.Parent then
	        con:Disconnect()
    		for i, v in pairs(aligns) do
    			v.Enabled = true
    		end
		end
	end)
	for i, v in pairs(head:GetDescendants()) do
		if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
			i = tostring(i)
			aligns[i] = v
			v.Destroying:Connect(function()
			    aligns[i] = nil
			end)
			v.Enabled = false
		end
	end
end

for i, v in pairs(c:GetDescendants()) do
	if v and v.Parent then
		if v.ClassName == "Script" then
			if table.find(scriptNames, v.Name) then
				v:Destroy()
			end
		elseif not v:IsDescendantOf(model) then
			if v:IsA("Decal") then
				v.Transparency = 1
			elseif v:IsA("ForceField") then
				v.Visible = false
			elseif v:IsA("Sound") then
				v.Playing = false
			elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			end
		end
	end
end

if newanimate then
	local animate = gp(c, "Animate", "LocalScript")
	if animate then
		animate.Disabled = false
	end
end

if addtools then
	for i, v in pairs(c:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = addtools
		end
	end
end

local hum0 = model:FindFirstChildOfClass("Humanoid")
if hum0 then
    hum0.Destroying:Connect(function()
        hum0 = nil
    end)
end

local hum1 = c:FindFirstChildOfClass("Humanoid")
if hum1 then
    hum1.Destroying:Connect(function()
        hum1 = nil
    end)
end

if hum1 then
	ws.CurrentCamera.CameraSubject = hum1
	local camSubCon = nil
	local function camSubFunc()
		camSubCon:Disconnect()
		if c and hum1 then
			ws.CurrentCamera.CameraSubject = hum1
		end
	end
	camSubCon = renderstepped:Connect(camSubFunc)
	if hum0 then
		hum0.Changed:Connect(function(prop)
			if hum1 and (prop == "Jump") then
				hum1.Jump = hum0.Jump
			end
		end)
	else
		respawnrequest()
	end
end

local rb = Instance.new("BindableEvent", c)
rb.Event:Connect(function()
	rb:Destroy()
	sg:SetCore("ResetButtonCallback", true)
	if destroyhum then
		c:BreakJoints()
		return
	end
	if hum0 and (hum0.Health > 0) then
		model:BreakJoints()
		hum0.Health = 0
	end
	if antirespawn then
	    respawnrequest()
	end
end)
sg:SetCore("ResetButtonCallback", rb)

spawn(function()
	while c do
		if hum0 and hum1 then
			hum1.Jump = hum0.Jump
		end
		wait()
	end
	sg:SetCore("ResetButtonCallback", true)
end)

R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
if R15toR6 then
    local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "LowerTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
	if part then
	    local cfr = part.CFrame
		local R6parts = { 
			head = {
				Name = "Head",
				Size = v3(2, 1, 1),
				R15 = {
					Head = 0
				}
			},
			torso = {
				Name = "Torso",
				Size = v3(2, 2, 1),
				R15 = {
					UpperTorso = 0.2,
					LowerTorso = -0.8
				}
			},
			root = {
				Name = "HumanoidRootPart",
				Size = v3(2, 2, 1),
				R15 = {
					HumanoidRootPart = 0
				}
			},
			leftArm = {
				Name = "Left Arm",
				Size = v3(1, 2, 1),
				R15 = {
					LeftHand = -0.85,
					LeftLowerArm = -0.2,
					LeftUpperArm = 0.4
				}
			},
			rightArm = {
				Name = "Right Arm",
				Size = v3(1, 2, 1),
				R15 = {
					RightHand = -0.85,
					RightLowerArm = -0.2,
					RightUpperArm = 0.4
				}
			},
			leftLeg = {
				Name = "Left Leg",
				Size = v3(1, 2, 1),
				R15 = {
					LeftFoot = -0.85,
					LeftLowerLeg = -0.15,
					LeftUpperLeg = 0.6
				}
			},
			rightLeg = {
				Name = "Right Leg",
				Size = v3(1, 2, 1),
				R15 = {
					RightFoot = -0.85,
					RightLowerLeg = -0.15,
					RightUpperLeg = 0.6
				}
			}
		}
		for i, v in pairs(c:GetChildren()) do
			if v:IsA("BasePart") then
				for i1, v1 in pairs(v:GetChildren()) do
					if v1:IsA("Motor6D") then
						v1.Part0 = nil
					end
				end
			end
		end
		part.Archivable = true
		for i, v in pairs(R6parts) do
			local part = part:Clone()
			part:ClearAllChildren()
			part.Name = v.Name
			part.Size = v.Size
			part.CFrame = cfr
			part.Anchored = false
			part.Transparency = 1
			part.CanCollide = false
			for i1, v1 in pairs(v.R15) do
				local R15part = gp(c, i1, "BasePart")
				local att = gp(R15part, "att1_" .. i1, "Attachment")
				if R15part then
					local weld = Instance.new("Weld", R15part)
					weld.Name = "Weld_" .. i1
					weld.Part0 = part
					weld.Part1 = R15part
					weld.C0 = cf(0, v1, 0)
					weld.C1 = cf(0, 0, 0)
					R15part.Massless = true
					R15part.Name = "R15_" .. i1
					R15part.Parent = part
					if att then
						att.Parent = part
						att.Position = v3(0, v1, 0)
					end
				end
			end
			part.Parent = c
			R6parts[i] = part
		end
		local R6joints = {
			neck = {
				Parent = R6parts.torso,
				Name = "Neck",
				Part0 = R6parts.torso,
				Part1 = R6parts.head,
				C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
				C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			},
			rootJoint = {
				Parent = R6parts.root,
				Name = "RootJoint" ,
				Part0 = R6parts.root,
				Part1 = R6parts.torso,
				C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
				C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			},
			rightShoulder = {
				Parent = R6parts.torso,
				Name = "Right Shoulder",
				Part0 = R6parts.torso,
				Part1 = R6parts.rightArm,
				C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
				C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			},
			leftShoulder = {
				Parent = R6parts.torso,
				Name = "Left Shoulder",
				Part0 = R6parts.torso,
				Part1 = R6parts.leftArm,
				C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			},
			rightHip = {
				Parent = R6parts.torso,
				Name = "Right Hip",
				Part0 = R6parts.torso,
				Part1 = R6parts.rightLeg,
				C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
				C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			},
			leftHip = {
				Parent = R6parts.torso,
				Name = "Left Hip" ,
				Part0 = R6parts.torso,
				Part1 = R6parts.leftLeg,
				C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}
		}
		for i, v in pairs(R6joints) do
			local joint = Instance.new("Motor6D")
			for prop, val in pairs(v) do
				joint[prop] = val
			end
			R6joints[i] = joint
		end
		hum1.RigType = Enum.HumanoidRigType.R6
		hum1.HipHeight = 0
	end
end

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
char = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

local Orin = "http://www.roblox.com/asset/?id=7074786"
Head.face.Texture = Orin
function weld(a, b, acf)
	local w = Instance.new("Weld", a)
	w.Part0 = a
	w.Part1 = b
	w.C0 = acf
end
local righteyebrickcolor = "Toothpaste"
local reye = Instance.new("Part", char)
reye.CanCollide = false
reye.BrickColor = BrickColor.new(righteyebrickcolor)
reye.Material = "Neon"
reye.Size = Vector3.new(.25,.35,.15)
weld(reye, char.Head, CFrame.new(0.15,-0.2,0.55), CFrame.new(1,0,0))
m1 = Instance.new("SpecialMesh", reye)
m1.MeshType = "Sphere"
m1.Scale = Vector3.new(0.9,0.9,0.9)
reye.Locked = true
reye.Name = "re"


--chat

local p = game:GetService("Players").LocalPlayer
local plr = game:GetService("Players").LocalPlayer
local player = game:GetService("Players").LocalPlayer
local char = Player.Character
local mouse = p:GetMouse()
local larm = char:WaitForChild("Left Arm")
local rarm = char:WaitForChild("Right Arm")
local lleg = char:WaitForChild("Left Leg")
local rleg = char:WaitForChild("Right Leg")
local hed = char:WaitForChild("Head")
local torso = char:WaitForChild("Torso")
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:FindFirstChildOfClass("Humanoid")
local debris = game:GetService("Debris")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local cam = workspace.CurrentCamera
local movement = 4
local change = 0.4
local DebrisModel = Instance.new("Model",char)
local stealth = false
local debounce = false
hum.MaxHealth = 50000
hum.Health = hum.MaxHealth
themeid = 175635113
themepitch = 1.4
main = {r = 0;g = 100;b = 255;v = 1}
if p:FindFirstChild("rcolor") then main.r = p.rcolor.Value else local string = Instance.new("StringValue",p) string.Name = "rcolor" end
if p:FindFirstChild("gcolor") then main.g = p.gcolor.Value else local string = Instance.new("StringValue",p) string.Name = "gcolor" end
if p:FindFirstChild("bcolor") then main.b = p.bcolor.Value else local string = Instance.new("StringValue",p) string.Name = "bcolor" end
if p:FindFirstChild("vcolor") then main.v = p.vcolor.Value else local string = Instance.new("StringValue",p) string.Name = "vcolor" end
if p:FindFirstChild("idtheme") then themeid = p.idtheme.Value else local string = Instance.new("StringValue",p) string.Name = "idtheme" end
if p:FindFirstChild("pitchtheme") then themepitch = p.pitchtheme.Value else local string = Instance.new("StringValue",p) string.Name = "pitchtheme" end
pr = p:FindFirstChild("rcolor")
pg = p:FindFirstChild("gcolor")
pb = p:FindFirstChild("bcolor")
pv = p:FindFirstChild("vcolor")
idth = p:FindFirstChild("idtheme")
pith = p:FindFirstChild("pitchtheme")
main_color = Color3.fromRGB(main.r,main.g,main.b)
explosionid = {262562442,144699494,539294959,1388740053}
--919941001
Prefix = "/"
p.Chatted:connect(function(msg)
 
    if msg:lower():sub(1,#Prefix+#'color r ')==Prefix..'color r ' then
    local v = tonumber(msg:sub(#Prefix+#'color r '+1))
    main.r = v
    elseif msg:lower():sub(1,#Prefix+#'color g ')==Prefix..'color g ' then
    local v = tonumber(msg:sub(#Prefix+#'color g '+1))
    main.g = v
    elseif msg:lower():sub(1,#Prefix+#'color b ')==Prefix..'color b ' then
    local v = tonumber(msg:sub(#Prefix+#'color b '+1))
    main.b = v
    elseif msg:lower():sub(1,#Prefix+#'color v ')==Prefix..'color v ' then
    local v = tonumber(msg:sub(#Prefix+#'color v '+1))
    if v > 1 then main.v = 1 elseif v < -1 then main.v = -1 else main.v = v end

    elseif msg:lower():sub(1,#Prefix+#'theme ')==Prefix..'theme ' then
    local v = tonumber(msg:sub(#Prefix+#'theme '+1))
    themeid = v
    music(themeid,themepitch)

    elseif msg:lower():sub(1,#Prefix+#'pitch ')==Prefix..'pitch ' then
    local v = tonumber(msg:sub(#Prefix+#'pitch '+1))
    themepitch = v
    music(themeid,themepitch)

    elseif msg:lower():sub(1,#Prefix+#'prefix ')==Prefix..'prefix ' then
    local v = msg:sub(#Prefix+#'prefix '+1)
    Prefix = v
 
    elseif msg:lower():sub(1,#Prefix+#'reset')==Prefix..'reset' then
    main.r = 0
    main.g = 100
    main.b = 255
    main.v = 1
    themeid = 175635113
    themepitch = 1
    music(themeid,themepitch)

    end

end)
----------------------------------------------------------------------------
no_anim = false
attack = false
attacking = false
canjump = true
aiming_anim = false
animid = math.random(0,1)
timer = 0
bg = Instance.new("BodyGyro",root)
bg.P = 100000
bg.D = 100
----------------------------------------------------------------------------

function rswait(value)
  if value ~= nil and value ~= 0 then
    for i=1,value do
     rs:wait()
    end
  else
	rs:wait()
  end
end

----------------------------------------------------------------------------
max = 0
function music(id,pitch)
max = 0
if id == "Stop" then
if not torso:FindFirstChild("MusicRuin") then
soundz = Instance.new("Sound",torso)
end
soundz:Stop()
else
if not torso:FindFirstChild("MusicRuin") then
soundz = Instance.new("Sound",torso)
end
soundz.MaxDistance = 150*5
soundz.EmitterSize = 150/5
soundz.Volume = 10
soundz.Name = "MusicRuin"
soundz.Looped = true
soundz.PlaybackSpeed = pitch
soundz.SoundId = "rbxassetid://"..id
soundz:Stop()
soundz:Play()
end
end

----------------------------------------------------------------------------

function lerp(a, b, t)
  return a + (b - a)*t
end

----------------------------------------------------------------------------

function Lerp(c1,c2,al)
  local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
  local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
  for i,v in pairs(com1) do
    com1[i] = v+(com2[i]-v)*al
  end
  return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

----------------------------------------------------------------------------

function slerp(a, b, t)
  dot = a:Dot(b)
  if dot > 0.99999 or dot < -0.99999 then
    return t <= 0.5 and a or b
  else
    r = math.acos(dot)
    return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
  end
end

----------------------------------------------------------------------------

function clerp(c1,c2,al)

  local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

  local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

  for i,v in pairs(com1) do

    com1[i] = lerp(v,com2[i],al)

  end

  return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

end

----------------------------------------------------------------------------

function findAllNearestTorso(pos,dist)
    local list = game.Workspace:children()
    local torso = {}
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= char) then
            local nayem = "Torso"
            if temp2:findFirstChild("UpperTorso") then nayem = "UpperTorso" end
            temp = temp2:findFirstChild(nayem)
            human = temp2:findFirstChildOfClass("Humanoid")
            if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                if (temp.Position - pos).magnitude < dist then
                    table.insert(torso,temp)
                    dist = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return torso
end

----------------------------------------------------------------------------

local isAPlayer
function checkIfNotPlayer(model)
coroutine.resume(coroutine.create(function()
if model ~= char and model.Parent ~= char and model.Parent.Parent ~= char and model.Parent ~= DebrisModel and model.Parent.Parent ~= DebrisModel and model.Parent.Parent.Parent ~= DebrisModel then
isAPlayer = true
else
isAPlayer = false
end
end))
return isAPlayer
end

----------------------------------------------------------------------------

function computeDirection(vec)
local lenSquared = vec.magnitude * vec.magnitude
local invSqrt = 1 / math.sqrt(lenSquared)
return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

----------------------------------------------------------------------------

function newWeld(wp0, wp1, wc0x, wc0y, wc0z)

  local wld = Instance.new("Weld", wp1)

  wld.Part0 = wp0

  wld.Part1 = wp1

  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)

  return wld

end

----------------------------------------------------------------------------

function weld(model)
	local parts,last = {}
	local function scan(parent)
		for _,v in pairs(parent:GetChildren()) do
			if (v:IsA("BasePart")) then
				if (last) then
					local w = Instance.new("Weld")
					w.Name = ("%s_Weld"):format(v.Name)
					w.Part0,w.Part1 = last,v
					w.C0 = last.CFrame:inverse()
					w.C1 = v.CFrame:inverse()
					w.Parent = last
				end
				last = v
				table.insert(parts,v)
			end
			scan(v)
		end
	end
	scan(model)
	for _,v in pairs(parts) do
		v.Anchored = false
		v.Locked = true
	end
end

----------------------------------------------------------------------------

function sound(id,position,vol,pitch,dist,start,finish)
  coroutine.resume(coroutine.create(function()

  local part = Instance.new("Part",DebrisModel)
  part.Anchored = true
  part.Position = position
  part.Size = Vector3.new(0,0,0)
  part.CanCollide = false
  part.Transparency = 1

  soundasd = Instance.new("Sound",part)
  
  soundasd.SoundId = "rbxassetid://"..id
  
  if vol ~= nil then
    soundasd.Volume = vol
  end

  if pitch ~= nil then
    soundasd.PlaybackSpeed = pitch
  end
  
  if dist ~= nil then
    soundasd.MaxDistance = dist*5
    soundasd.EmitterSize = dist/5
  end

  delay(0.5,function() debris:AddItem(part,soundasd.TimeLength+3) end)
  
  soundasd:Play()
  
  end))
  return soundasd
end

function createsound(id,parent)

  local soundz = Instance.new("Sound",parent)

  soundz.SoundId = "rbxassetid://"..id

  return soundz

end

function playsound(sond,vol,pitch,start)
  
  if vol ~= nil then
    sond.Volume = vol
  end

  if pitch ~= nil then
    sond.PlaybackSpeed = pitch
  end
 
  if start ~= nil then
    sond.TimePosition = start
  end

  sond:Play()
  
end

----------------------------------------------------------------------------
eColors={"Really red","Really black"}
function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans)
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset} 
    for i=1,Times do
        local li = Instance.new("Part", DebrisModel)
        li.TopSurface =0
        li.Material = Enum.Material.Neon
        li.BottomSurface = 0
        li.Anchored = true
        li.Locked = true
        li.Transparency = Trans or 0.4
        li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom"
        li.CanCollide = false
        li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local lim = Instance.new("BlockMesh",li)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        li.Name = "LIGHTNING"
    end
end

----------------------------------------------------------------------------

local HBill = Instance.new("BillboardGui",hed)
local HMain, HBar = Instance.new("Frame", HBill), Instance.new("Frame")
local HName = Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.StudsOffset = Vector3.new(3.675,1.2,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(.5,0,.2,0)
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.BackgroundColor3 = Color3.new(244,255,25)
HName.BorderColor3 = Color3.new(244,255,25)
HName.BorderSizePixel = 2
HName.Size = UDim2.new(1,0,.75,0)
HName.Font = "Code"
HName.Text = [[( Dream!Tale )]]
HName.TextScaled = true
HName.TextColor3 = Color3.new(244,255,25)
HName.TextStrokeColor3 = Color3.new(0.1,0.1,0.1)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Bottom"

local HBill = Instance.new("BillboardGui",hed)
local HMain, HBar = Instance.new("Frame", HBill), Instance.new("Frame")
local HName = Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.StudsOffset = Vector3.new(3.675,2,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(.5,0,.5,0)
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.BackgroundColor3 = Color3.new(0,0,0)
HName.BorderColor3 = Color3.new(0,0,0)
HName.BorderSizePixel = 2
HName.Size = UDim2.new(1,0,.75,0)
HName.Font = "Antique"
HName.Text = [[Nightmare!Sans]]
HName.TextScaled = true
HName.TextColor3 = Color3.new(0,0,0)
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Bottom"

function bigboomrektxd()
coroutine.resume(coroutine.create(function()
local magnitude = nil
local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
--sound(743499393,Position,10,math.random(6,8)/10)
sound(440145223,Position,10,math.random(10,12)/10,50)

local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshId = "rbxassetid://559831844"
mesh2.Scale = Vector3.new(0,0,0.4)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(0,0,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(0,0,0)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Position,mouse.Hit.p)
Part1.Name = "EXPLOSION2"

local Part0 = Instance.new("Part",DebrisModel)
local PointLight2 = Instance.new("PointLight")
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.fromHSV(0,0,main.v)
Part0.Anchored = false
Part0.Size = Vector3.new(5, 5, 5)
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Sphere
local bforce = Instance.new("BodyForce",Part0)
bforce.force = Vector3.new(0, ((bforce.Parent:getMass())*workspace.Gravity), 0)
Part0.CanCollide = false
PointLight2.Parent = Part0
PointLight2.Color = Part0.Color
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local pos = Position + (direction * 2) 
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
Part0.Velocity = direction * 60
local asd = nil
local loop = nil
delay(5, function() Part0:Destroy() loop:disconnect() asd:disconnect() end)
loop = rs:connect(function()
local asdf = math.random(500,1000)/1000
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Part0.Size + Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-1000,1000)/750,math.random(-1000,1000)/750,math.random(-1000,1000)/750))
Part1.Name = "SMOKE"
end)
asd = Part0.Touched:connect(function(ht)
local hit=ht.Parent
if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
asd:disconnect()
loop:disconnect()
Part0:Destroy()

sound(explosionid[math.random(1,#explosionid)],Part0.Position,10,math.random(6,9)/10,200)
for i,v in pairs(findAllNearestTorso(Part0.Position,50)) do
if v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth >= 9e+99 then
v:Destroy()
else
v.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth/(math.random(0,0)/0))
end
local Position = Part0.Position
local Target = v.Position
local direction = Target - Position
local direction = computeDirection(direction)
local bv = Instance.new("BodyVelocity",v)
bv.Velocity = direction * (50 - ((Position - Target).magnitude/2))
debris:AddItem(bv,1)
end
for i=1,14,2 do for x=1,math.random(0,1) do rs:wait() end
for z=1,math.random(2,3) do
local asdf = math.random(-5,5)*10-(i/20)*8
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = i*0.5
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-2,2)*a,math.random(-10,10),math.random(-2,2)*a))
Part1.Name = "EXPLOSION"
end
end

end
end)
end))
end

holdclick=false

mouse.Button1Down:connect(function()
if debounce == false then
if animid == 0 then
animid = 1
else
animid = 0
end
debounce = true
holdclick = true
aiming_anim = true
wait(0.2)
repeat 
rs:wait()
timer = 150
until holdclick == false
bigboomrektxd()

local Position = mouse.Hit.p
local Target = root.Position
local direction = Target - Position
local direction = computeDirection(direction)
root.Velocity = direction * 150

aiming_anim = false
delay(0.3,function() debounce = false end)
end
end)

mouse.Button1Up:connect(function()
holdclick=false
end)

function dashasdf()
debounce = true

canjump = false
attack = true

for i,v in pairs(char:GetChildren()) do
if v ~= root then
if v:IsA("Part") then
v.Transparency = 1
elseif v:IsA("Accoutrement") then
v:FindFirstChildOfClass("Part").Transparency = 1
end
end
end

local tempattachment = Instance.new("Attachment",root)
tempattachment.Position = Vector3.new(0,0,-4)

for i=1,20 do rs:wait()
root.Velocity = Vector3.new(0,0,0)
root.CFrame = CFrame.new(tempattachment.WorldPosition) * CFrame.Angles(math.rad(root.Orientation.X),math.rad(root.Orientation.Y),math.rad(root.Orientation.Z))
local asdf = math.random(500,1000)/100
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
Part1.CFrame = CFrame.new(root.Position + Vector3.new(math.random(-1000,1000)/500,math.random(-1000,1000)/500,math.random(-1000,1000)/500))
Part1.Name = "SMOKE"
end

tempattachment:Destroy()

for i,v in pairs(char:GetChildren()) do
if v ~= root then
if v:IsA("Part") then
v.Transparency = 0
elseif v:IsA("Accoutrement") then
v:FindFirstChildOfClass("Part").Transparency = 0
end
end
end

canjump = true
attack = false

delay(0.1,function() debounce = false end)
end

function laz0r()

local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end

local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshId = "rbxassetid://559831844"
mesh2.Scale = Vector3.new(0,0,0.4)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(0,0,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(0,0,0)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Position,mouse.Hit.p)
Part1.Name = "EXPLOSION3"

local Part0 = Instance.new("Part",DebrisModel)
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.fromHSV(0,0,main.v)
Part0.Anchored = true
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Sphere
Part0.CanCollide = false
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
Part0.Size = Vector3.new(5,1,5)
mesh.Scale = Vector3.new(1,(Position-endPoint).magnitude,1)
local pos = Position + (direction * (mesh.Scale.Y/2))
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)

clashpart = Instance.new("Part",DebrisModel)
clashpart.Size = Vector3.new(50,50,50)
clashpart.CanCollide = false
clashpart.Anchored = true
clashpart.Transparency = 1
clashpart.Color = main_color
clashpart.Name = "StarLightClash"
clashpart.CFrame = CFrame.new(endPoint, root.Position)

sound(1177475476,Position,10,math.random(5,6)/10,300)

local z = 10
for i = 1,100 do rs:wait()
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
Part0.Size = Vector3.new(5-((i/100)*5),1,5-((i/100)*5))
mesh.Scale = Vector3.new(1,(Position-endPoint).magnitude,1)
mesh.Offset = Vector3.new(math.random(-10000,10000)/20000,math.random(-10000,10000)/20000,0)
local pos = Position + (direction * (mesh.Scale.Y/2))
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
clashpart.CFrame = CFrame.new(endPoint, root.Position)

local Position = mouse.Hit.p
local Target = root.Position
local direction = Target - Position
local direction = computeDirection(direction)
root.Velocity = direction * 5

if i >= z then z = i + 10 sound(explosionid[math.random(1,#explosionid)],endPoint,10,math.random(6,9)/10,200) end

Part1 = Part0:Clone()
Part1.Parent = DebrisModel
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Name = "SMOKE2"

if part ~= nil then
if part.Name == "StarLightClash" then
local asdf = math.random(0,5)*20
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(Color3.fromRGB((main.r+(255*part.Color.r))/2,(main.g+(255*part.Color.g))/2,(main.b+(255*part.Color.b))/2)),math.random(5000,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = 1.5
Part1.CFrame = CFrame.new(endPoint + Vector3.new(math.random(-2,2)*a,math.random(-4,4),math.random(-2,2)*a))
Part1.Name = "EXPLOSION"
else
local asdf = math.random(0,5)*10
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = 1.5
Part1.CFrame = CFrame.new(endPoint + Vector3.new(math.random(-2,2)*a,math.random(-4,4),math.random(-2,2)*a))
Part1.Name = "EXPLOSION"
end
end

for i,v in pairs(findAllNearestTorso(endPoint,50)) do
if v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth >= 9e+99 then
v:Destroy()
else
v.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth/math.random(0,0))
end
local Position = mouse.Hit.p
local Target = v.Position
local direction = Target - Position
local direction = computeDirection(direction)
local bv = Instance.new("BodyVelocity",v)
bv.Velocity = direction * (10 - ((Position - Target).magnitude/2))
debris:AddItem(bv,1)
end

end
clashpart:Destroy()
Part0:Destroy()
wait(0.3)
aiming_anim = false
delay(0.3,function() debounce = false end)
end

function nukewelpo()
coroutine.resume(coroutine.create(function()
local magnitude = nil
local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
--sound(743499393,Position,10,math.random(6,8)/10)
sound(440145223,Position,10,math.random(4,5)/10,100)

local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshId = "rbxassetid://559831844"
mesh2.Scale = Vector3.new(0,0,0.4)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(0,0,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(0,0,0)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Position,mouse.Hit.p)
Part1.Name = "EXPLOSION3"

local Part0 = Instance.new("Part",DebrisModel)
local PointLight2 = Instance.new("PointLight")
Part0.Name = "Bullet"
Part0.Material = Enum.Material.Neon
Part0.Color = Color3.fromHSV(0,0,main.v)
Part0.Anchored = false
Part0.Size = Vector3.new(5, 5, 5)
local mesh = Instance.new("SpecialMesh",Part0)
mesh.MeshType = Enum.MeshType.Sphere
mesh.Scale = Vector3.new(3,3,3)
local bforce = Instance.new("BodyForce",Part0)
bforce.force = Vector3.new(0, ((bforce.Parent:getMass())*workspace.Gravity), 0)
Part0.CanCollide = false
PointLight2.Parent = Part0
PointLight2.Color = Part0.Color
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local pos = Position + (direction * 2) 
Part0.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
Part0.Velocity = direction * 150
local asd = nil
local loop = nil
delay(5, function() Part0:Destroy() loop:disconnect() asd:disconnect() end)
loop = rs:connect(function()
local asdf = math.random(500,1000)/1000
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = (Part0.Size*3) + Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-3000,3000)/750,math.random(-3000,3000)/750,math.random(-3000,3000)/750))
Part1.Name = "SMOKE"
end)
asd = Part0.Touched:connect(function(ht)
local hit=ht.Parent
if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
asd:disconnect()
loop:disconnect()
Part0:Destroy()

sound(explosionid[math.random(1,#explosionid)],Part0.Position,10,math.random(3,5)/10,500)
for i,v in pairs(findAllNearestTorso(Part0.Position,160)) do
if v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth >= 9e+99 then
v:Destroy()
else
v.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth/(math.random(0,0)/0))
end
local Position = Part0.Position
local Target = v.Position
local direction = Target - Position
local direction = computeDirection(direction)
local bv = Instance.new("BodyVelocity",v)
bv.Velocity = direction * (120 - ((Position - Target).magnitude/2))
debris:AddItem(bv,1)
end
for i=1,10,0.5 do for x=1,math.random(0,1) do rs:wait() end
for z=1,math.random(2,3) do
local asdf = math.random(-5,5)*10-(i/20)*12
local Part1 = Instance.new("Part")
local mesh2 = Instance.new("SpecialMesh",Part1)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(0,0,0)
Part1.Material = Enum.Material.Neon
Part1.CanCollide = false
Part1.Color = Color3.fromHSV(Color3.toHSV(main_color),math.random(0,10000)/10000,main.v)
Part1.Parent = DebrisModel
Part1.Size = Vector3.new(asdf,asdf,asdf)
Part1.Anchored = true
local a = i*5
Part1.CFrame = CFrame.new(Part0.Position + Vector3.new(math.random(-2,2)*a,math.random(-30,30),math.random(-2,2)*a))
Part1.Name = "EXPLOSION4"
end
end

end
end)
end))
end

holdq = false
holdr = false
cooldownult = false

mouse.KeyDown:connect(function(key)
if debounce == false then
if key == "e" then
dashasdf()
elseif key == "r" and cooldownult == false then
cooldownult = true
if animid == 0 then
animid = 1
else
animid = 0
end
debounce = true
holdr = true
aiming_anim = true
wait(0.2)
repeat 
rs:wait()
timer = 150
until holdr == false
nukewelpo()

local Position = mouse.Hit.p
local Target = root.Position
local direction = Target - Position
local direction = computeDirection(direction)
root.Velocity = direction * 300

aiming_anim = false
delay(5,function() cooldownult = false end)
delay(1,function() debounce = false end)

elseif key == "q" then
debounce = true
if animid == 0 then
animid = 1
else
animid = 0
end
holdq = true
attack = true
aiming_anim = true
repeat rs:wait() timer = 150 until holdq == false
laz0r()
attack = false
end
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" then
holdq = false
elseif key == "r" then
holdr = false
end
end)

----------------------------------------------------------------------------
music(themeid,themepitch)
velocityYFall=0
velocityYFall2=0
velocityYFall3=0
velocityYFall4=0
neckrotY=0
neckrotY2=0
torsorotY=0
torsorotY2=0
torsoY=0
torsoY2=0
sine = 0
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)

rs:connect(function()

bg.MaxTorque = Vector3.new(0,0,0)

for i,v in pairs(DebrisModel:GetChildren()) do
    

if v.Name == "EXPLOSION" then
local change = 0.04-(v.Transparency*0.02)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,change)
v.Transparency = v.Transparency + 0.02
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "EXPLOSION2" then
local change = 0.04-(v.Transparency*0.04)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,0)
v.Transparency = v.Transparency + 0.025
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "EXPLOSION3" then
local change = 0.5-(v.Transparency*0.5)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,0)
v.Transparency = v.Transparency + 0.1
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "EXPLOSION4" then
local change = 0.15-(v.Transparency*0.125)
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale + Vector3.new(change,change,change)
v.Transparency = v.Transparency + 0.01
if v.Transparency >= 1 then
v:Destroy()
end

elseif v.Name == "SMOKE" then
local vm = v:FindFirstChildOfClass("SpecialMesh")
vm.Scale = vm.Scale - Vector3.new(0.075,0.075,0.075)
if vm.Scale.X <= 0 then
v:Destroy()
end

elseif v.Name == "SMOKE2" then
local change = 2-(v.Transparency*2)
local vm = v:FindFirstChildOfClass("SpecialMesh")
local Position = nil
if animid == 0 then
Position = larm.Position
else
Position = rarm.Position
end
local Target = mouse.Hit.p
local direction = Target - Position
local direction = computeDirection(direction)
local ray = Ray.new(Position, (Target-Position).unit*1048)
local part, endPoint = workspace:FindPartOnRay(ray, char)
vm.Scale = Vector3.new(vm.Scale.X,(Position-endPoint).magnitude,vm.Scale.Z) + Vector3.new(change,0,change)
local pos = Position + (direction * (vm.Scale.Y/2))
v.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles((math.pi/2)+math.rad(180), 0, 0)
vm.Offset = Vector3.new(math.random(-10000,10000)/10000,math.random(-10000,10000)/10000,0)
v.Transparency = v.Transparency + 0.1
if v.Transparency >= 1 then
v:Destroy()
end


elseif v.Name == "LIGHTNING" then
local vm = v:FindFirstChildOfClass("BlockMesh")
vm.Scale = vm.Scale - Vector3.new(0.1,0.1,0)
if vm.Scale.X <= 0 then
v:Destroy()
end

end
end

if -root.Velocity.Y/1.5 > 0 and -root.Velocity.Y/1.5 < 160 then
velocityYFall = root.Velocity.Y/1.5
end
if -root.Velocity.Y/180 > 0 and -root.Velocity.Y/180 < 1.2 then
velocityYFall2 = root.Velocity.Y/180
end
if -root.Velocity.Y/1.5 > -5 and -root.Velocity.Y/1.5 < 50 then
velocityYFall3 = root.Velocity.Y/1.5
end
if -root.Velocity.Y/1.5 > -50 and -root.Velocity.Y/1.5 < 20 then
velocityYFall4 = root.Velocity.Y/1.5
end
if root.RotVelocity.Y/6 < 1 and root.RotVelocity.Y/6 > -1 then
neckrotY = root.RotVelocity.Y/6
end
if root.RotVelocity.Y/8 < 0.6 and root.RotVelocity.Y/8 > -0.6 then
neckrotY2 = root.RotVelocity.Y/8
end

if root.RotVelocity.Y/6 < 0.2 and root.RotVelocity.Y/6 > -0.2 then
torsorotY = root.RotVelocity.Y/6
end
if root.RotVelocity.Y/8 < 0.2 and root.RotVelocity.Y/8 > -0.2 then
torsorotY2 = root.RotVelocity.Y/8
end


torsoY = -(torso.Velocity*Vector3.new(1, 0, 1)).magnitude/20
torsoY2 = -(torso.Velocity*Vector3.new(1, 0, 1)).magnitude/36

if attack == true then
hum.WalkSpeed = 1
else
hum.WalkSpeed = 20
end

if canjump == true then
hum.JumpPower = 50
else
hum.JumpPower = 0
end

local jumped = false
local ray1 = Ray.new(root.Position+Vector3.new(1,0,0),Vector3.new(0, -6, 0))
local part1, endPoint = workspace:FindPartOnRay(ray1, char)
local ray2 = Ray.new(root.Position-Vector3.new(1,0,0),Vector3.new(0, -6, 0))
local part2, endPoint = workspace:FindPartOnRay(ray2, char)
local ray3 = Ray.new(root.Position+Vector3.new(0,0,0.5),Vector3.new(0, -6, 0))
local part3, endPoint = workspace:FindPartOnRay(ray3, char)
local ray4 = Ray.new(root.Position-Vector3.new(0,0,0.5),Vector3.new(0, -6, 0))
local part4, endPoint = workspace:FindPartOnRay(ray4, char)

if part1 or part2 or part3 or part4 then jumped = false else endPoint = 0 jumped = true end

local rlegray = Ray.new(rleg.Position+Vector3.new(0,0.5,0),Vector3.new(0, -1.75, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)

local llegray = Ray.new(lleg.Position+Vector3.new(0,0.5,0),Vector3.new(0, -1.75, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)

if no_anim == false then
if hum.Health > 0 then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-18),math.rad(0+math.rad(0+2*math.cos(sine/2))),0), 0.1)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-10),0,0),0.1)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62-(movement/30)*math.cos(sine/4)/2,(movement/50)*math.cos(sine/4))*CFrame.Angles(math.rad(-5-(movement*2)*math.cos(sine/4))+ -(movement/10)*math.sin(sine/4),math.rad(0-(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+(movement/30)*math.cos(sine/4)/2,-(movement/50)*math.cos(sine/4))*CFrame.Angles(math.rad(-5+(movement*2)*math.cos(sine/4))+ (movement/10)*math.sin(sine/4),math.rad(0-(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+(movement/20)*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-(change*20)-4*math.cos(sine/2)), torsorotY2+math.rad(0-4*math.cos(sine/4)), torsorotY2+math.rad(0-1*math.cos(sine/4))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.85-(movement/10)*math.cos(sine/4)/2,-0.1+(movement/15)*math.cos(sine/4))*CFrame.Angles(math.rad(-10+(change*5)-movement*math.cos(sine/4))+ -(movement/10)*math.sin(sine/4),math.rad(0+(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,-0.85+(movement/10)*math.cos(sine/4)/2,-0.1-(movement/15)*math.cos(sine/4))*CFrame.Angles(math.rad(-10+(change*5)+movement*math.cos(sine/4))+ (movement/10)*math.sin(sine/4),math.rad(0+(movement*2)*math.cos(sine/4)),math.rad(0)), 0.2)
elseif jumped == true then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-18),math.rad(0+math.rad(0+2*math.cos(sine/2))),0), 0.1)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0,0,0),0.1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,1-0.1*math.cos(sine/16)/2,0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(-50-1*math.cos(sine/8))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,1-0.1*math.cos(sine/16)/2,0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(50+1*math.cos(sine/8))), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(0), math.rad(0-1*math.cos(sine/32))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5,-0.925+0.1*math.cos(sine/16),0)*CFrame.Angles(math.rad(-35-1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(-2-0.5*math.cos(sine/8))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5,0+0.1*math.cos(sine/16),-0.8)*CFrame.Angles(math.rad(-25+1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(2+0.5*math.cos(sine/8))), 0.2)
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 5 then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.1)*CFrame.Angles(math.rad(-18),math.rad(0+math.rad(0+2*math.cos(sine/2))),0), 0.1)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-15),0,0),0.1)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(-5-1*math.cos(sine/8))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(0-1*math.cos(sine/16)),math.rad(5+1*math.cos(sine/8))), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(0), math.rad(0-1*math.cos(sine/32))), 0.1)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0,llegendPoint.Y-lleg.Position.Y,0)*CFrame.new(-0.5,0+0.1*math.cos(sine/16),0)*CFrame.Angles(math.rad(0-1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(-2-0.5*math.cos(sine/8))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0,rlegendPoint.Y-rleg.Position.Y,0)*CFrame.new(0.5,0+0.1*math.cos(sine/16),0)*CFrame.Angles(math.rad(0+1*math.cos(sine/16)),math.rad(0-1*math.cos(sine/16)),math.rad(2+0.5*math.cos(sine/8))), 0.2)
end
for i=1,5 do
if aiming_anim == true then
bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
if jumped == false then
bg.CFrame = CFrame.new(root.Position,Vector3.new(mouse.Hit.x,root.Position.Y,mouse.Hit.z))
else
bg.CFrame = CFrame.new(root.Position,mouse.Hit.p)
end
if animid == 0 then
hed.Weld.C1 =  Lerp(hed.Weld.C1,CFrame.Angles(0,math.rad(-80),0),0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0,CFrame.new(0, -1.1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(-80), math.rad(0-1*math.cos(sine/32))),0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0,CFrame.new(-1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(-10-1*math.cos(sine/16)),math.rad(-90-1*math.cos(sine/8))),0.4)
else
hed.Weld.C1 =  Lerp(hed.Weld.C1,CFrame.Angles(0,math.rad(80),0),0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0,CFrame.new(0, -1.1-0.1*math.cos(sine/16), 0) * CFrame.Angles(math.rad(0-2*math.cos(sine/16)),math.rad(80), math.rad(0-1*math.cos(sine/32))),0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0,CFrame.new(1.5,0.55-0.1*math.cos(sine/16)/2,-0.1*math.cos(sine/16))*CFrame.Angles(math.rad(0),math.rad(10-1*math.cos(sine/16)),math.rad(90+1*math.cos(sine/8))),0.4)
end
else
if timer <= 0 then
animid = math.random(0,1)
else
timer = timer - 1
end
end
end
end
end
main_color = Color3.fromRGB(main.r,main.g,main.b)
pr.Value = main.r
pg.Value = main.g
pb.Value = main.b
pv.Value = main.v
idth.Value = themeid
pith.Value = themepitch
HName.TextStrokeColor3 = Color3.fromHSV(Color3.toHSV(main_color),1,main.v/2)
HName.TextColor3 = Color3.fromHSV(Color3.toHSV(main_color),1,main.v)
sine = sine + change
if hum.Health <= 0 then
debounce = true
end
end)



--Extras--


--extras
local talksound = Instance.new("Sound",char.Torso)
talksound.SoundId = "rbxassetid://928210219"
talksound.Volume = 4
local blastsound = Instance.new("Sound",char.Torso)
blastsound.Name = "blast_sound"
blastsound.SoundId = "rbxassetid://345052019"
blastsound.Volume = 4
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
function chatfunc(text)
local chat = coroutine.wrap(function()
if char:FindFirstChild("TalkingBillBoard") ~= nil then
char:FindFirstChild("TalkingBillBoard"):Destroy()
end
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = char.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = Color3.new(1,1,1)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
talksound:Play()
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
plr.Chatted:connect(onChatted)
wait(2)
chatfunc("It´s a beatefule night in void..")
wait(2)
chatfunc("Black is rising...")
wait(2)
chatfunc("Dream!Sans is dying....")
wait(2)
chatfunc("On days like these... Chara like you...")
wait(2)
chatfunc("Should be erasing in hell.")
wait(0.5)

--chat

