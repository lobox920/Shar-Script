repeat wait() until game:IsLoaded()
if game.PlaceId == 5910449407 then

    local function SafeZoneForFarm()
    	local part = game:GetService("Workspace").Terrain:FindFirstChild("Part")
    	if part then
    		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-0.222938702, 10003.477, 0.165179446, -1, 0, 0, 0, 1, 0, 0, 0, -1)}):Play()
    	else
    		local BuildPart = Instance.new("Part") --Directory of The Part
    		BuildPart.Size = Vector3.new(25,1,25) 	              --The Size of the Part
    		BuildPart.Position = Vector3.new(0, 10000,0)      --The Position of The Part
    		BuildPart.Anchored = true                             --Anchores The Part
    		BuildPart.Parent = game:GetService("Workspace").Terrain
    		wait(0.2)
    		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-0.222938702, 100003.477, 0.165179446, -1, 0, 0, 0, 1, 0, 0, 0, -1)}):Play()
    	end
    end
    
    
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Project Menacing x Shar Script", HidePremium = true, SaveConfig = true, ConfigFolder = "Shar Script",IntroText = "Shar Script",IntroIcon = ""})
    
    
    local Tab = Window:MakeTab({
        Name = "Credits",
        Icon = "",
        PremiumOnly = false
        })
        
        Tab:AddLabel("Credits")
        
        Tab:AddParagraph("Scripter :","lobox920#9889")
        
        Tab:AddParagraph("Ui libary","Name : Orion Library")
        
        Tab:AddLabel("Discord : ")
        
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
        
        Tab:AddButton({ --)
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
    local Tab = Window:MakeTab({
    	Name = "Player",
    	Icon = "rbxassetid://",
    	PremiumOnly = false
    })
    Tab:AddToggle({
    	Name = "GodMode",
    	Default = false,
    	Callback = function(Value)
    		getgenv().ActiveGodMode = Value
    		while ActiveGodMode do
    			if not game.Players.LocalPlayer.Character:FindFirstChild("DamageTaken") then
    				else 
    				game.Players.LocalPlayer.Character.DamageTaken:Destroy()
    			end
    			wait()
    		end
    		if Value == false then
    			game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "No Jump Cooldown",
    	Default = false,
    	Callback = function(Value)
    		getgenv().RemoveJumpCD = Value
    		while RemoveJumpCD do -- didnt understood how to modify the localscript
    			if not game.Players.LocalPlayer.Character:FindFirstChild("JumpCooldown") then
    				else 
    				game.Players.LocalPlayer.Character.JumpCooldown.Disabled = true
    			end
    			wait()
    		end
    		if Value == false then
    			game.Players.LocalPlayer.Character.JumpCooldown.Disabled = false
    		end
    	end    
    })
    Tab:AddButton({
    	Name = "Fix Character",
    	Callback = function() -- It Should fix some bug from the game where ur character is froze
    		game:GetService("Players").LocalPlayer.Character.Head.Anchored = false
    		game:GetService("Players").LocalPlayer.Character.Torso.Anchored = false
    		game:GetService("Players").LocalPlayer.Character["Left Arm"].Anchored = false
    		game:GetService("Players").LocalPlayer.Character["Right Arm"].Anchored = false
    		game:GetService("Players").LocalPlayer.Character["Left Leg"].Anchored = false
    		game:GetService("Players").LocalPlayer.Character["Right Leg"].Anchored = false
    		game:GetService("Players").LocalPlayer.Character["Right Leg"].Anchored = false
    		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
          	game:GetService("Players").LocalPlayer.Character.Humanoid.AutoRotate = true
    		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
    		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
    	end    
    })
    local Section = Tab:AddSection({
    	Name = "Basic Stuff"
    })
    Tab:AddToggle({
    	Name = "Active WalkSpeed",
    	Default = false,
    	Callback = function(Value)
    		getgenv().ActiveSpeed = Value
            while getgenv().ActiveSpeed == true do
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
                wait()
            end
    	end    
    })
    Tab:AddToggle({
    	Name = "Active JumpPower",
    	Default = false,
    	Callback = function(Value)
    		getgenv().ActiveJump = Value
            while getgenv().ActiveJump == true do
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getgenv().Jump
                wait()
            end
    	end    
    })
    Tab:AddSlider({
    	Name = "WalkSpeed",
    	Min = 16,
    	Max = 500,
    	Default = 16,
    	Color = Color3.fromRGB(255,255,255),
    	Increment = 1,
    	ValueName = "",
    	Callback = function(Value)
            getgenv().Speed = Value
    	end    
    })
    
    Tab:AddSlider({
    	Name = "JumpPower",
    	Min = 50,
    	Max = 500,
    	Default = 50,
    	Color = Color3.fromRGB(255,255,255),
    	Increment = 1,
    	ValueName = "",
    	Callback = function(Value)
            getgenv().Jump = Value
    	end    
    })
    
    
    
    local Tab = Window:MakeTab({
    	Name = "Item Farm",
    	Icon = "rbxassetid://",
    	PremiumOnly = false
    })
    
    
    Tab:AddToggle({
    	Name = "Item Farm",
    	Default = false,
    	Callback = function(Value)
    		getgenv().ActiveItemFarm = Value
    	end    
    })
    Tab:AddToggle({
    	Name = "Grab Item then TP to Safe Zone",
    	Default = false,
    	Callback = function(Value)
    		getgenv().ActiveTPSafeZone = Value
    	end    
    })
    
    local Section = Tab:AddSection({
    	Name = "Item to Farm"
    })
    
    Tab:AddToggle({
    	Name = "Arrow",
    	Default = false,
    	Callback = function(Value)
    		getgenv().FarmItemArrow = Value
            while getgenv().ActiveItemFarm == true do
                if getgenv().FarmItemArrow == true then
                    local Arrow = workspace:FindFirstChild("StandArrow")
                    if Arrow then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").StandArrow.CFrame
                        wait(0.5)
                        fireproximityprompt(game:GetService("Workspace").StandArrow.ProximityPrompt, 0.75, true)
    					wait(0.75)
    					if getgenv().ActiveTPSafeZone == true then
    						SafeZoneForFarm()
    					end
                    end
                end
                wait(0.5)
            end
    	end    
    })
    
    Tab:AddToggle({
    	Name = "Rokakaka",
    	Default = false,
    	Callback = function(Value)
    		getgenv().FarmItemRoka = Value
            while getgenv().ActiveItemFarm == true do
                if getgenv().FarmItemRoka == true then
                    local Roka = workspace:FindFirstChild("StandRokakaka")
                    if Roka then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").StandRokakaka.CFrame
                        wait(0.5)
                        fireproximityprompt(game:GetService("Workspace").StandRokakaka.ProximityPrompt, 0.75, true)
    					wait(0.75)
    					if getgenv().ActiveTPSafeZone == true then
    						SafeZoneForFarm()
    					end
    				end
                end
                wait(0.5)
            end
    	end    
    })
    
    Tab:AddToggle({
    	Name = "Dio Diary",
    	Default = false,
    	Callback = function(Value)
    		getgenv().FarmItemDioDiary = Value
            while getgenv().ActiveItemFarm == true do
                if getgenv().FarmItemDioDiary == true then
                    local DioDiary = workspace:FindFirstChild("DIOsDiary")
                    if DioDiary then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DiosDiary.CFrame
                        wait(0.5)
                        fireproximityprompt(game:GetService("Workspace").DiosDiary.ProximityPrompt, 0.75, true)
    					wait(0.75)
    					if getgenv().ActiveTPSafeZone == true then
    						SafeZoneForFarm()
    					end
                    end
                end
                wait(0.5)
            end
    	end    
    })
    Tab:AddToggle({
    	Name = "Dio Bone",
    	Default = false,
    	Callback = function(Value)
    		getgenv().FarmItemDioBone = Value
            while getgenv().ActiveItemFarm == true do
                if getgenv().FarmItemDioBone == true then
                    local DioDiary = workspace:FindFirstChild("DIOsBone")
                    if DioDiary then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DIOsBone.CFrame
                        wait(0.5)
                        fireproximityprompt(game:GetService("Workspace").DIOsBone.ProximityPrompt, 0.75, true)
    					wait(0.75)
    					if getgenv().ActiveTPSafeZone == true then
    						SafeZoneForFarm()
    					end
                    end
                end
                wait(0.5)
            end
    	end    
    })
    
    local Tab = Window:MakeTab({
    	Name = "Stand Farm",
    	Icon = "",
    	PremiumOnly = false
    })
    
    Tab:AddDropdown({
    	Name = "Chose Wanted Stand",
    	Default = "",
    	Options = {"The World", "The World Heritage", "The World OVA", "Star Platinum", "Star Platinum Stone Ocean", "Star Platinum Heritage", "Star Platinum OVA", "WhiteSnake", "Whitesnake Deimos", "D4C", "Dirty Deeds"},
    	Callback = function(Value)
            if Value == "The World" then
                getgenv().WantedStand = "TheWorld"
    		elseif Value == "The World Heritage" then
    			getgenv().WantedStand = "TheWorldHeritage"
    		elseif Value == "The World OVA" then
    			getgenv().WantedStand = "TheWorldOVA"
    		elseif Value == "Star Platinum" then
    			getgenv().WantedStand = "StarPlatinumPrime"
    		elseif Value == "Star Platinum Stone Ocean" then
    			getgenv().WantedStand = "StarPlatinumStoneOcean"
    		elseif Value == "Star Platinum Heritage" then
    			getgenv().WantedStand = "StarPlatinumHeritage"
    		elseif Value == "Star Platinum OVA" then
    			getgenv().WantedStand = "StarPlatinumOVA"
    		elseif Value == "Whitesnake" then
    			getgenv().WantedStand = "Whitesnake"
    		elseif Value == "Whitesnake Deimos" then
    			getgenv().WantedStand = "WhitesnakeHeritage"
    		elseif Value == "D4C" then
    			getgenv().WantedStand = "D4C"
    		elseif Value == "Dirty Deeds" then
    			getgenv().WantedStand = "DirtyDeeds"
    		end
            --print(Value)
    	end    
    })
    local StandFarmToggle = Tab:AddToggle({
    	Name = "Stand Farm [ONLY REQUIRE ARROW!]",
    	Default = false,
    	Callback = function(Value)
    		mystand = game:GetService("Players").LocalPlayer.Data.Stand.Value
    		getgenv().StandFarm = Value
            while getgenv().StandFarm do
                if mystand == getgenv().WantedStand then
    				print("Have wanted stand!")
                    --StandFarmToggle:Set(false) I cant use it because it wont work and say nil value due because it only will work if its used right the toggle like a button or something ;-;
                    getgenv().StandFarm = false
					OrionLib:MakeNotification({
						Name = "Stand Farm",
						Content = "You Already Have the Wanted Stand!",
						Image = "",
						Time = 5
					})
                else
    				local function GetStand()
    					if mystand == "None" then
    						--print("Dont have stand")
    						local Arrow = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("StandArrow")
    						if Arrow then
    							game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(Arrow)
    							wait(0.5)
    							game:GetService("ReplicatedStorage").Remotes.ItemUsage:FireServer("StandArrow")
    						end
    					else
    						--print("Have Stand So Changing It!")
    						local Arrow = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("StandArrow")
    						if Arrow then
    							game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(Arrow)
    							wait(0.5)
    							game:GetService("ReplicatedStorage").Remotes.ItemUsage:FireServer("StandArrow")
    						end
    					end
    				end
    				GetStand()
    				wait(7)
                end
            end
        end
    })
    local Tab = Window:MakeTab({
    	Name = "Mob Farm",
    	Icon = "",
    	PremiumOnly = false
    })
    Tab:AddDropdown({
    	Name = "Mob To Farm",
    	Default = "",
    	Options = {"Street Thug", "Pucchi", "DIO"},
    	Callback = function(Value)
    		getgenv().MobToFarm = Value
    	end    
    })
    Tab:AddToggle({
    	Name = "Mob Farm",
    	Default = false,
    	Callback = function(Value)
    		getgenv().farm = Value
            local RunService = game:GetService("RunService")
            spawn(function()
    		    while wait() do
    		    	if getgenv().farm == true then
    		            while RunService.RenderStepped:Wait() and getgenv().farm == true do
                            for i, v in pairs(workspace.Alive:GetChildren()) do
                                if v.Name == getgenv().MobToFarm then
                                    if v:FindFirstChild("Humanoid") then
                                        if v:FindFirstChild("Humanoid").Health > 0 then
                                            if game:GetService("Players").LocalPlayer.Character then
                                                if game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,5)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
    		            end
    		    	end
                end
    		end)
    	end    
    })
    local Section = Tab:AddSection({
    	Name = "Quest"
    })
    Tab:AddToggle({
    	Name = "Auto Get Quest",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoGetQuest = Value
    		while getgenv().AutoGetQuest do
    			if not game:GetService("Players").LocalPlayer.Data:FindFirstChild(getgenv().QuestToGet) then
    				--print("No Quest")
    			    farmwasactive = false
    				if getgenv().farm == true then
    					farmwasactive = true
    					getgenv().farm = false
    				end
    			    wait()
    				if getgenv().QuestToGet == "DiavoloQuest" then
    			        game:GetService("Workspace").NPC.Jolyne.ProximityPrompt.RequiresLineOfSight = false
    			        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(46, 27, -317)}):Play()
    		            wait(0.5)
    				    fireproximityprompt(game:GetService("Workspace").NPC.Diavolo.ProximityPrompt)
    				    wait(1)
    				elseif getgenv().QuestToGet == "JolyneQuest" then
    					game:GetService("Workspace").NPC.Jolyne.ProximityPrompt.RequiresLineOfSight = false
    			        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(180, 27, -182)}):Play()
    		            wait(0.5)
    				    fireproximityprompt(game:GetService("Workspace").NPC.Jolyne.ProximityPrompt)
    				    wait(1)
    				elseif getgenv().QuestToGet == "JotaroQuest" then
    				game:GetService("Workspace").NPC.Jotaro.ProximityPrompt.RequiresLineOfSight = false
    				game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-60, 27, -2)}):Play()
    				wait(0.5)
    				fireproximityprompt(game:GetService("Workspace").NPC.Jotaro.ProximityPrompt)
    				wait(1)	
    			end
    				if farmwasactive == true then
    					getgenv().farm = true
    				end
    		    else 
    				--print("Have Quest")
    		    end
    			wait()
    		end
    	end    
    })
    Tab:AddDropdown({
    	Name = "Quest To Get",
    	Default = "Thug Quest",
    	Options = {"Thug Quest", "Jolyne Quest", "Jotaro Quest"},
    	Callback = function(Value)
    		if Value == "Thug Quest" then
    			getgenv().QuestToGet = "DiavoloQuest"
    		elseif Value == "Jolyne Quest" then
    		    getgenv().QuestToGet = "JolyneQuest"
    	    elseif Value == "Jotaro Quest" then
    	        getgenv().QuestToGet = "JotaroQuest"
    		end
    	end    
    })
    local Section = Tab:AddSection({
    	Name = "Skills"
    })
    Tab:AddToggle({
    	Name = "LMB",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoLMB = Value
    		while getgenv().AutoLMB do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("LMB", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "R",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoR = Value
    		while getgenv().AutoR do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("R", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "E",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoE = Value
    		while getgenv().AutoE do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("E", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "T",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoT = Value
    		while getgenv().AutoT do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("T", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "Y",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoY = Value
    		while getgenv().AutoY do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Y", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "F",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoF = Value
    		while getgenv().AutoF do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("F", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "G",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoG = Value
    		while getgenv().AutoG do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("G", "Began")
    			wait()
    		end
    	end    
    })
    Tab:AddToggle({
    	Name = "V",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutoV = Value
    		while getgenv().AutoV do
    		    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("V", "Began")
    			wait()
    		end
    	end    
    })
    local Tab = Window:MakeTab({
    	Name = "Teleport",
    	Icon = "",
    	PremiumOnly = false
    })
    
    local Dropdown = Tab:AddDropdown({
        Name = "TP to player",
        Default = "",
        Options = playerlist,
        Callback = function(Value)
            mychar = game.Players.LocalPlayer.Character
        	mychar.HumanoidRootPart.CFrame = game:GetService("Players")[Value].Character.HumanoidRootPart.CFrame
        	OrionLib:MakeNotification({
        		Name = "Teleport Info :",
            	Content = "Teleported to "..Value.."'s Position",
            	Image = "rbxassetid://",
            	Time = 5
            })
        end    
    })
    task.spawn(function()
        while wait(1) do
            local players = game.Players:GetChildren()
            local PlayerList = {}
        
            for i,v in pairs(players) do
                table.insert(PlayerList,v.Name)
            end
            Dropdown:Refresh(PlayerList, true)
        end
    end)
    
    
    local Dropdown = Tab:AddDropdown({
        Name = "TP to NPC",
        Default = "",
        Options = NPClist,
        Callback = function(Value)
            mychar = game.Players.LocalPlayer.Character
        	mychar.HumanoidRootPart.CFrame = game:GetService("Workspace").NPC[Value].HumanoidRootPart.CFrame
        	OrionLib:MakeNotification({
        		Name = "Teleport Info :",
            	Content = "Teleported to "..Value.."'s Position",
            	Image = "rbxassetid://",
            	Time = 5
            })
        end    
    })
    task.spawn(function()
        while wait(1) do
            local NPC = game.Workspace.NPC:GetChildren()
            local NPClist = {}
        
            for i,v in pairs(NPC) do
                table.insert(NPClist,v.Name)
            end
            Dropdown:Refresh(NPClist, true)
        end
    end)
    local Tab = Window:MakeTab({
    	Name = "Shop",
    	Icon = "",
    	PremiumOnly = false
    })
    
    Tab:AddToggle({
    	Name = "Stand Storage",
    	Default = false,
    	Callback = function(Value)
    		game:GetService("Players").LocalPlayer.PlayerGui.MainHUDs.StandStorage.Enabled = Value
    	end    
    })
    Tab:AddToggle({
    	Name = "Item Storage",
    	Default = false,
    	Callback = function(Value)
    		game:GetService("Players").LocalPlayer.PlayerGui.MainHUDs.ItemStorage.Enabled = Value
    	end    
    })
    Tab:AddToggle({
    	Name = "Item Shop",
    	Default = false,
    	Callback = function(Value)
    		game:GetService("Players").LocalPlayer.PlayerGui.MainHUDs.ItemShop.Enabled = Value
    	end    
    })
    local Section = Tab:AddSection({
    	Name = "Buy Items"
    })
    Tab:AddButton({
    	Name = "Buy Arrow [Cost 250¥]",
    	Callback = function()
    		game:GetService("ReplicatedStorage").Remotes.Shop:FireServer("StandArrow")
      	end    
    })
    Tab:AddButton({
    	Name = "Buy Rokakaka [Cost 150¥]",
    	Callback = function()
    		game:GetService("ReplicatedStorage").Remotes.Shop:FireServer("StandRokakaka")
      	end    
    })
end
    --[[
     Stand List : -- First Value is the data value and second is the name showed
     
    return {
    	None = "None", 
    	StarPlatinumOVA = "Star Platinum: OVA", 
    	TheWorldOVA = "The World: OVA", 
    	StarPlatinumHeritage = "Star Platinum: Heritage", 
    	TheWorldHeritage = "The World: Heritage", 
    	TheWorld = "The World", 
    	StarPlatinumTheWorld = "Star Platinum: The World", 
    	StarPlatinumStoneOcean = "Star Platinum: Stone Ocean", 
    	Whitesnake = "Whitesnake", 
    	WhitesnakeHeritage = "Whitesnake: Deimos", 
    	TheWorldOverHeaven = "The World: Over Heaven", 
    	TheWorldOVAOverHeaven = "The World: Over Heaven OVA", 
    	StarPlatinumPrime = "Star Platinum: Prime", 
    	StarPlatinumOverHeaven = "Star Platinum: Over Heaven", 
    	StarPlatinumTheUniverse = "Star Platinum: The Universe", 
    	CMoon = "C-Moon", 
    	CMoonBloodMoon = "B-Moon", 
    	CMoonHeritage = "C-Moon: Heritage", 
    	WorthyCMoon = "C-Moon (Worthy)", 
    	WorthyCMoonBloodMoon = "B-Moon (Worthy)", 
    	WorthyCMoonHeritage = "C-Moon: Heritage (Worthy)", 
    	MadeInHeaven = "Made In Heaven", 
    	MadeInHeavenDeimos = "Made In Heaven: Deimos", 
    	D4C = "D4C", 
    	D4CLT = "D4C: Love Train", 
    	DirtyDeeds = "Dirty Deeds", 
    	DirtyDeedsLT = "Dirty Deeds: Love Train"
    };
    ]]
