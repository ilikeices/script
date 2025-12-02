if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then local a=game:GetService("CollectionService")local b={}b["ScreenGui_1"]=Instance.new("ScreenGui",game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))b["ScreenGui_1"].IgnoreGuiInset=true b["ScreenGui_1"].ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets b["ScreenGui_1"].ZIndexBehavior=Enum.ZIndexBehavior.Sibling a:AddTag(b["ScreenGui_1"],"main")b["Frame_2"]=Instance.new("Frame",b["ScreenGui_1"])b["Frame_2"].BorderSizePixel=0 b["Frame_2"].BackgroundColor3=Color3.fromRGB(0,0,0)b["Frame_2"].AnchorPoint=Vector2.new(.5,.5)b["Frame_2"].Size=UDim2.new(.36316,0,.46667,0)b["Frame_2"].Position=UDim2.new(.5,0,.5,0)b["Frame_2"].BackgroundTransparency=.5 b["UICorner_3"]=Instance.new("UICorner",b["Frame_2"])b["UICorner_3"].CornerRadius=UDim.new(.04,0)b["TextLabel_4"]=Instance.new("TextLabel",b["Frame_2"])b["TextLabel_4"].TextWrapped=true b["TextLabel_4"].BorderSizePixel=0 b["TextLabel_4"].TextScaled=true b["TextLabel_4"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].TextColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].BackgroundTransparency=1 b["TextLabel_4"].Size=UDim2.new(.81159,0,.32143,0)b["TextLabel_4"].Text="You are in the wrong game, please copy the link below and enter the game. (game: Just a baseplate., game creator: dreammazestudio/ the local maze)"b["TextLabel_4"].Position=UDim2.new(.0942,0,.13095,0)b["TextBox_5"]=Instance.new("TextBox",b["Frame_2"])b["TextBox_5"].CursorPosition=-1 b["TextBox_5"].BorderSizePixel=0 b["TextBox_5"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextBox_5"].ClearTextOnFocus=false b["TextBox_5"].Size=UDim2.new(.81159,0,.29762,0)b["TextBox_5"].Position=UDim2.new(.1087,0,.5119,0)b["TextBox_5"].Text="https://www.roblox.com/games/123974602339071/UP-Just-a-baseplate"b["TextBox_5"].TextScaled=true b["UIAspectRatioConstraint_6"]=Instance.new("UIAspectRatioConstraint",b["Frame_2"])b["UIAspectRatioConstraint_6"].AspectRatio=1.64286 game:GetService("TeleportService"):Teleport(123974602339071,game:GetService("Players").LocalPlayer)return b["ScreenGui_1"],require end


local LMG2L = {};

LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["IgnoreGuiInset"] = true;
LMG2L["ScreenGui_1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
LMG2L["ScreenGui_1"]["ResetOnSpawn"] = false;


LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
LMG2L["Frame_2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
LMG2L["Frame_2"]["Size"] = UDim2.new(0.43192, 0, 0.65816, 0);
LMG2L["Frame_2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
LMG2L["Frame_2"]["BackgroundTransparency"] = 0.5;


LMG2L["UICorner_3"] = Instance.new("UICorner", LMG2L["Frame_2"]);
LMG2L["UICorner_3"]["CornerRadius"] = UDim.new(0.02, 0);


LMG2L["UIStroke_4"] = Instance.new("UIStroke", LMG2L["Frame_2"]);
LMG2L["UIStroke_4"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
LMG2L["UIStroke_4"]["Color"] = Color3.fromRGB(255, 255, 255);


LMG2L["Frame_5"] = Instance.new("Frame", LMG2L["Frame_2"]);
LMG2L["Frame_5"]["BorderSizePixel"] = 0;
LMG2L["Frame_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Frame_5"]["Size"] = UDim2.new(0.97627, 0, 0.08621, 0);
LMG2L["Frame_5"]["Position"] = UDim2.new(0.01017, 0, 0.02586, 0);


LMG2L["TextLabel_6"] = Instance.new("TextLabel", LMG2L["Frame_5"]);
LMG2L["TextLabel_6"]["TextWrapped"] = true;
LMG2L["TextLabel_6"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_6"]["TextScaled"] = true;
LMG2L["TextLabel_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["TextLabel_6"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel_6"]["Size"] = UDim2.new(0.52083, 0, 0.75, 0);
LMG2L["TextLabel_6"]["Text"] = [[Human hub]];
LMG2L["TextLabel_6"]["Position"] = UDim2.new(0.01042, 0, 0.15, 0);


LMG2L["TextButton_7"] = Instance.new("TextButton", LMG2L["Frame_5"]);
LMG2L["TextButton_7"]["TextWrapped"] = true;
LMG2L["TextButton_7"]["BorderSizePixel"] = 0;
LMG2L["TextButton_7"]["TextScaled"] = true;
LMG2L["TextButton_7"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
LMG2L["TextButton_7"]["Size"] = UDim2.new(0.07986, 0, 0.65, 0);
LMG2L["TextButton_7"]["Text"] = [[X]];
LMG2L["TextButton_7"]["Position"] = UDim2.new(0.90972, 0, 0.15, 0);


LMG2L["LocalScript_8"] = Instance.new("LocalScript", LMG2L["TextButton_7"]);



LMG2L["ScrollingFrame_9"] = Instance.new("ScrollingFrame", LMG2L["Frame_5"]);
LMG2L["ScrollingFrame_9"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
LMG2L["ScrollingFrame_9"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame_9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LMG2L["ScrollingFrame_9"]["Size"] = UDim2.new(0.99653, 0, 9.55, 0);
LMG2L["ScrollingFrame_9"]["Position"] = UDim2.new(0, 0, 1.4, 0);
LMG2L["ScrollingFrame_9"]["ScrollBarThickness"] = 6;


LMG2L["UIListLayout_a"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_9"]);
LMG2L["UIListLayout_a"]["Padding"] = UDim.new(0.05, 0);


LMG2L["TextButton_b"] = Instance.new("TextButton", LMG2L["ScrollingFrame_9"]);
LMG2L["TextButton_b"]["TextWrapped"] = true;
LMG2L["TextButton_b"]["BorderSizePixel"] = 0;
LMG2L["TextButton_b"]["TextScaled"] = true;
LMG2L["TextButton_b"]["BackgroundColor3"] = Color3.fromRGB(0, 222, 255);
LMG2L["TextButton_b"]["Size"] = UDim2.new(1, 0, 0.17, 0);
LMG2L["TextButton_b"]["Visible"] = false;


LMG2L["LocalScript_c"] = Instance.new("LocalScript", LMG2L["ScrollingFrame_9"]);



LMG2L["UIDragDetector_d"] = Instance.new("UIDragDetector", LMG2L["Frame_2"]);



LMG2L["UIAspectRatioConstraint_e"] = Instance.new("UIAspectRatioConstraint", LMG2L["Frame_2"]);
LMG2L["UIAspectRatioConstraint_e"]["AspectRatio"] = 1.27155;


local function C_8()
	local script = LMG2L["LocalScript_8"];
	script.Parent.MouseButton1Click:Connect(function()	
		script.Parent.Parent.Parent.Parent:Destroy()	
	end)	
end;
task.spawn(C_8);
local function C_c()
	local script = LMG2L["LocalScript_c"];
	local scr = script.Parent	
	local btn = scr.TextButton	
	
	function createbutton(name, call)	
		local bt = btn:Clone()	
		bt.Parent = scr	
		bt.Text = name	
		bt.Visible = true	
	
		bt.MouseButton1Click:Connect(function()	
			pcall(call)	
		end)	
	end	
	
	createbutton("little people", function()	
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 48474313 4246228452 62724852 451220849 3409612660 4094878701 4047554959 4489239608 63690008 62234425")
		wait(2.1)
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
	
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/1-Line-Scripts/refs/heads/main/Little%20People"))()	
	end)	


	createbutton("acromatic", function()	
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 4458601937 4506945409 4794315940 4820152700 4315489767 4524991457 4932541287 4855847190 4773932088")
		wait(2.1)
		
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
	
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Quicksilver101/Achromatix-V6/refs/heads/main/Achromatix_V6-1.txt"))()
	end)	

	createbutton("laser", function()	
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 63690008 62234425 48474313 62724852 451220849 451220849")
		wait(2.1)
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
	
		
	
		loadstring(game:HttpGet('https://pastefy.app/b07Nxyh0/raw'))()
	end)	
	
	createbutton("immortality lord", function()	
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 9685941374 5593848751 5505301521")
		wait(2.1)
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
	
		
	
		 loadstring(game:HttpGet('https://pastebin.com/raw/NqGgGjvD'))()
	end)	

	createbutton("neko convert", function()	
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/cat"))()
	end)	

	createbutton("hat orbit", function()	
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 13395210079, 13629432438, 13395210079, 13629432438, 13395210079, 13629432438, 13395210079, 13629432438, 13395210079, 13629432438, 13395210079, 13629432438")
		wait(2.1)
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty30.lua"))()
	end)	

	createbutton("melon hub", function()	
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/C00LMelon/True-SS-Hub/main/Protected.lua%20(4).txt'),true))()
	end)		
	
	createbutton("animation v3", function()	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty16.lua"))()
	end)	

	createbutton("among us v2", function()	
		loadstring(game:HttpGet("https://rawscripts.net/raw/Nothing-Fe-Among-Us-V2-(R6)-3224"))()
	end)

	createbutton("server admin", function()	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ONEReverseCard/My-Scripts/main/Netless%20Server%20Admin.md"))()
	end)	

	createbutton("holdable hats", function()	
		loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-fe-holdble-hets-21612"))()
	end)	

	createbutton("xester", function()	
		loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-Jb-xester-14221"))()
	end)	

	createbutton("clovr", function()	
		loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-FE-Fake-VR-45999"))()
	end)	

	createbutton("xester", function()	
		loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-jb-fe-pndor-14850"))()
	end)	

end;
task.spawn(C_c);

return LMG2L["ScreenGui_1"], require;
