--[[ These are the hats needed for the script
https://www.roblox.com/catalog/5857632294/Cursed-Pumpkin
https://www.roblox.com/catalog/5857617173/Red-Void-Pumpkin
https://www.roblox.com/catalog/5857625055/Corrupt-Pumpkin
https://www.roblox.com/catalog/4660196617/Thunderous-Drums
https://www.roblox.com/catalog/4773932088/Evil-Aura
]]--

if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then local a=game:GetService("CollectionService")local b={}b["ScreenGui_1"]=Instance.new("ScreenGui",game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))b["ScreenGui_1"].IgnoreGuiInset=true b["ScreenGui_1"].ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets b["ScreenGui_1"].ZIndexBehavior=Enum.ZIndexBehavior.Sibling a:AddTag(b["ScreenGui_1"],"main")b["Frame_2"]=Instance.new("Frame",b["ScreenGui_1"])b["Frame_2"].BorderSizePixel=0 b["Frame_2"].BackgroundColor3=Color3.fromRGB(0,0,0)b["Frame_2"].AnchorPoint=Vector2.new(.5,.5)b["Frame_2"].Size=UDim2.new(.36316,0,.46667,0)b["Frame_2"].Position=UDim2.new(.5,0,.5,0)b["Frame_2"].BackgroundTransparency=.5 b["UICorner_3"]=Instance.new("UICorner",b["Frame_2"])b["UICorner_3"].CornerRadius=UDim.new(.04,0)b["TextLabel_4"]=Instance.new("TextLabel",b["Frame_2"])b["TextLabel_4"].TextWrapped=true b["TextLabel_4"].BorderSizePixel=0 b["TextLabel_4"].TextScaled=true b["TextLabel_4"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].TextColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].BackgroundTransparency=1 b["TextLabel_4"].Size=UDim2.new(.81159,0,.32143,0)b["TextLabel_4"].Text="You are in the wrong game, please copy the link below and enter the game. (game: Just a baseplate., game creator: dreammazestudio/ the local maze)"b["TextLabel_4"].Position=UDim2.new(.0942,0,.13095,0)b["TextBox_5"]=Instance.new("TextBox",b["Frame_2"])b["TextBox_5"].CursorPosition=-1 b["TextBox_5"].BorderSizePixel=0 b["TextBox_5"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextBox_5"].ClearTextOnFocus=false b["TextBox_5"].Size=UDim2.new(.81159,0,.29762,0)b["TextBox_5"].Position=UDim2.new(.1087,0,.5119,0)b["TextBox_5"].Text="https://www.roblox.com/games/123974602339071/UP-Just-a-baseplate"b["TextBox_5"].TextScaled=true b["UIAspectRatioConstraint_6"]=Instance.new("UIAspectRatioConstraint",b["Frame_2"])b["UIAspectRatioConstraint_6"].AspectRatio=1.64286 game:GetService("TeleportService"):Teleport(123974602339071,game:GetService("Players").LocalPlayer)return b["ScreenGui_1"],require end

game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 5857632294, 5857617173, 5857625055, 4660196617, 4773932088")
wait(3)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
local say = "Pumpkin Glitcher   |||   made by - urslower"--what it says
if not e then
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = say;
Font = Enum.Font.Creepster;
Color = Color3.fromRGB(0, 0, 0);--the color of the text
FontSize = Enum.FontSize.Size9;   
})
end
----------------------------------------------------------------------------------------------
local c = game.Players.LocalPlayer.Character["Meshes/ThunderingDrumsAccessory"].Handle
c.AccessoryWeld:Destroy()
c.Anchored = false
local cRot = 0.0001
game:GetService("RunService").RenderStepped:Connect(function(dt)
    cRot = cRot + 1*dt
    c.Anchored = true
    c.Velocity = Vector3.new(0,0,0)
    c.Anchored = false
end)

local i = game.Players.LocalPlayer.Character["Evil Aura"].Handle
i.AccessoryWeld:Destroy()
i.Anchored = false
local iRot = 0.0001
game:GetService("RunService").RenderStepped:Connect(function(dt)
    iRot = iRot + -1*dt
    i.Anchored = true
    i.Velocity = Vector3.new(0,0,0)
    i.Anchored = false
end)

local r = game.Players.LocalPlayer.Character["PossesdP9"].Handle
r.AccessoryWeld:Destroy()
r.Anchored = false
local rRot = 0.0001
game:GetService("RunService").RenderStepped:Connect(function(dt)
    rRot = rRot + -3*dt
    r.Anchored = true
    r.Velocity = Vector3.new(0,0,0)
    r.Anchored = false
end)

local y = game.Players.LocalPlayer.Character["PossesdP7"].Handle
y.AccessoryWeld:Destroy()
y.Anchored = false
local yRot = 0.0001
game:GetService("RunService").RenderStepped:Connect(function(dt)
    yRot = yRot + 4*dt
    y.Anchored = true
    y.Velocity = Vector3.new(0,0,0)
    y.Anchored = false
end)

local a = game.Players.LocalPlayer.Character["PossesdP8"].Handle
a.AccessoryWeld:Destroy()
a.Anchored = false
local aRot = 0.0001
game:GetService("RunService").RenderStepped:Connect(function(dt)
    aRot = aRot + 3*dt
    a.Anchored = true
    a.Velocity = Vector3.new(0,0,0)
    a.Anchored = false
end)

-----------------------------------------------------------------------------------------------------
local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character
local Humanoid = Char.Humanoid
Humanoid.WalkSpeed = 50
Humanoid.JumpPower = 50
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game.Players.LocalPlayer.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
Equipped = false

-------------------------------------------------------------------------

weld = function(parent, part0, part1, c0)
	local weld = it("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
    weld.C0 = c0
    return weld
end

function unanchor()
	if UNANCHOR == true then
		g = CharacterA:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 1.8
Frame_Speed = 0.016666666666666666
local FORCERESET = false
Frame_Speed = 1 / 80 -- (1 / 60) OR (1 / 80)
local Speed = 25
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local HOLD = false
local Rooted = false
local SINE = 0
local SIZE = 1
local UserInputService = game:GetService("UserInputService")
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")
local UNANCHOR = true

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
-- weldtest


--end
plr = game.Players.LocalPlayer

local mouse = plr:GetMouse()



local mode = 1



function changemode()
    if mode == 1 then
        mode = 2 
    elseif mode == 2 then
        mode = 3
    elseif mode == 3 then
        
        mode = 1  
    end
end

mouse.KeyDown:connect(function(key)
    if key == "e" and ATTACK == false then
        changemode()
    end
end)

while true do
    
	Swait()
	if Character:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",Character)
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end


--//=================================\\
--|     ATTACKS
--\\=================================//
---local mouse = plr:GetMouse()


---mouse.KeyDown:connect(function(k)
---    if k == " " and ATTACK == false and Equipped == false then
 ---       ATTACK = true
---        Equipped = true


---        ATTACK = false
---        Equipped = false
---    end
---end)	
--//=================================\\
--|     END OF ATTACKS
--\\=================================//
-------------------------------------------------------------------------------------


--//=================================\\
--|     WHRAP THE WHOLE THING UP
--\\=================================//





local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
local TORSOVERTICALVELOCITY = RootPart.Velocity.y
local NameClan = 0
local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 5, Character)
local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	SINE = SINE + CHANGE
	    if TORSOVERTICALVELOCITY > 1 and ATTACK == false and Equipped == false and HITFLOOR == nil then 
		ANIM = "Jump"
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0 - 0 * COS(SINE / 12)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-40), RAD(90 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(40), RAD(-90 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5 -0 * COS(SINE / 12), -1) * ANGLES(RAD(0), RAD(90), RAD(-5)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, 0.5 -0 * COS(SINE / 12) , -1) * ANGLES(RAD(-0), RAD(-90), RAD(5)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			
    elseif TORSOVERTICALVELOCITY < -1 and ATTACK == false and Equipped == false and HITFLOOR == nil then
		ANIM = "Fall"
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 ,0 - 0 * COS(SINE / 12)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(-20), RAD(120 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(20), RAD(-120 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 -0 * COS(SINE / 12) , 0) * ANGLES(RAD(-0), RAD(-90), RAD(0)) * ANGLES(RAD(-0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
  
  
  
    elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil and mode == 1 then
         ANIM = "Idle"
	c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 1.5 ,1) * CFrame.Angles(0,0,-cRot)
	i.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 1.5 ,1) * CFrame.Angles(0,0,-iRot)
	 a.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 6.6 ,0) * CFrame.Angles(0,aRot,0)
	 y.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 4.8 ,0) * CFrame.Angles(0,-yRot,0)
	 r.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 3 ,0) * CFrame.Angles(0,-rRot,0)
 -------------------------------------------------------------------------------------------------------------------------------------------       
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0 * COS(SINE / 10)) * ANGLES(RAD(12 + 3 * COS(SINE / 21)), RAD(0 + 0 * COS(SINE / 12)), RAD(0 + 0 * COS(SINE / 10))), .50 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.8 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(120 + 0 * COS(SINE / 12)), RAD(0 + 0 * COS(SINE / 12)), RAD(-40 + -0 * COS(SINE / 10))) * RIGHTSHOULDERC0, .50 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(0 + 0 * COS(SINE / 12)), RAD(-10 + 10 * COS(SINE / 21)), RAD(-30 + -3 * COS(SINE / 21))) * LEFTSHOULDERC0, .50 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0  * COS(SINE / 10), -0) * ANGLES(RAD(12 + 0 * COS(SINE / 10)), RAD(90), RAD(0)) * ANGLES(RAD(-9 + 0 * COS(SINE / 10)), RAD(-10 + 0 * COS(SINE / 10)), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0 * COS(SINE / 10), -0) * ANGLES(RAD(12 - 0 * COS(SINE / 10)), RAD(-90), RAD(0)) * ANGLES(RAD(-9 + 0 * COS(SINE / 10)), RAD(10 - 0 * COS(SINE / 10)), RAD(0)), 0.15 / Animation_Speed)
   
   
   
    elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil and mode == 2 then
		ANIM = "Idle"
a.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(3.2, 1 + -0.5 * COS(SINE / 2) ,0) * CFrame.Angles(0,-1.5,0)
y.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(-3.2, 1 + 0.5 * COS(SINE / 2),0) * CFrame.Angles(0,-1.5,0)
r.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 1.8 ,0) * CFrame.Angles(0,-rRot,0)
c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 4 + 0.7 * COS(SINE / 10),0) * CFrame.Angles(1.5,0,-cRot)
i.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 4 + -0.7 * COS(SINE / 10),0) * CFrame.Angles(1.5,0,-iRot)
 -------------------------------------------------------------------------------------------------------------------------------------------       
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0 * COS(SINE / 10)) * ANGLES(RAD(12 + 0 * COS(SINE / 10)), RAD(0 + 0 * COS(SINE / 12)), RAD(0 + 0 * COS(SINE / 10))), .50 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.8 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(120 + 0 * COS(SINE / 12)), RAD(0 + 0 * COS(SINE / 12)), RAD(-40 + -0 * COS(SINE / 10))) * RIGHTSHOULDERC0, .50 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.8, 0.8 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(120 + 0 * COS(SINE / 12)), RAD(-0 + 0 * COS(SINE / 12)), RAD(40 + -0 * COS(SINE / 10))) * LEFTSHOULDERC0, .50 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 -0  * COS(SINE / 10), -0) * ANGLES(RAD(12 + 0 * COS(SINE / 10)), RAD(90), RAD(0)) * ANGLES(RAD(-9 + 0 * COS(SINE / 10)), RAD(-10 + 0 * COS(SINE / 10)), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0 * COS(SINE / 10), -0) * ANGLES(RAD(12 - 0 * COS(SINE / 10)), RAD(-90), RAD(0)) * ANGLES(RAD(-9 + 0 * COS(SINE / 10)), RAD(10 - 0 * COS(SINE / 10)), RAD(0)), 0.15 / Animation_Speed)


    elseif TORSOVELOCITY < 1 and ATTACK == false and Equipped == false and HITFLOOR ~= nil and mode == 3 then
		ANIM = "Idle"
c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 0  + 1 * COS(SINE / 21),1.5) * CFrame.Angles(0,0,cRot)
 i.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, -3 ,0) * CFrame.Angles(1.5,0,-iRot)
y.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 0.3 ,0) * CFrame.Angles(0,-1.5,0)
 r.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(-5.2, 0 + 1.5 * COS(SINE / 11),0) * CFrame.Angles(0,-1.5,0)
 a.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(5.2, 0 + 1.5 * COS(SINE / 11),0) * CFrame.Angles(0,-1.5,0)
 -------------------------------------------------------------------------------------------------------------------------------------------       
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 5 + 2 * COS(SINE / 21)) * ANGLES(RAD(0 + 0 * COS(SINE / 10)), RAD(0 + 0 * COS(SINE / 12)), RAD(0 + 0 * COS(SINE / 10))), .50 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(0 + 0 * COS(SINE / 12)), RAD(0 + -20 * COS(SINE / 21)), RAD(30 + -10 * COS(SINE / 21))) * RIGHTSHOULDERC0, .50 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(0 + 0 * COS(SINE / 12)), RAD(-0 + 20 * COS(SINE / 21)), RAD(-30 + 10 * COS(SINE / 21))) * LEFTSHOULDERC0, .50 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.3 -0  * COS(SINE / 12), -0.5) * ANGLES(RAD(-0 + 0 * COS(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0 + 9 * COS(SINE / 21)), RAD(-0 + 0 * COS(SINE / 10)), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0 * COS(SINE / 12), -0) * ANGLES(RAD(-20 - 0 * COS(SINE / 21)), RAD(-90), RAD(0)) * ANGLES(RAD(-0 + 9 * COS(SINE / 21)), RAD(0 - 0 * COS(SINE / 10)), RAD(0)), 0.15 / Animation_Speed)






    elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil and mode == 1 then
     ANIM = "Walk"
			c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 1.5 ,1) * CFrame.Angles(0,0,-cRot)
	i.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 1.5 ,1) * CFrame.Angles(0,0,-iRot)
	 a.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 6.6 ,0) * CFrame.Angles(0,aRot,0)
	 y.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 4.8 ,0) * CFrame.Angles(0,-yRot,0)
	 r.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 3 ,0) * CFrame.Angles(0,-rRot,0)
	 --------------------------------------------------------------------------------------------------------------------
         RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 0, 0* 0, 0 + 0 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 5* 1) * ANGLES(RAD(5 - 5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(5 * COS(SINE / 5))), 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + -30 * COS(SINE / 7)), RAD(-0), RAD(10 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 30 * COS(SINE / 7)), RAD(-0), RAD(-10 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.9 - 0.5 * COS(SINE / 7) / 2* 1, 0.5 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-5 - 0 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(-4 + 0 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
	        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.9 + 0.5 * COS(SINE / 7) / 2* 1, -0.5 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-5 + 0 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(-4 + 0 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)    

     
     elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil and mode == 2 then
		ANIM = "Walk"
a.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(3.2, 1 + -0.5 * COS(SINE / 0.7) ,0) * CFrame.Angles(0,-1.5,0)
y.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(-3.2, 1 + 0.5 * COS(SINE / 0.7),0) * CFrame.Angles(0,-1.5,0)
r.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 1.8 ,0) * CFrame.Angles(0,-rRot,0)
c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 4 + 0.7 * COS(SINE / 10),0) * CFrame.Angles(1.5,0,-cRot)
i.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 4 + -0.7 * COS(SINE / 10),0) * CFrame.Angles(1.5,0,-iRot)
	 --------------------------------------------------------------------------------------------------------------------
         RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 0, 0* 0, 0 + 0 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 5* 1) * ANGLES(RAD(5 - 5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(5 * COS(SINE / 5))), 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + -30 * COS(SINE / 7)), RAD(-0), RAD(5 + 0 * COS(SINE / 10)))* RIGHTSHOULDERC0, 0.55/ Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * SIN(SINE / 12), -0) * ANGLES(RAD(0 + 30 * COS(SINE / 7)), RAD(-0), RAD(-5 + 0 * COS(SINE / 10))) * LEFTSHOULDERC0, 0.55 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.9 - 0.5 * COS(SINE / 7) / 2* 1, 0.5 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-5 - 0 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(-4 + 0 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
	        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.9 + 0.5 * COS(SINE / 7) / 2* 1, -0.5 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-5 + 0 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(-4 + 0 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)    


		         
		 elseif TORSOVELOCITY > 1 and Equipped == false and HITFLOOR ~= nil and mode == 3 then
		ANIM = "Walk"
c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, 0  + 1 * COS(SINE / 21),1.5) * CFrame.Angles(0,0,cRot)
 i.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0, -3 ,0) * CFrame.Angles(1.5,0,-iRot)
y.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 0.3 ,0) * CFrame.Angles(0,-1.5,0)
 r.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(-5.2, 0 + 1.5 * COS(SINE / 21),0) * CFrame.Angles(0,-1.5,0)
 a.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(5.2, 0 + 1.5 * COS(SINE / 21),0) * CFrame.Angles(0,-1.5,0)
	 --------------------------------------------------------------------------------------------------------------------
        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 5 + 1 * COS(SINE / 21)) * ANGLES(RAD(60 + 0 * COS(SINE / 21)), RAD(0 + 0 * COS(SINE / 12)), RAD(0 + 20 * COS(SINE / 21))), .50 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(0 + 0 * COS(SINE / 12)), RAD(0 + -0 * COS(SINE / 21)), RAD(20 + -0 * COS(SINE / 21))) * RIGHTSHOULDERC0, .50 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0 * COS(SINE / 12), 0) * ANGLES(RAD(0 + 0 * COS(SINE / 12)), RAD(-0 + 0 * COS(SINE / 21)), RAD(-20 + 0 * COS(SINE / 21))) * LEFTSHOULDERC0, .50 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.3 -0  * COS(SINE / 12), -0.5) * ANGLES(RAD(-0 + 0 * COS(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0 + 9 * COS(SINE / 21)), RAD(-0 + 0 * COS(SINE / 21)), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0 * COS(SINE / 12), -0) * ANGLES(RAD(-20 - 0 * COS(SINE / 21)), RAD(-90), RAD(0)) * ANGLES(RAD(-0 + 9 * COS(SINE / 21)), RAD(0 - 0 * COS(SINE / 21)), RAD(0)), 0.15 / Animation_Speed)



end			
end			
--//=================================\\
--|     END OF SCRIPT :(
--\\=================================//
