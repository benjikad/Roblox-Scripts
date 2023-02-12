--                                                        __
-- ____       ____      _____  __        __      __     _|  |     __________              __      __       __      __       __
--|  _ \     |  __|    |     \|  |      |__|    |__|   |____/    |   _______|            |  |    |  |     |  |    |  |     |  |
--| |_| |    | |_      |  |\  |  |       __      __              |  |_______             |  |____|  |     |  |    |  |     |  |___
--|  _ |     |  _|     |  | \    |      |  |    |  |             |_______   |            |   ____   |     |  |    |  |     |   __ \
--| |_| |    | |__     |  |  \   |      |  |    |  |              _______|  |            |  |    |  |     |  |____|  |     |  |__| |
--|____/     |____|    |__|   |__| __   |  |    |__|             |__________|            |__|    |__|     |__________|     |______/
--                                 \ \_/  /
--                                  \____/

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Benji's Hub", "Ocean")

local About = Window:NewTab("About")
local AboutSection = About:NewSection("About Section")

local Version = "--- -. . / .--. --- .. -. - / - . -. / .--. --- .. -. - / --.. . .-. ---"
local RealVersion = "1.10.0"

local TS = game:GetService("TweenService")
local player = game:GetService("Players").LocalPlayer

local MarketplaceService = game:GetService("MarketplaceService")

local function checkVersionIsUpToDate(): boolean
	local assetInfo = MarketplaceService:GetProductInfo(12468300977, Enum.InfoType.Asset)
	local currentVersion = assetInfo.Description

	if currentVersion == Version then
		return true
	else
		return false
	end
end

checkVersionIsUpToDate()

if checkVersionIsUpToDate() == false then
	AboutSection:NewLabel("Version: '"..RealVersion.."' is out of date!\n  Click the button below to launch a new version.")
	AboutSection:NewButton("Launch Benji's hub", "Launches Benji's hub.", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/benjikad/Roblox-Scripts/main/BenjisHub.lua'))()
	end)
else
	AboutSection:NewLabel("Version: '"..RealVersion.."' is the latest version.\n You have the correct version.")
	AboutSection:NewButton("Launch Benji's hub", "Launches Benji's hub.", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/benjikad/Roblox-Scripts/main/BenjisHub.lua'))()
	end)
end

local GlobalContent = Window:NewTab("Universal Content")
local GlobalContentSection = GlobalContent:NewSection("Universal Content")

local function noclip()
	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local NoClip = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local injected = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Credits = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local UICorner_4 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")

	local shutdown = false

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.Position = UDim2.new(0.430468738, 0, 0.382932156, 0)
	Main.Size = UDim2.new(0, 178, 0, 163)
	Main.Draggable = true
	Main.Selectable = true
	Main.Active = true

	NoClip.Name = "NoClip"
	NoClip.Parent = Main
	NoClip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NoClip.Position = UDim2.new(0.278120756, 0, 0.0383698232, 0)
	NoClip.Size = UDim2.new(0, 77, 0, 35)
	NoClip.Font = Enum.Font.Cartoon
	NoClip.Text = "NoClip"
	NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
	NoClip.TextScaled = true
	NoClip.TextSize = 14.000
	NoClip.TextWrapped = true

	UICorner.Parent = NoClip

	injected.Name = "injected"
	injected.Parent = Main
	injected.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
	injected.Position = UDim2.new(0.221940979, 0, 0.327172101, 0)
	injected.Size = UDim2.new(0, 97, 0, 56)
	injected.Font = Enum.Font.Cartoon
	injected.Text = "Turn On"
	injected.TextColor3 = Color3.fromRGB(0, 0, 0)
	injected.TextScaled = true
	injected.TextSize = 14.000
	injected.TextWrapped = true

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2.5
	UIStroke.Transparency = 0
	UIStroke.Name = "UIStroke"
	UIStroke.Enabled = true
	UIStroke.Color = Color3.fromRGB(0, 0, 0)
	UIStroke.LineJoinMode = Enum.LineJoinMode.Round
	UIStroke.Archivable = true
	UIStroke.Parent = injected
	UICorner_2.Parent = injected

	Credits.Name = "Credits"
	Credits.Parent = Main
	Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credits.Position = UDim2.new(0.221940979, 0, 0.734346151, 0)
	Credits.Size = UDim2.new(0, 97, 0, 35)
	Credits.Font = Enum.Font.Cartoon
	Credits.Text = "Close Menu"
	Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
	Credits.TextScaled = true
	Credits.TextSize = 14.000
	Credits.TextWrapped = true

	Credits.MouseButton1Click:Connect(function()
		ScreenGui:Destroy()
		shutdown = true
		for i,v in pairs(player.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
	end)

	UICorner_3.Parent = Credits

	UICorner_4.Parent = Main

	-- Scripts:

	local collide = true

	local function FEIX_fake_script()
		collide = not collide

		local runservice = game:GetService("RunService")

		local player = game:GetService("Players").LocalPlayer
		runservice.Stepped:Connect(function()
			if shutdown == false then
				for i,v in pairs(player.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						if collide == false then
							injected.Text = "Turn Off"
							if v.Name == "Left Leg" or "Right Leg" or "Left Arm" or "Right Arm" or "Head" then
								v.CanCollide = true
							end
							v.CanCollide = false
						else
							injected.Text = "Turn On"
							v.CanCollide = true
						end
					end
				end
			else
				injected.Text = "???"
			end
		end)
	end

	injected.MouseButton1Click:Connect(FEIX_fake_script)()
end

local function TeamKillFunction(Team)

	for i, p in pairs(game.Players:GetChildren()) do
		print("--------------------")
		print(p)
		print(p.Team)
		print("Selected Team =", Team)
		local USERNAME = p.Name
		print("'username' =", p.Name)
		print("A")
		if p.Team.Name == ""..Team then
			print("B")

			local character = player.Character
			print(p.Character)
			print(character)
			if character then
				local wand = character:FindFirstChild("Wand")
				if not wand then
					wand = player.Backpack:FindFirstChild("Wand")
					print("Not out")
					if wand then
						character.Humanoid:EquipTool(wand)

						local rb = p.Character.HumanoidRootPart
						local pos = rb.CFrame
						local vel = rb.Velocity
						local EndPOSX = (pos.x+(vel.x/3))
						local EndPOSY = (pos.y+(vel.y/3))
						local EndPOSZ = (pos.z+(vel.z/3))

						print("out")

						local args3 = {
							[1] = CFrame.new(EndPOSX, EndPOSY, EndPOSZ),
							[2] = 0,
							[3] = 0.2,
							[4] = wand,
							[5] = 1000,
							[6] = workspace:WaitForChild(USERNAME)
						}

						print("table done")

						game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args3))
						print("fired")
						wait(0.5)
						p.Character.Humanoid:UnequipTools()
						print("Put away")
					end
				else
					local rb = p.Character.HumanoidRootPart
					local pos = rb.CFrame
					local vel = rb.Velocity
					local EndPOSX = (pos.x+(vel.x/3))
					local EndPOSY = (pos.y+(vel.y/3))
					local EndPOSZ = (pos.z+(vel.z/3))

					print("out")

					local args3 = {
						[1] = CFrame.new(EndPOSX, EndPOSY, EndPOSZ),
						[2] = 0,
						[3] = 0.2,
						[4] = wand,
						[5] = 1000,
						[6] = workspace:WaitForChild(USERNAME)
					}

					print("table done")

					game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args3))
					print("fired")
					wait(0.1)
					p.Character.Humanoid:UnequipTools()
					print("Put away")
				end
			end
			p.Character.Humanoid:UnequipTools()
		else
			print("Not Team")
		end
	end
end

local TPS = game:GetService("TeleportService")

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

-- Universal content

GlobalContentSection:NewButton("Flip powers", "Allows you to be able to flip around in the air, also with a inf-jump power.", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
end)

GlobalContentSection:NewDropdown("Flip Controls", "Controls", {"Frontflip: Z", "Backflip: X", "Inf-jump: C"}, function()
	local oldList = {
		"Flip Controls",
		"Dropdown"
	}
	local newList = {
		"Flip Controls",
		"Dropdown"
	}
	local dropdown = GlobalContentSection:NewDropdown("Dropdown","Info", oldList, function()

	end)
	dropdown:Refresh(newList)
end)

GlobalContentSection:NewTextBox("Speed (Only #)", "Sets the walk speed of your player. No text allowed!", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

GlobalContentSection:NewSlider("Speed (Only #)", "Sets the walk speed of your player. No text allowed!", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

GlobalContentSection:NewButton("Set Speed Default", "Sets your speed back to default.", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

GlobalContentSection:NewButton("ESP", "Shows you where all other players are.", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/ZpFYGMpU'))()
end)

GlobalContentSection:NewButton("Dex", "Opens the Dex menu.", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/htPUBz6t'))()
end)

GlobalContentSection:NewButton("Noclip", "Allows you to be able to wall through walls.", function()
	noclip()
end)

GlobalContentSection:NewButton("REJOIN", "Makes you rejoin the server.", function()
	player:kick("Rejoining...")
	TPS:Teleport(game.PlaceId, player)
end)

GlobalContentSection:NewButton("EXIT", "Makes you exit the server.", function()
	player:kick("Exiting...")
	game:shutdown()
end)

-- Game specific
if game.PlaceId == 10396639372 then
	local GameSpecificContent = Window:NewTab(GameName)
	local GameSpecificContentSection = GameSpecificContent:NewSection("Content")

	GameSpecificContentSection:NewButton("Unlock Staff Door", "Unlocks the staff door.", function()
		player:kick("NO HACK IN MY GAEM")
	end)
else
	if game.PlaceId == 1234567890 then
		local GameSpecificContent = Window:NewTab(GameName)
		local GameSpecificContentSection = GameSpecificContent:NewSection("Content")
	else 
		if game.PlaceId == 281489669 then
			local GameSpecificContent = Window:NewTab("Wizard TC 2 PLR")
			local GameSpecificContentSection = GameSpecificContent:NewSection(GameName)

			GameSpecificContentSection:NewButton("Wand OP", "Fires wand while moving.", function()
				local USERNAME = game:GetService("Players").LocalPlayer.Name
				_G.name = USERNAME
				while wait() do
					local args = {
						[1] = game:GetService("Workspace")[_G.name].Head.CFrame,
						[2] = 100,
						[3] = 1000.5,
						[4] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Wand"),
						[5] = 1000,
						[6] = workspace:WaitForChild(USERNAME),
					}

					local args2 = {
						[1] = game:GetService("Workspace")[_G.name].Torso.CFrame,
						[2] = 100,
						[3] = 1000.5,
						[4] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Wand"),
						[5] = 1000,
						[6] = workspace:WaitForChild(USERNAME),
					}

					local args3 = {
						[1] = game:GetService("Workspace")[_G.name]:FindFirstChild("Left Arm").CFrame,
						[2] = 100,
						[3] = 1000.5,
						[4] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Wand"),
						[5] = 1000,
						[6] = workspace:WaitForChild(USERNAME),
					}

					game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args2))
					game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
					game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args3))
				end
			end)
			GameSpecificContentSection:NewButton("Gui Hub", "Fires Wiz Haxs.", function()
				-- Gui to Lua
				-- Version: 3.2

				-- Instances:

				local TS = game:GetService("TweenService")

				local UICorner = Instance.new("UICorner")
				local UICorner2 = Instance.new("UICorner")
				local UICorner3 = Instance.new("UICorner")
				local UICorner4 = Instance.new("UICorner")
				local UICorner5 = Instance.new("UICorner")

				local wizardHax = Instance.new("ScreenGui")
				local main = Instance.new("Frame")

				local HideShopButton = Instance.new("TextButton")

				local title = Instance.new("TextLabel")
				local healthButton = Instance.new("TextButton")
				local TeamKillerButton = Instance.new("TextButton")
				local funcButton = Instance.new("TextButton")
				local closeButton = Instance.new("TextButton")

				local TKcloseButton = Instance.new("TextButton")
				local TKGUI = Instance.new("Frame")
				local TKTitle = Instance.new("TextLabel")

				local TKR = Instance.new("TextButton")
				local TKG = Instance.new("TextButton")
				local TKB = Instance.new("TextButton")
				local TKY = Instance.new("TextButton")

				local healthGUI = Instance.new("Frame")
				local healthTitle = Instance.new("TextLabel")
				local targetBox = Instance.new("TextBox")
				local negateButton = Instance.new("TextButton")
				local numBox = Instance.new("TextBox")
				local errorTitle = Instance.new("TextLabel")
				local infoTarget = Instance.new("TextLabel")
				local infoNum = Instance.new("TextLabel")
				local addButton = Instance.new("TextButton")
				local setButton = Instance.new("TextButton")
				local closeButton_2 = Instance.new("TextButton")
				local funcGUI = Instance.new("Frame")
				local TextLabel = Instance.new("TextLabel")
				local closeButton_3 = Instance.new("TextButton")
				local funcButton1 = Instance.new("TextButton")
				local funcButton3 = Instance.new("TextButton")
				local funcButton6 = Instance.new("TextButton")
				local funcButton4 = Instance.new("TextButton")
				local funcButton9 = Instance.new("TextButton")
				local funcButton7 = Instance.new("TextButton")
				local funcButton2 = Instance.new("TextButton")
				local funcButton5 = Instance.new("TextButton")
				local funcButton8 = Instance.new("TextButton")
				local openButton = Instance.new("Frame")
				local openButton_2 = Instance.new("TextButton")
				local autoBuyStuff = false -- auto buy stuff in your team
				local autoGetMoney = false -- auto get money
				local players = game.Players
				local LocalPlayer = players.LocalPlayer

				--Properties:

				wizardHax.Name = "wizardHax"
				wizardHax.Parent = game.CoreGui
				wizardHax.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

				local out = true
				local can = true

				HideShopButton.Name = "HideShop"
				HideShopButton.Parent = wizardHax
				HideShopButton.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
				HideShopButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				HideShopButton.TextColor3 = Color3.fromRGB(225, 225, 225)
				HideShopButton.BorderSizePixel = 3
				HideShopButton.Text = "<"
				HideShopButton.Position = UDim2.new(-0.1,0,0.29,0)
				HideShopButton.Size = UDim2.new(0, 25, 0, 25)
				HideShopButton.Visible = true
				HideShopButton.Draggable = false
				HideShopButton.Active = true
				HideShopButton.TextScaled = true
				HideShopButton.Rotation = 180

				TS:Create(HideShopButton, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {Position = UDim2.new(0,10,0.29,0)}):Play()

				HideShopButton.MouseButton1Click:Connect(function()
					local FL = TS:Create(player.PlayerGui.QuickShop.MainFrame, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0), {Position = UDim2.new(-0.101, 0, 0.32, 0)})
					local FR = TS:Create(player.PlayerGui.QuickShop.MainFrame, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0), {Position = UDim2.new(0, 0, 0.32, 0)})

					local FL2 = TS:Create(player.PlayerGui.Gamepass.ImageButton, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0), {Position = UDim2.new(-0.101, 0, 0.75, 0)})
					local FR2 = TS:Create(player.PlayerGui.Gamepass.ImageButton, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0), {Position = UDim2.new(0, 10, 0.75, 0)})

					local R180 = TS:Create(HideShopButton, TweenInfo.new(1), {Rotation = HideShopButton.Rotation + 180})
					local R1802 = TS:Create(HideShopButton, TweenInfo.new(1), {Rotation = HideShopButton.Rotation - 180})
					if can == true then
						can = false
						if out == true then
							FL:Play()
							FL2:Play()
							R180:Play()
							FL.Completed:Wait()
							out = false
							can = true
						else
							FR:Play()
							FR2:Play()
							R1802:Play()
							FR.Completed:Wait()
							out = true
							can = true
						end
					end
				end)

				main.Name = "main"
				main.Parent = wizardHax
				main.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
				main.BorderColor3 = Color3.fromRGB(170, 170, 255)
				main.BorderSizePixel = 3
				main.Position = UDim2.new(-0.5, 0, -0.5, 0)
				main.Size = UDim2.new(0, 347, 0, 190)
				main.Visible = true
				main.Draggable = true
				main.Active = true
				local TP = UDim2.new(0.105, 0, 0.03, 0)
				local TP2 = UDim2.new(0.1, 0, 0.025, 0)
				local TP3 = UDim2.new(0.3, 0, 0.025, 0)
				local TP4 = UDim2.new(0.475, 0, 0.025, 0)
				local TP5 = UDim2.new(0.75, 0, 0.025, 0)
				local TPO = UDim2.new(-0.5, 0, -0.5, 0)
				TS:Create(main, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TP}):Play()

				title.Name = "title"
				title.Parent = main
				title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				title.BackgroundTransparency = 1.000
				title.BorderSizePixel = 0
				title.Position = UDim2.new(0.239193082, 0, 0.0552147254, 0)
				title.Size = UDim2.new(0, 180, 0, 45)
				title.Font = Enum.Font.Fantasy
				title.Text = "Welcome!"
				title.TextColor3 = Color3.fromRGB(0, 100, 147)
				title.TextScaled = true
				title.TextSize = 14.000
				title.TextWrapped = true

				healthButton.Name = "healthButton"
				healthButton.Parent = main
				healthButton.BackgroundColor3 = Color3.fromRGB(255, 219, 11)
				healthButton.BorderColor3 = Color3.fromRGB(0, 170, 255)
				healthButton.Position = UDim2.new(0.0547550432, 50, 0.589695632, 0)
				healthButton.Size = UDim2.new(0, 65, 0, 41)
				healthButton.Font = Enum.Font.SourceSans
				healthButton.Text = "Health editor"
				healthButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				healthButton.TextSize = 13.500
				healthButton.MouseButton1Down:Connect(function()
					TS:Create(healthGUI, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TP4}):Play()
					healthGUI.Visible = true
				end)



				TeamKillerButton.Name = "TeamKillerButton"
				TeamKillerButton.Parent = main
				TeamKillerButton.BackgroundColor3 = Color3.fromRGB(255, 219, 11)
				TeamKillerButton.BorderColor3 = Color3.fromRGB(0, 170, 255)
				TeamKillerButton.Position = UDim2.new(0.0547550432, 120, 0.589695632, 0)
				TeamKillerButton.Size = UDim2.new(0, 65, 0, 41)
				TeamKillerButton.Font = Enum.Font.SourceSans
				TeamKillerButton.Text = "Team Killer"
				TeamKillerButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TeamKillerButton.TextSize = 14.000
				TeamKillerButton.MouseButton1Down:Connect(function()
					TS:Create(TKGUI, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TP5}):Play()
					TKGUI.Visible = true
				end)



				funcButton.Name = "funcButton"
				funcButton.Parent = main
				funcButton.BackgroundColor3 = Color3.fromRGB(255, 219, 11)
				funcButton.BorderColor3 = Color3.fromRGB(0, 170, 255)
				funcButton.Position = UDim2.new(0.570605218, 10, 0.589695692, 0)
				funcButton.Size = UDim2.new(0, 65, 0, 41)
				funcButton.Font = Enum.Font.SourceSans
				funcButton.Text = "Functions"
				funcButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton.TextSize = 14.000
				funcButton.MouseButton1Down:Connect(function()
					TS:Create(funcGUI, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TP3}):Play()
					funcGUI.Visible = true
				end)

				closeButton.Name = "closeButton"
				closeButton.Parent = main
				closeButton.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
				closeButton.BorderColor3 = Color3.fromRGB(0, 255, 127)
				closeButton.Position = UDim2.new(0.864185095, 0, 0.023779586, 0)
				closeButton.Size = UDim2.new(0, 41, 0, 41)
				closeButton.Font = Enum.Font.SourceSans
				closeButton.Text = "X"
				closeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				closeButton.TextScaled = true
				closeButton.TextSize = 14.000
				closeButton.TextWrapped = true
				closeButton.MouseButton1Down:Connect(function()
					can = false
					local out = TS:Create(main, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO})
					TS:Create(healthGUI, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO}):Play()
					TS:Create(funcGUI, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO}):Play()
					TS:Create(TKGUI, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO}):Play()
					TS:Create(player.PlayerGui.QuickShop.MainFrame, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {Position = UDim2.new(0, 0, 0.32, 0)}):Play()
					TS:Create(player.PlayerGui.Gamepass.ImageButton, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {Position = UDim2.new(0, 10, 0.75, 0)}):Play()
					TS:Create(HideShopButton, TweenInfo.new(1), {Rotation = 0}):Play()
					wait(1)
					TS:Create(HideShopButton, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0), {Position = UDim2.new(-0.1,0,0.29,0)}):Play()
					out:Play()
					out.Completed:Wait()
					wizardHax:Destroy()
				end)

				TS:Create(player.PlayerGui.QuickShop.MainFrame, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {Position = UDim2.new(0, 0, 0.32, 0)}):Play()
				TS:Create(player.PlayerGui.Gamepass.ImageButton, TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {Position = UDim2.new(0, 10, 0.75, 0)}):Play()

				healthGUI.Name = "healthGUI"
				healthGUI.Parent = wizardHax
				healthGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				healthGUI.Position = UDim2.new(-0.5, 0, -0.5, 0)
				healthGUI.Size = UDim2.new(0, 502, 0, 234)
				healthGUI.Visible = false
				healthGUI.Draggable = true
				healthGUI.Active = true

				healthTitle.Name = "healthTitle"
				healthTitle.Parent = healthGUI
				healthTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				healthTitle.BackgroundTransparency = 1.000
				healthTitle.BorderColor3 = Color3.fromRGB(255, 255, 127)
				healthTitle.Position = UDim2.new(-0.000687420368, 0, -0.00215985253, 0)
				healthTitle.Size = UDim2.new(0, 203, 0, 40)
				healthTitle.Font = Enum.Font.SourceSans
				healthTitle.Text = "Health editor"
				healthTitle.TextColor3 = Color3.fromRGB(108, 108, 108)
				healthTitle.TextScaled = true
				healthTitle.TextSize = 14.000
				healthTitle.TextWrapped = true

				TKGUI.Name = "TeamKillerGUI"
				TKGUI.Parent = wizardHax
				TKGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				TKGUI.Position = UDim2.new(-0.5, 0, -0.5, 0)
				TKGUI.Size = UDim2.new(0, 450, 0, 235)
				TKGUI.Visible = false
				TKGUI.Draggable = true
				TKGUI.Active = true

				TKTitle.Name = "TeamKillerTitle"
				TKTitle.Parent = TKGUI
				TKTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				TKTitle.BackgroundTransparency = 1.000
				TKTitle.BorderColor3 = Color3.fromRGB(255, 255, 127)
				TKTitle.Position = UDim2.new(-0.000687420368, 0, -0.00215985253, 0)
				TKTitle.Size = UDim2.new(0, 203, 0, 40)
				TKTitle.Font = Enum.Font.SourceSans
				TKTitle.Text = "Team Killer"
				TKTitle.TextColor3 = Color3.fromRGB(108, 108, 108)
				TKTitle.TextScaled = true
				TKTitle.TextSize = 14.000
				TKTitle.TextWrapped = true

				TKcloseButton.Name = "TKcloseButton"
				TKcloseButton.Parent = TKGUI
				TKcloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				TKcloseButton.BorderColor3 = Color3.fromRGB(255, 255, 127)
				TKcloseButton.Position = UDim2.new(0.854735434, 0, 0.0352619998, 0)
				TKcloseButton.Size = UDim2.new(0, 35, 0, 35)
				TKcloseButton.Font = Enum.Font.SourceSans
				TKcloseButton.Text = "X"
				TKcloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TKcloseButton.TextScaled = true
				TKcloseButton.TextSize = 14.000
				TKcloseButton.TextWrapped = true
				TKcloseButton.MouseButton1Down:Connect(function()
					-- TK out
					TS:Create(TKGUI, TweenInfo.new(2.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO}):Play()
				end)

				UICorner5.Parent = TKGUI

				TKR.Name = "HideShop"
				TKR.Parent = TKGUI
				TKR.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
				TKR.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TKR.TextColor3 = Color3.fromRGB(225, 225, 225)
				TKR.BorderSizePixel = 3
				TKR.Text = "Red"
				TKR.Position = UDim2.new(0.1,0,0.29,0)
				TKR.Size = UDim2.new(0, 25, 0, 25)
				TKR.Visible = true
				TKR.Draggable = false
				TKR.Active = true
				TKR.TextScaled = true
				TKR.MouseButton1Click:Connect(function()
					TeamKillFunction("Red")
				end)

				targetBox.Name = "targetBox"
				targetBox.Parent = healthGUI
				targetBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				targetBox.Position = UDim2.new(0.0586269498, 0, 0.235597119, 0)
				targetBox.Size = UDim2.new(0, 303, 0, 33)
				targetBox.Font = Enum.Font.SourceSans
				targetBox.PlaceholderText = "Targets"
				targetBox.Text = ""
				targetBox.TextColor3 = Color3.fromRGB(0, 0, 0)
				targetBox.TextSize = 14.000
				targetBox.ClearTextOnFocus = false

				negateButton.Name = "negateButton"
				negateButton.Parent = healthGUI
				negateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				negateButton.Position = UDim2.new(0.419776827, 0, 0.745437801, 0)
				negateButton.Size = UDim2.new(0, 80, 0, 39)
				negateButton.Font = Enum.Font.SourceSans
				negateButton.Text = "Negate"
				negateButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				negateButton.TextScaled = true
				negateButton.TextSize = 14.000
				negateButton.TextWrapped = true
				negateButton.MouseButton1Down:Connect(function()
					if not tonumber(numBox.Text) then
						return
					end
					local targets = getSelector(targetBox.Text)
					for i,player in pairs(targets) do
						print(player.Name)
						local rb = player.Character.HumanoidRootPart
						local pos = rb.CFrame
						local vel = rb.Velocity
						shootWand(pos.x+vel.x/3,pos.y+vel.y/3,pos.z+vel.z/3,tonumber(numBox.Text))
					end
				end)

				numBox.Name = "numBox"
				numBox.Parent = healthGUI
				numBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				numBox.Position = UDim2.new(0.706429899, 0, 0.235597134, 0)
				numBox.Size = UDim2.new(0, 114, 0, 33)
				numBox.Font = Enum.Font.SourceSans
				numBox.PlaceholderText = "Number"
				numBox.Text = ""
				numBox.TextColor3 = Color3.fromRGB(0, 0, 0)
				numBox.TextSize = 14.000
				numBox.ClearTextOnFocus = false

				errorTitle.Name = "errorTitle"
				errorTitle.Parent = healthGUI
				errorTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				errorTitle.BorderColor3 = Color3.fromRGB(77, 116, 116)
				errorTitle.Position = UDim2.new(0.219123438, 0, 0.487179488, 0)
				errorTitle.Size = UDim2.new(0, 270, 0, 37)
				errorTitle.Visible = false
				errorTitle.Font = Enum.Font.SourceSans
				errorTitle.Text = ""
				errorTitle.TextColor3 = Color3.fromRGB(255, 0, 0)
				errorTitle.TextSize = 14.000
				errorTitle.TextWrapped = true

				infoTarget.Name = "infoTarget"
				infoTarget.Parent = healthGUI
				infoTarget.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				infoTarget.Position = UDim2.new(0.0231629014, 0, 0.423076928, 0)
				infoTarget.Size = UDim2.new(0, 84, 0, 68)
				infoTarget.Font = Enum.Font.SourceSans
				infoTarget.Text = "Put a comma after each name to add multiple targets"
				infoTarget.TextColor3 = Color3.fromRGB(0, 0, 0)
				infoTarget.TextSize = 14.000
				infoTarget.TextWrapped = true

				infoNum.Name = "infoNum"
				infoNum.Parent = healthGUI
				infoNum.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				infoNum.Position = UDim2.new(0.784119129, 0, 0.427350432, 0)
				infoNum.Size = UDim2.new(0, 75, 0, 33)
				infoNum.Font = Enum.Font.SourceSans
				infoNum.Text = "Put inf to make infinite"
				infoNum.TextColor3 = Color3.fromRGB(0, 0, 0)
				infoNum.TextSize = 14.000
				infoNum.TextWrapped = true

				addButton.Name = "addButton"
				addButton.Parent = healthGUI
				addButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				addButton.Position = UDim2.new(0.188701123, 0, 0.741164267, 0)
				addButton.Size = UDim2.new(0, 80, 0, 39)
				addButton.Font = Enum.Font.SourceSans
				addButton.Text = "Add"
				addButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				addButton.TextScaled = true
				addButton.TextSize = 14.000
				addButton.TextWrapped = true
				addButton.MouseButton1Down:Connect(function()
					if not tonumber(numBox.Text) then
						return
					end
					local targets = getSelector(targetBox.Text)
					for i,player in pairs(targets) do
						print(player.Name)
						local rb = player.Character.HumanoidRootPart
						local pos = rb.CFrame
						local vel = rb.Velocity
						shootWand(pos.x+vel.x/3,pos.y+vel.y/3,pos.z+vel.z/3,-tonumber(numBox.Text))
					end
				end)

				setButton.Name = "setButton"
				setButton.Parent = healthGUI
				setButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				setButton.Position = UDim2.new(0.642884374, 0, 0.741164267, 0)
				setButton.Size = UDim2.new(0, 80, 0, 39)
				setButton.Font = Enum.Font.SourceSans
				setButton.Text = "Set"
				setButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				setButton.TextScaled = true
				setButton.TextSize = 14.000
				setButton.TextWrapped = true
				setButton.MouseButton1Down:Connect(function()
					if not tonumber(numBox.Text) then
						return
					end
					local targets = getSelector(targetBox.Text)
					for i,player in pairs(targets) do
						print(player.Name)
						local rb = player.Character.HumanoidRootPart
						local pos = rb.CFrame
						local vel = rb.Velocity
						shootWand(pos.x+vel.x/3,pos.y+vel.y/3,pos.z+vel.z/3,-tonumber(numBox.Text)+player.Character.Humanoid.Health)
					end
				end)

				closeButton_2.Name = "closeButton"
				closeButton_2.Parent = healthGUI
				closeButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
				closeButton_2.BorderColor3 = Color3.fromRGB(255, 255, 127)
				closeButton_2.Position = UDim2.new(0.901649058, 0, 0.0299145579, 0)
				closeButton_2.Size = UDim2.new(0, 41, 0, 41)
				closeButton_2.Font = Enum.Font.SourceSans
				closeButton_2.Text = "X"
				closeButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
				closeButton_2.TextScaled = true
				closeButton_2.TextSize = 14.000
				closeButton_2.TextWrapped = true
				closeButton_2.MouseButton1Down:Connect(function()
					-- Health GUI out
					TS:Create(healthGUI, TweenInfo.new(2.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO}):Play()
				end)

				funcGUI.Name = "funcGUI"
				funcGUI.Parent = wizardHax
				funcGUI.BackgroundColor3 = Color3.fromRGB(255, 180, 28)
				funcGUI.Position = UDim2.new(-0.5, 0, -0.5, 0)
				funcGUI.Size = UDim2.new(0, 291, 0, 190)
				funcGUI.Visible = false
				funcGUI.Draggable = true
				funcGUI.Active = true

				TextLabel.Parent = funcGUI
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 180, 28)
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.Size = UDim2.new(0, 64, 0, 33)
				TextLabel.Font = Enum.Font.SourceSans
				TextLabel.Text = "Functions"
				TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.TextSize = 14.000

				UICorner4.Parent = TextLabel

				closeButton_3.Name = "closeButton"
				closeButton_3.Parent = funcGUI
				closeButton_3.BackgroundColor3 = Color3.fromRGB(255, 180, 28)
				closeButton_3.BorderColor3 = Color3.fromRGB(255, 180, 28)
				closeButton_3.Position = UDim2.new(0.854735434, 0, 0.0352619998, 0)
				closeButton_3.Size = UDim2.new(0, 35, 0, 35)
				closeButton_3.Font = Enum.Font.SourceSans
				closeButton_3.Text = "X"
				closeButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
				closeButton_3.TextScaled = true
				closeButton_3.TextSize = 14.000
				closeButton_3.TextWrapped = true
				closeButton_3.MouseButton1Down:Connect(function()
					-- function out
					TS:Create(funcGUI, TweenInfo.new(2.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = TPO}):Play()
				end)

				funcButton1.Name = "funcButton1"
				funcButton1.Parent = funcGUI
				funcButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton1.Position = UDim2.new(0.0721649453, 0, 0.272727281, 0)
				funcButton1.Size = UDim2.new(0, 82, 0, 32)
				funcButton1.Font = Enum.Font.SourceSans
				funcButton1.Text = "Noclip"
				funcButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton1.TextSize = 14.000
				funcButton1.MouseButton1Down:Connect(function()
					funcButton1.Text = "Fired"
					wait(1)
					funcButton1.Text = "Noclip"
					noclip()
				end)

				funcButton3.Name = "funcButton3"
				funcButton3.Parent = funcGUI
				funcButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton3.Position = UDim2.new(0.646048129, 0, 0.272727281, 0)
				funcButton3.Size = UDim2.new(0, 82, 0, 32)
				funcButton3.Font = Enum.Font.SourceSans
				funcButton3.Text = "func 3"
				funcButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton3.TextSize = 14.000

				funcButton6.Name = "funcButton6"
				funcButton6.Parent = funcGUI
				funcButton6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton6.Position = UDim2.new(0.646048129, 0, 0.524064183, 0)
				funcButton6.Size = UDim2.new(0, 82, 0, 32)
				funcButton6.Font = Enum.Font.SourceSans
				funcButton6.Text = "func 6"
				funcButton6.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton6.TextSize = 14.000

				funcButton4.Name = "funcButton4"
				funcButton4.Parent = funcGUI
				funcButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton4.Position = UDim2.new(0.0721649453, 0, 0.524064183, 0)
				funcButton4.Size = UDim2.new(0, 82, 0, 32)
				funcButton4.Font = Enum.Font.SourceSans
				funcButton4.Text = "func 4"
				funcButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton4.TextSize = 14.000

				funcButton9.Name = "funcButton9"
				funcButton9.Parent = funcGUI
				funcButton9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton9.Position = UDim2.new(0.646048129, 0, 0.770053446, 0)
				funcButton9.Size = UDim2.new(0, 82, 0, 32)
				funcButton9.Font = Enum.Font.SourceSans
				funcButton9.Text = "func 9"
				funcButton9.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton9.TextSize = 14.000

				funcButton7.Name = "funcButton7"
				funcButton7.Parent = funcGUI
				funcButton7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton7.Position = UDim2.new(0.0721649453, 0, 0.770053446, 0)
				funcButton7.Size = UDim2.new(0, 82, 0, 32)
				funcButton7.Font = Enum.Font.SourceSans
				funcButton7.Text = "func 7"
				funcButton7.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton7.TextSize = 14.000

				funcButton2.Name = "funcButton2"
				funcButton2.Parent = funcGUI
				funcButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton2.Position = UDim2.new(0.367697597, 0, 0.272727281, 0)
				funcButton2.Size = UDim2.new(0, 76, 0, 32)
				funcButton2.Font = Enum.Font.SourceSans
				funcButton2.Text = "Remove Doors"
				funcButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton2.TextSize = 14.000
				funcButton2.MouseButton1Down:Connect(function()
					for i, tycoon in pairs(game.Workspace:FindFirstChild("berezaa's Tycoon Kit"):GetChildren()) do
						print(tycoon)
						if tycoon.Name == "Cool yellow" then
							print("y")
							if tycoon.YellowFirst.Gate:FindFirstChild("Head") then
								tycoon.YellowFirst.Gate.Head:Destroy()
								if tycoon.YellowSecond.Gate:FindFirstChild("Head") then
									tycoon.YellowSecond.Gate.Head:Destroy()
								end
							else
								if tycoon.YellowSecond.Gate:FindFirstChild("Head") then
									tycoon.YellowSecond.Gate.Head:Destroy()
								end
							end
							print("Done")
						else
							if tycoon.Name == "Medium green" then
								print("g")
								if tycoon.GreenFirst.Gate:FindFirstChild("Head") then
									tycoon.GreenFirst.Gate.Head:Destroy()
									if tycoon.GreenSecond.Gate:FindFirstChild("Head") then
										tycoon.GreenSecond.Gate.Head:Destroy()
									end
								else
									if tycoon.GreenSecond.Gate:FindFirstChild("Head") then
										tycoon.GreenSecond.Gate.Head:Destroy()
									end
								end
								print("Done")
							else
								if tycoon.Name == "Medium red" then
									print("r")
									if tycoon.RedFirst.Gate:FindFirstChild("Head") then
										tycoon.RedFirst.Gate.Head:Destroy()
										if tycoon.RedSecond.Gate:FindFirstChild("Head") then
											tycoon.RedSecond.Gate.Head:Destroy()
										end
									else
										if tycoon.RedSecond.Gate:FindFirstChild("Head") then
											tycoon.RedSecond.Gate.Head:Destroy()
										end
									end
									print("Done")
								else
									if tycoon.Name == "Pastel Blue" then
										print("b")
										if tycoon.BlueFirst.Gate:FindFirstChild("Head") then
											tycoon.BlueFirst.Gate.Head:Destroy()
											if tycoon.BlueSecond.Gate:FindFirstChild("Head") then
												tycoon.BlueSecond.Gate.Head:Destroy()
											end
										else
											if tycoon.BlueSecond.Gate:FindFirstChild("Head") then
												tycoon.BlueSecond.Gate.Head:Destroy()
											end
										end
										print("Done")
									end
								end
							end
						end
					end
				end)

				funcButton5.Name = "funcButton5"
				funcButton5.Parent = funcGUI
				funcButton5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton5.Position = UDim2.new(0.367697597, 0, 0.524064183, 0)
				funcButton5.Size = UDim2.new(0, 76, 0, 32)
				funcButton5.Font = Enum.Font.SourceSans
				funcButton5.Text = "func 5"
				funcButton5.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton5.TextSize = 14.000

				funcButton8.Name = "funcButton8"
				funcButton8.Parent = funcGUI
				funcButton8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				funcButton8.Position = UDim2.new(0.367697597, 0, 0.770053506, 0)
				funcButton8.Size = UDim2.new(0, 76, 0, 32)
				funcButton8.Font = Enum.Font.SourceSans
				funcButton8.Text = "func 8"
				funcButton8.TextColor3 = Color3.fromRGB(0, 0, 0)
				funcButton8.TextSize = 14.000

				UICorner.Parent = main
				UICorner2.Parent = funcGUI
				UICorner3.Parent = healthGUI

				wait(1)
				TS:Create(HideShopButton, TweenInfo.new(1), {Rotation = HideShopButton.Rotation - 180}):Play()
				wait(2)
				title.Text = "w"
				wait(0.1)
				title.Text = "wi"
				wait(0.1)
				title.Text = "wiz"
				wait(0.1)
				title.Text = "wiza"
				wait(0.1)
				title.Text = "wizar"
				wait(0.1)
				title.Text = "wizard"
				wait(0.1)
				title.Text = "wizardH"
				wait(0.1)
				title.Text = "wizardHa"
				wait(0.1)
				title.Text = "wizardHax"
				wait(0.1)
				title.Text = "wizardHaxs"

				-- functions

				function shootWand(x,y,z,damage)
					local character = LocalPlayer.Character
					if character then
						local wand = character:FindFirstChild("Wand")
						if not wand then
							wand = LocalPlayer.Backpack:FindFirstChild("Wand")
							if wand then
								LocalPlayer.Character.Humanoid:EquipTool(wand)
								wait(0.05)
								wand = character:FindFirstChild("Wand")
								spawn(function() 
									wait(0.1)
									LocalPlayer.Character.Humanoid:UnequipTools(wand)
								end)
							else
								return
							end
						end
						if not wand then
							return
						end
						local tbl_main = 
							{
								CFrame.new(x, y, z), 
								0, 
								0.1,
								wand, 
								damage, 
								character
							}
						wand.Fire:FireServer(unpack(tbl_main))
						wait(0.01)
					end
				end
				function shootPlayer(_player,damage)
					local character = LocalPlayer.Character
					if character then
						local wand = character:FindFirstChild("Wand")
						local pos = _player.Character.HumanoidRootPart.CFrame
						local vel = _player.Character.HumanoidRootPart.Velocity
						if not wand then
							wand = LocalPlayer.Backpack:FindFirstChild("Wand")
							if wand then
								LocalPlayer.Character.Humanoid:EquipTool(wand)
								wait(0.05)
								wand = character:FindFirstChild("Wand")
								spawn(function() 
									wait(0.1)
									LocalPlayer.Character.Humanoid:UnequipTools(wand)
								end)
							else
								return
							end
							if not wand then
								return
							end
						end
						local tbl_main = 
							{
								CFrame.new(pos.x+vel.x/5,pos.y+vel.y/5,pos.z+vel.z/5), 
								0, 
								0.1,
								wand, 
								damage, 
								character
							}
						wand.Fire:FireServer(unpack(tbl_main))
						wait(0.01)
					end
				end
				function getSelector(text)
					local selectors = {}
					for i,selector in pairs(string.split(text,",")) do
						if selector == "all" then
							for i,player in pairs(players:GetChildren()) do
								if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
									selectors[table.getn(selectors)+1] = player
								end
							end
						else
							for i,player in pairs(players:GetChildren()) do
								if startsWith(player.Name,selector) and player.Name ~= LocalPlayer.Name and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
									selectors[table.getn(selectors)+1] = player
								end
							end
						end
					end
					return selectors
				end
				function startsWith(text1,text2)
					if string.lower(string.sub(text1,1,#text2)) == string.lower(text2) then
						return true
					end
				end
			end)
			GameSpecificContentSection:NewButton("Show Money", "Shows current money.", function()
				local ScreenGui = Instance.new("ScreenGui")
				local Main = Instance.new("Frame")
				local NoClip = Instance.new("TextLabel")
				local injected = Instance.new("TextButton")

				local UICorner = Instance.new("UICorner")
				local UICorner_2 = Instance.new("UICorner")
				local UICorner_3 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")

				--Properties:

				ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				ScreenGui.Name = "ScreenerGuier"
				ScreenGui.ResetOnSpawn = false

				Main.Name = "Main"
				Main.Parent = ScreenGui
				Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Main.Position = UDim2.new(1.25, 0, 0.925, 0)
				Main.Size = UDim2.new(0.15, 0, 0.075, 0)
				Main.Draggable = true
				Main.Selectable = true
				Main.Active = true

				UIStroke.Parent = Main
				UICorner.Parent = Main

				NoClip.Name = "NoClip"
				NoClip.Parent = Main
				NoClip.BackgroundColor3 = Color3.fromRGB(255, 215, 10)
				NoClip.Position = UDim2.new(0, 0, 0.5, 0)
				NoClip.Size = UDim2.new(1, 0, 0.5, 0)
				NoClip.Font = Enum.Font.Cartoon
				NoClip.Text = "Money: "..game:GetService("Players").LocalPlayer.leaderstats.Cash.Value
				NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
				NoClip.TextScaled = true
				NoClip.TextSize = 14.000
				NoClip.TextWrapped = true

				UICorner_2.Parent = NoClip

				local injected = Instance.new("TextButton")

				injected.Name = "injected"
				injected.Parent = Main
				injected.BackgroundColor3 = Color3.fromRGB(255, 10, 10)
				injected.Position = UDim2.new(0, 0, 0, 0)
				injected.Size = UDim2.new(1, 0, 0.5, 0)
				injected.Font = Enum.Font.Cartoon
				injected.Text = "Close"
				injected.TextColor3 = Color3.fromRGB(0, 0, 0)
				injected.TextScaled = true
				injected.TextSize = 14.000
				injected.TextWrapped = true
				UICorner_3.Parent = injected

				local can = true

				TS:Create(Main, TweenInfo.new(4, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false), {Position = UDim2.new(0, 0, 0.925, 0)}):Play()
				while wait() do
					local function comma_value(amount)
						local k
						local formatted = amount
						while true do  
							formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
							if (k==0) then
								NoClip.Text = "Money: $"..formatted
								break
							end
						end
						return formatted
					end

					comma_value(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value)
					injected.MouseButton1Down:Connect(function()
						if can == true then
							can = false
							TS:Create(Main, TweenInfo.new(0.2), {Position = UDim2.new(0, 0, 0.925, 0)}):Play()
							wait(0.2)
							TS:Create(Main, TweenInfo.new(1), {Position = UDim2.new(0.015, 0, 0.925, 0)}):Play()
							wait(1.1)
							TS:Create(Main, TweenInfo.new(2), {Position = UDim2.new(-0.25, 0, 0.925, 0)}):Play()
							wait(2.1)
							ScreenGui:Destroy()
						end
					end)
				end
			end)
		end
	end
end

local ExternalScripts = Window:NewTab("External Scripts")
local ExternalScriptSection = ExternalScripts:NewSection("External Scripts")

-- External Scripts

ExternalScriptSection:NewButton("Inf Yield", "Opens Inf Yield.", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- Settings:

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")

SettingsSection:NewKeybind("Hide/Reveal button", "This hides or reveals this hub!", Enum.KeyCode.RightAlt, function()
	Library:ToggleUI()
end)

local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")

-- Credits

CreditsSection:NewDropdown("Credits - BenjiKad", "Credits", {"Scripting", "Ideas", "UI", "Geam-Support", "Discord (Click me)"}, function(currentOption)
	local oldList = {
		"Credits - BenjiKad",
		"Credits"
	}
	local newList = {
		"Credits - BenjiKad",
		"Credits"
	}
	if currentOption == "Discord (Click me)" then
		syn.request({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = game.HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = game.HttpService:GenerateGUID(false),
				args = {code = 'SQnhXmJF'}
			})
		})
	end
	local dropdown = CreditsSection:NewDropdown("Credits - BenjiKad","Credits", oldList, function()
	end)
	dropdown:Refresh(newList)
end)
