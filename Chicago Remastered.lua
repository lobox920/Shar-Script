-- Fully made by lobox920#9889
-- i made it in like 20d
-- the documentation is so shitty omfg i couldnt save the settigns :(

repeat wait() until game:IsLoaded()

if game.PlaceId == 7167319176 then

local mychar = game.Players.LocalPlayer.Character
local mypos = mychar.HumanoidRootPart.Position
local mycf = mychar.HumanoidRootPart.CFrame

-- compablité pour Krnl et tt
loadstring(game:HttpGet("https://irisapp.ca/api/Scripts/IrisBetterCompat.lua"))()




local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))()
ESP:Toggle(true)
ESP.Players = true 
ESP.Tracers = false 
ESP.Boxes = false 
ESP.Names = false




local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Chicago Remastered x SharScript Premium", HidePremium = true, SaveConfig = true, ConfigFolder = "Shar Script"})

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		mychar.Humanoid.WalkSpeed = (Value)
	end    
})



Tab:AddSlider({
	Name = "JumPower",
	Min = 6,
	Max = 50,
	Default = 6,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumPower",
	Callback = function(Value)
		mychar.Humanoid.JumpHeight = (Value)
	end    
})

Tab:AddButton({
	Name = "Sit",
	Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
  	end    
})

Tab:AddButton({
	Name = "Noclip [PRESS P]",
	Callback = function()
	nam = game.Players.LocalPlayer.Name
    stat = "Off"
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    k = "p"
    
    mouse.KeyDown:connect(
        function(key)
            if key == k then
                if stat == "Off" then
                    stat = "On"
                else
                    stat = "Off"
                end
            end
        end
    )
    
    game:GetService("RunService").Stepped:connect(
        function()
            if stat == "On" then
                for a, b in pairs(game.Workspace:GetChildren()) do
                    if b.Name == nam then
                        for i, v in pairs(game.Workspace[nam]:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            end
        end
    )
    
    Workspace[nam].Head.Changed:connect(
        function()
            if stat == "On" then
                for a, b in pairs(game.Workspace:GetChildren()) do
                    if b.Name == nam then
                        for i, v in pairs(game.Workspace[nam]:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            end
        end)

  	end    
})

Tab:AddTextbox({
	Name = "TP to player (ENTER FULL ROBLOX NAME)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[Value].Character.HumanoidRootPart.CFrame
	end	  
})



local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Bank")

Tab:AddButton({
	Name = "Goto Bank Door",
	Callback = function()
      	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-246, 5, 94)}):Play()
  	end    
})

Tab:AddButton({
	Name = "Goto Bank Vault",
	Callback = function()
      	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-220, -6, 117)}):Play()
  	end    
})

Tab:AddLabel("Jewellry")

Tab:AddButton({
	Name = "Goto jewelry store",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(603, 3, -201)}):Play()
	end    
})

Tab:AddLabel("Shop")


Tab:AddButton({
	Name = "Goto Gun Shop",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(117, 3, 47)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Blox-N-Out",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(588, 4, -75)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto The Pitch",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(709, 3, -96)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Bike Shop",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(743, 3, -208)}):Play()
	end    
})

Tab:AddLabel("Dealer")

Tab:AddButton({
	Name = "Goto Bank Dealer NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-9, -9, -26)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Bike Dealer NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(742, 1, -215)}):Play()
	end    
})


Tab:AddLabel("NPC")

Tab:AddButton({
	Name = "Goto Gun Store NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(122, 3, 47)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Deli NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-68, 3, 59)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto 2nd Deli NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(234, 3, -181)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto 7/11 Shp NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-61, 3, -194)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Gas Station NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(338, 3, -40)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Blox General NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(643, 3, 82)}):Play()
	end    
})
Tab:AddButton({
	Name = "Goto In-N-Out NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 7, -84)}):Play()
	end    
})





local Tab = Window:MakeTab({
	Name = "Money",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Quick Option")

Tab:AddButton({
	Name = "Sell Money Bag",
	Callback = function()

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-6.207057, -9.37552357, -19.0183372, -0.682898045, -1.9579824e-08, 0.730513692, -1.45859325e-10, 1, 2.66664646e-08, -0.730513692, 1.81039237e-08, -0.682898045)}):Play()
		wait(0.5)
		fireclickdetector(game:GetService("Workspace").Map.Buildings.Bank.Rob.Sell.ClickDetector,10)
		wait(0.1)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
		

	end    
})


Tab:AddLabel("Farm")


Tab:AddToggle({
	Name = "AutoFarm FrieWork Job",
	Default = false,
	Callback = function(Value)

		getgenv().AutofarmFriework = Value
		getgenv().AutoFriework = Value
		
		
spawn(function()
	while AutoFriework do
		fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
		wait()
	end
end)

while AutofarmFriework do
			-------
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
			-------

local havealreadypartloaded = game.Workspace.Camera:FindFirstChild("FrieWorksafepart") -- check if the part is here

if havealreadypartloaded then -- if the part is here then it will tp you and change the part that you need to touch to sell near the character
    
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(598.99353, -2.5, -96.0014648, 1, -7.29599634e-08, -7.14670497e-14, 7.29599634e-08, 1, 6.41238387e-08, 6.6788575e-14, -6.41238387e-08, 1)}):Play()

    wait(0.1)

    game:GetService("Workspace").Map.Jobs.InAndOut.Takeout.CFrame = CFrame.new(600.878235, -1.68286324, -96.8568878, 0.999983728, 4.91056751e-10, -0.00570054492, -9.84849646e-10, 1, -8.6619238e-08, 0.00570054492, 8.66234444e-08, 0.999983728)
    wait(5)
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(598.99353, -2.5, -96.0014648, 1, -7.29599634e-08, -7.14670497e-14, 7.29599634e-08, 1, 6.41238387e-08, 6.6788575e-14, -6.41238387e-08, 1)}):Play()

    else

		local NewPart = Instance.new("Part")
		NewPart.Size = Vector3.new(10, 1, 10)
		NewPart.Position = Vector3.new(598.99353, -7.00006104, -96.0014648)
		NewPart.Anchored = true

		NewPart.Parent = game.Workspace.Camera

		wait()


		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(598.99353, -3.6429069, -96.0014648, 1, -7.29599634e-08, -7.14670497e-14, 7.29599634e-08, 1, 6.41238387e-08, 6.6788575e-14, -6.41238387e-08, 1)}):Play()


		wait(0.1)
		fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)

		game:GetService("Workspace").Map.Jobs.InAndOut.Takeout.CFrame = CFrame.new(600.878235, -1.68286324, -96.8568878, 0.999983728, 4.91056751e-10, -0.00570054492, -9.84849646e-10, 1, -8.6619238e-08, 0.00570054492, 8.66234444e-08, 0.999983728)

		wait(5)
		
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(598.99353, -2.5, -96.0014648, 1, -7.29599634e-08, -7.14670497e-14, 7.29599634e-08, 1, 6.41238387e-08, 6.6788575e-14, -6.41238387e-08, 1)}):Play()


		game.Workspace.Camera.Part.Name = 'FrieWorksafepart'
end

wait()
end


end    
})

Tab:AddToggle({
	Name = "AutoFarm Bodega Job",
	Default = false,
	Callback = function(Value)
		getgenv().AutoBodega = Value

		while AutoBodega do
		-------
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
		-------
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-76, 3, 61)}):Play()
			wait()
			fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
			wait(0.01)
			fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
			wait()
		end
	end    
})

Tab:AddToggle({
	Name = "AutoFarm Bartender Job",
	Default = false,
	Callback = function(Value)	while AutoBartender do	
		-------
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
		-------

		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-249, 3, -47)}):Play();
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
		wait()
	end
end    
})


Tab:AddToggle({
	Name = "AutoRob Store",
	Default = false,
	Callback = function(Value)
        getgenv().Autorob = (Value)

		spawn(function()
			while Autorob do

				local moneybag = game:GetService("Workspace"):FindFirstChild("MoneyBag")
				if moneybag then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = moneybag.CFrame
					wait(0.1)
					--- TP DANS LA SAFE ZONE
					game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
				end
				wait()
			end
		end)

	while Autorob do	
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)


    -------------- IL BRAQUE LE KFC
	if game:GetService("Workspace").Map.NPCs.InNOutNPC.RobValues.cooldown.Value == true then
		print("KFC IN CD")
		
	else
		print("KFC NO CD")
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(589.576233, 4.51501942, -81.5663528, 0.90208447, 6.4622796e-09, -0.431559473, 2.41140299e-08, 1, 6.53795666e-08, 0.431559473, -6.93845266e-08, 0.90208447)}):Play()
		wait(0.5)

		local ohString1 = "InNOutNPC"
		game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
	end

	--- TP DANS LA SAFE ZONE
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
	wait(0.5)

-------------- IL BRAQUE LA SUPERETTE 7/11

	if game:GetService("Workspace").Map.NPCs["7/11NPC"].RobValues.cooldown.Value == true then
		print("7/11 IN CD")
		
	else
		print("7/11 NO CD")
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-65.8490982, 3.47316074, -194.744827, -0.0265948288, 3.41664652e-08, -0.999646306, 1.10695026e-08, 1, 3.388406e-08, 0.999646306, -1.01644462e-08, -0.0265948288)}):Play()
		wait(0.5)
		
		local ohString1 = "7/11NPC"
		game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
	end
	--- TP DANS LA SAFE ZONE
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()


------------- IL BRAQUE LA STATION SERVICE

	
if game:GetService("Workspace").Map.NPCs.GasStationNPC.RobValues.cooldown.Value == true then
	print("GAS STATION IN CD")
	
else
	print("GAS STATION NO CD")
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(338.800415, 3.7742219, -45.2131996, -0.999761283, -7.49826796e-08, 0.0218488555, -7.59862004e-08, 1, -4.5100073e-08, -0.0218488555, -4.67495198e-08, -0.999761283)}):Play()
	wait(0.5)

	local ohString1 = "GasStationNPC"
	game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
end
--- TP DANS LA SAFE ZONE
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
wait(0.5)


------------- IL BRAQUE LE DELI NPC 2

	
if game:GetService("Workspace").Map.NPCs.Deli2NPC.RobValues.cooldown.Value == true then
	print("DELI2 IN CD")
	
else
	print("DELI2 NO CD")
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(234.3237, 3.24997902, -187.245102, -0.999642611, -1.07214717e-08, 0.0267333444, -8.79396467e-09, 1, 7.22187892e-08, -0.0267333444, 7.1957885e-08, -0.999642611)}):Play()
	wait(0.5)

	local ohString1 = "Deli2NPC"
	game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
end
--- TP DANS LA SAFE ZONE
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
wait(0.5)

------------- IL BRAQUE LE BLOXGENERAL

	
if game:GetService("Workspace").Map.NPCs.BloxGeneralNPC.RobValues.cooldown.Value == true then
	print("BLOXGENERAL 1 IN CD")
	
else
	print("BLOXGENERAL 1 NO CD")
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(652.790466, 3.27521968, 78.5791245, 0.999864817, 3.25941869e-08, -0.016441917, -3.2850128e-08, 1, -1.52964645e-08, 0.016441917, 1.58345159e-08, 0.999864817)}):Play()
	wait(0.5)

	local ohString1 = "BloxGeneralNPC"
	game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
end
--- TP DANS LA SAFE ZONE
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
wait(0.5)

------------- IL BRAQUE LE BLOXGENERAL2


if game:GetService("Workspace").Map.NPCs.BloxGeneralNPC2.RobValues.cooldown.Value == true then
	print("BLOXGENERAL 2 IN CD")
	
else
	print("BLOXGENERAL 2 NO CD")
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(653.025757, 3.27522063, 89.830246, 0.999956131, 3.56903951e-09, 0.00936501753, -2.95632585e-09, 1, -6.54396288e-08, -0.00936501753, 6.54090755e-08, 0.999956131)}):Play()
	wait(0.5)

	local ohString1 = "BloxGeneralNPC2"
	game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
end
--- TP DANS LA SAFE ZONE
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
wait(0.5)



	end
end    
})


Tab:AddLabel("ATM")

Tab:AddTextbox({
	Name = "Deposite Custom Amount",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
		local ohString1 = "Deposit"
		local ohString2 = Value
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
	end	  
})

Tab:AddTextbox({
	Name = "WithDraw Custom Amount",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
		local ohString1 = "Withdraw"
		local ohString2 = Value
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
	end	  
})


Tab:AddButton({
	Name = "Open ATM",
	Callback = function()
	game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector.MaxActivationDistance = 999999986991104
	fireclickdetector(game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector, 999999986991104)
end    
})

Tab:AddButton({
	Name = "Deposit All Money",
	Callback = function()
		mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
		local ohString1 = "Deposit"
		local ohString2 = mycash
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
end
})

Tab:AddButton({
	Name = "WithDraw All Money",
	Callback = function()
		mybank = game.Players.LocalPlayer.Data.Stats.Bank.Value
			local ohString1 = "Withdraw"
			local ohString2 = mybank
			game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
	end    
})




local Tab = Window:MakeTab({
	Name = "Shop",
	Icon = "",
	PremiumOnly = false
})
Tab:AddLabel("Bank Dealer")

Tab:AddButton({
	Name = "Buy Duffel Bag (Cost 50$)",
	Callback = function()

	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 50 then

		game:GetService("Workspace").Map.NPCs.BankDealerNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.36729527, -9.37552357, -26.8169289, -0.0188392345, -2.77030381e-08, 0.999822497, 4.10246592e-08, 1, 2.84809669e-08, -0.999822497, 4.1553939e-08, -0.0188392345)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.BankDealerNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "bank_dealer"
		local ohString2 = "Duffel Bag"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 50 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 50$ to buy a Duffel Bag",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy C4 (Cost 3500$)",
	Callback = function()

	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 3500 then

		game:GetService("Workspace").Map.NPCs.BankDealerNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.36729527, -9.37552357, -26.8169289, -0.0188392345, -2.77030381e-08, 0.999822497, 4.10246592e-08, 1, 2.84809669e-08, -0.999822497, 4.1553939e-08, -0.0188392345)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.BankDealerNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "bank_dealer"
		local ohString2 = "C4"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 3500 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 3500$ to buy C4",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})

Tab:AddLabel("Buy Gun")

----------------------------------------------------------------- GUN
Tab:AddButton({
	Name = "Buy Ruger LCP (Cost 2500$)",
	Callback = function()
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 2500 then

		
		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "Ruger LCP"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes   
    elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 2500 then
		OrionLib:MakeNotification({
		Name = "Shop",
		Content = "Require 2500$ to buy a Ruger LCP",
		Image = "rbxassetid://2022095309",
		Time = 5
	    })
    end
end 

})
Tab:AddButton({
	Name = "Buy Makarov (Cost 2750$)",
	Callback = function()

	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 2750 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "Makarov"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 2750 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2500$ to buy a Makarov",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy G26 (Cost 2900$)",
	Callback = function()

		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 2900 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "G26"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 2900 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2900$ to buy a G26",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy G17 (Cost 3000$)",
	Callback = function()	
		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 3000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "G17"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 3000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 3000$ to buy a G17",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy Berreta M9 (Cost 3500$)",
	Callback = function()
		
		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 3500 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "Berreta M9"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 3500 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 3500$ to buy a Berreta M9",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy 1911 (Cost 4000$)",
	Callback = function()
		
		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 4000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "1911"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 4000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 4000$ to buy a 1911",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy G20 (Cost 5000$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 5000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "G20"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 5000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2900$ to buy a G20",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy Body Armor (Cost 20000$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 20000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "BodyArmor"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 20000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2900$ to buy a Body Armor",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end       
})
----------------------------------------------------------------- MASK

Tab:AddLabel("Mask")

Tab:AddButton({
	Name = "Buy Shiesty Mask (Cost 25$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 25 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Shiesty"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 25 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 25$ to buy a Shiesty Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy Open Balaclava Mask (Cost 25$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 25 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "OpenBalaclava"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 25 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 25$ to buy a Open Balaclava Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end     
})


Tab:AddButton({
	Name = "Buy Balaclava Mask (Cost 25$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 25 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Balaclava"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 25 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 25$ to buy a Balaclava Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end        
})

Tab:AddButton({
	Name = "Buy Surgical White Mask (Cost 6$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 6 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Surgical Mask (White)"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 6 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 6$ to buy a Surgical White Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end       
})

Tab:AddButton({
	Name = "Buy Surgical Black Mask (Cost 6$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 6 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Surgical Mask (Black)"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 6 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 6$ to buy a Surgical Black Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
----------------------------------------------------------------- FOOD

Tab:AddLabel("Food")

Tab:AddButton({
	Name = "Buy Water (Cost 15$)",
	Callback = function()
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 15 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Water"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 15 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 15$ to buy Water",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})

Tab:AddButton({
	Name = "Buy Bloxy Cola (Cost 10$)",
	Callback = function()

		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 10 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "BloxyCola"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 10 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 10$ to buy a Bloxy Cola",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy Burger (Cost 15$)",
	Callback = function()

		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 15 then

		game:GetService("Workspace").Map.NPCs.InNOutNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(591.162903, 4.51501942, -81.2139816, 0.992074192, -3.99510718e-08, 0.12565361, 4.25762394e-08, 1, -1.82065349e-08, -0.12565361, 2.341209e-08, 0.992074192)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.InNOutNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "in_n_out"
		local ohString2 = "Burger"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 15 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 15$ to buy a Bloxy Cola",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})






local Tab = Window:MakeTab({
	Name = "Combat",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Combat")

Tab:AddButton({
	Name = "Hitbox Changer",
	Callback = function()

		OrionLib:MakeNotification({
			Name = "Hit box extender",
			Content = "Succesful activated Hitbox",
			Time = 5
		})

		--CONFIG
		local BoxSize = 5 --default 14
		local Transparency = 1
		--CONFIG ENG
		--Maelstronomer <-- Leeched the colliders off this guy
		local Players = game:GetService("Players")
		local renaming={
			['Head'] = 1,
			['Torso'] = 1,
			['HumanoidRootPart'] = 1,
			['Left Arm'] = 1,
			['Right Arm'] = 1,
			['Left Leg'] = 1,
			['Right Leg']=1,
		}
		function stopCharacterCollision(character)
			--while not character.Parent do wait(.1) end
			spawn(function()
				--wait(5)
				
				wait() --print'k'
				local partData = {}
				for _, child in next, character:GetChildren() do
					--if child:IsA("BasePart") then
					if child:IsA("Part") or child:IsA("MeshPart") then
						partData[child] = child.Name
						child.Name = "BREAK"
					end
				end
				wait()
				for basePart, name in next, partData do
					basePart.Name = name
					basePart.CanCollide = false
				end
			end)
		end
		function hookPlayer(player)
			if player ~= Players.LocalPlayer then
				player.CharacterAdded:connect(stopCharacterCollision)
				if player.Character and player.Character.Parent then
					stopCharacterCollision(player.Character)
				end
			end
		end
		
		Players.ChildAdded:connect(hookPlayer)
		for _, player in next, Players:GetPlayers() do
			hookPlayer(player)
		end
		--actual work
        spawn(function()
		while wait() do
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Name == game.Players.LocalPlayer.Name then else
					if v ~= nill and v.Character ~= nil then
						if v.Character:findFirstChild("HumanoidRootPart") ~= nil then
							v.Character.HumanoidRootPart.Transparency = Transparency
							v.Character.HumanoidRootPart.BrickColor = v.TeamColor--replace with team color
							v.Character.HumanoidRootPart.Size = Vector3.new(BoxSize,BoxSize,BoxSize)
						end
						if v.Character:findFirstChild("Head") ~= nil then
							v.Character.Head.Transparency = Transparency
							v.Character.Head.BrickColor = v.TeamColor--replace with team color
							v.Character.Head.Size = Vector3.new(2,2,2)
						end
					end
				end
			end
		end
    end)




	end  
})


Tab:AddButton({
	Name = "Gun No Recoil",
	Callback = function()
		local delay_hook = nil 
		delay_hook = replaceclosure(delay, newcclosure(function(...)
			local Arguments = ({...});
   
   if getcallingscript() and getcallingscript().Name ~= "GunClient" then 
       return delay_hook(...);
   end
   
   table.foreach(Arguments, function(Index, Value)
       if Value and type(Value) == "function" then 
           local valid_constants = getconstants(Value);
           -- I know I can just do getconstants(Arguments[2]) but idk they might change it 
           
           if valid_constants and table.find(valid_constants, "CoordinateFrame") then 
               setconstant(Value, 12, "focus")
           end
       end
   end)
   
   return delay_hook(...);
end));

	    
	end    
})

Tab:AddLabel("Aimlock")


Tab:AddButton({
	Name = "Amlock",
	Callback = function()
      	getgenv().AimPart = "Head" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
      	getgenv().AimlockToggleKey = "T" -- Toggles Aimbot On/Off 
      	getgenv().AimRadius = 50 -- How far away from someones character you want to lock on at
      	getgenv().ThirdPerson = false -- Locking onto someone in your Third Person POV
      	getgenv().FirstPerson = true -- Locking onto someone in your First Person POV
      	getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
      	getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
      	getgenv().PredictionVelocity = 10 -- The speed of the PredictMovement feature 

      	getgenv().CiazwareUniversalAimbotLoadingTime = tick()
      	if CiazwareUniversalAimbotLoaded == true then
      		return 
      	end

      	local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
      	local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
      	local Aimlock, MousePressed, CanNotify = true, false, false;
      	local AimlockTarget;
      	getgenv().CiazwareUniversalAimbotLoaded = true



      	getgenv().WorldToViewportPoint = function(P)
      	return Camera:WorldToViewportPoint(P)
      end

      getgenv().WorldToScreenPoint = function(P)
      return Camera.WorldToScreenPoint(Camera, P)
  end

  getgenv().GetObscuringObjects = function(T)
  if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
  	local RayPos = workspace:FindPartOnRay(RNew(
  		T[getgenv().AimPart].Position, Client.Character.Head.Position)
  	)
  	if RayPos then return RayPos:IsDescendantOf(T) end
  end
end

getgenv().GetNearestTarget = function()
    -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
    local players = {}
    local PLAYER_HOLD  = {}
    local DISTANCES = {}
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= Client then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
            if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
            end
        end
    end
    
    if unpack(DISTANCES) == nil then
        return nil
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > getgenv().AimRadius then
        return nil
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

Uis.InputBegan:Connect(function(Key)
    if not (Uis:GetFocusedTextBox()) then 
        if Key.UserInputType == Enum.UserInputType.MouseButton2 then 
            pcall(function()
                if MousePressed ~= true then MousePressed = true end 
                local Target;Target = GetNearestTarget()
                if Target ~= nil then 
                    AimlockTarget = Target
                    Notify("Ciazware", "Aimlock Target: "..tostring(AimlockTarget), "", 3)
                end
            end)
        end
        if Key.KeyCode == Enum.KeyCode[AimlockToggleKey] then 
            Aimlock = not Aimlock
            Notify("Ciazware", "Aimlock: "..tostring(Aimlock), "", 3)
        end
    end
end)
Uis.InputEnded:Connect(function(Key)
    if not (Uis:GetFocusedTextBox()) then 
        if Key.UserInputType == Enum.UserInputType.MouseButton2 then 
            if AimlockTarget ~= nil then AimlockTarget = nil end
            if MousePressed ~= false then 
                MousePressed = false 
            end
        end
    end
end)

RService.RenderStepped:Connect(function()
    if getgenv().FirstPerson == true and getgenv().ThirdPerson == false then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    end
    if Aimlock == true and MousePressed == true then 
        if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
            if getgenv().FirstPerson == true then
                if CanNotify == true then
                    if getgenv().PredictMovement == true then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                    elseif getgenv().PredictMovement == false then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                    end
                end
            elseif getgenv().ThirdPerson == true then 
                if CanNotify == true then
                    if getgenv().PredictMovement == true then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                    elseif getgenv().PredictMovement == false then 
                        Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                    end
                end 
            end
        end
    end
end)
  	end    
})
Tab:AddDropdown({
	Name = "Aimpart",
	Default = "Head",
	Options = {"HumanoidRootPart", "Head", "LowerTorso"},
	Callback = function(Value)
	    getgenv().AimPart = Value

	    OrionLib:MakeNotification({
	    	Name = "Aimlock",
	    	Content = "Changed Aimpart to "..Value,
	    	Image = "",
	    Time = 5
	})
	end    
})
Tab:AddDropdown({
	Name = "Toggle Key",
	Default = "T",
	Options = {"Y", "T", "V"},
	Callback = function(Value)
	    getgenv().AimlockToggleKey = Value
	    OrionLib:MakeNotification({
	    	Name = "Aimlock",
	    	Content = "Changed Toggle Key to "..Value,
	    	Image = "",
	    Time = 5
	})
	end    
})

Tab:AddLabel("ESP")




Tab:AddToggle({
	Name = "toggle",
	Default = false,
	Callback = function(Value)
	    
	    	ESP:Toggle(Value)
	end    
})

Tab:AddToggle({
	Name = "box",
	Default = false,
	Callback = function(box)
		ESP.Boxes = (box)
	end    
})

Tab:AddToggle({
	Name = "tracer",
	Default = false,
	Callback = function(tracer)
		
		ESP.Tracers = (tracer)
	end    
})

Tab:AddToggle({
	Name = "name",
	Default = false,
	Callback = function(name)
		
		 ESP.Names = (name)
	end    
})



Tab:AddSlider({
	Name = "FOV",
	Min = 0,
	Max = 120,
	Default = game.Players.LocalPlayer.Data.Settings.FOV.Value,
	Increment = 1,
	ValueName = "fov",
	Callback = function(Value)
		game.Players.LocalPlayer.Data.Settings.FOV.Value = (Value)
	end    
})

Tab:AddButton({
	Name = "Unlock Zoom Render Distance",
	Callback = function()
	    game.Players.LocalPlayer.CameraMaxZoomDistance = 1280
	end    
})

local Tab = Window:MakeTab({
	Name = "Car & Bike Option",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Misc")

Tab:AddColorpicker({
	Name = "Change Car Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
	    local car = game:GetService("Workspace").Map.Vehicles:FindFirstChild(game.Players.LocalPlayer.Name.."'sCar")
	    if car then
	    local children = game:GetService("Workspace").Map.Vehicles[game.Players.LocalPlayer.Name.."'sCar"].Body.Paint:GetChildren()
	    for i = 1, #children do
	        children[i].BrickColor = BrickColor.new(Value)
	        end
	   end
end	  
})

Tab:AddButton({
	Name = "Goto Own Car",
	Callback = function()
		local carspawned = game:GetService("Workspace").Map.Vehicles:FindFirstChild(game.Players.LocalPlayer.Name.."'sCar")
	    if carspawned then
	    	Mycar = game.Workspace.Map.Vehicles[game.Players.LocalPlayer.Name.."'sCar"]
	    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Mycar.DriveSeat.CFrame
	    	else
	    		OrionLib:MakeNotification({
	    		Name = "Shar Script Premoum",
	    		Content = "Your Car must be spawned!",
	    		Image = "rbxassetid://2022095309",
	    		Time = 5
	    	})
	    end
	end    
})
Tab:AddButton({
	Name = "Goto Own Bike",
	Callback = function()
		local bikespawned = game:GetService("Workspace").Map.Vehicles:FindFirstChild(game.Players.LocalPlayer.Name.."'sBike")
	    if bikespawned then
	    	Mybike = game.Workspace.Map.Vehicles[game.Players.LocalPlayer.Name.."'sBike"]
	    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Mybike.DriveSeat.CFrame
	    	else
	    		OrionLib:MakeNotification({
	    		Name = "Shar Script Premoum",
	    		Content = "Your bike must be spawned!",
	    		Image = "rbxassetid://2022095309",
	    		Time = 5
	    	})
	    end
	end    
})


Tab:AddButton({
	Name = "Vehicles fly [PRESS X]", -- it was hard af to make it
	Callback = function()
	    game:GetService('Players').LocalPlayer.Character.Humanoid.Name = "Humanoid"
	    repeat wait()
	    until game:GetService"Players".LocalPlayer and game:GetService"Players".LocalPlayer.Character and game:GetService"Players".LocalPlayer.Character:findFirstChild("UpperTorso") and game:GetService"Players".LocalPlayer.Character:findFirstChild("Humanoid")
	    local mouse = game:GetService"Players".LocalPlayer:GetMouse()
	    repeat wait() until mouse
	    	local plr = game:GetService"Players".LocalPlayer
	    	local torso = plr.Character.UpperTorso
	    	local flying = false
	    	local deb = true
	    	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	    	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	    	local maxspeed = 100
	    	local speed = 0
	    	function Fly()
	    		local bg = Instance.new("BodyGyro", torso)
	    		bg.P = 9e4
	    		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	    		bg.cframe = torso.CFrame
	    		local bv = Instance.new("BodyVelocity", torso)
	    		bv.velocity = Vector3.new(0,0.1,0)
	    		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	    		repeat wait()
	    		--plr.Character.Humanoida.PlatformStand = true
	    		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
	    			speed = speed+.5+(speed/maxspeed)
	    			if speed > maxspeed then
	    				speed = maxspeed
	    				end
	    			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
	    				speed = speed-1
	    				if speed < 0 then
	    					speed = 0
	    					end
	    					end
	    					if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
	    						bv.velocity = ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game:GetService("Workspace").CurrentCamera.CoordinateFrame.p))*speed
	    						lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
	    					elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
	    						bv.velocity = ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game:GetService("Workspace").CurrentCamera.CoordinateFrame.p))*speed
	    						else
	    							bv.velocity = Vector3.new(0,0.1,0)
	    							end
	    							bg.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	    						until not flying
	    						ctrl = {f = 0, b = 0, l = 0, r = 0}
	    						lastctrl = {f = 0, b = 0, l = 0, r = 0}
	    						speed = 0
	    						bg:Destroy()
	    						bv:Destroy()
	    						--plr.Character.Humanoida.PlatformStand = false
	    						end
	    						mouse.KeyDown:connect(function(key)
	    							if key:lower() == "x" then
	    								if flying then flying = false
	    								else
	    									flying = true
	    									Fly()
	    									end
	    								elseif key:lower() == "w" then
	    									ctrl.f = 1
	    								elseif key:lower() == "s" then
	    									ctrl.b = -1
	    								elseif key:lower() == "a" then
	    									ctrl.l = -1
	    								elseif key:lower() == "d" then
	    									ctrl.r = 1
	    									end
	    								end)
	    						mouse.KeyUp:connect(function(key)
	    							if key:lower() == "w" then
	    								ctrl.f = 0
	    							elseif key:lower() == "s" then
	    								ctrl.b = 0
	    							elseif key:lower() == "a" then
	    								ctrl.l = 0
	    							elseif key:lower() == "d" then
	    								ctrl.r = 0
	    								end
	    							end)
	    						Fly()



	end    
})

local Tab = Window:MakeTab({
	Name = "Misc Option",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Misc")


Tab:AddToggle({
	Name = "Chat logs",
	Default = false,
	Callback = function(Value)
	    V = Value
        if V == true then
            local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
            ChatFrame.ChatChannelParentFrame.Visible = true
            ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), ChatFrame.ChatChannelParentFrame.Size.Y)
        elseif V == false then
            local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
            ChatFrame.ChatChannelParentFrame.Visible = false
            ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(0, 0, 0, 0)
        end		
	end    
})

Tab:AddToggle({
	Name = "Auto grab tool",
	Default = false,
	Callback = function(Value)
	    getgenv().Autograbguns = Value
	    while Autograbguns do
	        for i,v in pairs(workspace:GetChildren()) do
	            if v:IsA('Tool') then
	                mychar.Humanoid:EquipTool(v) 
	            end
	        end
       wait()
	    end
	end    
})



Tab:AddToggle({
	Name = "Remove Fog", -- kinda shitty but it work!
	Default = false,
	Callback = function(Value)
		if Value == true then
		    local part = game.Lighting:FindFirstChild("Atmosphere")
		   if part then
		       part.Parent = game.Workspace.Camera
		  end 
		end
		if Value == false then
		    local part = game.Workspace.Camera:FindFirstChild("Atmosphere")
		   if part then
		       part.Parent = game.Lighting
		  end 
		end
	end    
})


Tab:AddLabel("Toggle Ui")


Tab:AddBind({
	Name = "Toggle Ui",
	Default = Enum.KeyCode.LeftAlt,
	Hold = false,
	Callback = function()
	    if game:GetService("CoreGui").Orion.Enabled == true then
		game:GetService("CoreGui").Orion.Enabled = false
		else
		game:GetService("CoreGui").Orion.Enabled = true
		end
	end    
})




local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Credits")

Tab:AddParagraph("Scripter :","Made by lobox920#9889")

Tab:AddParagraph("Ui libary","Name : Orion Libary by shlex")

Tab:AddParagraph("No Recoil","Made by xaxa#1414")

Tab:AddParagraph("ESP","Made by garfield#9172 from Criminality Open Source")

Tab:AddLabel("Discord")

Tab:AddButton({
	Name = "Join My Discord",
	Callback = function()
      	syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "g2rmfEtvaj",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
	end  
})

Tab:AddButton({
	Name = "Join Sirus Discord (Orion Lib discord)",
	Callback = function()
      	syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "yWdmdv2BmP",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
	end  
})


------------------


OrionLib:MakeNotification({
	Name = "Last Update : 25/05/2022",
	Content = "Added : Auto Grab tools",
	Time = 10
})




OrionLib:Init()

--- Thing to rejoin the server and execute the script again if you get kicked WORK ONLY ON SYNAPSE

if syn then
	game:GetService('NetworkClient').ChildRemoved:Connect(function(child)
		if child:IsA('ClientReplicator') then
			local tpservice= game:GetService("TeleportService")
			local plr = game.Players.LocalPlayer
	        tpservice:Teleport(game.PlaceId, plr)
	        	syn.queue_on_teleport([[
	        	loadstring(game:HttpGet(('https://raw.githubusercontent.com/lobox920/Shar-Script/main/Chicago%20Remastered.lua')))()
	        	]])
	    end
	end)
end
-- if its not chicago remastered then it will close the game
else 
	game:Shutdown()
end
