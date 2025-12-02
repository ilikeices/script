

if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then local a=game:GetService("CollectionService")local b={}b["ScreenGui_1"]=Instance.new("ScreenGui",game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))b["ScreenGui_1"].IgnoreGuiInset=true b["ScreenGui_1"].ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets b["ScreenGui_1"].ZIndexBehavior=Enum.ZIndexBehavior.Sibling a:AddTag(b["ScreenGui_1"],"main")b["Frame_2"]=Instance.new("Frame",b["ScreenGui_1"])b["Frame_2"].BorderSizePixel=0 b["Frame_2"].BackgroundColor3=Color3.fromRGB(0,0,0)b["Frame_2"].AnchorPoint=Vector2.new(.5,.5)b["Frame_2"].Size=UDim2.new(.36316,0,.46667,0)b["Frame_2"].Position=UDim2.new(.5,0,.5,0)b["Frame_2"].BackgroundTransparency=.5 b["UICorner_3"]=Instance.new("UICorner",b["Frame_2"])b["UICorner_3"].CornerRadius=UDim.new(.04,0)b["TextLabel_4"]=Instance.new("TextLabel",b["Frame_2"])b["TextLabel_4"].TextWrapped=true b["TextLabel_4"].BorderSizePixel=0 b["TextLabel_4"].TextScaled=true b["TextLabel_4"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].TextColor3=Color3.fromRGB(255,255,255)b["TextLabel_4"].BackgroundTransparency=1 b["TextLabel_4"].Size=UDim2.new(.81159,0,.32143,0)b["TextLabel_4"].Text="You are in the wrong game, please copy the link below and enter the game. (game: Just a baseplate., game creator: dreammazestudio/ the local maze)"b["TextLabel_4"].Position=UDim2.new(.0942,0,.13095,0)b["TextBox_5"]=Instance.new("TextBox",b["Frame_2"])b["TextBox_5"].CursorPosition=-1 b["TextBox_5"].BorderSizePixel=0 b["TextBox_5"].BackgroundColor3=Color3.fromRGB(255,255,255)b["TextBox_5"].ClearTextOnFocus=false b["TextBox_5"].Size=UDim2.new(.81159,0,.29762,0)b["TextBox_5"].Position=UDim2.new(.1087,0,.5119,0)b["TextBox_5"].Text="https://www.roblox.com/games/123974602339071/UP-Just-a-baseplate"b["TextBox_5"].TextScaled=true b["UIAspectRatioConstraint_6"]=Instance.new("UIAspectRatioConstraint",b["Frame_2"])b["UIAspectRatioConstraint_6"].AspectRatio=1.64286 game:GetService("TeleportService"):Teleport(123974602339071,game:GetService("Players").LocalPlayer)return b["ScreenGui_1"],require end


local CollectionService = game:GetService("CollectionService");
local G2L = {};

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["IgnoreGuiInset"] = true;
G2L["ScreenGui_1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["ScreenGui_1"]["ResetOnSpawn"] = false


G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["Frame_2"]["BorderSizePixel"] = 0;
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53);
G2L["Frame_2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["Frame_2"]["Size"] = UDim2.new(0.47105, 0, 0.73889, 0);
G2L["Frame_2"]["Position"] = UDim2.new(0.5, 0, 0.51667, 0);


G2L["bar_3"] = Instance.new("Frame", G2L["Frame_2"]);
G2L["bar_3"]["BorderSizePixel"] = 0;
G2L["bar_3"]["BackgroundColor3"] = Color3.fromRGB(116, 116, 116);
G2L["bar_3"]["Size"] = UDim2.new(1, 0, 0.11278, 0);
G2L["bar_3"]["Name"] = [[bar]];


G2L["TextLabel_4"] = Instance.new("TextLabel", G2L["bar_3"]);
G2L["TextLabel_4"]["TextWrapped"] = true;
G2L["TextLabel_4"]["BorderSizePixel"] = 0;
G2L["TextLabel_4"]["TextScaled"] = true;
G2L["TextLabel_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_4"]["BackgroundTransparency"] = 1;
G2L["TextLabel_4"]["Size"] = UDim2.new(0.64804, 0, 0.66667, 0);
G2L["TextLabel_4"]["Text"] = [[past hub]];
G2L["TextLabel_4"]["Position"] = UDim2.new(0.01676, 0, 0.13333, 0);


G2L["close_5"] = Instance.new("TextButton", G2L["bar_3"]);
G2L["close_5"]["TextWrapped"] = true;
G2L["close_5"]["BorderSizePixel"] = 0;
G2L["close_5"]["TextScaled"] = true;
G2L["close_5"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["close_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["close_5"]["BackgroundTransparency"] = 1;
G2L["close_5"]["Size"] = UDim2.new(0.11732, 0, 0.93333, 0);
G2L["close_5"]["Text"] = [[x]];
G2L["close_5"]["Name"] = [[close]];
G2L["close_5"]["Position"] = UDim2.new(0.86592, 0, 0, 0);


G2L["LocalScript_6"] = Instance.new("StringValue", G2L["close_5"]);



G2L["ScrollingFrame_7"] = Instance.new("ScrollingFrame", G2L["Frame_2"]);
G2L["ScrollingFrame_7"]["BorderSizePixel"] = 0;
G2L["ScrollingFrame_7"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54);
G2L["ScrollingFrame_7"]["Size"] = UDim2.new(0.98883, 0, 0.84962, 0);
G2L["ScrollingFrame_7"]["Position"] = UDim2.new(0.00559, 0, 0.12782, 0);
G2L["ScrollingFrame_7"]["ScrollBarThickness"] = 2;


G2L["UIListLayout_8"] = Instance.new("UIListLayout", G2L["ScrollingFrame_7"]);



G2L["TextButton_9"] = Instance.new("TextButton");
G2L["TextButton_9"]["TextWrapped"] = true;
G2L["TextButton_9"]["BorderSizePixel"] = 0;
G2L["TextButton_9"]["TextScaled"] = true;
G2L["TextButton_9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextButton_9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TextButton_9"]["Size"] = UDim2.new(0, 356, 0, 32);
G2L["TextButton_9"]["Text"] = [[test]];


G2L["UIStroke_a"] = Instance.new("UIStroke", G2L["TextButton_9"]);
G2L["UIStroke_a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["UIStroke_a"]["Color"] = Color3.fromRGB(255, 255, 255);


G2L["UIAspectRatioConstraint_b"] = Instance.new("UIAspectRatioConstraint", G2L["Frame_2"]);
G2L["UIAspectRatioConstraint_b"]["AspectRatio"] = 1.34586;


G2L["UIStroke_c"] = Instance.new("UIStroke", G2L["Frame_2"]);
G2L["UIStroke_c"]["Thickness"] = 2;


G2L["UIDragDetector_d"] = Instance.new("UIDragDetector", G2L["Frame_2"]);



local function C_6()
	local script = G2L["LocalScript_6"];
	script.Parent.MouseButton1Down:Connect(function()	
	 G2L["ScreenGui_1"]:Destroy()	
	end)	
	
	local clone = G2L["TextButton_9"]:Clone()
	
	function button(name,call)
		local bt = clone:Clone()
		bt.Text = name
		bt.Parent = G2L["ScrollingFrame_7"]
		bt.MouseButton1Click:Connect(function()
			pcall(call)
		end)
	end
	
	button("Fe server admin", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ONEReverseCard/My-Scripts/main/Netless%20Server%20Admin.md"))()
	end)
	
	button("Fe chill", function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-Fe-Chill-14103"))()
	end)
	
	button("Fe nameless animation v4", function()
		loadstring(game:HttpGet("https://pastebin.com/raw/d3uB90XA"))()
	end)
	
	
	
	button("Fe cop", function()
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 48474313, 6594369919, 62724852")
		task.wait(2.1)
		task.delay(5.5, function()
			game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
		end)
		loadstring(game:HttpGet('https://pastebin.com/raw/c1dmfBGL'))()
	end)
	
	button("Fe creepy crawler", function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/a-literal-baseplate.-FE-Creepy-Crwler-10249"))()
	end)

	button("Fe da feet", function()
		loadstring(game:HttpGet("https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets"))()
	end)

	button("Fe noli", function()
		--org from @Im_Patrick video Called Fe Noli
		loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty65.lua"))()
	end)

	button("Fe minions", function()
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 48474313 4246228452 62724852 451220849 3409612660 4094878701 4047554959 4489239608 63690008 62234425")
		wait(1.8)
	
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/1-Line-Scripts/refs/heads/main/Little%20People"))()
	end)
	
end;
task.spawn(C_6);

return G2L["ScreenGui_1"], require;
