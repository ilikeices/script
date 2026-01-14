

--some of the script is auto-generated so less functions than normal



if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then local a=game:GetService("CollectionService")local b={}b["ScreenGui_1"]=Instance.new("ScreenGui",game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))b["ScreenGui_1"].IgnoreGuiInset=true b["ScreenGui_1"].ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets b["ScreenGui_1"].ZIndexBehavior=Enum.ZIndexBehavior.Sibling a:AddTag(b["ScreenGui_1"],"main")b["Frame_2"]=Instance.new("Frame",b["ScreenGui_1"])b["Frame_2"].BorderSizePixel=0 b["Frame_2"].BackgroundColor3=Color3.fromRGB(0,0,0)b["Frame_2"].AnchorPoint=Vector2.new(.5,.5)b["Frame_2"].Size=UDim2.new(.36316,0,.46667,0)b["Frame_2"].Position=UDim2.new(.5,0,.5,0)b["Frame_2"].BackgroundTransparency=.5 b["UICorner_3"]=Instance.new("UICorner",b["Frame_2"])b["UICorner_3"].CornerRadius=UDim.new(.04,0)b["TextLabel_4"]=Instance.new("TextLabel",b["Frame_2"])b["TextLabel_4"].TextWrapped=true b["TextLabel_4"].BorderSizePixel=0 b["TextLabel_4"].TextScaled=true b["TextLabel_4"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].TextColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].BackgroundTransparency=1 b["TextLabel_4"].Size=UDim2.new(.81159,0,.32143,0)b["TextLabel_4"].Text="You are in the wrong game, please copy the link below and enter the game. (game: Just a baseplate., game creator: dreammazestudio/ the local maze)"b["TextLabel_4"].Position=UDim2.new(.0942,0,.13095,0)b["TextBox_5"]=Instance.new("TextBox",b["Frame_2"])b["TextBox_5"].CursorPosition=-1 b["TextBox_5"].BorderSizePixel=0 b["TextBox_5"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextBox_5"].ClearTextOnFocus=false b["TextBox_5"].Size=UDim2.new(.81159,0,.29762,0)b["TextBox_5"].Position=UDim2.new(.1087,0,.5119,0)b["TextBox_5"].Text="https://www.roblox.com/games/123974602339071/UP-Just-a-baseplate"b["TextBox_5"].TextScaled=true b["UIAspectRatioConstraint_6"]=Instance.new("UIAspectRatioConstraint",b["Frame_2"])b["UIAspectRatioConstraint_6"].AspectRatio=1.64286 game:GetService("TeleportService"):Teleport(123974602339071,game:GetService("Players").LocalPlayer)return b["ScreenGui_1"],require end

game.ReplicatedStorage["01_server"]:FireServer("cmd", "-gh 301818806, 48474313, 62724852, 451220849, 48474294,  376527115, 3033910400, 4489239608, 63690008, 62234425")
--game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 301818806, 48474313, 62724852, 451220849, 48474294,  376527115, 3033910400, 4489239608, 63690008, 62234425")
wait(3)
--game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
game.ReplicatedStorage["01_server"]:FireServer("cmd", "-net")
	

player = game.Players.LocalPlayer
driving = false
debugtrans = 1

local model = Instance.new("Model",workspace)

local chas1 = Instance.new("Part",model)
chas1.Size = Vector3.new(1,1,2)
chas1.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas1.Transparency = debugtrans

local chas2 = Instance.new("Part",model)
chas2.Size = Vector3.new(1,1,2)
chas2.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas2.Transparency = debugtrans

local chas3 = Instance.new("Part",model)
chas3.Size = Vector3.new(1,1,2)
chas3.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas3.Transparency = debugtrans

local chas4 = Instance.new("Part",model)
chas4.Size = Vector3.new(1,1,2)
chas4.Position = player.Character.Head.Position + Vector3.new(0,0,4)
chas4.Transparency = debugtrans

local wheel1 = Instance.new("Part",model)
wheel1.Size = Vector3.new(1,2,2)
wheel1.Shape = Enum.PartType.Cylinder
wheel1.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel1.Transparency = debugtrans

local wheel2 = Instance.new("Part",model)
wheel2.Size = Vector3.new(1,2,2)
wheel2.Shape = Enum.PartType.Cylinder
wheel2.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel2.Transparency = debugtrans

local wheel3 = Instance.new("Part",model)
wheel3.Size = Vector3.new(1,2,2)
wheel3.Shape = Enum.PartType.Cylinder
wheel3.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel3.Transparency = debugtrans

local wheel4 = Instance.new("Part",model)
wheel4.Size = Vector3.new(1,2,2)
wheel4.Shape = Enum.PartType.Cylinder
wheel4.Position = player.Character.Head.Position + Vector3.new(0,0,4)
wheel4.Transparency = debugtrans

local seat = Instance.new("Part",model)
seat.Size = Vector3.new(1,1,2)
seat.Position = player.Character.Head.Position
seat.Transparency = debugtrans

local weld1 = Instance.new("Weld",model)
weld1.Part0 = chas1
weld1.Part1 = chas2
weld1.C0 = CFrame.new(-0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
weld1.C1 = CFrame.new(0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

local weld2 = Instance.new("Weld",model)
weld2.Part0 = chas3
weld2.Part1 = chas2
weld2.C0 = CFrame.new(0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld2.C1 = CFrame.new(0, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local weld3 = Instance.new("Weld",model)
weld3.Part0 = chas4
weld3.Part1 = chas3
weld3.C0 = CFrame.new(-0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
weld3.C1 = CFrame.new(0.5, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

local weld4 = Instance.new("Weld",model)
weld4.Part0 = chas4
weld4.Part1 = chas1
weld4.C0 = CFrame.new(0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld4.C1 = CFrame.new(0, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local weld5 = Instance.new("Weld",model)
weld5.Part0 = seat
weld5.Part1 = chas2
weld5.C0 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
weld5.C1 = CFrame.new(0.5, 0.499999762, -0.5, 0, 1, 0, 0, 0, -1, -1, 0, 0)

local weld6 = Instance.new("Weld",model)
weld6.Part0 = seat
weld6.Part1 = chas1
weld6.C0 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
weld6.C1 = CFrame.new(-0.5, 0.499999762, -0.5, 0, 1, 0, 0, 0, -1, -1, 0, 0)

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel1)
att0.CFrame = CFrame.new(0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local att1 = Instance.new("Attachment",chas3)
att1.CFrame = CFrame.new(-0.5, -0.5, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel2)
att0.CFrame = CFrame.new(0.5, -0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local att1 = Instance.new("Attachment",chas2)
att1.CFrame = CFrame.new(-0.5, -0.5, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel3)
att0.CFrame = CFrame.new(-0.5, 0, -0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
local att1 = Instance.new("Attachment",chas4)
att1.CFrame = CFrame.new(0.5, -0.5, -1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local hinge = Instance.new("HingeConstraint",model)
local att0 = Instance.new("Attachment",wheel4)
att0.CFrame = CFrame.new(-0.5, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
local att1 = Instance.new("Attachment",chas1)
att1.CFrame = CFrame.new(0.5, -0.5, 1, -1, 0, 0, 0, 1, 0, 0, 0, -1)
hinge.Attachment0 = att0
hinge.Attachment1 = att1

local SeatWeld = Instance.new("Weld",model)
SeatWeld.Part0 = seat
SeatWeld.Part1 = player.Character.HumanoidRootPart
SeatWeld.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,math.rad(-90),0)
SeatWeld.Enabled = false



stoop = false

seat.Touched:Connect(function(Part)
	if Part.Parent.Name == player.Name and stoop == false then
		SeatWeld.Enabled = true
		player.Character.Humanoid.Sit = true
		driving = true
	end
end)

att = Instance.new("Attachment",seat)
att.CFrame = CFrame.new(-1.5, -1, 0)
force = Instance.new("VectorForce",seat)
force.Attachment0 = att
force.Force = Vector3.new(0,0,0)

att = Instance.new("Attachment",seat)
att.CFrame = CFrame.new(7.5, -1.5, 0)
tforce = Instance.new("VectorForce",seat)
tforce.Attachment0 = att
tforce.Force = Vector3.new(0,0,0)


input = game:GetService("UserInputService")

input.JumpRequest:Connect(function()
	if driving == true then
		stoop = true
		SeatWeld.Enabled = false
		force.Force = Vector3.new(0,0,0)
		tforce.Force = Vector3.new(0,0,0)
		driving = false
		wait(3)
		stoop = false
	end
end)


local player = game.Players.LocalPlayer
local char = player.Character
local input = game:GetService("UserInputService")
local ts = game:GetService("TweenService")



--[[
input.InputBegan:Connect(function(thingy)
	if driving == true then
		if thingy.KeyCode == Enum.KeyCode.W then
			force.Force = Vector3.new(300,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.S then
			force.Force = Vector3.new(-300,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.D then
			tforce.Force = Vector3.new(0,0,500)
		end
		if thingy.KeyCode == Enum.KeyCode.A then
			tforce.Force = Vector3.new(0,0,-500)
		end
	end
end)

input.InputEnded:Connect(function(thingy)
	if driving == true then
		if thingy.KeyCode == Enum.KeyCode.W then
			force.Force = Vector3.new(0,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.S then
			force.Force = Vector3.new(0,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.D then
			tforce.Force = Vector3.new(0,0,0)
		end
		if thingy.KeyCode == Enum.KeyCode.A then
			tforce.Force = Vector3.new(0,0,0)
		end
	end
end)
]]


player = game.Players.LocalPlayer
char = player.Character
vbreak = false

function rotate(X,Y,Z)
	return CFrame.Angles(math.rad(X),math.rad(Y),math.rad(Z))
end

function Join(Hat,Part,Offset,Rotation,Mesh)
	if Mesh == false then Hat.Handle:FindFirstChildWhichIsA("SpecialMesh"):Destroy() end
	Hat.Handle.AccessoryWeld:Destroy()
	local method = Instance.new("RopeConstraint",player.Character)
	method.Length = math.huge
	method.Attachment0 = Instance.new("Attachment",char.Head)
	method.Attachment1 = Instance.new("Attachment",Hat.Handle)
	coroutine.wrap(function()
		while task.wait() do
			Hat.Handle.CFrame = (Part.CFrame + Part.CFrame.LookVector * Offset.Z + Part.CFrame.RightVector * Offset.X + Part.CFrame.UpVector * Offset.Y) * Rotation
			if vbreak == true then break end
		end
	end)()
end

Join(
	player.Character["Pal Hair"], -- the Accessory
	wheel1, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["Kate Hair"], -- the Accessory
	wheel2, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["LavanderHair"], -- the Accessory
	wheel3, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["Necklace"], -- the Accessory
	wheel4, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

Join(
	player.Character["LongHairBeanie"], -- the Accessory
	chas1, -- Part to attach to
	Vector3.new(0,0,0.42), -- offset
	rotate(90,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["Pink Hair"], -- the Accessory
	chas2, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["Hat1"], -- the Accessory
	chas3, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["InternationalFedora"], -- the Accessory
	chas4, -- Part to attach to
	Vector3.new(0,0,0.5), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)

if e ~= "e" then                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
end

Join(
	player.Character["MeshPartAccessory"], -- the Accessory
	chas4, -- Part to attach to
	Vector3.new(0,0,-0.5), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)
Join(
	player.Character["Robloxclassicred"], -- the Accessory
	seat, -- Part to attach to
	Vector3.new(0,0,0), -- offset
	rotate(0,0,0), -- Rotation
	false -- Keep mesh
)


local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = true
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0,180,0,220)
frame.Position = UDim2.new(0.5,-90,0.5,-110)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(90,90,90)
stroke.Parent = frame

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,12)
corner.Parent = frame

local function make(text,pos)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0,60,0,60)
	b.Position = pos
	b.Text = text
	b.BackgroundColor3 = Color3.fromRGB(40,40,40)
	b.TextColor3 = Color3.new(1,1,1)
	b.Font = Enum.Font.GothamBold
	b.TextSize = 28
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0,10)
	c.Parent = b
	b.Parent = frame
	return b
end

local W = make("W",UDim2.new(0,60,0,10))
local A = make("A",UDim2.new(0,10,0,75))
local S = make("S",UDim2.new(0,60,0,75))
local D = make("D",UDim2.new(0,110,0,75))


local function down(key)
	if driving then
		if key=="W" then force.Force = Vector3.new(300,0,0) end
		if key=="S" then force.Force = Vector3.new(-300,0,0) end
		if key=="D" then tforce.Force = Vector3.new(0,0,500) end
		if key=="A" then tforce.Force = Vector3.new(0,0,-500) end
	end
end

local function up(key)
	if driving then
		if key=="W" or key=="S" then force.Force = Vector3.new() end
		if key=="A" or key=="D" then tforce.Force = Vector3.new() end
	end
end

input.InputBegan:Connect(function(i)
	if i.KeyCode ~= Enum.KeyCode.Unknown then
		down(i.KeyCode.Name)
	end
end)

input.InputEnded:Connect(function(i)
	if i.KeyCode ~= Enum.KeyCode.Unknown then
		up(i.KeyCode.Name)
	end
end)

local function bind(button,key)
	button.MouseButton1Down:Connect(function()
		ts:Create(button,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(70,70,70)}):Play()
		down(key)
	end)
	button.MouseButton1Up:Connect(function()
		ts:Create(button,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(40,40,40)}):Play()
		up(key)
	end)
end

bind(W,"W")
bind(A,"A")
bind(S,"S")
bind(D,"D")
