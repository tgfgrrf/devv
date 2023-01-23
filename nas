	repeat wait() until game:IsLoaded()
	repeat wait() until game:GetService("Players")
	repeat wait() until game:GetService("Players").LocalPlayer
	repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
	repeat wait() until game:GetService("ReplicatedStorage").Effect.Container

	if not game:IsLoaded() then
		local GameLoadGui = Instance.new("Message",workspace);
		GameLoadGui.Text = 'Wait Game Loading';
		game.Loaded:Wait();
		GameLoadGui:Destroy();
		task.wait(10);
	end;

	_G.Team = "Marines"
	_G.Settings = {

		Main = {
			["Auto Farm Level"] = false,
			["Fast Auto Farm Level"] = false,

			--[Mob Aura]

			["Distance Mob Aura"] = 1000, -- {Max : 5000} 
			["Mob Auras"] = false,

			--[World 1]
			["Auto New World"] = false,
			["Auto Saber"] = false,
			["Auto Pole"] = false,

			["Auto Buy Ablility"] = false,

			--[World 2]
			["Auto Third Sea"] = false,
			["Auto Factory"] = false,
			["Auto Factory Hop"] = false,
			["Auto Bartilo Quest"] = false,

			["Auto True Triple Katana"] = false,
			["Auto Rengoku"] = false,
			["Auto Swan Glasses"] = false,
			["Auto Dark Coat"] = false,
			["Auto Ectoplasm"] = false,

			["Auto Buy Legendary Sword"] = false,
			["Auto Buy Enchanment Haki"] = false,

			--[World 3]
			["Auto Holy Torch"] = false,
			["Auto Buddy Swords"] = false,
			["Auto Farm Boss Hallow"] = false,
			["Auto Rainbow Haki"] = false,
			["Auto Elite Hunter"] = false,
			["Auto Musketeer Hat"] = false,
			["Auto Buddy Sword"] = false,
			["Auto Farm Bone"] = false,
			["Auto Ken-Haki V2"] = false,
			["Auto Cavander"] = false,
			["Auto Yama Sword"] = false,
			["Auto Tushita Sword"] = false,
			["Auto Serpent Bow"] = false,
			["Auto Dark Dagger"] = false,
			["Auto Cake Prince"] = false,
			["Auto Dough V2"] = false,
			["Hop"] = false,
			["Auto Random Bone"] = false,

			--[For God Human]

			["Auto Fish Tail Sea 1"] = false,
			["Auto Fish Tail Sea 3"] = false,
			["Auto Magma Ore Sea 2"] = false,
			["Auto Magma Ore Sea 1"] = false,
			["Auto Mystic Droplet"] = false,
			["Auto Dragon Scales"] = false,

		},
		FightingStyle = {
			["Auto God Human"] = false,
			["Auto Superhuman"] = false,
			["Auto Electric Claw"] = false,
			["Auto Death Step"] = false,
			["Auto Fully Death Step"] = false,
			["Auto SharkMan Karate"] = false,
			["Auto Fully SharkMan Karate"] = false,
			["Auto Dragon Talon"] = false,
		},
		Boss = {
			["Auto All Boss"] = false,
			["Auto Boss Select"] = false,
			["Select Boss"] = {},

			["Auto Quest"] = false,
		},
		Mastery = {
			["Select Multi Sword"] = {},
			["Farm Mastery SwordList"] = false,
			["Auto Farm Fruit Mastery"] = false,
			["Auto Farm Gun Mastery"] = false,
			["Mob Health (%)"] = 15,
		},
		Configs = {
			["Double Quest"] = false,
			["Bypass TP"] = false,
			["Select Team"] = {"Marine"}, --{Pirate,Marine}


			["Fast Attack"] = true,
			["Fast Attack Type"] = {"Fast"}, --{Normal,Fast,Slow}
			["Fast Attack Mode"] = {"Normal"},

			["Select Weapon"] = {},


			--[Misc Configs]
			["Auto Haki"] = true,
			["Distance Auto Farm"] = 20, --{Max : 50}
			["Camera Shaker"] = false,

			--[Skill Configs]
			["Skill Z"] = true,
			["Skill X"] = true,
			["Skill C"] = true,
			["Skill V"] = true,
			["Skill F"] = true,

			--[Mob Configs]
			["Show Hitbox"] = false,
			["Bring Mob"] = true,
			["Disabled Damage"] = false,

		},
		Stat = {
			--[Auto Stats]
			["Enabled Auto Stats"] = false,
			["Auto Stats Kaitun"] = false,

			["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
			["Point Select"] = 3, --{Recommended , Max : 9}

			--[Auto Redeem Code]

			["Enabled Auto Redeem Code"] = false,
			["Select Level Redeem Code"] = 1, --{Max : 2400}
		},

		Misc = {
			["No Soru Cooldown"] = false,
			["No Dash Cooldown"] = false,

			["Infinities Geppo"] = false,
			["Infinities Energy"] = false,

			["No Fog"] = false,
			["Wall-TP"] = false,

			["Fly"] = false,
			["Fly Speed"] = 1,

			--[Server]
			["Auto Rejoin"] = true,
		},
		Teleport = {
			["Teleport to Sea Beast"] = false,
		},

		Fruits = {
			["Auto Buy Random Fruits"] = false,
			["Auto Store Fruits"] = false,

			["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
			["Auto Buy Devil Fruits Sniper"] = false,
		},

		Raids = {
			["Auto Raids"] = false,

			["Kill Aura"] = false,
			["Auto Awakened"] = false,
			["Auto Next Place"] = false,

			["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
		},

		Combat = {
			["Fov Size"] = 200,
			["Show Fov"] = false,
			["Aimbot Skill"] = false,
		},

		HUD = {
			["FPS"] = 60,
			["LockFPS"] = true,
			["Boost FPS Windows"] = false,
			['White Screen'] = false,
		},
	}


	function LoadSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfolder("Dev Save") then
				makefolder("Dev Save")
			end
			if not isfolder("Dev Save/Blox Fruits/") then
				makefolder("Dev Save/Blox Fruits/")
			end
			if not isfile("Dev Save/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				writefile("Dev Save/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Dev Save/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				for i,v in pairs(Decode) do
					_G.Settings[i] = v
				end
			end
		else
			return warn("Status : Undetected Executor")
		end
	end

	function SaveSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfile("Dev Save/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				LoadSettings()
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Dev Save/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				local Array = {}
				for i,v in pairs(_G.Settings) do
					Array[i] = v
				end
				writefile("Dev Save/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
			end
		else
			return warn("Status : Undetected Executor")
		end
	end

	LoadSettings()

	if not game:IsLoaded() then
		local Loaded = Instance.new("Message",workspace)
		Loaded.Text = 'Wait Game Loading'
		game.Loaded:Wait()
		Loaded:Destroy()
		task.wait(10)
	end

	join = game.Players.localPlayer.Neutral == false
	if (_G.Team == "Pirates" or _G.Team == "Marines") and not join then
		repeat wait()
			pcall(function()
				join = game.Players.localPlayer.Neutral == false
				if _G.Team == "Pirates" then
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				elseif _G.Team == "Marines" then
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				else
					for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						end
					end
				end
			end)
		until join == true and game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 
	end

	wait(1)

	-- [Place Id Check]
	local id = game.PlaceId
	if id == 2753915549 then World1 = true; elseif id == 4442272183 then World2 = true; elseif id == 7449423635 then World3 = true; else game:Shutdown() end;

	-- [Anti AFK]

	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

	-- [Functions Equip Weapon]
	function EquipWeapon(Tool)
		pcall(function()
			if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end)
	end

	function EquipWeaponSword()
		pcall(function()
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.ToolTip == "Sword" and v:IsA('Tool') then
					local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
				end
			end
		end)
	end

	-- [Body Gyro]

	task.spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				--[World 1]
				if _G.Settings.Main["Auto Farm Level"] or _G.Settings.Main["Auto New World"] or _G.Settings.Main["Mob Auras"] or
					_G.Settings.Main["Auto Saber"] or _G.Settings.Main["Auto Pople"] or
					--[World 2]
					_G.Settings.Main["Auto Third Sea"] or _G.Settings.Main["Auto Bartilo Quest"] or _G.Settings.Main["Auto Dark Coat"] or _G.Settings.Main["Auto Swan Glasses"] or
					_G.Settings.Main["Auto True Triple Katana"] or _G.Settings.Main["Auto Rengoku"] or _G.Settings.Main["Auto Ectoplasm"]  or  _G.Settings.FightingStyle["Auto Fully Death Step"] or 
					_G.Settings.FightingStyle["Auto Fully SharkMan Karate"] or  
					--[World 3]
					_G.Settings.Main["Auto Rainbow Haki"] or _G.Settings.Main["Auto Elite Hunter"] or _G.Settings.Main["Auto Musketeer Hat"] or _G.Settings.Main["Auto Buddy Sword"] or
					_G.Settings.Main["Auto Farm Bone"] or _G.Settings.Main["Auto Ken-Haki V2"] or _G.Settings.FightingStyle["Auto God Human"] or _G.Settings.Main["Auto Cavander"] or 
					_G.Settings.Main["Auto Cursed Dual Katana"] or _G.Settings.Main["Auto Yama Sword"] or _G.Settings.Main["Auto Tushita Sword"] or _G.Settings.Main["Auto Serpent Bow"] or
					_G.Settings.Main["Auto Dark Dagger"] or _G.Settings.Main["Auto Cake Prince"] or _G.Settings.Main["Auto Dough V2"] or _G.Settings.Main["Auto Holy Torch"] or
					_G.Settings.Main["Auto Buddy Swords"] or _G.Settings.Main["Auto Farm Boss Hallow"] or _G.Settings.Main["Mob Aura"] or _G.Settings.Main["Auto Material Soul Guitar"] or _G.Settings.Main["Auto Quest Soul Guitar"] or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or
					Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or AutoFarmChest or 
					--[For God Human]
					--_G.Settings.Main["Auto Fish Tail Sea 1"] or _G.Settings.Main["Auto Fish Tail Sea 3"] or _G.Settings.Main["Auto Magma Ore Sea 2"] or 
					--_G.Settings.Main["Auto Magma Ore Sea 1"] or _G.Settings.Main["Auto Mystic Droplet"] or _G.Settings.Main["Auto Dragon Scales"] or 
					--[Boss]
					_G.Settings.Boss["Auto All Boss"] or _G.Settings.Boss["Auto Boss Select"] or
					--[Mastery]
					_G.Settings.Mastery["Auto Farm Fruit Mastery"] or _G.Settings.Mastery["Auto Farm Gun Mastery"] or _G.Settings.Mastery["Farm Mastery SwordList"] or
					--[Teleport]
					_G.Settings.Teleport["Teleport to Sea Beast"] or
					--[Raids]
					_G.Settings.Raids["Auto Raids"] or _G.Settings.Raids["Auto Next Place"]
				then
					if syn then
						setfflag("HumanoidParallelRemoveNoPhysics", "False")
						setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
					else
						if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
								if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
									game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
								end
								local BodyVelocity = Instance.new("BodyVelocity")
								BodyVelocity.Name = "BodyVelocity1"
								BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
								BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
								BodyVelocity.Velocity = Vector3.new(0, 0, 0)
							end
						end
						for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false    
							end
						end
					end
				else
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
					end
				end
			end)
		end)
	end)

	-- [Bring Mob]

	task.spawn(function()
		while true do wait()
			if setscriptable then
				setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			end
			if sethiddenproperty then
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)

	task.spawn(function()
		while task.wait() do
			pcall(function()
				if StartMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
							if InMyNetWork(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
							end
						end
					end
				end
			end)
		end
	end)

	-- [No Stun]

	task.spawn(function()
		if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
			game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
				pcall(function()
					if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
						game.Players.LocalPlayer.Character.Stun.Value = 0
					end
				end)
			end)
		end
	end)

	-- [Deleted Effect Auto]

	task.spawn(function()
		while wait() do
			for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
				pcall(function()
					if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
						v:Destroy()
					end
				end)
			end
		end
	end)

	-- [require module]

	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]
	local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local cooldownfastattack = tick()

	-- [Disabled Damage Interface]
	function DisabledDamage()
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Configs["Disabled Damage"] then
						game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
					else
						game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
					end
				end)
			end
		end)
	end

	-- [Camera Shaker Function]
	function CameraShaker()
		task.spawn(function()
			local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
			while wait() do
				pcall(function()
					if _G.Settings.Configs["Camera Shaker"] then
						Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
					else
						Camera.CameraShakeInstance.CameraShakeState.Inactive = 3
					end
				end)
			end
		end)
	end

	--[Function RmFzdCBBdHRhY2s=]

	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end

	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end

	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end

	function AttackFunction()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
					end
				end
			end
		end
	end

	function AttackPlayers()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHitsPlayers(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
					end
				end
			end
		end
	end

	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]

	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end

	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end

	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end

	function DamageAura()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
				if #bladehit or #a > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
					end
				end
			end
		end
	end

	function AttackFunctions()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1 
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
					end
				end
			end
		end
	end

	-- [Isnetwork Owner]

	function InMyNetWork(object)
		if isnetworkowner then
			return isnetworkowner(object)
		else
			if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
				return true
			end
			return false
		end
	end

	-- [Function (Abandoned Quest , Others)]

	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end

	-- [Tween Functions]

	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end

		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end

	--BTP

	function BTP(Position)
		game.Players.LocalPlayer.Character.Head:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
	end

	-- [Tween Functions (toTarget)]

	function toTarget(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = CFrame.new(targetPos)
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
		end

		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end

		local tweenfunc = {}
		local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
		if Distance < 250 then
			Speed = 10000
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 1000 then
			Speed = 350
		elseif Distance >= 1000 then
			Speed = 350
		end
		if _G.Settings.Configs["Bypass TP"] then
			if Distance > 3000 and not _G.Settings.FightingStyle["Auto God Human"] and not _G.Settings.Raids["Auto Raids"] and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]"or game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]"))) and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") then
				pcall(function()
					tween:Cancel()
					fkwarp = false
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(0.1)
					return
				end)
			end
		end

		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
		local tweenw, err = pcall(function()
			tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
			tween:Play()
		end)

		function tweenfunc:Stop()
			tween:Cancel()
		end 

		function tweenfunc:Wait()
			tween.Completed:Wait()
		end 

		return tweenfunc
	end

	function toTargetP(CFgo)
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
		if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
			pcall(function()
				tween:Cancel()

				game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

				return
			end)
		end
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
		tween:Play()

		local tweenfunc = {}

		function tweenfunc:Stop()
			tween:Cancel()
		end

		return tweenfunc
	end

	-- [Infinites Energy]

	function InfinitiesEnergy()
		game:GetService('Players').LocalPlayer.Character.Energy.Changed:connect(function()
			if _G.Settings.Misc["Infinities Energy"] then
				game:GetService('Players').LocalPlayer.Character.Energy.Value = game:GetService('Players').LocalPlayer.Character.Energy.MaxValue
			end 
		end)
	end

	-- [No Cooldown , Infinities Geppo]

	function NoCooldown()
		for i,v in next, getgc() do
			if typeof(v) == "function" then
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") and _G.Settings.Misc["No Dash Cooldown"] then
					for i2,v2 in next, getupvalues(v) do
						if tostring(v2) == "0.4" then
							repeat wait(.1)
								setupvalue(v,i2,0)
							until not _G.Settings.Misc["No Dash Cooldown"]
						end
					end
				end
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") and _G.Settings.Misc["Infinities Geppo"] then
					for i2,v2 in next, getupvalues(v) do
						if tostring(v2) == "0" then
							repeat wait(.1)
								setupvalue(v,i2,0)
							until not _G.Settings.Misc["Infinities Geppo"]
						end
					end
				end
				if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") and _G.Settings.Misc["No Soru Cooldown"] then
					for i2,v2 in pairs(debug.getupvalues(v)) do
						if type(v2) == 'table' then
							if v2.LastUse then
								repeat wait()
									setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
								until not _G.Settings.Misc["No Soru Cooldown"]
							end
						end
					end
				end
			end
		end
	end



	function HopServer()

		game.StarterGui:SetCore("SendNotification", {
			Title = "Hop Low Server ", 
			Text = "กำลังหาเซิฟ",
			Icon = "http://www.roblox.com/asset/?id=9606070311",
			Duration = 25
		})
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
		function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				game.StarterGui:SetCore("SendNotification", {
					Title = "Hop Low Server ", 
					Text = "Players : " ..tonumber(v.playing),
					Icon = "http://www.roblox.com/asset/?id=9606070311",
					Duration = 1.5
				})
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									-- delfile("NotSameServers.json")
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							_G.Setting_table.Hop_Server = true 
							Update_Setting(getgenv()['MyName'])
							_G.TP_Ser = true
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(.1)
					end
				end
			end
		end
		function Bring()
			while wait(.2) do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
		end
		Bring()
	end


	-- [Xray Function]

	function xray(v)
		if v then
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
					i.LocalTransparencyModifier = 0.5
				end
			end
		else
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
					i.LocalTransparencyModifier = 0
				end
			end
		end
	end

	-- [Get Players Character]

	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end

	function r15(plr)
		if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
			return true
		end
	end

	-- [Functions Click]

	function ClickCamera()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
	end
	function Click()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end



	-- [Remove Text Fruits]

	function RemoveFruit(str)
		return str:gsub(" Fruit", "")
	end

	-- [Code Api]

	local CodeApi = loadstring(game:HttpGet('https://pastebin.com/raw/EK13Njf3'))()

	-- [Comma Value]

	function comma_value(p1)
		local v1 = p1;
		while true do
			local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2");
			v1 = v2;
			if v3 ~= 0 then else
				break;
			end;	
		end;
		return v1;
	end;

	-- [Check Fruit 1M]


	_G.CheckFruitLocal1M = false
	function CheckFruit1M()
		for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
			if v.Price >= 1000000 then 
				_G.CheckFruitLocal1M = true
			end
		end
	end

	-- [Get FightingStyle]

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	local placeId = game.PlaceId
	if placeId == 2753915549 then
		World1 = true
	elseif placeId == 4442272183 then
		World2 = true
	elseif placeId == 7449423635 then
		ThreeWorld = true
	else
		game.Players.LocalPlayer:Kick("รันผิดเเมพรึป่าว ไอหนุ่ม")
	end

	-- [CheckMasteryWeapon]

	function CheckMasteryWeapon(NameWe,MasNum)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		return "else"
	end

	--[GetWeaponInventory]

	function GetWeaponInventory(Weaponname)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
			if type(v) == "table" then
				if v.Type == "Sword" then
					if v.Name == Weaponname then
						return true
					end
				end
			end
		end
		return false
	end

	-- [GetMaterial]

	function GetMaterial(matname)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
			if type(v) == "table" then
				if v.Type == "Material" then
					if v.Name == matname then
						return v.Count
					end
				end
			end
		end
		return 0
	end

	local AllMaterial
	if World1 then
		AllMaterial = {
			"Magma Ore",
			"Leather",
			"Scrap Metal",
			"Angel Wings",
			"Fish Tail"
		}
	elseif World2 then
		AllMaterial = {
			"Magma Ore",
			"Scrap Metal",
			"Radioactive Material",
			"Vampire Fang",
			"Mystic Droplet",
		}
	elseif World3 then
		AllMaterial = {
			"Mini Tusk",
			"Fish Tail",
			"Scrap Metal",
			"Dragon Scale",
			"Conjured Cocoa",
			"Demonic Wisp",
			"Gunpowder",
		}
	end

	table.sort(AllMaterial)

	-- [CustomFindFirstChild]

	local function CustomFindFirstChild(tablename)
		for i,v in pairs(tablename) do
			if game:GetService("Workspace").Enemies:FindFirstChild(v) then
				return true
			end
		end
		return false
	end

	-- [IsNumber]

	function isNumber(str)
		if tonumber(str) ~= nil or str == 'inf' then
			return true
		end
	end


	-- [Invisible]

	local Player = game:GetService('Players').LocalPlayer

	local function CheckRig()
		if Player.Character then
			local Humanoid = Player.Character:WaitForChild('Humanoid')
			if Humanoid.RigType == Enum.HumanoidRigType.R15 then
				return 'R15'
			else
				return 'R6'
			end
		end
	end

	local function InitiateInvis()
		local Character = Player.Character
		local StoredCF = Character.PrimaryPart.CFrame

		if CheckRig() == 'R6' then
			local Clone = Character.HumanoidRootPart:Clone()
			Character.HumanoidRootPart:Destroy()
			Clone.Parent = Character
		else
			local Clone = Character.LowerTorso.Root:Clone()
			Character.LowerTorso.Root:Destroy()
			Clone.Parent = Character.LowerTorso
		end

	end

	-- [CheckMaterial]

	local function CheckMaterial(v1)
		if World1 then 
			if (v1=="Magma Ore") then 
				MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
				CFrameMon=CFrame.new( -5815,84,8820);
			elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
				MaterialMob={"Brute [Lv. 45]"};
				CFrameMon=CFrame.new( -1145,15,4350);
			elseif (v1=="Angel Wings") then 
				MaterialMob={"God's Guard [Lv. 450]"};
				CFrameMon=CFrame.new( -4698,845, -1912);
			elseif (v1=="Fish Tail") then 
				MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
				CFrameMon=CFrame.new(61123,19,1569);
			end 
		end 
		if World2 then 
			if (v1=="Magma Ore") then 
				MaterialMob={"Magma Ninja [Lv. 1175]"};
				CFrameMon=CFrame.new( -5428,78, -5959);
			elseif (v1=="Scrap Metal") then
				MaterialMob={"Swan Pirate [Lv. 775]"};
				CFrameMon=CFrame.new(878,122,1235);
			elseif (v1=="Radioactive Material") then 
				MaterialMob={"Factory Staff [Lv. 800]"};
				CFrameMon=CFrame.new(295,73, -56);
			elseif (v1=="Vampire Fang") then 
				MaterialMob={"Vampire [Lv. 975]"};
				CFrameMon=CFrame.new( -6033,7, -1317);
			elseif (v1=="Mystic Droplet") then 
				MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
				CFrameMon=CFrame.new( -3385,239, -10542);
			end 
		end 
		if World3 then 
			if (v1=="Mini Tusk") then 
				MaterialMob={"Mythological Pirate [Lv. 1850]"};
				CFrameMon=CFrame.new( -13545,470, -6917);
			elseif (v1=="Fish Tail") then 
				MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
				CFrameMon=CFrame.new( -10993,332, -8940);
			elseif (v1=="Scrap Metal") then 
				MaterialMob={"Jungle Pirate [Lv. 1900]"};
				CFrameMon=CFrame.new( -12107,332, -10549);
			elseif (v1=="Dragon Scale") then 
				MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
				CFrameMon=CFrame.new(6594,383,139);
			elseif (v1=="Conjured Cocoa") then 
				MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
				CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
			elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
				CFrameMon=CFrame.new( -9507,172,6158);
			elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
				CFrameMon=CFrame.new( -469,74,5904);
			end 
		end 
	end

			function CheckLevel2()
				local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
				if Lvl >= 1 and Lvl <= 9 then
					if tostring(game.Players.LocalPlayer.Team) == "Marines" then
						namemon = "Trainee [Lv. 5]"
						namequest = "MarineQuest"
						questlv = 1
						npcpos = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
					elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
						namemon = "Bandit [Lv. 5]"
						namequest = "BanditQuest1"
						questlv = 1
						npcpos = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
					end
					return {["QuestLv"] = questlv, ["CFrameQuest"] = npcpos, ["NameMon"] = namemon, ["NameQuest"] = namequest}
				end
				local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
				local Quests = require(game:GetService("ReplicatedStorage").Quests)
				for i,v in pairs(GuideModule["Data"]["NPCList"]) do
					for i1,v1 in pairs(v["Levels"]) do
						if Lvl >= v1 then
							if not levelreq then
								levelreq = 0
							end
							if v1 > levelreq then
								npcpos = i["CFrame"]
								questlv = i1
								levelreq = v1
							end
							if #v["Levels"] == 3 and questlv == 3 then
								npcpos = i["CFrame"]
								questlv = 2
								levelreq = v["Levels"][2]
							end
						end
					end
				end
				for i,v in pairs(Quests) do
					for i1,v1 in pairs(v) do
						if v1["LevelReq"] == levelreq and i ~= "CitizenQuest" then
							namequest = i
							for i2,v2 in pairs(v1["Task"]) do
								namemon = i2
							end
						end
					end
				end
				if namequest == "MarineQuest2" then
					namequest = "MarineQuest2"
					questlv = 1
					namemon = "Chief Petty Officer [Lv. 120]"
					levelreq = 120
				elseif namequest == "ImpelQuest" then
					namequest = "PrisonerQuest"
					questlv = 2
					namemon = "Dangerous Prisoner"
					levelreq = 210
					npcpos = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
				elseif namequest == "SkyExp1Quest" then
					if questlv == 1 then
						npcpos = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
					elseif questlv == 2 then
						npcpos = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
					end
				elseif namequest == "Area2Quest" and questlv == 2 then
					namequest = "Area2Quest"
					questlv = 1
					namemon = "Swan Pirate [Lv. 775]"
					levelreq = 775
				end
				namemon = namemon:sub(1,#namemon)
				if not namemon:find("Lv") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						monlv = string.match(v.Name, "%d+")
						if v.Name:find(namemon) and #v.Name > #namemon and tonumber(monlv) <= Lvl + 50 then
							namemon = v.Name
						end
					end
				end
				if not namemon:find("Lv") then
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						monlv = string.match(v.Name, "%d+")
						if v.Name:find(namemon) and #v.Name > #namemon and tonumber(monlv) <= Lvl + 50 then
							namemon = v.Name
						end
					end
				end
				return {["QuestLv"] = questlv, ["CFrameQuest"] = npcpos, ["NameMon"] = namemon, ["NameQuest"] = namequest, ["LevelReq"] = levelreq}
			end

		function CheckLevel3()
			local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
			if _G.Upto then
				Lv = Lv + 100
			end
			if World1 and not Auto_Raid then
				if Lv == 1 or Lv <= 9 or SelectMonster == "" then -- Bandit
					Ms = "Bandit [Lv. 5]"
					NameQuest = "BanditQuest1"
					QuestLv = 1
					NameMon = "Bandit"
					CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
					CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
					TelePBoss(CFrameQ)
				elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then -- Monkey
					
					Ms = "Monkey [Lv. 14]"
					NameQuest = "JungleQuest"
					QuestLv = 1
					NameMon = "Monkey"
					CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
					TelePBoss(CFrameQ)
					
				elseif Lv == 15 or Lv <= 19 or SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
					Ms = "Gorilla [Lv. 20]"
					NameQuest = "JungleQuest"
					QuestLv = 2
					NameMon = "Gorilla"
					CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					CFrameMon = CFrame.new(-1267.89001, 66.2034225, -531.818115, -0.813996196, -5.25169774e-08, -0.580869019, -5.58769671e-08, 1, -1.21082593e-08, 0.580869019, 2.26011476e-08, -0.813996196)
					TelePBoss(CFrameQ)
					if Lv >= 25 then
						_G.SelectBoss = "The Gorilla King [Lv. 25] [Boss]" 
					end
					SelectMonster = "Monkey [Lv. 14]"
				elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
					
					Ms = "Military Soldier [Lv. 300]"
					NameQuest = "MagmaQuest"
					QuestLv = 1
					NameMon = "Military Soldier"
					CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
					CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
					TelePBoss(CFrameQ)
					
				elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 325]" then -- Military Spy
					
					Ms = "Military Spy [Lv. 325]"
					NameQuest = "MagmaQuest"
					QuestLv = 2
					NameMon = "Military Spy"
					CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
					CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
					TelePBoss(CFrameQ)
					if Lv >= 350 and Lv <= 375 then
						_G.SelectBoss = "Magma Admiral [Lv. 350] [Boss]"
					end
					SelectMonster = "Military Soldier [Lv. 300]"
				elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
					
					Ms = "Fishman Warrior [Lv. 375]"
					NameQuest = "FishmanQuest"
					QuestLv = 1
					NameMon = "Fishman Warrior"
					CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
					CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						_G.Stop_Tween = true
						TP(CFrameQ)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
						wait(.5)
						_G.Stop_Tween = nil
					end
				elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" then -- Fishman Commando
					
					Ms = "Fishman Commando [Lv. 400]"
					NameQuest = "FishmanQuest"
					QuestLv = 2
					NameMon = "Fishman Commando"
					CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
					CFrameMon = CFrame.new(61877.8516, 75.4723358, 1400.76831, -0.828722656, -2.44484943e-09, -0.559659481, -6.34942552e-08, 1, 8.96514436e-08, 0.559659481, 1.09831348e-07, -0.828722656)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						_G.Stop_Tween = true
						TP(CFrameQ)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
						wait(.5)
						_G.Stop_Tween = nil
					end
					if Lv >= 425 then
						_G.SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
					end
					SelectMonster = "Fishman Warrior [Lv. 375]"
				elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" then 
					Ms = "God's Guard [Lv. 450]"
					NameQuest = "SkyExp1Quest"
					QuestLv = 1
					NameMon = "God's Guards"
					CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
					CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						_G.Stop_Tween = true
						TP(CFrameQ)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
						wait(.5)
						_G.Stop_Tween = nil
					end
					if Lv >= 425 then
						_G.SelectBoss = "Fishman Lord [Lv. 425] [Boss]"
					end
					SelectMonster = "Fishman Commando [Lv. 400]"
				elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" then
					Ms = "Shanda [Lv. 475]"
					NameQuest = "SkyExp1Quest"
					QuestLv = 2
					NameMon = "Shandas"
					CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
					CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973, 0.65171206, 5.11171692e-08, 0.758466363, -4.76232476e-09, 1, -6.33034247e-08, -0.758466363, 3.76435416e-08, 0.65171206)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						_G.Stop_Tween = true
						TP(CFrameQ)
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
						wait(.5)
						_G.Stop_Tween = nil
					end
					if Lv >= 500 then
						_G.SelectBoss = "Wysper [Lv. 500] [Boss]"
					end
					SelectMonster = "God's Guard [Lv. 450]"
				elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" then -- Royal Squad
					
					Ms = "Royal Squad [Lv. 525]"
					NameQuest = "SkyExp2Quest"
					QuestLv = 1
					NameMon = "Royal Squad"
					CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
					TelePBoss(CFrameQ) 
					SelectMonster = "Shanda [Lv. 475]"
				elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" then -- Royal Soldier
					
					Ms = "Royal Soldier [Lv. 550]"
					NameQuest = "SkyExp2Quest"
					QuestLv = 2
					NameMon = "Royal Soldier"
					CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
					TelePBoss(CFrameQ)
					if Lv >= 575 then
						_G.SelectBoss = "Thunder God [Lv. 575] [Boss]"
					end
					SelectMonster = "Royal Squad [Lv. 525]"
				elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" then -- Galley Pirate
					
					Ms = "Galley Pirate [Lv. 625]"
					NameQuest = "FountainQuest"
					QuestLv = 1
					NameMon = "Galley Pirate"
					CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
					CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
					TelePBoss(CFrameQ)
				elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" then -- Galley Captain
					
					Ms = "Galley Captain [Lv. 650]"
					NameQuest = "FountainQuest"
					QuestLv = 2
					NameMon = "Galley Captain"
					CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
					CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
					TelePBoss(CFrameQ)
					
					if Lv >= 675 then
						_G.SelectBoss = "Cyborg [Lv. 675] [Boss]"
					end
					SelectMonster = "Galley Pirate [Lv. 625]"
				end
			end
			if World2 and not Auto_Raid then
				
				if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" then -- Raider [Lv. 700]
					Ms = "Raider [Lv. 700]"
					NameQuest = "Area1Quest"
					QuestLv = 1
					NameMon = "Raider"
					CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
					CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
					TelePBoss(CFrameQ)
				elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
					Ms = "Mercenary [Lv. 725]"
					NameQuest = "Area1Quest"
					QuestLv = 2
					NameMon = "Mercenary"
					CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
					CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
					TelePBoss(CFrameQ)
					SelectMonster = "Raider [Lv. 700]"
				elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
					Ms = "Swan Pirate [Lv. 775]"
					NameQuest = "Area2Quest"
					QuestLv = 1
					NameMon = "Swan Pirate"
					CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
					CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
					TelePBoss(CFrameQ)
				elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
					Ms = "Factory Staff [Lv. 800]"
					NameQuest = "Area2Quest"
					QuestLv = 2
					NameMon = "Factory Staff"
					CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
					CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
					TelePBoss(CFrameQ)
					SelectMonster = "Swan Pirate [Lv. 775]"
				elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
					Ms = "Marine Lieutenant [Lv. 875]"
					NameQuest = "MarineQuest3"
					QuestLv = 1
					NameMon = "Marine Lieutenant"
					CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
					CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
					TelePBoss(CFrameQ)
				elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
					Ms = "Marine Captain [Lv. 900]"
					NameQuest = "MarineQuest3"
					QuestLv = 2
					NameMon = "Marine Captain"
					CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
					CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
					TelePBoss(CFrameQ)
					SelectMonster = "Marine Lieutenant [Lv. 875]"
				elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
					Ms = "Zombie [Lv. 950]"
					NameQuest = "ZombieQuest"
					QuestLv = 1
					NameMon = "Zombie"
					CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
					CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
					TelePBoss(CFrameQ)
				elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
					Ms = "Vampire [Lv. 975]"
					NameQuest = "ZombieQuest"
					QuestLv = 2
					NameMon = "Vampire"
					CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
					CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
					TelePBoss(CFrameQ)
					SelectMonster = "Zombie [Lv. 950]"
				elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
					Ms = "Snow Trooper [Lv. 1000]"
					NameQuest = "SnowMountainQuest"
					QuestLv = 1
					NameMon = "Snow Trooper"
					CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
					CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
					TelePBoss(CFrameQ)
				elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
					Ms = "Winter Warrior [Lv. 1050]"
					NameQuest = "SnowMountainQuest"
					QuestLv = 2
					NameMon = "Winter Warrior"
					CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
					CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
					TelePBoss(CFrameQ)
					SelectMonster = "Snow Trooper [Lv. 1000]"
				elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
					Ms = "Lab Subordinate [Lv. 1100]"
					NameQuest = "IceSideQuest"
					QuestLv = 1
					NameMon = "Lab Subordinate"
					CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
					CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
					TelePBoss(CFrameQ)
				elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
					Ms = "Horned Warrior [Lv. 1125]"
					NameQuest = "IceSideQuest"
					QuestLv = 2
					NameMon = "Horned Warrior"
					CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
					CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
					TelePBoss(CFrameQ)
					SelectMonster = "Lab Subordinate [Lv. 1100]"
				elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
					Ms = "Magma Ninja [Lv. 1175]"
					NameQuest = "FireSideQuest"
					QuestLv = 1
					NameMon = "Magma Ninja"
					CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
					CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
					TelePBoss(CFrameQ)
				elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" then 
					Ms = "Lava Pirate [Lv. 1200]"
					NameQuest = "FireSideQuest"
					QuestLv = 2
					NameMon = "Lava Pirate"
					CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
					CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
					TelePBoss(CFrameQ)
					SelectMonster = "Magma Ninja [Lv. 1175]"
				elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then 
					Ms = "Ship Deckhand [Lv. 1250]"
					NameQuest = "ShipQuest1"
					QuestLv = 1
					NameMon = "Ship Deckhand"
					CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
					CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then 
					Ms = "Ship Engineer [Lv. 1275]"
					NameQuest = "ShipQuest1"
					QuestLv = 2
					NameMon = "Ship Engineer"
					CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
					CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					SelectMonster = "Ship Deckhand [Lv. 1250]"
				elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then 
					Ms = "Ship Steward [Lv. 1300]"
					NameQuest = "ShipQuest2"
					QuestLv = 1
					NameMon = "Ship Steward"
					CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
					CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then 
					Ms = "Ship Officer [Lv. 1325]"
					NameQuest = "ShipQuest2"
					QuestLv = 2
					NameMon = "Ship Officer"
					CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
					CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					SelectMonster = "Ship Steward [Lv. 1300]"
				elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" then 
					Ms = "Arctic Warrior [Lv. 1350]"
					NameQuest = "FrostQuest"
					QuestLv = 1
					NameMon = "Arctic Warrior"
					CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
					CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					end
				elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
					Ms = "Snow Lurker [Lv. 1375]"
					NameQuest = "FrostQuest"
					QuestLv = 2
					NameMon = "Snow Lurker"
					CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
					CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
					if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					end
					SelectMonster = "Arctic Warrior [Lv. 1350]"
				elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
					Ms = "Sea Soldier [Lv. 1425]"
					NameQuest = "ForgottenQuest"
					QuestLv = 1
					NameMon = "Sea Soldier"
					CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
					if raMon == 1 then
						CFrameMon = CFrame.new(-3367.19287, 46.9959602, -9702.30273, 0.971349716, 2.75949148e-08, -0.237654611, -3.49465523e-08, 1, -2.67211728e-08, 0.237654611, 3.42608146e-08, 0.971349716)
					elseif raMon == 2 then
						CFrameMon = CFrame.new(-2676.83496, 63.7505951, -9867.9502, 0.907862604, 3.37670762e-08, 0.419267774, -2.94639158e-08, 1, -1.67384382e-08, -0.419267774, 2.84293189e-09, 0.907862604)
					end
					TelePBoss(CFrameQ)
				elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
					Ms = "Water Fighter [Lv. 1450]"
					NameQuest = "ForgottenQuest"
					QuestLv = 2
					NameMon = "Water Fighter"
					CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
					CFrameMon = CFrame.new(-3273.9021, 295.388245, -10612.5547, -0.171454117, 1.56274425e-08, 0.98519212, -2.4293584e-08, 1, -2.00901713e-08, -0.98519212, -2.73783893e-08, -0.171454117)
					TelePBoss(CFrameQ)
					SelectMonster = "Sea Soldier [Lv. 1425]"
					if Lv >= 1475 then
						_G.SelectBoss = "Tide Keeper [Lv. 1475] [Boss]"
					end
				end
			end
			if World3 and not Auto_Raid then
				if Lv >= 1500 and Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" then -- Pirate Millionaire [Lv. 1500]
					Ms = "Pirate Millionaire [Lv. 1500]"
					NameQuest = "PiratePortQuest"
					QuestLv = 1
					NameMon = "Pirate Millionaire"
					CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
					CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
					TelePBoss(CFrameQ)
				elseif Lv >= 1525 and Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" then -- Pistol Billionaire [Lv. 1525]
					Ms = "Pistol Billionaire [Lv. 1525]"
					NameQuest = "PiratePortQuest"
					QuestLv = 2
					NameMon = "Pistol Billionaire"
					CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
					CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
					TelePBoss(CFrameQ)
					SelectMonster = "Pirate Millionaire [Lv. 1500]"
				elseif Lv >= 1575 and Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then -- Dragon Crew Warrior [Lv. 1575]
					Ms = "Dragon Crew Warrior [Lv. 1575]"
					NameQuest = "AmazonQuest"
					QuestLv = 1
					NameMon = "Dragon Crew Warrior"
					CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
					CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
					TelePBoss(CFrameQ)
				elseif Lv >= 1600 and Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" then -- Dragon Crew Archer [Lv. 1600]
					Ms = "Dragon Crew Archer [Lv. 1600]"
					NameQuest = "AmazonQuest"
					QuestLv = 2
					NameMon = "Dragon Crew Archer"
					CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
					CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
					TelePBoss(CFrameQ)
					SelectMonster = "Dragon Crew Warrior [Lv. 1575]"
				elseif Lv >= 1625 and Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" then -- Female Islander [Lv. 1625]
					Ms = "Female Islander [Lv. 1625]"
					NameQuest = "AmazonQuest2"
					QuestLv = 1
					NameMon = "Female Islander"
					CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
					TelePBoss(CFrameQ)
				elseif Lv >= 1650 and Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" then -- Giant Islander [Lv. 1650]
					Ms = "Giant Islander [Lv. 1650]"
					NameQuest = "AmazonQuest2"
					QuestLv = 2
					NameMon = "Giant Islander"
					CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
					CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
					TelePBoss(CFrameQ)
					SelectMonster = "Female Islander [Lv. 1625]"
				elseif Lv >= 1700 and Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" then -- Marine Commodore [Lv. 1700]
					Ms = "Marine Commodore [Lv. 1700]"
					NameQuest = "MarineTreeIsland"
					QuestLv = 1
					NameMon = "Marine Commodore"
					CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
					CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
					TelePBoss(CFrameQ)
				elseif Lv >= 1725 and Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" then -- Marine Rear Admiral [Lv. 1725]
					Ms = "Marine Rear Admiral [Lv. 1725]"
					NameQuest = "MarineTreeIsland"
					QuestLv = 2
					NameMon = "Marine Rear Admiral"
					CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
					CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
					TelePBoss(CFrameQ)
					SelectMonster = "Marine Commodore [Lv. 1700]"
				elseif Lv >= 1775 and Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" then -- Fishman Raider [Lv. 1775]
					Ms = "Fishman Raider [Lv. 1775]"
					NameQuest = "DeepForestIsland3"
					QuestLv = 1
					NameMon = "Fishman Raider"
					CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
					CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
					TelePBoss(CFrameQ)
				elseif Lv >= 1800 and Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" then -- Fishman Captain [Lv. 1800]
					Ms = "Fishman Captain [Lv. 1800]"
					NameQuest = "DeepForestIsland3"
					QuestLv = 2
					NameMon = "Fishman Captain"
					CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
					CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
					TelePBoss(CFrameQ)
					SelectMonster = "Fishman Raider [Lv. 1775]"
				elseif Lv >= 1825 and Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" then -- Forest Pirate [Lv. 1825]
					Ms = "Forest Pirate [Lv. 1825]"
					NameQuest = "DeepForestIsland"
					QuestLv = 1
					NameMon = "Forest Pirate"
					CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
					CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
					TelePBoss(CFrameQ)
				elseif Lv >= 1850 and Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" then -- Mythological Pirate [Lv. 1850]
					Ms = "Mythological Pirate [Lv. 1850]"
					NameQuest = "DeepForestIsland"
					QuestLv = 2
					NameMon = "Mythological Pirate"
					CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
					CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
					TelePBoss(CFrameQ)
					SelectMonster = "Forest Pirate [Lv. 1825]"
				elseif Lv >= 1900 and Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" then -- Jungle Pirate [Lv. 1900]
					Ms = "Jungle Pirate [Lv. 1900]"
					NameQuest = "DeepForestIsland2"
					QuestLv = 1
					NameMon = "Jungle Pirate"
					CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
					CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
					TelePBoss(CFrameQ)
				elseif Lv >= 1925 and Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" then -- Musketeer Pirate [Lv. 1925]
					Ms = "Musketeer Pirate [Lv. 1925]"
					NameQuest = "DeepForestIsland2"
					QuestLv = 2
					NameMon = "Musketeer Pirate"
					CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
					CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
					TelePBoss(CFrameQ)
					SelectMonster = "Jungle Pirate [Lv. 1900]"
				elseif Lv >= 1975 and Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" then
					Ms = "Reborn Skeleton [Lv. 1975]"
					NameQuest = "HauntedQuest1"
					QuestLv = 1
					NameMon = "Reborn Skeleton"
					CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
					CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
					TelePBoss(CFrameQ)
				elseif Lv >= 2000 and Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" then
					Ms = "Living Zombie [Lv. 2000]"
					NameQuest = "HauntedQuest1"
					QuestLv = 2
					NameMon = "Living Zombie"
					CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
					CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
					TelePBoss(CFrameQ)
					SelectMonster = "Reborn Skeleton [Lv. 1975]"
				elseif Lv >= 2025 and Lv <= 2049  or  SelectMonster == "Demonic Soul [Lv. 2025]" then
					Ms = "Demonic Soul [Lv. 2025]"
					NameQuest = "HauntedQuest2"
					QuestLv = 1
					NameMon = "Demonic"
					CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
					CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
					TelePBoss(CFrameQ)
					SelectMonster = "Living Zombie [Lv. 2000]"
				elseif Lv >= 2050 and Lv <= 2074 or SelectMonster == "Posessed Mummy [Lv. 2050]" then
					Ms = "Posessed Mummy [Lv. 2050]"
					NameQuest = "HauntedQuest2"
					QuestLv = 2
					NameMon = "Posessed Mummy"
					CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
					CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
					TelePBoss(CFrameQ)
					SelectMonster = "Demonic Soul [Lv. 2025]"
				elseif Lv >= 2075 and Lv <= 2099 or SelectMonster == "Peanut Scout [Lv. 2075]" then
					Ms = "Peanut Scout [Lv. 2075]"
					NameQuest = "NutsIslandQuest"
					QuestLv = 1
					NameMon = "Peanut Scout"
					CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
					CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
					TelePBoss(CFrameQ)
				elseif Lv >= 2100 and Lv <= 2124 or SelectMonster == "Peanut President [Lv. 2100]" then
					Ms = "Peanut President [Lv. 2100]"
					NameQuest = "NutsIslandQuest"
					QuestLv = 2
					NameMon = "Peanut President"
					CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
					CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
					SelectMonster = "Peanut Scout [Lv. 2075]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2125 and Lv <= 2149 or SelectMonster == "Ice Cream Chef [Lv. 2125]" then
					Ms = "Ice Cream Chef [Lv. 2125]"
					NameQuest = "IceCreamIslandQuest"
					QuestLv = 1
					NameMon = "Ice Cream Chef"
					CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
					CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
					TelePBoss(CFrameQ)
				elseif Lv >= 2150 and Lv <= 2199 or SelectMonster == "Ice Cream Commander [Lv. 2150]" then 
					Ms = "Ice Cream Commander [Lv. 2150]"
					NameQuest = "IceCreamIslandQuest"
					QuestLv = 2
					NameMon = "Ice Cream Commander"
					CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
					CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
					TelePBoss(CFrameQ)
					SelectMonster = "Ice Cream Chef [Lv. 2125]"
				elseif Lv >= 2200 and Lv <= 2224 or SelectMonster == "Cookie Crafter [Lv. 2200]" then 
					Ms = "Cookie Crafter [Lv. 2200]"
					NameQuest = "CakeQuest1"
					QuestLv = 1
					NameMon = "Cookie Crafter"
					CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
					CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
					TelePBoss(CFrameQ)
				elseif Lv >= 2225 and Lv <= 2249 or SelectMonster == "Cake Guard [Lv. 2225]" then 
					Ms = "Cake Guard [Lv. 2225]"
					NameQuest = "CakeQuest1"
					QuestLv = 2
					NameMon = "Cake Guard"
					CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
					CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
					SelectMonster = "Cookie Crafter [Lv. 2200]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2250 and Lv <= 2274 or SelectMonster == "Baking Staff [Lv. 2250]" then 
					Ms = "Baking Staff [Lv. 2250]"
					NameQuest = "CakeQuest2"
					QuestLv = 1
					NameMon = "Baking Staff"
					CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
					CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
					SelectMonster = "Cake Guard [Lv. 2225]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2275 and Lv <= 2299 or SelectMonster == "Head Baker [Lv. 2275]" then 
					Ms = "Head Baker [Lv. 2275]"
					NameQuest = "CakeQuest2"
					QuestLv = 2
					NameMon = "Head Baker"
					CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
					CFrameMon = CFrame.new(-2302.75806, 105.851219, -12928.1738, -0.436930418, 3.63066199e-08, -0.899495304, -6.58884005e-08, 1, 7.23686568e-08, 0.899495304, 9.0886374e-08, -0.436930418)
					SelectMonster = "Baking Staff [Lv. 2250]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2300 and Lv <= 2324 or SelectMonster == "Cocoa Warrior [Lv. 2300]" then 
					Ms = "Cocoa Warrior [Lv. 2300]"
					NameQuest = "ChocQuest1"
					QuestLv = 1
					NameMon = "Cocoa Warrior"
					CFrameQ = CFrame.new(231.607498, 24.7600384, -12198.8262, 0.998603284, -6.89139341e-08, -0.0528342389, 7.20464115e-08, 1, 5.73841312e-08, 0.0528342389, -6.1110498e-08, 0.998603284)
					CFrameMon = CFrame.new(44.8907547, 53.4631424, -12308.167, -0.695348501, -4.32111094e-08, 0.718672693, -1.05426594e-07, 1, -4.18787494e-08, -0.718672693, -1.0488754e-07, -0.695348501)
					TelePBoss(CFrameQ)
				elseif Lv >= 2325 and Lv <= 2349 or SelectMonster == "Chocolate Bar Battler [Lv. 2325]" then 
					Ms = "Chocolate Bar Battler [Lv. 2325]"
					NameQuest = "ChocQuest1"
					QuestLv = 2
					NameMon = "Chocolate Bar Battler"
					CFrameQ = CFrame.new(231.607498, 24.7600384, -12198.8262, 0.998603284, -6.89139341e-08, -0.0528342389, 7.20464115e-08, 1, 5.73841312e-08, 0.0528342389, -6.1110498e-08, 0.998603284)
					CFrameMon = CFrame.new(717.393555, 70.0507431, -12599.917, 0.64754194, -3.87490608e-08, 0.762029827, -3.6116095e-08, 1, 8.15397811e-08, -0.762029827, -8.03219677e-08, 0.64754194)
					SelectMonster = "Cocoa Warrior [Lv. 2300]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2350 and Lv <= 2374 or SelectMonster == "Sweet Thief [Lv. 2350]" then 
					Ms = "Sweet Thief [Lv. 2350]"
					NameQuest = "ChocQuest2"
					QuestLv = 1
					NameMon = "Sweet Thief"
					CFrameQ = CFrame.new(150.015152, 24.8196201, -12775.3916, -0.513929904, -9.5491286e-09, -0.857832193, 1.2668723e-08, 1, -1.87215683e-08, 0.857832193, -2.04892121e-08, -0.513929904)
					CFrameMon = CFrame.new(2.84610295, 82.2038116, -12553.6885, 0.720501184, 1.15794183e-08, -0.693453729, 1.00857711e-09, 1, 1.77460997e-08, 0.693453729, -1.34854874e-08, 0.720501184)
					SelectMonster = "Chocolate Bar Battler [Lv. 2325]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2375 and Lv <= 2399 or SelectMonster == "Candy Rebel [Lv. 2375]" then 
					Ms = "Candy Rebel [Lv. 2375]"
					NameQuest = "ChocQuest2"
					QuestLv = 2
					NameMon = "Candy Rebel"
					CFrameQ = CFrame.new(150.015152, 24.8196201, -12775.3916, -0.513929904, -9.5491286e-09, -0.857832193, 1.2668723e-08, 1, -1.87215683e-08, 0.857832193, -2.04892121e-08, -0.513929904)
					CFrameMon = CFrame.new(127.958076, 77.2476959, -12883.584, 0.769614816, -6.44218734e-10, 0.638508439, 1.49726986e-08, 1, -1.70381345e-08, -0.638508439, 2.26729959e-08, 0.769614816)
					SelectMonster = "Sweet Thief [Lv. 2350]"
					TelePBoss(CFrameQ)
				elseif Lv >= 2400 and Lv <= 2424 or SelectMonster == "Candy Pirate [Lv. 2400]" then 
					Ms = "Candy Pirate [Lv. 2400]"
					NameQuest = "CandyQuest1"
					QuestLv = 1
					NameMon = "Candy Pirate"
					CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
					CFrameMon = CFrame.new(-1423.03235, 113.437248, -14594.1602, 0.0492029786, 2.03225614e-08, -0.998788774, -2.60848516e-08, 1, 1.90621972e-08, 0.998788774, 2.51153409e-08, 0.0492029786)
					TelePBoss(CFrameQ)
				elseif Lv >= 2425 or SelectMonster == "Snow Demon [Lv. 2425]" then 
					Ms = "Snow Demon [Lv. 2425]"
					NameQuest = "CandyQuest1"
					QuestLv = 2
					NameMon = "Snow Demon"
					CFrameQ = CFrame.new(-1147.95142, 16.1072559, -14445.3105, -0.0240679532, 4.06167295e-08, 0.999710321, 7.46657349e-08, 1, -3.8830926e-08, -0.999710321, 7.3709522e-08, -0.0240679532)
					CFrameMon = CFrame.new(-883.241455, 40.9553833, -14538.4951, -0.28144443, -1.18274158e-07, 0.959577501, 1.83865634e-08, 1, 1.28649276e-07, -0.959577501, 5.38509575e-08, -0.28144443)
					SelectMonster = "Candy Pirate [Lv. 2400]"
					TelePBoss(CFrameQ)
				end
			end
		end
		
		
	function CheckQuest()
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		if World1 then
			if MyLevel == 1 and MyLevel <= 9 then -- Bandit
				LevelFarm = 1

				Name = "Bandit [Lv. 5]"
				QuestName = "BanditQuest1"

				LevelQuest = 1
				NameMon = "Bandit"

				CFrameMon = CFrame.new(1145, 17, 1634)
				VectorMon = Vector3.new(1145, 17, 1634)

				CFrameQuest = CFrame.new(1060, 17, 1547)
				VectorQuest = Vector3.new(1060, 17, 1547)
			elseif MyLevel == 10 and MyLevel <= 14 then -- Monkey
				LevelFarm = 2

				Name = "Monkey [Lv. 14]"
				QuestName = "JungleQuest"

				LevelQuest = 1
				NameMon = "Monkey"

				CFrameMon = CFrame.new(-1496, 39, 35)
				VectorMon = Vector3.new(-1496, 39, 35)

				CFrameQuest = CFrame.new(-1602, 37, 152)
				VectorQuest = Vector3.new(-1602, 37, 152)
			elseif MyLevel == 15 and MyLevel <= 29 then -- Gorilla
				LevelFarm = 3

				Name = "Gorilla [Lv. 20]"
				QuestName = "JungleQuest"

				LevelQuest = 2
				NameMon = "Gorilla"

				CFrameMon = CFrame.new(-1237, 6, -486)
				VectorMon = Vector3.new(-1237, 7, -486)

				CFrameQuest = CFrame.new(-1602, 37, 152)
				VectorQuest = Vector3.new(-1602, 37, 152)
			elseif MyLevel == 30 and MyLevel <= 39 then -- Pirate
				LevelFarm = 4

				Name = "Pirate [Lv. 35]"
				QuestName = "BuggyQuest1"

				LevelQuest = 1
				NameMon = "Pirate"

				CFrameMon = CFrame.new(-1115, 14, 3938)
				VectorMon = Vector3.new(-1115, 14, 3938)

				CFrameQuest = CFrame.new(-1140, 5, 3828)
				VectorQuest = Vector3.new(-1140, 5, 3828)
			elseif MyLevel == 40 and MyLevel <= 59 then -- Brute
				LevelFarm = 5

				Name = "Brute [Lv. 45]"
				QuestName = "BuggyQuest1"

				LevelQuest = 2
				NameMon = "Brute"

				CFrameMon = CFrame.new(-1145, 15, 4350)
				VectorMon = Vector3.new(-1146, 15, 4350)

				CFrameQuest = CFrame.new(-1140, 5, 3828)
				VectorQuest = Vector3.new(-1140, 5, 3828)
			elseif MyLevel == 60 and MyLevel <= 74 then -- Desert Bandit
				LevelFarm = 6

				Name = "Desert Bandit [Lv. 60]"
				QuestName = "DesertQuest"

				LevelQuest = 1
				NameMon = "Desert Bandit"

				CFrameMon = CFrame.new(932, 7, 4484)
				VectorMon = Vector3.new(932, 7, 4484)

				CFrameQuest = CFrame.new(897, 7, 4388)
				VectorQuest = Vector3.new(897, 7, 4388)
			elseif MyLevel == 75 and MyLevel <= 89 then -- Desert Officre
				LevelFarm = 7

				Name = "Desert Officer [Lv. 70]"
				QuestName = "DesertQuest"

				LevelQuest = 2
				NameMon = "Desert Officer"

				CFrameMon = CFrame.new(1572, 10, 4373)
				VectorMon = Vector3.new(1572, 10, 4373)

				CFrameQuest = CFrame.new(897, 7, 4388)
				VectorQuest = Vector3.new(897, 7, 4388)
			elseif MyLevel == 90 and MyLevel <= 99 then -- Snow Bandits
				LevelFarm = 8

				Name = "Snow Bandit [Lv. 90]"
				QuestName = "SnowQuest"

				LevelQuest = 1
				NameMon = "Snow Bandits"

				CFrameMon = CFrame.new(1289, 150, -1442)
				VectorMon = Vector3.new(1289, 106, -1442)

				CFrameQuest = CFrame.new(1386, 87, -1297)
				VectorQuest = Vector3.new(1386, 87, -1297)
			elseif MyLevel == 100 and MyLevel <= 119 then -- Snowman
				LevelFarm = 9

				Name = "Snowman [Lv. 100]"
				QuestName = "SnowQuest"

				LevelQuest = 2
				NameMon = "Snowman"

				CFrameMon = CFrame.new(1289, 150, -1442)
				VectorMon = Vector3.new(1289, 106, -1442)

				CFrameQuest = CFrame.new(1386, 87, -1297)
				VectorQuest = Vector3.new(1386, 87, -1297)
			elseif MyLevel == 120 and MyLevel <= 149 then -- Chief Petty Officer
				LevelFarm = 10

				Name = "Chief Petty Officer [Lv. 120]"
				QuestName = "MarineQuest2"

				LevelQuest = 1
				NameMon = "Chief Petty Officer"

				CFrameMon = CFrame.new(-4855, 23, 4308)
				VectorMon = Vector3.new(-4855, 23, 4308)

				CFrameQuest = CFrame.new(-5036, 29, 4325)
				VectorQuest = Vector3.new(-5036, 29, 4325)
			elseif MyLevel == 150 and MyLevel <= 174 then -- Sky Bandit
				LevelFarm = 11

				Name = "Sky Bandit [Lv. 150]"
				QuestName = "SkyQuest"

				LevelQuest = 1
				NameMon = "Sky Bandit"

				CFrameMon = CFrame.new(-4981, 278, -2830)
				VectorMon = Vector3.new(-4981, 278, -2830)

				CFrameQuest = CFrame.new(-4842, 718, -2623)
				VectorQuest = Vector3.new(-4842, 718, -2623)
			elseif MyLevel == 175 and MyLevel <= 189 then -- Dark Master
				LevelFarm = 12

				Name = "Dark Master [Lv. 175]"
				QuestName = "SkyQuest"

				LevelQuest = 2
				NameMon = "Dark Master"

				CFrameMon = CFrame.new(-5250, 389, -2272)
				VectorMon = Vector3.new(-5250, 389, -2272)

				CFrameQuest = CFrame.new(-4842, 718, -2623)
				VectorQuest = Vector3.new(-4842, 718, -2623)
			elseif MyLevel == 190 and MyLevel <= 209 then -- Dark Master
				LevelFarm = 13

				Name = "Prisoner [Lv. 190]"
				QuestName = "PrisonerQuest"

				LevelQuest = 1
				NameMon = "Prisoner"

				CFrameMon = CFrame.new(5411, 96, 690)
				VectorMon = Vector3.new(5411, 96, 690)

				CFrameQuest = CFrame.new(5308, 2, 474)
				VectorQuest = Vector3.new(5308, 2, 474)
			elseif MyLevel == 210 and MyLevel <= 249 then -- Dark Master
				LevelFarm = 14

				Name = "Dangerous Prisoner [Lv. 210]"
				QuestName = "PrisonerQuest"

				LevelQuest = 2
				NameMon = "Dangerous Prisoner"

				CFrameMon = CFrame.new(5411, 96, 690)
				VectorMon = Vector3.new(5411, 96, 690)

				CFrameQuest = CFrame.new(5308, 2, 474)
				VectorQuest = Vector3.new(5308, 2, 474)
			elseif MyLevel == 250 and MyLevel <= 299 then -- Toga Warrior
				LevelFarm = 15

				Name = "Toga Warrior [Lv. 250]"
				QuestName = "ColosseumQuest"

				LevelQuest = 1
				NameMon = "Toga Warrior"

				CFrameMon = CFrame.new(-1824, 50, -2743)
				VectorMon = Vector3.new(-1824, 50, -2743)

				CFrameQuest = CFrame.new(-1576, 8, -2985)
				VectorQuest = Vector3.new(-1576, 8, -2985)
			elseif MyLevel == 300 and MyLevel <= 329 then -- Military Soldier
				LevelFarm = 16

				Name = "Military Soldier [Lv. 300]"
				QuestName = "MagmaQuest"

				LevelQuest = 1
				NameMon = "Military Soldier"

				CFrameMon = CFrame.new(-5408, 11, 8447)
				VectorMon = Vector3.new(-5408, 11, 8447)

				CFrameQuest = CFrame.new(-5316, 12, 8517)
				VectorQuest = Vector3.new(-5316, 12, 8517)
			elseif MyLevel == 330 and MyLevel <= 374 then -- Military Spy
				LevelFarm = 17

				Name = "Military Spy [Lv. 325]"
				QuestName = "MagmaQuest"

				LevelQuest = 2
				NameMon = "Military Spy"

				CFrameMon = CFrame.new(-5815, 84, 8820)
				VectorMon = Vector3.new(-5815, 84, 8820)

				CFrameQuest = CFrame.new(-5316, 12, 8517)
				VectorQuest = Vector3.new(-5316, 12, 8517)
			elseif MyLevel == 375 and MyLevel <= 399 then -- Fishman Warrior
				LevelFarm = 18

				Name = "Fishman Warrior [Lv. 375]"
				QuestName = "FishmanQuest"

				LevelQuest = 1
				NameMon = "Fishman Warrior"

				CFrameMon = CFrame.new(60859, 19, 1501)
				VectorMon = Vector3.new(60859, 19, 1501)

				CFrameQuest = CFrame.new(61123, 19, 1569)
				VectorQuest = Vector3.new(61123, 19, 1569)
			elseif MyLevel == 400 and MyLevel <= 449 then -- Fishman Commando
				LevelFarm = 19

				Name = "Fishman Commando [Lv. 400]"
				QuestName = "FishmanQuest"

				LevelQuest = 2
				NameMon = "Fishman Commando"

				CFrameMon = CFrame.new(61891, 19, 1470)
				VectorMon = Vector3.new(61891, 19, 1470)

				CFrameQuest = CFrame.new(61123, 19, 1569)
				VectorQuest = Vector3.new(61123, 19, 1569)
			elseif MyLevel == 450 and MyLevel <= 474 then -- God's Guards
				LevelFarm = 20

				Name = "God's Guard [Lv. 450]"
				QuestName = "SkyExp1Quest"

				LevelQuest = 1
				NameMon = "God's Guards"

				CFrameMon = CFrame.new(-4698, 845, -1912)
				VectorMon = Vector3.new(-4698, 845, -1912)

				CFrameQuest = CFrame.new(-4722, 845, -1954)
				VectorQuest = Vector3.new(-4722, 846, -1954)
			elseif MyLevel == 475 and MyLevel <= 524 then -- Shandas
				LevelFarm = 21

				Name = "Shanda [Lv. 475]"
				QuestName = "SkyExp1Quest"

				LevelQuest = 2
				NameMon = "Shandas"

				CFrameMon = CFrame.new(-7685, 5567, -502)
				VectorMon = Vector3.new(-7685, 5567, -502)

				CFrameQuest = CFrame.new(-7862, 5546, -380)
				VectorQuest = Vector3.new(-7862, 5546, -380)
			elseif MyLevel == 525 and MyLevel <= 549 then -- Royal Squad
				LevelFarm = 22

				Name = "Royal Squad [Lv. 525]"
				QuestName = "SkyExp2Quest"

				LevelQuest = 1
				NameMon = "Royal Squad"

				CFrameMon = CFrame.new(-7670, 5607, -1460)
				VectorMon = Vector3.new(-7670, 5607, -1460)

				CFrameQuest = CFrame.new(-7904, 5636, -1412)
				VectorQuest = Vector3.new(-7904, 5636, -1412)
			elseif MyLevel == 550 and MyLevel <= 624 then -- Royal Soldier
				LevelFarm = 23

				Name = "Royal Soldier [Lv. 550]"
				QuestName = "SkyExp2Quest"

				LevelQuest = 2
				NameMon = "Royal Soldier"

				CFrameMon = CFrame.new(-7828, 5607, -1744)
				VectorMon = Vector3.new(-7828, 5607, -1744)

				CFrameQuest = CFrame.new(-7904, 5636, -1412)
				VectorQuest = Vector3.new(-7904, 5636, -1412)
			elseif MyLevel == 625 and MyLevel <= 649 then -- Galley Pirate
				LevelFarm = 24

				Name = "Galley Pirate [Lv. 625]"
				QuestName = "FountainQuest"

				LevelQuest = 1
				NameMon = "Galley Pirate"

				CFrameMon = CFrame.new(5589, 45, 3996)
				VectorMon = Vector3.new(5589, 45, 3996)

				CFrameQuest = CFrame.new(5256, 39, 4050)
				VectorQuest = Vector3.new(5256, 39, 4050)
			elseif MyLevel >= 650 then -- Galley Captain
				LevelFarm = 25

				Name = "Galley Captain [Lv. 650]"
				QuestName = "FountainQuest"

				LevelQuest = 2
				NameMon = "Galley Captain"

				CFrameMon = CFrame.new(5649, 39, 4936)
				VectorMon = Vector3.new(5649, 39, 4936)

				CFrameQuest = CFrame.new(5256, 39, 4050)
				VectorQuest = Vector3.new(5256, 39, 4050)
			end
		end
		if World2 then
			if MyLevel == 700 and MyLevel <= 724 then -- Raider [Lv. 700]
				LevelFarm = 1

				Name = "Raider [Lv. 700]"
				QuestName = "Area1Quest"

				LevelQuest = 1
				NameMon = "Raider"

				CFrameQuest = CFrame.new(-425, 73, 1837)
				VectorQuest = Vector3.new(-425, 73, 1837)

				CFrameMon = CFrame.new(-746, 39, 2390)
				VectorMon = Vector3.new(-746, 39, 2389)
			elseif MyLevel == 725 and MyLevel <= 774 then -- Mercenary [Lv. 725]
				LevelFarm = 2

				Name = "Mercenary [Lv. 725]"
				QuestName = "Area1Quest"

				LevelQuest = 2
				NameMon = "Mercenary"

				CFrameQuest = CFrame.new(-425, 73, 1837)
				VectorQuest = Vector3.new(-425, 73, 1837)

				CFrameMon = CFrame.new(-874, 141, 1312)
				VectorMon = Vector3.new(-874, 141, 1312)
			elseif MyLevel == 775 and MyLevel <= 799 then -- Swan Pirate [Lv. 775]
				LevelFarm = 3

				Name = "Swan Pirate [Lv. 775]"
				QuestName = "Area2Quest"

				LevelQuest = 1
				NameMon = "Swan Pirate"

				CFrameQuest = CFrame.new(634, 73, 918)
				VectorQuest = Vector3.new(634, 73, 918)

				CFrameMon = CFrame.new(878, 122, 1235)
				VectorMon = Vector3.new(878, 122, 1235)
			elseif MyLevel == 800 and MyLevel <= 874 then -- Factory Staff [Lv. 800]
				LevelFarm = 4

				Name = "Factory Staff [Lv. 800]"
				QuestName = "Area2Quest"

				LevelQuest = 2
				NameMon = "Factory Staff"

				CFrameQuest = CFrame.new(634, 73, 918)
				VectorQuest = Vector3.new(634, 73, 918)

				CFrameMon = CFrame.new(295, 73, -56)
				VectorMon = Vector3.new(295, 73, -56)
			elseif MyLevel == 875 and MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
				LevelFarm = 5

				Name = "Marine Lieutenant [Lv. 875]"
				QuestName = "MarineQuest3"

				LevelQuest = 1
				NameMon = "Marine Lieutenant"

				CFrameMon = CFrame.new(-2806, 73, -3038)
				VectorMon = Vector3.new(-2806, 73, -3038)

				CFrameQuest = CFrame.new(-2443, 73, -3219)
				VectorQuest = Vector3.new(-2443, 73, -3219)
			elseif MyLevel == 900 and MyLevel <= 949 then -- Marine Captain [Lv. 900]
				LevelFarm = 6

				Name = "Marine Captain [Lv. 900]"
				QuestName = "MarineQuest3"

				LevelQuest = 2
				NameMon = "Marine Captain"

				CFrameMon = CFrame.new(-1869, 73, -3320)
				VectorMon = Vector3.new(-1869, 73, -3320)

				CFrameQuest = CFrame.new(-2443, 73, -3219)
				VectorQuest = Vector3.new(-2443, 73, -3219)
			elseif MyLevel == 950 and MyLevel <= 974 then -- Zombie [Lv. 950]
				LevelFarm = 7

				Name = "Zombie [Lv. 950]"
				QuestName = "ZombieQuest"

				LevelQuest = 1
				NameMon = "Zombie"

				CFrameMon = CFrame.new(-5736, 126, -728)
				VectorMon = Vector3.new(-5736, 126, -728)

				CFrameQuest = CFrame.new(-5494, 49, -795)
				VectorQuest = Vector3.new(-5494, 49, -794)
			elseif MyLevel == 975 and MyLevel <= 999 then -- Vampire [Lv. 975]
				LevelFarm = 8

				Name = "Vampire [Lv. 975]"
				QuestName = "ZombieQuest"

				LevelQuest = 2
				NameMon = "Vampire"

				CFrameMon = CFrame.new(-6033, 7, -1317)
				VectorMon = Vector3.new(-6033, 7, -1317)

				CFrameQuest = CFrame.new(-5494, 49, -795)
				VectorQuest = Vector3.new(-5494, 49, -795)
			elseif MyLevel == 1000 and MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
				LevelFarm = 9

				Name = "Snow Trooper [Lv. 1000]"
				QuestName = "SnowMountainQuest"

				LevelQuest = 1
				NameMon = "Snow Trooper"

				CFrameMon = CFrame.new(478, 402, -5362)
				VectorMon = Vector3.new(478, 402, -5362)

				CFrameQuest = CFrame.new(605, 402, -5371)
				VectorQuest = Vector3.new(605, 402, -5371)
			elseif MyLevel == 1050 and MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
				LevelFarm = 10

				Name = "Winter Warrior [Lv. 1050]"
				QuestName = "SnowMountainQuest"

				LevelQuest = 2
				NameMon = "Winter Warrior"

				CFrameMon = CFrame.new(1157, 430, -5188)
				VectorMon = Vector3.new(1157, 430, -5188)

				CFrameQuest = CFrame.new(605, 402, -5371)
				VectorQuest = Vector3.new(605, 402, -5371)
			elseif MyLevel == 1100 and MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
				LevelFarm = 11

				Name = "Lab Subordinate [Lv. 1100]"
				QuestName = "IceSideQuest"

				LevelQuest = 1
				NameMon = "Lab Subordinate"

				CFrameMon = CFrame.new(-5782, 42, -4484)
				VectorMon = Vector3.new(-5782, 42, -4484)

				CFrameQuest = CFrame.new(-6060, 16, -4905)
				VectorQuest = Vector3.new(-6060, 16, -4905)
			elseif MyLevel == 1125 and MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
				LevelFarm = 12

				Name = "Horned Warrior [Lv. 1125]"
				QuestName = "IceSideQuest"

				LevelQuest = 2
				NameMon = "Horned Warrior"

				CFrameMon = CFrame.new(-6406, 24, -5805)
				VectorMon = Vector3.new(-6406, 24, -5805)

				CFrameQuest = CFrame.new(-6060, 16, -4905)
				VectorQuest = Vector3.new(-6060, 16, -4905)
			elseif MyLevel == 1175 and MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
				LevelFarm = 13

				Name = "Magma Ninja [Lv. 1175]"
				QuestName = "FireSideQuest"
				LevelQuest = 1
				NameMon = "Magma Ninja"

				CFrameMon = CFrame.new(-5428, 78, -5959)
				VectorMon = Vector3.new(-5428, 78, -5959)

				CFrameQuest = CFrame.new(-5430, 16, -5295)
				VectorQuest = Vector3.new(-5430, 16, -5296)
			elseif MyLevel == 1200 and MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
				LevelFarm = 14

				Name = "Lava Pirate [Lv. 1200]"
				QuestName = "FireSideQuest"

				LevelQuest = 2
				NameMon = "Lava Pirate"

				CFrameMon = CFrame.new(-5270, 42, -4800)
				VectorMon = Vector3.new(-5270, 42, -4800)

				CFrameQuest = CFrame.new(-5430, 16, -5295)
				VectorQuest = Vector3.new(-5430, 16, -5296)
			elseif MyLevel == 1250 and MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
				LevelFarm = 15

				Name = "Ship Deckhand [Lv. 1250]"
				QuestName = "ShipQuest1"

				LevelQuest = 1
				NameMon = "Ship Deckhand"

				CFrameMon = CFrame.new(1198, 126, 33031)
				VectorMon = Vector3.new(1198, 126, 33031)

				CFrameQuest = CFrame.new(1038, 125, 32913)
				VectorQuest = Vector3.new(1038, 125, 32913)
			elseif MyLevel == 1275 and MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
				LevelFarm = 16

				Name = "Ship Engineer [Lv. 1275]"
				QuestName = "ShipQuest1"

				LevelQuest = 2
				NameMon = "Ship Engineer"

				CFrameMon = CFrame.new(918, 44, 32787)
				VectorMon = Vector3.new(918, 44, 32787)

				CFrameQuest = CFrame.new(1038, 125, 32913)
				VectorQuest = Vector3.new(1038, 125, 32913)
			elseif MyLevel == 1300 and MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
				LevelFarm = 17

				Name = "Ship Steward [Lv. 1300]"
				QuestName = "ShipQuest2"

				LevelQuest = 1
				NameMon = "Ship Steward"

				CFrameMon = CFrame.new(915, 130, 33419)
				VectorMon = Vector3.new(915, 130, 33419)

				CFrameQuest = CFrame.new(969, 125, 33245)
				VectorQuest = Vector3.new(969, 125, 33245)
			elseif MyLevel == 1325 and MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
				LevelFarm = 18

				Name = "Ship Officer [Lv. 1325]"
				QuestName = "ShipQuest2"

				LevelQuest = 2
				NameMon = "Ship Officer"

				CFrameMon = CFrame.new(916, 181, 33335)
				VectorMon = Vector3.new(916, 181, 33335)

				CFrameQuest = CFrame.new(969, 125, 33245)
				VectorQuest = Vector3.new(969, 125, 33245)
			elseif MyLevel == 1350 and MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
				LevelFarm = 19

				Name = "Arctic Warrior [Lv. 1350]"
				QuestName = "FrostQuest"

				LevelQuest = 1
				NameMon = "Arctic Warrior"

				CFrameMon = CFrame.new(6038, 29, -6231)
				VectorMon = Vector3.new(6038, 29, -6231)

				VectorQuest = Vector3.new(5669, 28, -6482)
				CFrameQuest = CFrame.new(5669, 28, -6482)
			elseif MyLevel == 1375 and MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
				LevelFarm = 20

				Name = "Snow Lurker [Lv. 1375]"
				QuestName = "FrostQuest"

				LevelQuest = 2
				NameMon = "Snow Lurker"

				CFrameMon = CFrame.new(5560, 42, -6826)
				VectorMon = Vector3.new(5560, 42, -6826)

				VectorQuest = Vector3.new(5669, 28, -6482)
				CFrameQuest = CFrame.new(5669, 28, -6482)
			elseif MyLevel == 1425 and MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
				LevelFarm = 21
				Name = "Sea Soldier [Lv. 1425]"
				QuestName = "ForgottenQuest"

				LevelQuest = 1
				NameMon = "Sea Soldier"

				CFrameMon = CFrame.new(-3022, 16, -9722)
				VectorMon = Vector3.new(-3022, 16, -9722)

				CFrameQuest = CFrame.new(-3054, 237, -10148)
				VectorQuest = Vector3.new(-3054, 237, -10148)
			elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
				LevelFarm = 22
				Name = "Water Fighter [Lv. 1450]"
				QuestName = "ForgottenQuest"

				LevelQuest = 2
				NameMon = "Water Fighter"

				CFrameMon = CFrame.new(-3385, 239, -10542)
				VectorMon = Vector3.new(-3385, 239, -10542)

				CFrameQuest = CFrame.new(-3054, 237, -10148)
				VectorQuest = Vector3.new(-3054, 237, -10148)
			end
		end
		if World3 then
			if MyLevel == 1500 and MyLevel <= 1524 then
				LevelFarm = 1

				Name = "Pirate Millionaire [Lv. 1500]"
				QuestName = "PiratePortQuest"

				LevelQuest = 1
				NameMon = "Pirate"

				CFrameMon = CFrame.new(-373, 75, 5550)
				VectorMon = Vector3.new(-373, 75, 5550)

				CFrameQuest = CFrame.new(-288, 44, 5576)
				VectorQuest = Vector3.new(-288, 44, 5576)
			elseif MyLevel == 1525 and MyLevel <= 1574 then
				LevelFarm = 2

				Name = "Pistol Billionaire [Lv. 1525]"
				QuestName = "PiratePortQuest"

				LevelQuest = 2
				NameMon = "Pistol"

				CFrameMon = CFrame.new(-469, 74, 5904)
				VectorMon = Vector3.new(-469, 74, 5904)

				CFrameQuest = CFrame.new(-288, 44, 5576)
				VectorQuest = Vector3.new(-288, 44, 5576)
			elseif MyLevel == 1575 and MyLevel <= 1599 then
				LevelFarm = 3

				Name = "Dragon Crew Warrior [Lv. 1575]"
				QuestName = "AmazonQuest"

				LevelQuest = 1
				NameMon = "Warrior"

				CFrameMon = CFrame.new(6339, 52, -1213)
				VectorMon = Vector3.new(6338, 52, -1213)

				CFrameQuest = CFrame.new(5835, 52, -1105)
				VectorQuest = Vector3.new(5835, 52, -1105)
			elseif MyLevel == 1600 and MyLevel <= 1624 then
				LevelFarm = 4

				Name = "Dragon Crew Archer [Lv. 1600]"
				QuestName = "AmazonQuest"

				LevelQuest = 2
				NameMon = "Archer"

				CFrameMon = CFrame.new(6594, 383, 139)
				VectorMon = Vector3.new(6594, 383, 139)

				CFrameQuest = CFrame.new(5835, 52, -1105)
				VectorQuest = Vector3.new(5835, 52, -1105)
			elseif MyLevel == 1625 and MyLevel <= 1649 then
				LevelFarm = 5

				Name = "Female Islander [Lv. 1625]"
				QuestName = "AmazonQuest2"

				LevelQuest = 1
				NameMon = "Female"

				CFrameMon = CFrame.new(5308, 819, 1047)
				VectorMon = Vector3.new(5308, 819, 1047)

				CFrameQuest = CFrame.new(5443, 602, 751)
				VectorQuest = Vector3.new(5443, 602, 751)
			elseif MyLevel == 1650 and MyLevel <= 1699 then
				LevelFarm = 6

				Name = "Giant Islander [Lv. 1650]"
				QuestName = "AmazonQuest2"

				LevelQuest = 2
				NameMon = "Giant Islanders"

				CFrameMon = CFrame.new(4951, 602, -68)
				VectorMon = Vector3.new(4951, 602, -68)

				CFrameQuest = CFrame.new(5443, 602, 751)
				VectorQuest = Vector3.new(5443, 602, 751)
			elseif MyLevel == 1700 and MyLevel <= 1724 then
				LevelFarm = 7

				Name = "Marine Commodore [Lv. 1700]"
				QuestName = "MarineTreeIsland"

				LevelQuest = 1
				NameMon = "Marine Commodore"

				CFrameMon = CFrame.new(2447, 73, -7470)
				VectorMon = Vector3.new(2447, 73, -7470)

				CFrameQuest = CFrame.new(2180, 29, -6737)
				VectorQuest = Vector3.new(2180, 29, -6737)
			elseif MyLevel == 1725 and MyLevel <= 1774 then
				LevelFarm = 8

				Name = "Marine Rear Admiral [Lv. 1725]"
				QuestName = "MarineTreeIsland"

				LevelQuest = 2
				NameMon = "Marine Rear Admiral"

				CFrameMon = CFrame.new(3671, 161, -6932)
				VectorMon = Vector3.new(3671, 161, -6932)

				CFrameQuest = CFrame.new(2180, 29, -6737)
				VectorQuest = Vector3.new(2180, 29, -6737)
			elseif MyLevel == 1775 and MyLevel <= 1800 then
				LevelFarm = 9

				Name = "Fishman Raider [Lv. 1775]"
				QuestName = "DeepForestIsland3"

				LevelQuest = 1
				NameMon = "Fishman Raider"

				CFrameMon = CFrame.new(-10560, 332, -8466)
				VectorMon = Vector3.new(-10560, 332, -8466)

				CFrameQuest = CFrame.new(-10584, 332, -8758)
				VectorQuest = Vector3.new(-10584, 332, -8758)
			elseif MyLevel == 1800 and MyLevel <= 1824 then
				LevelFarm = 10

				Name = "Fishman Captain [Lv. 1800]"
				QuestName = "DeepForestIsland3"

				LevelQuest = 2
				NameMon = "Fishman Captain"

				CFrameMon = CFrame.new(-10993, 332, -8940)
				VectorMon = Vector3.new(-10993, 332, -8940)

				CFrameQuest = CFrame.new(-10584, 332, -8758)
				VectorQuest = Vector3.new(-10584, 332, -8758)
			elseif MyLevel == 1825 and MyLevel <= 1849 then
				LevelFarm = 11

				Name = "Forest Pirate [Lv. 1825]"
				QuestName = "DeepForestIsland"

				LevelQuest = 1
				NameMon = "Forest Pirate"

				CFrameMon = CFrame.new(-13479, 333, -7905)
				VectorMon = Vector3.new(-13479, 333, -7905)

				CFrameQuest = CFrame.new(-13232, 333, -7627)
				VectorQuest = Vector3.new(-13232, 333, -7627)
			elseif MyLevel == 1850 and MyLevel <= 1899 then
				LevelFarm = 12

				Name = "Mythological Pirate [Lv. 1850]"
				QuestName = "DeepForestIsland"

				LevelQuest = 2
				NameMon = "Mythological Pirate"

				CFrameMon = CFrame.new(-13545, 470, -6917)
				VectorMon = Vector3.new(-13545, 470, -6917)

				CFrameQuest = CFrame.new(-13232, 333, -7627)
				VectorQuest = Vector3.new(-13232, 333, -7627)
			elseif MyLevel == 1900 and MyLevel <= 1924 then
				LevelFarm = 13

				Name = "Jungle Pirate [Lv. 1900]"
				QuestName = "DeepForestIsland2"

				LevelQuest = 1
				NameMon = "Jungle Pirate"

				CFrameMon = CFrame.new(-12107, 332, -10549)
				VectorMon = Vector3.new(-12106, 332, -10549)

				CFrameQuest = CFrame.new(-12684, 391, -9902)
				VectorQuest = Vector3.new(-12684, 391, -9902)
			elseif MyLevel == 1925 and MyLevel <= 1974 then
				LevelFarm = 14

				Name = "Musketeer Pirate [Lv. 1925]"
				QuestName = "DeepForestIsland2"

				LevelQuest = 2
				NameMon = "Musketeer Pirate"

				CFrameMon = CFrame.new(-13286, 392, -9769)
				VectorMon = Vector3.new(-13286, 392, -9768)

				CFrameQuest = CFrame.new(-12684, 391, -9902)
				VectorQuest = Vector3.new(-12684, 391, -9902)
			elseif MyLevel == 1975 and MyLevel <= 1999 then
				LevelFarm = 15
				Name = "Reborn Skeleton [Lv. 1975]"
				QuestName = "HauntedQuest1"

				LevelQuest = 1
				NameMon = "Reborn Skeleton"

				CFrameMon = CFrame.new(-8760, 142, 6039)
				VectorMon = Vector3.new(-8760, 142, 6039)

				CFrameQuest = CFrame.new(-9482, 142, 5567)
				VectorQuest = Vector3.new(-9482, 142, 5567)
			elseif MyLevel == 2000 and MyLevel <= 2024 then
				LevelFarm = 16

				Name = "Living Zombie [Lv. 2000]"
				QuestName = "HauntedQuest1"

				LevelQuest = 2
				NameMon = "Living Zombie"

				CFrameMon = CFrame.new(-10144, 140, 5932)
				VectorMon = Vector3.new(-10144, 140, 5932)

				CFrameQuest = CFrame.new(-9482, 142, 5567)
				VectorQuest = Vector3.new(-9482, 142, 5567)
			elseif MyLevel == 2025 and MyLevel <= 2049 then
				LevelFarm = 17

				Name = "Demonic Soul [Lv. 2025]"
				QuestName = "HauntedQuest2"

				LevelQuest = 1
				NameMon = "Demonic Soul"

				CFrameMon = CFrame.new(-9507, 172, 6158)
				VectorMon = Vector3.new(-9506, 172, 6158)

				CFrameQuest = CFrame.new(-9513, 172, 6079)
				VectorQuest = Vector3.new(-9513, 172, 6079)
			elseif MyLevel == 2050 and MyLevel <= 2074 then
				LevelFarm = 18

				Name = "Posessed Mummy [Lv. 2050]"
				QuestName = "HauntedQuest2"

				LevelQuest = 2
				NameMon = "Posessed Mummy"

				CFrameMon = CFrame.new(-9577, 6, 6223)
				VectorMon = Vector3.new(-9577, 6, 6223)

				CFrameQuest = CFrame.new(-9513, 172, 6079)
				VectorQuest = Vector3.new(-9513, 172, 6079)

			elseif MyLevel == 2075 and MyLevel <= 2099 then
				LevelFarm = 19

				Name = "Peanut Scout [Lv. 2075]"
				QuestName = "NutsIslandQuest"

				LevelQuest = 1
				NameMon = "Peanut Scout"

				CFrameMon = CFrame.new(-2124, 123, -10435)
				VectorMon = Vector3.new(-2124, 123, -10435)

				CFrameQuest = CFrame.new(-2104, 38, -10192)
				VectorQuest = Vector3.new(-2104, 38, -10192)
			elseif MyLevel == 2100 and MyLevel <= 2124 then
				LevelFarm = 20

				Name = "Peanut President [Lv. 2100]"
				QuestName = "NutsIslandQuest"

				LevelQuest = 2
				NameMon = "Peanut President"

				CFrameMon = CFrame.new(-2124, 123, -10435)
				VectorMon = Vector3.new(-2124, 123, -10435)

				CFrameQuest = CFrame.new(-2104, 38, -10192)
				VectorQuest = Vector3.new(-2104, 38, -10192)
			elseif MyLevel == 2125 and MyLevel <= 2149 then
				LevelFarm = 21

				Name = "Ice Cream Chef [Lv. 2125]"
				QuestName = "IceCreamIslandQuest"

				LevelQuest = 1
				NameMon = "Ice Cream Chef"

				CFrameMon = CFrame.new(-641, 127, -11062)
				VectorMon = Vector3.new(-641, 127, -11062)

				CFrameQuest = CFrame.new(-822, 66, -10965)
				VectorQuest = Vector3.new(-822, 66, -10965)
			elseif MyLevel == 2150 and MyLevel <= 2199 then
				LevelFarm = 22

				Name = "Ice Cream Commander [Lv. 2150]"
				QuestName = "IceCreamIslandQuest"

				LevelQuest = 2
				NameMon = "Ice Cream Commander"

				CFrameMon = CFrame.new(-641, 127, -11062)
				VectorMon = Vector3.new(-641, 127, -11062)

				CFrameQuest = CFrame.new(-822, 66, -10965)
				VectorQuest = Vector3.new(-822, 66, -10965)
				---------------------------------------------------------------
			elseif MyLevel == 2200 and MyLevel <= 2224 then
				LevelFarm = 23

				Name = "Cookie Crafter [Lv. 2200]"
				QuestName = "CakeQuest1"

				LevelQuest = 1
				NameMon = "Cookie Crafter"

				CFrameMon = CFrame.new(-2365, 38, -12099)
				VectorMon = Vector3.new(-2365, 38, -12099)

				CFrameQuest = CFrame.new(-2020, 38, -12025)
				VectorQuest = Vector3.new(-2020, 38, -12025)
			elseif MyLevel == 2225 and MyLevel <= 2249 then
				LevelFarm = 24

				Name = "Cake Guard [Lv. 2225]"
				QuestName = "CakeQuest1"

				LevelQuest = 2
				NameMon = "Cake Guard"

				CFrameMon = CFrame.new(-1651, 38, -12308)
				VectorMon = Vector3.new(-1651, 38, -12308)

				CFrameQuest = CFrame.new(-2020, 38, -12025)
				VectorQuest = Vector3.new(-2020, 38, -12025)
			elseif MyLevel == 2250 and MyLevel <= 2274 then
				LevelFarm = 25

				Name = "Baking Staff [Lv. 2250]"
				QuestName = "CakeQuest2"

				LevelQuest = 1
				NameMon = "Baking Staff"

				CFrameMon = CFrame.new(-1870, 38, -12938)
				VectorMon = Vector3.new(-1870, 38, -12938)

				CFrameQuest = CFrame.new(-1926, 38, -12850)
				VectorQuest = Vector3.new(-1926, 38, -12850)
			elseif MyLevel == 2275 and MyLevel <= 2299 then
				LevelFarm = 26

				Name = "Head Baker [Lv. 2275]"
				QuestName = "CakeQuest2"

				LevelQuest = 2
				NameMon = "Head Baker"

				CFrameMon = CFrame.new(-1926, 88, -12850)
				VectorMon = CFrame.new(-1870, 38, -12938)

				CFrameQuest = CFrame.new(-1926, 38, -12850)
				VectorQuest = Vector3.new(-1926, 38, -12850)
				---------------------------------------------------------------
			elseif MyLevel == 2300 and MyLevel <= 2324 then
				LevelFarm = 27

				Name = "Cocoa Warrior [Lv. 2300]"
				QuestName = "ChocQuest1"

				LevelQuest = 1
				NameMon = "Cocoa Warrior"

				CFrameMon = CFrame.new(231, 23, -12194)
				VectorMon = CFrame.new(231, 23, -12194)

				CFrameQuest = CFrame.new(231, 23, -12194)
				VectorQuest = Vector3.new(231, 23, -12194)
			elseif MyLevel == 2325 and MyLevel <= 2349 then
				LevelFarm = 28

				Name = "Chocolate Bar Battler [Lv. 2325]"
				QuestName = "ChocQuest1"

				LevelQuest = 2
				NameMon = "Chocolate Bar Battler"

				CFrameMon = CFrame.new(231, 23, -12194)
				VectorMon = CFrame.new(231, 23, -12194)

				CFrameQuest = CFrame.new(231, 23, -12194)
				VectorQuest = Vector3.new(231, 23, -12194)
			elseif MyLevel == 2350 and MyLevel <= 2374 then
				LevelFarm = 29

				Name = "Sweet Thief [Lv. 2350]"
				QuestName = "ChocQuest2"

				LevelQuest = 1
				NameMon = "Sweet Thief"

				CFrameMon = CFrame.new(71, 77, -12632)
				VectorMon = CFrame.new(71, 77, -12632)

				CFrameQuest = CFrame.new(151, 23, -12774)
				VectorQuest = Vector3.new(151, 23, -12774)
			elseif MyLevel >= 2375 and MyLevel <= 2399 then
				LevelFarm = 30

				Name = "Candy Rebel [Lv. 2375]"
				QuestName = "ChocQuest2"

				LevelQuest = 2
				NameMon = "Candy Rebel"

				CFrameMon = CFrame.new(134, 77, -12882)
				VectorMon = CFrame.new(134, 77, -12882)

				CFrameQuest = CFrame.new(151, 23, -12774)
				VectorQuest = Vector3.new(151, 23, -12774)
			elseif MyLevel >= 2400 and MyLevel <= 2424 then	
				LevelFarm = 31
				Name = "Candy Pirate [Lv. 2400]"
				QuestName = "CandyQuest1"

				LevelQuest = 1
				NameMon = "Candy Pirate"

				CFrameMon = CFrame.new(-1427.0634765625, 114.95060729980469, -14604.099609375)
				VectorMon = CFrame.new(-1427.0634765625, 114.95060729980469, -14604.099609375)

				CFrameQuest = CFrame.new(-1147.664794921875, 14.133050918579102, -14445.703125)
				VectorQuest = Vector3.new(-1147.664794921875, 14.133050918579102, -14445.703125)
			elseif MyLevel >= 2425 then
				LevelFarm = 32
				Name = "Snow Demon [Lv. 2425]"
				QuestName = "CandyQuest1"

				LevelQuest = 2
				NameMon = "Snow Demon"

				CFrameMon = CFrame.new(-935.097900390625, 37.345218658447266, -14556.6083984375)
				VectorMon = CFrame.new(-935.097900390625, 37.345218658447266, -14556.6083984375)

				CFrameQuest = CFrame.new(-1147.664794921875, 14.133050918579102, -14445.703125)
				VectorQuest = Vector3.new(-1147.664794921875, 14.133050918579102, -14445.703125)
			end
		end
	end

	function CheckOldQuest(LevelFarm)
		if World1 then
			if LevelFarm == 1 then -- Bandit
				Name = "Bandit [Lv. 5]"
				QuestName = "BanditQuest1"

				LevelQuest = 1
				NameMon = "Bandit"

				CFrameMon = CFrame.new(1145, 17, 1634)
				VectorMon = Vector3.new(1145, 17, 1634)

				CFrameQuest = CFrame.new(1060, 17, 1547)
				VectorQuest = Vector3.new(1060, 17, 1547)
			elseif LevelFarm == 2 then -- Monkey
				Name = "Monkey [Lv. 14]"
				QuestName = "JungleQuest"

				LevelQuest = 1
				NameMon = "Monkey"

				CFrameMon = CFrame.new(-1496, 39, 35)
				VectorMon = Vector3.new(-1496, 39, 35)

				CFrameQuest = CFrame.new(-1602, 37, 152)
				VectorQuest = Vector3.new(-1602, 37, 152)
			elseif LevelFarm == 3 then -- Gorilla
				Name = "Gorilla [Lv. 20]"
				QuestName = "JungleQuest"

				LevelQuest = 2
				NameMon = "Gorilla"

				CFrameMon = CFrame.new(-1237, 6, -486)
				VectorMon = Vector3.new(-1237, 7, -486)

				CFrameQuest = CFrame.new(-1602, 37, 152)
				VectorQuest = Vector3.new(-1602, 37, 152)
			elseif LevelFarm == 4 then -- Pirate
				Name = "Pirate [Lv. 35]"
				QuestName = "BuggyQuest1"

				LevelQuest = 1
				NameMon = "Pirate"

				CFrameMon = CFrame.new(-1115, 14, 3938)
				VectorMon = Vector3.new(-1115, 14, 3938)

				CFrameQuest = CFrame.new(-1140, 5, 3828)
				VectorQuest = Vector3.new(-1140, 5, 3828)
			elseif LevelFarm == 5 then -- Brute
				Name = "Brute [Lv. 45]"
				QuestName = "BuggyQuest1"

				LevelQuest = 2
				NameMon = "Brute"

				CFrameMon = CFrame.new(-1145, 15, 4350)
				VectorMon = Vector3.new(-1146, 15, 4350)

				CFrameQuest = CFrame.new(-1140, 5, 3828)
				VectorQuest = Vector3.new(-1140, 5, 3828)
			elseif LevelFarm == 6 then -- Desert Bandit
				Name = "Desert Bandit [Lv. 60]"
				QuestName = "DesertQuest"

				LevelQuest = 1
				NameMon = "Desert Bandit"

				CFrameMon = CFrame.new(932, 7, 4484)
				VectorMon = Vector3.new(932, 7, 4484)

				CFrameQuest = CFrame.new(897, 7, 4388)
				VectorQuest = Vector3.new(897, 7, 4388)
			elseif LevelFarm == 7 then -- Desert Officre
				Name = "Desert Officer [Lv. 70]"
				QuestName = "DesertQuest"

				LevelQuest = 2
				NameMon = "Desert Officer"

				CFrameMon = CFrame.new(1572, 10, 4373)
				VectorMon = Vector3.new(1572, 10, 4373)

				CFrameQuest = CFrame.new(897, 7, 4388)
				VectorQuest = Vector3.new(897, 7, 4388)
			elseif LevelFarm == 8 then -- Snow Bandits
				Name = "Snow Bandit [Lv. 90]"
				QuestName = "SnowQuest"

				LevelQuest = 1
				NameMon = "Snow Bandits"

				CFrameMon = CFrame.new(1289, 150, -1442)
				VectorMon = Vector3.new(1289, 106, -1442)

				CFrameQuest = CFrame.new(1386, 87, -1297)
				VectorQuest = Vector3.new(1386, 87, -1297)
			elseif LevelFarm == 9 then -- Snowman
				Name = "Snowman [Lv. 100]"
				QuestName = "SnowQuest"

				LevelQuest = 2
				NameMon = "Snowman"

				CFrameMon = CFrame.new(1289, 150, -1442)
				VectorMon = Vector3.new(1289, 106, -1442)

				CFrameQuest = CFrame.new(1386, 87, -1297)
				VectorQuest = Vector3.new(1386, 87, -1297)
			elseif LevelFarm == 10 then -- Chief Petty Officer
				Name = "Chief Petty Officer [Lv. 120]"
				QuestName = "MarineQuest2"

				LevelQuest = 1
				NameMon = "Chief Petty Officer"

				CFrameMon = CFrame.new(-4855, 23, 4308)
				VectorMon = Vector3.new(-4855, 23, 4308)

				CFrameQuest = CFrame.new(-5036, 29, 4325)
				VectorQuest = Vector3.new(-5036, 29, 4325)
			elseif LevelFarm == 11 then -- Sky Bandit
				Name = "Sky Bandit [Lv. 150]"
				QuestName = "SkyQuest"

				LevelQuest = 1
				NameMon = "Sky Bandit"

				CFrameMon = CFrame.new(-4981, 278, -2830)
				VectorMon = Vector3.new(-4981, 278, -2830)

				CFrameQuest = CFrame.new(-4842, 718, -2623)
				VectorQuest = Vector3.new(-4842, 718, -2623)
			elseif LevelFarm == 12 then -- Dark Master
				Name = "Dark Master [Lv. 175]"
				QuestName = "SkyQuest"

				LevelQuest = 2
				NameMon = "Dark Master"

				CFrameMon = CFrame.new(-5250, 389, -2272)
				VectorMon = Vector3.new(-5250, 389, -2272)

				CFrameQuest = CFrame.new(-4842, 718, -2623)
				VectorQuest = Vector3.new(-4842, 718, -2623)
			elseif LevelFarm == 13 then -- Dark Master
				Name = "Prisoner [Lv. 190]"
				QuestName = "PrisonerQuest"

				LevelQuest = 1
				NameMon = "Prisoner"

				CFrameMon = CFrame.new(5411, 96, 690)
				VectorMon = Vector3.new(5411, 96, 690)

				CFrameQuest = CFrame.new(5308, 2, 474)
				VectorQuest = Vector3.new(5308, 2, 474)
			elseif LevelFarm == 14 then -- Dark Master
				Name = "Dangerous Prisoner [Lv. 210]"
				QuestName = "PrisonerQuest"

				LevelQuest = 2
				NameMon = "Dangerous Prisoner"

				CFrameMon = CFrame.new(5411, 96, 690)
				VectorMon = Vector3.new(5411, 96, 690)

				CFrameQuest = CFrame.new(5308, 2, 474)
				VectorQuest = Vector3.new(5308, 2, 474)
			elseif LevelFarm == 15 then -- Toga Warrior
				Name = "Toga Warrior [Lv. 250]"
				QuestName = "ColosseumQuest"

				LevelQuest = 1
				NameMon = "Toga Warrior"

				CFrameMon = CFrame.new(-1770, 8, -2777)
				VectorMon = Vector3.new(-1770, 8, -2777)

				CFrameQuest = CFrame.new(-1576, 8, -2985)
				VectorQuest = Vector3.new(-1576, 8, -2985)
			elseif LevelFarm == 16 then -- Military Soldier
				Name = "Military Soldier [Lv. 300]"
				QuestName = "MagmaQuest"

				LevelQuest = 1
				NameMon = "Military Soldier"

				CFrameMon = CFrame.new(-5408, 11, 8447)
				VectorMon = Vector3.new(-5408, 11, 8447)

				CFrameQuest = CFrame.new(-5316, 12, 8517)
				VectorQuest = Vector3.new(-5316, 12, 8517)
			elseif LevelFarm == 17 then -- Military Spy
				Name = "Military Spy [Lv. 325]"
				QuestName = "MagmaQuest"

				LevelQuest = 2
				NameMon = "Military Spy"

				CFrameMon = CFrame.new(-5815, 84, 8820)
				VectorMon = Vector3.new(-5815, 84, 8820)

				CFrameQuest = CFrame.new(-5316, 12, 8517)
				VectorQuest = Vector3.new(-5316, 12, 8517)
			elseif LevelFarm == 18 then -- Fishman Warrior
				Name = "Fishman Warrior [Lv. 375]"
				QuestName = "FishmanQuest"

				LevelQuest = 1
				NameMon = "Fishman Warrior"

				CFrameMon = CFrame.new(60859, 19, 1501)
				VectorMon = Vector3.new(60859, 19, 1501)

				CFrameQuest = CFrame.new(61123, 19, 1569)
				VectorQuest = Vector3.new(61123, 19, 1569)
			elseif LevelFarm == 19 then -- Fishman Commando
				Name = "Fishman Commando [Lv. 400]"
				QuestName = "FishmanQuest"

				LevelQuest = 2
				NameMon = "Fishman Commando"

				CFrameMon = CFrame.new(61891, 19, 1470)
				VectorMon = Vector3.new(61891, 19, 1470)

				CFrameQuest = CFrame.new(61123, 19, 1569)
				VectorQuest = Vector3.new(61123, 19, 1569)
			elseif LevelFarm == 20 then -- God's Guards
				Name = "God's Guard [Lv. 450]"
				QuestName = "SkyExp1Quest"

				LevelQuest = 1
				NameMon = "God's Guards"

				CFrameMon = CFrame.new(-4698, 845, -1912)
				VectorMon = Vector3.new(-4698, 845, -1912)

				CFrameQuest = CFrame.new(-4722, 845, -1954)
				VectorQuest = Vector3.new(-4722, 846, -1954)
			elseif LevelFarm == 21 then -- Shandas
				Name = "Shanda [Lv. 475]"
				QuestName = "SkyExp1Quest"

				LevelQuest = 2
				NameMon = "Shandas"

				CFrameMon = CFrame.new(-7685, 5567, -502)
				VectorMon = Vector3.new(-7685, 5567, -502)

				CFrameQuest = CFrame.new(-7862, 5546, -380)
				VectorQuest = Vector3.new(-7862, 5546, -380)
			elseif LevelFarm == 22 then -- Royal Squad
				Name = "Royal Squad [Lv. 525]"
				QuestName = "SkyExp2Quest"

				LevelQuest = 1
				NameMon = "Royal Squad"

				CFrameMon = CFrame.new(-7670, 5607, -1460)
				VectorMon = Vector3.new(-7670, 5607, -1460)

				CFrameQuest = CFrame.new(-7904, 5636, -1412)
				VectorQuest = Vector3.new(-7904, 5636, -1412)
			elseif LevelFarm == 23 then -- Royal Soldier
				Name = "Royal Soldier [Lv. 550]"
				QuestName = "SkyExp2Quest"

				LevelQuest = 2
				NameMon = "Royal Soldier"

				CFrameMon = CFrame.new(-7828, 5607, -1744)
				VectorMon = Vector3.new(-7828, 5607, -1744)

				CFrameQuest = CFrame.new(-7904, 5636, -1412)
				VectorQuest = Vector3.new(-7904, 5636, -1412)
			elseif LevelFarm == 24 then -- Galley Pirate
				Name = "Galley Pirate [Lv. 625]"
				QuestName = "FountainQuest"

				LevelQuest = 1
				NameMon = "Galley Pirate"

				CFrameMon = CFrame.new(5589, 45, 3996)
				VectorMon = Vector3.new(5589, 45, 3996)

				CFrameQuest = CFrame.new(5256, 39, 4050)
				VectorQuest = Vector3.new(5256, 39, 4050)
			elseif LevelFarm == 25 then -- Galley Captain
				Name = "Galley Captain [Lv. 650]"
				QuestName = "FountainQuest"

				LevelQuest = 2
				NameMon = "Galley Captain"

				CFrameMon = CFrame.new(5649, 39, 4936)
				VectorMon = Vector3.new(5649, 39, 4936)

				CFrameQuest = CFrame.new(5256, 39, 4050)
				VectorQuest = Vector3.new(5256, 39, 4050)
			end
		end
		if World2 then
			if LevelFarm == 1 then -- Raider [Lv. 700]
				Name = "Raider [Lv. 700]"
				QuestName = "Area1Quest"

				LevelQuest = 1
				NameMon = "Raider"

				CFrameQuest = CFrame.new(-425, 73, 1837)
				VectorQuest = Vector3.new(-425, 73, 1837)

				CFrameMon = CFrame.new(-746, 39, 2390)
				VectorMon = Vector3.new(-746, 39, 2389)
			elseif LevelFarm == 2 then -- Mercenary [Lv. 725]
				Name = "Mercenary [Lv. 725]"
				QuestName = "Area1Quest"

				LevelQuest = 2
				NameMon = "Mercenary"

				CFrameQuest = CFrame.new(-425, 73, 1837)
				VectorQuest = Vector3.new(-425, 73, 1837)

				CFrameMon = CFrame.new(-874, 141, 1312)
				VectorMon = Vector3.new(-874, 141, 1312)
			elseif LevelFarm == 3 then -- Swan Pirate [Lv. 775]
				Name = "Swan Pirate [Lv. 775]"
				QuestName = "Area2Quest"

				LevelQuest = 1
				NameMon = "Swan Pirate"

				CFrameQuest = CFrame.new(634, 73, 918)
				VectorQuest = Vector3.new(634, 73, 918)

				CFrameMon = CFrame.new(878, 122, 1235)
				VectorMon = Vector3.new(878, 122, 1235)
			elseif LevelFarm == 4 then -- Factory Staff [Lv. 800]
				Name = "Factory Staff [Lv. 800]"
				QuestName = "Area2Quest"

				LevelQuest = 2
				NameMon = "Factory Staff"

				CFrameQuest = CFrame.new(634, 73, 918)
				VectorQuest = Vector3.new(634, 73, 918)

				CFrameMon = CFrame.new(295, 73, -56)
				VectorMon = Vector3.new(295, 73, -56)
			elseif LevelFarm == 5 then -- Marine Lieutenant [Lv. 875]
				Name = "Marine Lieutenant [Lv. 875]"
				QuestName = "MarineQuest3"

				LevelQuest = 1
				NameMon = "Marine Lieutenant"

				CFrameMon = CFrame.new(-2806, 73, -3038)
				VectorMon = Vector3.new(-2806, 73, -3038)

				CFrameQuest = CFrame.new(-2443, 73, -3219)
				VectorQuest = Vector3.new(-2443, 73, -3219)
			elseif LevelFarm == 6 then -- Marine Captain [Lv. 900]
				Name = "Marine Captain [Lv. 900]"
				QuestName = "MarineQuest3"

				LevelQuest = 2
				NameMon = "Marine Captain"

				CFrameMon = CFrame.new(-1869, 73, -3320)
				VectorMon = Vector3.new(-1869, 73, -3320)

				CFrameQuest = CFrame.new(-2443, 73, -3219)
				VectorQuest = Vector3.new(-2443, 73, -3219)
			elseif LevelFarm == 7 then -- Zombie [Lv. 950]
				Name = "Zombie [Lv. 950]"
				QuestName = "ZombieQuest"

				LevelQuest = 1
				NameMon = "Zombie"

				CFrameMon = CFrame.new(-5736, 126, -728)
				VectorMon = Vector3.new(-5736, 126, -728)

				CFrameQuest = CFrame.new(-5494, 49, -795)
				VectorQuest = Vector3.new(-5494, 49, -794)
			elseif LevelFarm == 8 then -- Vampire [Lv. 975]
				Name = "Vampire [Lv. 975]"
				QuestName = "ZombieQuest"

				LevelQuest = 2
				NameMon = "Vampire"

				CFrameMon = CFrame.new(-6033, 7, -1317)
				VectorMon = Vector3.new(-6033, 7, -1317)

				CFrameQuest = CFrame.new(-5494, 49, -795)
				VectorQuest = Vector3.new(-5494, 49, -795)
			elseif LevelFarm == 9 then -- Snow Trooper [Lv. 1000] **
				Name = "Snow Trooper [Lv. 1000]"
				QuestName = "SnowMountainQuest"

				LevelQuest = 1
				NameMon = "Snow Trooper"

				CFrameMon = CFrame.new(478, 402, -5362)
				VectorMon = Vector3.new(478, 402, -5362)

				CFrameQuest = CFrame.new(605, 402, -5371)
				VectorQuest = Vector3.new(605, 402, -5371)
			elseif LevelFarm == 10 then -- Winter Warrior [Lv. 1050]
				Name = "Winter Warrior [Lv. 1050]"
				QuestName = "SnowMountainQuest"

				LevelQuest = 2
				NameMon = "Winter Warrior"

				CFrameMon = CFrame.new(1157, 430, -5188)
				VectorMon = Vector3.new(1157, 430, -5188)

				CFrameQuest = CFrame.new(605, 402, -5371)
				VectorQuest = Vector3.new(605, 402, -5371)
			elseif LevelFarm == 11 then -- Lab Subordinate [Lv. 1100]
				Name = "Lab Subordinate [Lv. 1100]"
				QuestName = "IceSideQuest"

				LevelQuest = 1
				NameMon = "Lab Subordinate"

				CFrameMon = CFrame.new(-5782, 42, -4484)
				VectorMon = Vector3.new(-5782, 42, -4484)

				CFrameQuest = CFrame.new(-6060, 16, -4905)
				VectorQuest = Vector3.new(-6060, 16, -4905)
			elseif LevelFarm == 12 then -- Horned Warrior [Lv. 1125]
				Name = "Horned Warrior [Lv. 1125]"
				QuestName = "IceSideQuest"

				LevelQuest = 2
				NameMon = "Horned Warrior"

				CFrameMon = CFrame.new(-6406, 24, -5805)
				VectorMon = Vector3.new(-6406, 24, -5805)

				CFrameQuest = CFrame.new(-6060, 16, -4905)
				VectorQuest = Vector3.new(-6060, 16, -4905)
			elseif LevelFarm == 13 then -- Magma Ninja [Lv. 1175]
				Name = "Magma Ninja [Lv. 1175]"
				QuestName = "FireSideQuest"
				LevelQuest = 1
				NameMon = "Magma Ninja"

				CFrameMon = CFrame.new(-5428, 78, -5959)
				VectorMon = Vector3.new(-5428, 78, -5959)

				CFrameQuest = CFrame.new(-5430, 16, -5295)
				VectorQuest = Vector3.new(-5430, 16, -5296)
			elseif LevelFarm == 14 then -- Lava Pirate [Lv. 1200]
				Name = "Lava Pirate [Lv. 1200]"
				QuestName = "FireSideQuest"

				LevelQuest = 2
				NameMon = "Lava Pirate"

				CFrameMon = CFrame.new(-5270, 42, -4800)
				VectorMon = Vector3.new(-5270, 42, -4800)

				CFrameQuest = CFrame.new(-5430, 16, -5295)
				VectorQuest = Vector3.new(-5430, 16, -5296)
			elseif LevelFarm == 15 then -- Ship Deckhand [Lv. 1250]
				Name = "Ship Deckhand [Lv. 1250]"
				QuestName = "ShipQuest1"

				LevelQuest = 1
				NameMon = "Ship Deckhand"

				CFrameMon = CFrame.new(1198, 126, 33031)
				VectorMon = Vector3.new(1198, 126, 33031)

				CFrameQuest = CFrame.new(1038, 125, 32913)
				VectorQuest = Vector3.new(1038, 125, 32913)
			elseif LevelFarm == 16 then -- Ship Engineer [Lv. 1275]
				Name = "Ship Engineer [Lv. 1275]"
				QuestName = "ShipQuest1"

				LevelQuest = 2
				NameMon = "Ship Engineer"

				CFrameMon = CFrame.new(918, 44, 32787)
				VectorMon = Vector3.new(918, 44, 32787)

				CFrameQuest = CFrame.new(1038, 125, 32913)
				VectorQuest = Vector3.new(1038, 125, 32913)
			elseif LevelFarm == 17 then -- Ship Steward [Lv. 1300]
				Name = "Ship Steward [Lv. 1300]"
				QuestName = "ShipQuest2"

				LevelQuest = 1
				NameMon = "Ship Steward"

				CFrameMon = CFrame.new(915, 130, 33419)
				VectorMon = Vector3.new(915, 130, 33419)

				CFrameQuest = CFrame.new(969, 125, 33245)
				VectorQuest = Vector3.new(969, 125, 33245)
			elseif LevelFarm == 18 then -- Ship Officer [Lv. 1325]
				Name = "Ship Officer [Lv. 1325]"
				QuestName = "ShipQuest2"

				LevelQuest = 2
				NameMon = "Ship Officer"

				CFrameMon = CFrame.new(916, 181, 33335)
				VectorMon = Vector3.new(916, 181, 33335)

				CFrameQuest = CFrame.new(969, 125, 33245)
				VectorQuest = Vector3.new(969, 125, 33245)
			elseif LevelFarm == 19 then -- Arctic Warrior [Lv. 1350]
				Name = "Arctic Warrior [Lv. 1350]"
				QuestName = "FrostQuest"

				LevelQuest = 1
				NameMon = "Arctic Warrior"

				CFrameMon = CFrame.new(6038, 29, -6231)
				VectorMon = Vector3.new(6038, 29, -6231)

				VectorQuest = Vector3.new(5669, 28, -6482)
				CFrameQuest = CFrame.new(5669, 28, -6482)
			elseif LevelFarm == 20 then -- Snow Lurker [Lv. 1375]
				Name = "Snow Lurker [Lv. 1375]"
				QuestName = "FrostQuest"

				LevelQuest = 2
				NameMon = "Snow Lurker"

				CFrameMon = CFrame.new(5560, 42, -6826)
				VectorMon = Vector3.new(5560, 42, -6826)

				VectorQuest = Vector3.new(5669, 28, -6482)
				CFrameQuest = CFrame.new(5669, 28, -6482)
			elseif LevelFarm == 21 then -- Sea Soldier [Lv. 1425]
				Name = "Sea Soldier [Lv. 1425]"
				QuestName = "ForgottenQuest"

				LevelQuest = 1
				NameMon = "Sea Soldier"

				CFrameMon = CFrame.new(-3022, 16, -9722)
				VectorMon = Vector3.new(-3022, 16, -9722)

				CFrameQuest = CFrame.new(-3054, 237, -10148)
				VectorQuest = Vector3.new(-3054, 237, -10148)
			elseif LevelFarm == 22 then -- Water Fighter [Lv. 1450]
				Name = "Water Fighter [Lv. 1450]"
				QuestName = "ForgottenQuest"

				LevelQuest = 2
				NameMon = "Water Fighter"

				CFrameMon = CFrame.new(-3385, 239, -10542)
				VectorMon = Vector3.new(-3385, 239, -10542)

				CFrameQuest = CFrame.new(-3054, 237, -10148)
				VectorQuest = Vector3.new(-3054, 237, -10148)
			end
		end
		if World3 then
			if LevelFarm == 1 then
				Name = "Pirate Millionaire [Lv. 1500]"
				QuestName = "PiratePortQuest"

				LevelQuest = 1
				NameMon = "Pirate"

				CFrameMon = CFrame.new(-373, 75, 5550)
				VectorMon = Vector3.new(-373, 75, 5550)

				CFrameQuest = CFrame.new(-288, 44, 5576)
				VectorQuest = Vector3.new(-288, 44, 5576)
			elseif LevelFarm == 2 then
				Name = "Pistol Billionaire [Lv. 1525]"
				QuestName = "PiratePortQuest"

				LevelQuest = 2
				NameMon = "Pistol"

				CFrameMon = CFrame.new(-469, 74, 5904)
				VectorMon = Vector3.new(-469, 74, 5904)

				CFrameQuest = CFrame.new(-288, 44, 5576)
				VectorQuest = Vector3.new(-288, 44, 5576)
			elseif LevelFarm == 3 then
				Name = "Dragon Crew Warrior [Lv. 1575]"
				QuestName = "AmazonQuest"

				LevelQuest = 1
				NameMon = "Warrior"

				CFrameMon = CFrame.new(6339, 52, -1213)
				VectorMon = Vector3.new(6338, 52, -1213)

				CFrameQuest = CFrame.new(5835, 52, -1105)
				VectorQuest = Vector3.new(5835, 52, -1105)
			elseif LevelFarm == 4 then
				Name = "Dragon Crew Archer [Lv. 1600]"
				QuestName = "AmazonQuest"

				LevelQuest = 2
				NameMon = "Archer"

				CFrameMon = CFrame.new(6594, 383, 139)
				VectorMon = Vector3.new(6594, 383, 139)

				CFrameQuest = CFrame.new(5835, 52, -1105)
				VectorQuest = Vector3.new(5835, 52, -1105)
			elseif LevelFarm == 5 then
				Name = "Female Islander [Lv. 1625]"
				QuestName = "AmazonQuest2"

				LevelQuest = 1
				NameMon = "Female"

				CFrameMon = CFrame.new(5308, 819, 1047)
				VectorMon = Vector3.new(5308, 819, 1047)

				CFrameQuest = CFrame.new(5443, 602, 751)
				VectorQuest = Vector3.new(5443, 602, 751)
			elseif LevelFarm == 6 then
				Name = "Giant Islander [Lv. 1650]"
				QuestName = "AmazonQuest2"

				LevelQuest = 2
				NameMon = "Giant Islanders"

				CFrameMon = CFrame.new(4951, 602, -68)
				VectorMon = Vector3.new(4951, 602, -68)

				CFrameQuest = CFrame.new(5443, 602, 751)
				VectorQuest = Vector3.new(5443, 602, 751)
			elseif LevelFarm == 7 then
				Name = "Marine Commodore [Lv. 1700]"
				QuestName = "MarineTreeIsland"

				LevelQuest = 1
				NameMon = "Marine Commodore"

				CFrameMon = CFrame.new(2447, 73, -7470)
				VectorMon = Vector3.new(2447, 73, -7470)

				CFrameQuest = CFrame.new(2180, 29, -6737)
				VectorQuest = Vector3.new(2180, 29, -6737)
			elseif LevelFarm == 8 then
				Name = "Marine Rear Admiral [Lv. 1725]"
				QuestName = "MarineTreeIsland"

				LevelQuest = 2
				NameMon = "Marine Rear Admiral"

				CFrameMon = CFrame.new(3671, 161, -6932)
				VectorMon = Vector3.new(3671, 161, -6932)

				CFrameQuest = CFrame.new(2180, 29, -6737)
				VectorQuest = Vector3.new(2180, 29, -6737)
			elseif LevelFarm == 9 then
				Name = "Fishman Raider [Lv. 1775]"
				QuestName = "DeepForestIsland3"

				LevelQuest = 1
				NameMon = "Fishman Raider"

				CFrameMon = CFrame.new(-10560, 332, -8466)
				VectorMon = Vector3.new(-10560, 332, -8466)

				CFrameQuest = CFrame.new(-10584, 332, -8758)
				VectorQuest = Vector3.new(-10584, 332, -8758)
			elseif LevelFarm == 10 then
				Name = "Fishman Captain [Lv. 1800]"
				QuestName = "DeepForestIsland3"

				LevelQuest = 2
				NameMon = "Fishman Captain"

				CFrameMon = CFrame.new(-10993, 332, -8940)
				VectorMon = Vector3.new(-10993, 332, -8940)

				CFrameQuest = CFrame.new(-10584, 332, -8758)
				VectorQuest = Vector3.new(-10584, 332, -8758)
			elseif LevelFarm == 11 then
				Name = "Forest Pirate [Lv. 1825]"
				QuestName = "DeepForestIsland"

				LevelQuest = 1
				NameMon = "Forest Pirate"

				CFrameMon = CFrame.new(-13479, 333, -7905)
				VectorMon = Vector3.new(-13479, 333, -7905)

				CFrameQuest = CFrame.new(-13232, 333, -7627)
				VectorQuest = Vector3.new(-13232, 333, -7627)
			elseif LevelFarm == 12 then
				Name = "Mythological Pirate [Lv. 1850]"
				QuestName = "DeepForestIsland"

				LevelQuest = 2
				NameMon = "Mythological Pirate"

				CFrameMon = CFrame.new(-13545, 470, -6917)
				VectorMon = Vector3.new(-13545, 470, -6917)

				CFrameQuest = CFrame.new(-13232, 333, -7627)
				VectorQuest = Vector3.new(-13232, 333, -7627)
			elseif LevelFarm == 13 then
				Name = "Jungle Pirate [Lv. 1900]"
				QuestName = "DeepForestIsland2"

				LevelQuest = 1
				NameMon = "Jungle Pirate"

				CFrameMon = CFrame.new(-12107, 332, -10549)
				VectorMon = Vector3.new(-12106, 332, -10549)

				CFrameQuest = CFrame.new(-12684, 391, -9902)
				VectorQuest = Vector3.new(-12684, 391, -9902)
			elseif LevelFarm == 14 then
				Name = "Musketeer Pirate [Lv. 1925]"
				QuestName = "DeepForestIsland2"

				LevelQuest = 2
				NameMon = "Musketeer Pirate"

				CFrameMon = CFrame.new(-13286, 392, -9769)
				VectorMon = Vector3.new(-13286, 392, -9768)

				CFrameQuest = CFrame.new(-12684, 391, -9902)
				VectorQuest = Vector3.new(-12684, 391, -9902)
			elseif LevelFarm == 15 then
				Name = "Reborn Skeleton [Lv. 1975]"
				QuestName = "HauntedQuest1"

				LevelQuest = 1
				NameMon = "Reborn Skeleton"

				CFrameMon = CFrame.new(-8760, 142, 6039)
				VectorMon = Vector3.new(-8760, 142, 6039)

				CFrameQuest = CFrame.new(-9482, 142, 5567)
				VectorQuest = Vector3.new(-9482, 142, 5567)
			elseif LevelFarm == 16 then
				Name = "Living Zombie [Lv. 2000]"
				QuestName = "HauntedQuest1"

				LevelQuest = 2
				NameMon = "Living Zombie"

				CFrameMon = CFrame.new(-10144, 140, 5932)
				VectorMon = Vector3.new(-10144, 140, 5932)

				CFrameQuest = CFrame.new(-9482, 142, 5567)
				VectorQuest = Vector3.new(-9482, 142, 5567)
			elseif LevelFarm == 17 then
				Name = "Demonic Soul [Lv. 2025]"
				QuestName = "HauntedQuest2"

				LevelQuest = 1
				NameMon = "Demonic Soul"

				CFrameMon = CFrame.new(-9507, 172, 6158)
				VectorMon = Vector3.new(-9506, 172, 6158)

				CFrameQuest = CFrame.new(-9513, 172, 6079)
				VectorQuest = Vector3.new(-9513, 172, 6079)
			elseif LevelFarm == 18 then
				Name = "Posessed Mummy [Lv. 2050]"
				QuestName = "HauntedQuest2"

				LevelQuest = 2
				NameMon = "Posessed Mummy"

				CFrameMon = CFrame.new(-9577, 6, 6223)
				VectorMon = Vector3.new(-9577, 6, 6223)

				CFrameQuest = CFrame.new(-9513, 172, 6079)
				VectorQuest = Vector3.new(-9513, 172, 6079)

			elseif LevelFarm == 19 then
				Name = "Peanut Scout [Lv. 2075]"
				QuestName = "NutsIslandQuest"

				LevelQuest = 1
				NameMon = "Peanut Scout"

				CFrameMon = CFrame.new(-2124, 123, -10435)
				VectorMon = Vector3.new(-2124, 123, -10435)

				CFrameQuest = CFrame.new(-2104, 38, -10192)
				VectorQuest = Vector3.new(-2104, 38, -10192)
			elseif LevelFarm == 20 then
				Name = "Peanut President [Lv. 2100]"
				QuestName = "NutsIslandQuest"

				LevelQuest = 2
				NameMon = "Peanut President"

				CFrameMon = CFrame.new(-2124, 123, -10435)
				VectorMon = Vector3.new(-2124, 123, -10435)

				CFrameQuest = CFrame.new(-2104, 38, -10192)
				VectorQuest = Vector3.new(-2104, 38, -10192)
			elseif LevelFarm == 21 then
				Name = "Ice Cream Chef [Lv. 2125]"
				QuestName = "IceCreamIslandQuest"

				LevelQuest = 1
				NameMon = "Ice Cream Chef"

				CFrameMon = CFrame.new(-641, 127, -11062)
				VectorMon = Vector3.new(-641, 127, -11062)

				CFrameQuest = CFrame.new(-822, 66, -10965)
				VectorQuest = Vector3.new(-822, 66, -10965)
			elseif LevelFarm == 22 then
				Name = "Ice Cream Commander [Lv. 2150]"
				QuestName = "IceCreamIslandQuest"

				LevelQuest = 2
				NameMon = "Ice Cream Commander"

				CFrameMon = CFrame.new(-641, 127, -11062)
				VectorMon = Vector3.new(-641, 127, -11062)

				CFrameQuest = CFrame.new(-822, 66, -10965)
				VectorQuest = Vector3.new(-822, 66, -10965)
				---------------------------------------------------------------
			elseif LevelFarm == 23 then
				Name = "Cookie Crafter [Lv. 2200]"
				QuestName = "CakeQuest1"

				LevelQuest = 1
				NameMon = "Cookie Crafter"

				CFrameMon = CFrame.new(-2365, 38, -12099)
				VectorMon = Vector3.new(-2365, 38, -12099)

				CFrameQuest = CFrame.new(-2020, 38, -12025)
				VectorQuest = Vector3.new(-2020, 38, -12025)
			elseif LevelFarm == 24 then
				Name = "Cake Guard [Lv. 2225]"
				QuestName = "CakeQuest1"

				LevelQuest = 2
				NameMon = "Cake Guard"

				CFrameMon = CFrame.new(-1651, 38, -12308)
				VectorMon = Vector3.new(-1651, 38, -12308)

				CFrameQuest = CFrame.new(-2020, 38, -12025)
				VectorQuest = Vector3.new(-2020, 38, -12025)
			elseif LevelFarm == 25 then
				Name = "Baking Staff [Lv. 2250]"
				QuestName = "CakeQuest2"

				LevelQuest = 1
				NameMon = "Baking Staff"

				CFrameMon = CFrame.new(-1870, 38, -12938)
				VectorMon = Vector3.new(-1870, 38, -12938)

				CFrameQuest = CFrame.new(-1926, 38, -12850)
				VectorQuest = Vector3.new(-1926, 38, -12850)
			elseif LevelFarm == 26 then
				Name = "Head Baker [Lv. 2275]"
				QuestName = "CakeQuest2"

				LevelQuest = 2
				NameMon = "Head Baker"

				CFrameMon = CFrame.new(-1926, 88, -12850)
				VectorMon = CFrame.new(-1870, 38, -12938)

				CFrameQuest = CFrame.new(-1926, 38, -12850)
				VectorQuest = Vector3.new(-1926, 38, -12850)
				---------------------------------------------------------------
			elseif LevelFarm == 27 then
				Name = "Cocoa Warrior [Lv. 2300]"
				QuestName = "ChocQuest1"

				LevelQuest = 1
				NameMon = "Cocoa Warrior"

				CFrameMon = CFrame.new(231, 23, -12194)
				VectorMon = CFrame.new(231, 23, -12194)

				CFrameQuest = CFrame.new(231, 23, -12194)
				VectorQuest = Vector3.new(231, 23, -12194)
			elseif LevelFarm == 28 then				
				Name = "Chocolate Bar Battler [Lv. 2325]"
				QuestName = "ChocQuest1"

				LevelQuest = 2
				NameMon = "Chocolate Bar Battler"

				CFrameMon = CFrame.new(231, 23, -12194)
				VectorMon = CFrame.new(231, 23, -12194)

				CFrameQuest = CFrame.new(231, 23, -12194)
				VectorQuest = Vector3.new(231, 23, -12194)
			elseif LevelFarm == 29 then				
				Name = "Sweet Thief [Lv. 2350]"
				QuestName = "ChocQuest2"

				LevelQuest = 1
				NameMon = "Sweet Thief"

				CFrameMon = CFrame.new(71, 77, -12632)
				VectorMon = CFrame.new(71, 77, -12632)

				CFrameQuest = CFrame.new(151, 23, -12774)
				VectorQuest = Vector3.new(151, 23, -12774)
			elseif LevelFarm == 30 then				
				Name = "Candy Rebel [Lv. 2375]"
				QuestName = "ChocQuest2"

				LevelQuest = 2
				NameMon = "Candy Rebel"

				CFrameMon = CFrame.new(134, 77, -12882)
				VectorMon = CFrame.new(134, 77, -12882)

				CFrameQuest = CFrame.new(151, 23, -12774)
				VectorQuest = Vector3.new(151, 23, -12774)
			elseif LevelFarm == 31 then
					Name = "Candy Pirate [Lv. 2400]"
				QuestName = "CandyQuest1"

				LevelQuest = 1
				NameMon = "Candy Pirate"

				CFrameMon = CFrame.new(-1427.0634765625, 114.95060729980469, -14604.099609375)
				VectorMon = CFrame.new(-1427.0634765625, 114.95060729980469, -14604.099609375)

				CFrameQuest = CFrame.new(-1147.664794921875, 14.133050918579102, -14445.703125)
				VectorQuest = Vector3.new(-1147.664794921875, 14.133050918579102, -14445.703125)
			
			elseif LevelFarm == 32 then
				Name = "Snow Demon [Lv. 2425]"
				QuestName = "CandyQuest1"

				LevelQuest = 2
				NameMon = "Snow Demon"

				CFrameMon = CFrame.new(-935.097900390625, 37.345218658447266, -14556.6083984375)
				VectorMon = CFrame.new(-935.097900390625, 37.345218658447266, -14556.6083984375)

				CFrameQuest = CFrame.new(-1147.664794921875, 14.133050918579102, -14445.703125)
				VectorQuest = Vector3.new(-1147.664794921875, 14.133050918579102, -14445.703125)

			end
		end
	end

	function CheckBossQuest()
		if _G.Settings.Boss["Select Boss"] == "Saber Expert [Lv. 200] [Boss]" then
			MsBoss = "Saber Expert [Lv. 200] [Boss]"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif _G.Settings.Boss["Select Boss"] == "The Saw [Lv. 100] [Boss]" then
			MsBoss = "The Saw [Lv. 100] [Boss]"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif _G.Settings.Boss["Select Boss"] == "Greybeard [Lv. 750] [Raid Boss]" then
			MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif _G.Settings.Boss["Select Boss"] == "The Gorilla King [Lv. 25] [Boss]" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]"
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif _G.Settings.Boss["Select Boss"] == "Bobby [Lv. 55] [Boss]" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif _G.Settings.Boss["Select Boss"] == "Yeti [Lv. 110] [Boss]" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif _G.Settings.Boss["Select Boss"] == "Mob Leader [Lv. 120] [Boss]" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif _G.Settings.Boss["Select Boss"] == "Vice Admiral [Lv. 130] [Boss]" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif _G.Settings.Boss["Select Boss"] == "Warden [Lv. 175] [Boss]" then
			MsBoss = "Warden [Lv. 175] [Boss]"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Boss["Select Boss"] == "Chief Warden [Lv. 200] [Boss]" then
			MsBoss = "Chief Warden [Lv. 200] [Boss]"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Boss["Select Boss"] == "Swan [Lv. 225] [Boss]" then
			MsBoss = "Swan [Lv. 225] [Boss]"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Boss["Select Boss"] == "Magma Admiral [Lv. 350] [Boss]" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif _G.Settings.Boss["Select Boss"] == "Fishman Lord [Lv. 425] [Boss]" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif _G.Settings.Boss["Select Boss"] == "Wysper [Lv. 500] [Boss]" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif _G.Settings.Boss["Select Boss"] == "Thunder God [Lv. 575] [Boss]" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif _G.Settings.Boss["Select Boss"] == "Cyborg [Lv. 675] [Boss]" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			-- New World
		elseif _G.Settings.Boss["Select Boss"] == "Diamond [Lv. 750] [Boss]" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif _G.Settings.Boss["Select Boss"] == "Jeremy [Lv. 850] [Boss]" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif _G.Settings.Boss["Select Boss"] == "Fajita [Lv. 925] [Boss]" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif _G.Settings.Boss["Select Boss"] == "Don Swan [Lv. 1000] [Boss]" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif _G.Settings.Boss["Select Boss"] == "Smoke Admiral [Lv. 1150] [Boss]" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif _G.Settings.Boss["Select Boss"] == "Cursed Captain [Lv. 1325] [Raid Boss]" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif _G.Settings.Boss["Select Boss"] == "Darkbeard [Lv. 1000] [Raid Boss]" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif _G.Settings.Boss["Select Boss"] == "Order [Lv. 1250] [Raid Boss]" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif _G.Settings.Boss["Select Boss"] == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif _G.Settings.Boss["Select Boss"] == "Tide Keeper [Lv. 1475] [Boss]" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Thire World
		elseif _G.Settings.Boss["Select Boss"] == "Stone [Lv. 1550] [Boss]" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)
		elseif _G.Settings.Boss["Select Boss"] == "Island Empress [Lv. 1675] [Boss]" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)
		elseif _G.Settings.Boss["Select Boss"] == "Kilo Admiral [Lv. 1750] [Boss]" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)
		elseif _G.Settings.Boss["Select Boss"] == "Captain Elephant [Lv. 1875] [Boss]" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)
		elseif _G.Settings.Boss["Select Boss"] == "Beautiful Pirate [Lv. 1950] [Boss]" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)
		elseif _G.Settings.Boss["Select Boss"] == "Cake Queen [Lv. 2175] [Boss]" then
			MsBoss = "Cake Queen [Lv. 2175] [Boss]"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-716, 382, -11010)
			CFrameBoss = CFrame.new(-821, 66, -10965)
		elseif _G.Settings.Boss["Select Boss"] == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
			MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)
		elseif _G.Settings.Boss["Select Boss"] == "Longma [Lv. 2000] [Boss]" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		elseif _G.Settings.Boss["Select Boss"] == "Soul Reaper [Lv. 2100] [Raid Boss]" then
			MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		end
	end

	_G.GetBoss = false
	function GetBossName()
		for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
			if not _G.GetBoss then
				-- World 1
				if v.Name == "The Gorilla King [Lv. 25] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 20  then
					_G.Settings.Boss["Select Boss"] = "The Gorilla King [Lv. 25] [Boss]"
				elseif v.Name == "Bobby [Lv. 55] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 55  then
					_G.Settings.Boss["Select Boss"] = "Bobby [Lv. 55] [Boss]" 
				elseif v.Name == "Yeti [Lv. 110] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 105  then
					_G.Settings.Boss["Select Boss"] = "Yeti [Lv. 110] [Boss]"
				elseif v.Name == "Mob Leader [Lv. 120] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 120 then
					_G.Settings.Boss["Select Boss"] = "Mob Leader [Lv. 120] [Boss]"
				elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 130 then
					_G.Settings.Boss["Select Boss"] = "Vice Admiral [Lv. 130] [Boss]"
				elseif v.Name == "Warden [Lv. 175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 175 then
					_G.Settings.Boss["Select Boss"] = "Warden [Lv. 175] [Boss]"
				elseif v.Name == "Saber Expert [Lv. 200] [Boss]" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
					_G.Settings.Boss["Select Boss"] = "Saber Expert [Lv. 200] [Boss]"
				elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 200 then
					_G.Settings.Boss["Select Boss"] = "Chief Warden [Lv. 200] [Boss]"
				elseif v.Name == "Swan [Lv. 225] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 250 then
					_G.Settings.Boss["Select Boss"] = "Swan [Lv. 225] [Boss]"
				elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 350  then
					_G.Settings.Boss["Select Boss"] = "Magma Admiral [Lv. 350] [Boss]"
				elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 425  then
					_G.Settings.Boss["Select Boss"] = "Fishman Lord [Lv. 425] [Boss]"
				elseif v.Name == "Wysper [Lv. 500] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 500 then
					_G.Settings.Boss["Select Boss"] = "Wysper [Lv. 500] [Boss]"
				elseif v.Name == "Thunder God [Lv. 575] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 575 then
					_G.Settings.Boss["Select Boss"] = "Thunder God [Lv. 575] [Boss]"
				elseif v.Name == "Cyborg [Lv. 675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 675 then
					_G.Settings.Boss["Select Boss"] = "Cyborg [Lv. 675] [Boss]"
					-- World2
				elseif v.Name == "Diamond [Lv. 750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 750 then
					_G.Settings.Boss["Select Boss"] = "Diamond [Lv. 750] [Boss]"
				elseif v.Name == "Jeremy [Lv. 850] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 850 then
					_G.Settings.Boss["Select Boss"] = "Jeremy [Lv. 850] [Boss]"
				elseif v.Name == "Fajita [Lv. 925] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 925  then
					_G.Settings.Boss["Select Boss"] = "Fajita [Lv. 925] [Boss]"
				elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
					_G.Settings.Boss["Select Boss"] = "Don Swan [Lv. 1000] [Boss]" 
				elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1150 then
					_G.Settings.Boss["Select Boss"] = "Smoke Admiral [Lv. 1150] [Boss]"
				elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]" and game.Players.localPlayer.Data.Level.Value >= 1325 then
					_G.Settings.Boss["Select Boss"] = "Cursed Captain [Lv. 1325] [Raid Boss]"
				elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1400  then
					_G.Settings.Boss["Select Boss"] = "Awakened Ice Admiral [Lv. 1400] [Boss]"
				elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1475  then
					_G.Settings.Boss["Select Boss"] = "Tide Keeper [Lv. 1475] [Boss]"
					-- World3
				elseif v.Name == "Stone [Lv. 1550] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1550 then
					_G.Settings.Boss["Select Boss"] = "Stone [Lv. 1550] [Boss]"
				elseif v.Name == "Island Empress [Lv. 1675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1675 then
					_G.Settings.Boss["Select Boss"] = "Island Empress [Lv. 1675] [Boss]"
				elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1750 then
					_G.Settings.Boss["Select Boss"] = "Kilo Admiral [Lv. 1750] [Boss]"
				elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1875 then
					_G.Settings.Boss["Select Boss"] = "Captain Elephant [Lv. 1875] [Boss]"
				elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1950 then
					_G.Settings.Boss["Select Boss"] = "Beautiful Pirate [Lv. 1950] [Boss]"
				elseif v.Name == "Cake Queen [Lv. 2175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 2175 then
					_G.Settings.Boss["Select Boss"] = "Cake Queen [Lv. 2175] [Boss]"
				end 
			end 
		end
	end


	if game.CoreGui:FindFirstChild("PepsiUi") then
		game.CoreGui:FindFirstChild("PepsiUi"):Destroy()
	end

	local library = {
		WorkspaceName = "Name",
		flags = {},
		signals = {},
		objects = {},
		elements = {},
		globals = {},
		subs = {},
		colored = {},
		configuration = {
			hideKeybind = Enum.KeyCode.RightControl,
			smoothDragging = false,
			easingStyle = Enum.EasingStyle.Quart,
			easingDirection = Enum.EasingDirection.Out
		},
		colors = {
			main = Color3.fromRGB(80, 245, 245),
			background = Color3.fromRGB(40, 40, 40),
			outerBorder = Color3.fromRGB(15, 15, 15),
			innerBorder = Color3.fromRGB(73, 63, 73),
			topGradient = Color3.fromRGB(35, 35, 35),
			bottomGradient = Color3.fromRGB(29, 29, 29),
			sectionBackground = Color3.fromRGB(35, 34, 34),
			section = Color3.fromRGB(176, 175, 176),
			otherElementText = Color3.fromRGB(129, 127, 129),
			elementText = Color3.fromRGB(147, 145, 147),
			elementBorder = Color3.fromRGB(20, 20, 20),
			selectedOption = Color3.fromRGB(55, 55, 55),
			unselectedOption = Color3.fromRGB(40, 40, 40),
			hoveredOptionTop = Color3.fromRGB(65, 65, 65),
			unhoveredOptionTop = Color3.fromRGB(50, 50, 50),
			hoveredOptionBottom = Color3.fromRGB(45, 45, 45),
			unhoveredOptionBottom = Color3.fromRGB(35, 35, 35),
			tabText = Color3.fromRGB(185, 185, 185)
		},
		gui_parent = (function()
			local x, c = pcall(function()
				return game:GetService("CoreGui")
			end)
			if x and c then
				return c
			end
			x, c = pcall(function()
				return (game:IsLoaded() or (game.Loaded:Wait() or 1)) and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
			end)
			if x and c then
				return c
			end
			x, c = pcall(function()
				return game:GetService("StarterGui")
			end)
			if x and c then
				return c
			end
			return error("Seriously bad exploit. Can't find a place to store the GUI. Robust code can't help here.")
		end)(),
		colorpicker = false,
		colorpickerconflicts = {},
		rainbowflags = {},
		rainbows = 0,
		rainbowsg = 0
	}
	library.Subs = library.subs
	local library_flags = library.flags
	local destroyrainbows, destroyrainbowsg = nil
	function darkenColor(clr, intensity)
		if not intensity or intensity == 1 then
			return clr
		end
		if clr and (typeof(clr) == "Color3" or type(clr) == "table") then
			return Color3.new(clr.R / intensity, clr.G / intensity, clr.B / intensity)
		end
	end
	library.subs.darkenColor = darkenColor
	local __runscript = true
	local function wait_check(...)
		if __runscript then
			return wait(...)
		else
			wait()
			return false
		end
	end
	library.subs.Wait, library.subs.wait = wait_check, wait_check
	local lasthidebing = 0
	local temp = game:FindService("MarketplaceService") or game:GetService("MarketplaceService")
	local Marketplace = (temp and (cloneref and cloneref(temp))) or temp
	local resolvevararg, temp = nil
	do
		local lwr = string.lower
		function library.defaultSort(a, b)
			return lwr(tostring(b)) > lwr(tostring(a))
		end
	end
	do
		local varargresolve = {
			Window = {"Name", "Theme"},
			Tab = {"Name", "Image"},
			Section = {"Name", "Side"},
			Label = {"Text", "Flag", "UnloadValue", "UnloadFunc"},
			Toggle = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Locked", "Keybind", "Condition", "AllowDuplicateCalls"},
			Textbox = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Placeholder", "Type", "Min", "Max", "Decimals", "Hex", "Binary", "Base", "RichTextBox", "MultiLine", "TextScaled", "TextFont", "PreFormat", "PostFormat", "CustomProperties", "AllowDuplicateCalls"},
			Slider = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Min", "Max", "Decimals", "Format", "IllegalInput", "Textbox", "AllowDuplicateCalls"},
			Button = {"Name", "Callback", "Locked", "Condition"},
			Keybind = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Pressed", "KeyNames", "AllowDuplicateCalls"},
			Dropdown = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "List", "Filter", "Method", "Nothing", "Sort", "MultiSelect", "ItemAdded", "ItemRemoved", "ItemChanged", "ItemsCleared", "ScrollUpButton", "ScrollDownButton", "ScrollButtonRate", "DisablePrecisionScrolling", "AllowDuplicateCalls"},
			SearchBox = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "List", "Filter", "Method", "Nothing", "Sort", "MultiSelect", "ItemAdded", "ItemRemoved", "ItemChanged", "ItemsCleared", "ScrollUpButton", "ScrollDownButton", "ScrollButtonRate", "DisablePrecisionScrolling", "RegEx", "AllowDuplicateCalls"},
			Colorpicker = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Rainbow", "Random", "AllowDuplicateCalls"},
			Persistence = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Workspace", "Persistive", "Suffix", "LoadCallback", "SaveCallback", "PostLoadCallback", "PostSaveCallback", "ScrollUpButton", "ScrollDownButton", "ScrollButtonRate", "DisablePrecisionScrolling", "AllowDuplicateCalls"},
			Designer = {"Backdrop", "Image", "Info", "Credit"}
		}
		function resolvevararg(objtype, ...)
			local data = varargresolve[objtype]
			local t = {}
			if data then
				for index, value in next, {...} do
					t[data[index]] = value
				end
			end
			return t
		end
	end
	local resolvercache = {}
	library.resolvercache = resolvercache
	local function resolveid(image, flag)
		if image then
			if type(image) == "string" then
				if (#image > 14 and string.sub(image, 1, 13) == "rbxassetid://") or (#image > 12 and string.sub(image, 1, 11) == "rbxasset://") or (#image > 12 and string.sub(image, 1, 11) ~= "rbxthumb://") then
					if flag then
						local thing = library.elements[flag] or library.designerelements[flag]
						if thing and thing.Set then
							task.spawn(thing.Set, thing, image)
						end
					end
					return image
				end
			end
			local orig = image
			if resolvercache[orig] then
				if flag then
					local thing = library.elements[flag] or library.designerelements[flag]
					if thing and thing.Set then
						task.spawn(thing.Set, thing, resolvercache[orig])
					end
				end
				return resolvercache[orig]
			end
			image = tonumber(image) or image
			local succezz = pcall(function()
				local typ = type(image)
				if typ == "string" then
					if getsynasset then
						if #image > 11 and string.sub(image, 1, 11) == "synasset://" then
							return getsynasset(string.sub(image, 12))
						elseif #image > 14 and string.sub(image, 1, 14) == "synasseturl://" then
							local x, e = pcall(function()
								local codename, fixes = string.gsub(image, ".", function(c)
									if c:lower() == c:upper() and not tonumber(c) then
										return ""
									end
								end)
								codename = string.sub(codename, 1, 24) .. tostring(fixes)
								local fold = isfolder("./Function Lib")
								if not fold then
									makefolder("./Function Lib")
								end
								fold = isfolder("./Function Lib/Themes")
								if not fold then
									makefolder("./Function Lib/Themes")
								end
								fold = isfolder("./Function Lib/Themes/SynapseAssetsCache")
								if not fold then
									makefolder("./Function Lib Themes/SynapseAssetsCache")
								end
								if not fold or not isfile("./Function Lib/Themes/SynapseAssetsCache/" .. codename .. ".dat") then
									local res = game:HttpGet(string.sub(image, 15))
									if res ~= nil then
										writefile("./Function Lib/Themes/SynapseAssetsCache/" .. codename .. ".dat", res)
									end
								end
								return getsynasset(readfile("./Function Lib/Themes/SynapseAssetsCache/" .. codename .. ".dat"))
							end)
							if x and e ~= nil then
								return e
							end
						end
					end
					if #image < 11 or (string.sub(image, 1, 13) ~= "rbxassetid://" and string.sub(image, 1, 11) ~= "rbxasset://" and string.sub(image, 1, 11) ~= "rbxthumb://") then
						image = tonumber(image:gsub("%D", ""), 10) or image
						typ = type(image)
					end
				end
				if typ == "number" and image > 0 then
					pcall(function()
						local nfo = Marketplace and Marketplace:GetProductInfo(image)
						image = tostring(image)
						if nfo and nfo.AssetTypeId == 1 then
							image = "rbxassetid://" .. image
						elseif nfo.AssetTypeId == 13 then
							local decal = game:GetObjects("rbxassetid://" .. image)[1]
							image = "rbxassetid://" .. decal.Texture:match("%d+$")
							decal = (decal and decal:Destroy() and nil) or nil
						end
					end)
				else
					image = nil
				end
			end)
			if succezz and image then
				if orig then
					resolvercache[orig] = image
				end
				resolvercache[image] = image
				if flag then
					local thing = library.elements[flag] or library.designerelements[flag]
					if thing and thing.Set then
						task.spawn(thing.Set, thing, image)
					end
				end
			end
		end
		return image
	end
	library.subs.ResolveID = resolveid
	library.resolvercache = resolvercache
	local colored = library.colored
	local colors = library.colors
	local tweenService = game:GetService("TweenService")
	local updatecolors = nil
	do
		function updatecolors(tweenit)
			if library.objects and (#library.objects > 0 or next(library.objects)) then
				for _, data in next, colored do
					local x, e
					if tweenit then
						x, e = pcall(function()
							local cclr = colors[data[3]]
							local darkness = data[4]
							tweenService:Create(data[1], TweenInfo.new(tweenit, library.configuration.easingStyle, library.configuration.easingDirection), {
								[data[2]] = (darkness and darkness ~= 1 and darkenColor(cclr, darkness)) or cclr
							}):Play()
						end)
					end
					if not x then
						local x, e = pcall(function()
							local cclr = colors[data[3]]
							local darkness = data[4]
							data[1][data[2]] = (darkness and darkness ~= 1 and darkenColor(cclr, darkness)) or cclr
						end)
						if not x and e then
							warn(debug.traceback(e))
						end
					end
				end
				pcall(function()
					if library.Backdrop then
						library.Backdrop.Visible = not not library_flags["__Designer.Background.UseBackgroundImage"]
						library.Backdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
						library.Backdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
						library.Backdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
					end
				end)
			end
		end
		library.subs.UpdateColors = updatecolors
	end
	local function updatecolorsnotween()
		updatecolors()
	end
	library.subs.updatecolors = updatecolors
	library.colors = setmetatable({}, {
		__index = colors,
		__newindex = function(_, k, v)
			if colors[k] ~= v then
				colors[k] = v
				spawn(updatecolorsnotween)
			end
		end
	})
	local elements = library.elements
	shared.libraries = shared.libraries or {}
	local colorpickerconflicts = library.colorpickerconflicts
	local keyHandler = {
		notAllowedKeys = {
			[Enum.KeyCode.Return] = true,
			[Enum.KeyCode.Space] = true,
			[Enum.KeyCode.Tab] = true,
			[Enum.KeyCode.Unknown] = true,
			[Enum.KeyCode.Backspace] = true
		},
		notAllowedMouseInputs = {
			[Enum.UserInputType.MouseMovement] = true,
			[Enum.UserInputType.MouseWheel] = true,
			[Enum.UserInputType.MouseButton1] = true,
			[Enum.UserInputType.MouseButton2] = true,
			[Enum.UserInputType.MouseButton3] = true
		},
		allowedKeys = {
			[Enum.KeyCode.LeftShift] = "LShift",
			[Enum.KeyCode.RightShift] = "RShift",
			[Enum.KeyCode.LeftControl] = "LCtrl",
			[Enum.KeyCode.RightControl] = "RCtrl",
			[Enum.KeyCode.LeftAlt] = "LAlt",
			[Enum.KeyCode.RightAlt] = "RAlt",
			[Enum.KeyCode.CapsLock] = "CAPS",
			[Enum.KeyCode.One] = "1",
			[Enum.KeyCode.Two] = "2",
			[Enum.KeyCode.Three] = "3",
			[Enum.KeyCode.Four] = "4",
			[Enum.KeyCode.Five] = "5",
			[Enum.KeyCode.Six] = "6",
			[Enum.KeyCode.Seven] = "7",
			[Enum.KeyCode.Eight] = "8",
			[Enum.KeyCode.Nine] = "9",
			[Enum.KeyCode.Zero] = "0",
			[Enum.KeyCode.KeypadOne] = "Num-1",
			[Enum.KeyCode.KeypadTwo] = "Num-2",
			[Enum.KeyCode.KeypadThree] = "Num-3",
			[Enum.KeyCode.KeypadFour] = "Num-4",
			[Enum.KeyCode.KeypadFive] = "Num-5",
			[Enum.KeyCode.KeypadSix] = "Num-6",
			[Enum.KeyCode.KeypadSeven] = "Num-7",
			[Enum.KeyCode.KeypadEight] = "Num-8",
			[Enum.KeyCode.KeypadNine] = "Num-9",
			[Enum.KeyCode.KeypadZero] = "Num-0",
			[Enum.KeyCode.Minus] = "-",
			[Enum.KeyCode.Equals] = "=",
			[Enum.KeyCode.Tilde] = "~",
			[Enum.KeyCode.LeftBracket] = "[",
			[Enum.KeyCode.RightBracket] = "]",
			[Enum.KeyCode.RightParenthesis] = ")",
			[Enum.KeyCode.LeftParenthesis] = "(",
			[Enum.KeyCode.Semicolon] = ";",
			[Enum.KeyCode.Quote] = "'",
			[Enum.KeyCode.BackSlash] = "\\",
			[Enum.KeyCode.Comma] = ",",
			[Enum.KeyCode.Period] = ".",
			[Enum.KeyCode.Slash] = "/",
			[Enum.KeyCode.Asterisk] = "*",
			[Enum.KeyCode.Plus] = "+",
			[Enum.KeyCode.Period] = ".",
			[Enum.KeyCode.Backquote] = "`"
		}
	}
	local function hardunload(library)
		if library.UnloadCallback and type(library.UnloadCallback) == "function" then
			local x, e = pcall(library.UnloadCallback)
			if not x and e then
				task.spawn(error, e, 2)
			end
		end
		for cflag, data in next, elements do
			if data.Type ~= "Persistence" then
				if data.Set and data.Options.UnloadValue ~= nil then
					data.Set(data.Options.UnloadValue)
				end
				if data.Options.UnloadFunc then
					local y, u = pcall(data.Options.UnloadFunc)
					if not y and u then
						warn(debug.traceback("Error unloading '" .. tostring(cflag) .. "'\n" .. u))
					end
				end
			end
		end
		for _, v in next, {library.signals, library.objects} do
			for k, o in next, v do
				if o then
					local te = typeof(o)
					if te == "RBXScriptConnection" then
						o:Disconnect()
					elseif te == "Instance" then
						o:Destroy()
					end
				end
				v[k] = nil
			end
		end
		library.signals = nil
		library.objects = nil
	end
	library.Subs.UnloadArg = hardunload
	local function unloadall()
		if shared.libraries then
			local b = 50
			while #shared.libraries > 0 do
				b = b - 1
				if b < 0 then
					b = 50
					wait(warn("Looped 50 times while unloading....?"))
				end
				local v = shared.libraries[1]
				if v and v.unload and type(v.unload) == "function" then
					if not pcall(v.unload) then
						pcall(hardunload, v)
						for k in next, v do
							v[k] = nil
						end
					end
					table.remove(shared.libraries, 1)
				end
			end
		end
		shared.libraries = nil
	end
	shared.unloadall = unloadall
	library.unloadall = unloadall
	shared.libraries[1 + #shared.libraries] = library
	function library.unload()
		__runscript = nil
		hardunload(library)
		if shared.libraries then
			for k, v in next, shared.libraries or {} do
				if v == library then
					for k in next, table.remove(shared.libraries, k) do
						v[k] = nil
					end
					break
				end
			end
			if #shared.libraries == 0 then
				shared.libraries = nil
			end
		end
		warn("Unloaded")
	end
	library.Unload = library.unload
	local Instance_new = (syn and syn.protect_gui and function(...)
		local x = {Instance.new(...)}
		if x[1] then
			library.objects[1 + #library.objects] = x[1]
			pcall(syn.protect_gui, x[1])
		end
		return unpack(x)
	end) or function(...)
		local x = {Instance.new(...)}
		if x[1] then
			library.objects[1 + #library.objects] = x[1]
		end
		return unpack(x)
	end
	library.subs.Instance_new = Instance_new
	local playersservice = game:GetService("Players")
	local function getresolver(listt, filter, method, _)
		local huo, args = type(filter), {}
		local hou = typeof(listt)
		return (hou == "table" and function()
			return listt
		end) or function()
			local hardtype = nil
			local g = listt
			for _ = 1, 5 do
				hardtype = typeof(g)
				if hardtype == "function" then
					local x, e = pcall(listt)
					if x and e then
						g = e
					end
					hardtype = typeof(g)
				end
				if hardtype == "Instance" then
					local lastg = g
					if method == nil and listt == playersservice then
						g = listt:GetPlayers()
					end
					if method then
						local metype = type(method)
						if metype == "table" then
							method = method.Method or method[1]
							args = method.Args or method.Arguments or unpack(method, (method.Method ~= nil and 1) or 2)
							metype = type(method)
						end
						local y, u = nil, nil
						if metype == "function" then
							y, u = pcall(method, listt, unpack(args))
						elseif metype == "string" then
							local y, u = pcall(function()
								return listt[method](listt, unpack(args))
							end)
						else
							warn("Idk how to handle method type of", metype, debug.traceback(""))
						end
						if u then
							if y then
								g = u
							else
								warn("Error trying method", method, "on", listt, debug.traceback(u))
							end
						end
					end
					if g == lastg then
						g = listt:GetChildren()
					end
				end
				if hardtype == "Enum" then
					g = listt:GetEnumItems()
				end
				hardtype = typeof(g)
				if hardtype == "table" then
					break
				end
			end
			hardtype = typeof(g)
			if hardtype ~= "table" then
				warn("Could not resolve " .. hou .. " type to a list.")
				return {}
			end
			if filter then
				if huo == "function" then
					local accept = {}
					for _, v in next, g do
						local x, e = pcall(filter, v)
						if x and e then
							accept[1 + #accept] = (e == true and v) or e
						end
					end
					g = accept
				elseif huo == "string" then
					local accept = {}
					for _, v in next, g do
						if tostring(v):lower():find(huo) then
							accept[1 + #accept] = v
						end
					end
					g = accept
				elseif huo == "table" then
					local accept = {}
					if type(filter[1]) == "string" then
						for _, v in next, g do
							if tostring(v):lower():find(huo) then
								accept[1 + #accept] = v
							elseif filter[0] then
								accept[1 + #accept] = v
							end
						end
					else
						for _, v in next, g do
							if not table.find(filter, v) and not table.find(filter, tostring(v)) then
								accept[1 + #accept] = v
							elseif not filter[0] then
								accept[1 + #accept] = v
							end
						end
					end
					g = accept
				end
			end
			return g
		end
	end
	library.subs.GetResolver = getresolver
	local function resetall()
		destroyrainbowsg = true
		pcall(function()
			for k, v in next, elements do
				if v and k and v.Set and v.Default ~= nil and library_flags[k] ~= v.Default and string.sub(k, 1, 11) ~= "__Designer." then
					v:Set(v.Default)
				end
			end
		end)
	end
	library.ResetAll = resetall
	local textService = game:GetService("TextService")
	local userInputService = game:GetService("UserInputService")
	local runService = game:GetService("RunService")
	local LP = playersservice.LocalPlayer
	library.LP = LP
	library.Players = playersservice
	library.UserInputService = userInputService
	library.RunService = runService
	local mouse = LP and LP:GetMouse()
	if not mouse and PluginManager and runService:IsStudio() then
		shared.library_plugin = shared.library_plugin or print("Creating Studio Test-Plugin...") or PluginManager():CreatePlugin()
		mouse = shared.library_plugin:GetMouse()
		library.plugin = shared.library_plugin
	end
	library.Mouse = mouse
	local function textToSize(object)
		if object ~= nil then
			local output = textService:GetTextSize(object.Text, object.TextSize, object.Font, Vector2.new(math.huge, math.huge))
			return {
				X = output.X,
				Y = output.Y
			}
		end
	end
	library.subs.textToSize = textToSize
	local function removeSpaces(str)
		if str then
			local newStr = str:gsub(" ", "")
			return newStr
		end
	end
	library.subs.removeSpaces = removeSpaces
	local function Color3FromHex(hex)
		hex = hex:gsub("#", ""):upper():gsub("0X", "")
		return Color3.fromRGB(tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16))
	end
	library.subs.Color3FromHex = Color3FromHex
	local floor = math.floor
	local function Color3ToHex(color)
		local r, g, b = string.format("%X", floor(color.R * 255)), string.format("%X", floor(color.G * 255)), string.format("%X", floor(color.B * 255))
		if #r < 2 then
			r = "0" .. r
		end
		if #g < 2 then
			g = "0" .. g
		end
		if #b < 2 then
			b = "0" .. b
		end
		return string.format("%s%s%s", r, g, b)
	end
	if Color3.ToHex and not shared.overridecolortohex then
		local x, e = pcall(Color3.ToHex, Color3.new())
		if x and type(e) == "string" and #e == 6 then
			Color3ToHex = Color3.ToHex
		end
	end
	library.subs.Color3ToHex = Color3ToHex
	local isDraggingSomething = false
	local function makeDraggable(topBarObject, object)
		local dragging = nil
		local dragInput = nil
		local dragStart = nil
		local startPosition = nil
		library.signals[1 + #library.signals] = topBarObject.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPosition = object.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		library.signals[1 + #library.signals] = topBarObject.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		library.signals[1 + #library.signals] = userInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - dragStart
				if not isDraggingSomething and library.configuration.smoothDragging then
					tweenService:Create(object, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
					}):Play()
				elseif not isDraggingSomething and not library.configuration.smoothDragging then
					object.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
				end
			end
		end)
	end
	library.subs.makeDraggable = makeDraggable
	local JSONEncode, JSONDecode = nil, nil
	do
		local temp_http = game:FindService("HttpService") or game:GetService("HttpService")
		local httpservice = temp_http
		if cloneref and type(cloneref) == "function" then
			httpservice, temp_http = cloneref(httpservice), nil
		end
		library.Http = httpservice
		local JSONEncodeFunc = httpservice.JSONEncode
		function JSONEncode(...)
			return pcall(JSONEncodeFunc, httpservice, ...)
		end
		library.JSONEncode = JSONEncode
		local JSONDecodeFunc = httpservice.JSONDecode
		function JSONDecode(...)
			return pcall(JSONDecodeFunc, httpservice, ...)
		end
		library.JSONDecode = JSONDecode
	end
	local convertfilename
	do
		local string_gsub = string.gsub
		function convertfilename(str, default, replace)
			replace = replace or "_"
			local corrections = 0
			local predname = string_gsub(str, "%W", function(c)
				local byt = c:byte()
				if not (byt == 0 or byt == 32 or byt == 33 or byt == 59 or byt == 61 or (byt >= 35 and byt <= 41) or (byt >= 43 and byt <= 57) or (byt >= 64 and byt <= 123) or (byt >= 125 and byt <= 127)) then
					corrections = 1 + corrections
					return replace
				end
			end)
			return (default and corrections == #predname and tostring(default)) or predname
		end
		library.subs.ConvertFilename = convertfilename
	end
	function library:CreateWindow(options, ...)
		options = (options and type(options) == "string" and resolvevararg("Window", options, ...)) or options
		local homepage = nil
		local windowoptions = options
		local windowName = options.Name or "Unnamed Window"
		options.Name = windowName
		if windowName and #windowName > 0 and library.WorkspaceName == "Function Lib" then
			library.WorkspaceName = convertfilename(windowName, "Function Lib")
		end
		local FunctionLibrary = Instance_new("ScreenGui")
		local main = Instance_new("Frame")
		local mainBorder = Instance_new("Frame")
		local tabSlider = Instance_new("Frame")
		local innerMain = Instance_new("Frame")
		local innerMainBorder = Instance_new("Frame")
		local innerBackdrop = Instance_new("ImageLabel")
		local innerMainHolder = Instance_new("Frame")
		local tabsHolder = Instance_new("ImageLabel")
		local tabHolderList = Instance_new("UIListLayout")
		local tabHolderPadding = Instance_new("UIPadding")
		local headline = Instance_new("TextLabel")
		local splitter = Instance_new("TextLabel")
		local submenuOpen = nil
		library.globals["__Window" .. options.Name] = {
			submenuOpen = submenuOpen
		}
		FunctionLibrary.Name = "PepsiUi"
		FunctionLibrary.Parent = library.gui_parent
		FunctionLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		FunctionLibrary.DisplayOrder = 10
		FunctionLibrary.ResetOnSpawn = false
		main.Name = "main"
		main.Parent = FunctionLibrary
		main.AnchorPoint = Vector2.new(0.5, 0.5)
		main.BackgroundColor3 = library.colors.background
		colored[1 + #colored] = {main, "BackgroundColor3", "background"}
		main.BorderColor3 = library.colors.outerBorder
		colored[1 + #colored] = {main, "BorderColor3", "outerBorder"}
		main.Position = UDim2.fromScale(0.5, 0.5)
		main.Size = UDim2.fromOffset(500, 545)
		makeDraggable(main, main)
		mainBorder.Name = "mainBorder"
		mainBorder.Parent = main
		mainBorder.AnchorPoint = Vector2.new(0.5, 0.5)
		mainBorder.BackgroundColor3 = library.colors.background
		colored[1 + #colored] = {mainBorder, "BackgroundColor3", "background"}
		mainBorder.BorderColor3 = library.colors.innerBorder
		colored[1 + #colored] = {mainBorder, "BorderColor3", "innerBorder"}
		mainBorder.BorderMode = Enum.BorderMode.Inset
		mainBorder.Position = UDim2.fromScale(0.5, 0.5)
		mainBorder.Size = UDim2.fromScale(1, 1)
		innerMain.Name = "innerMain"
		innerMain.Parent = main
		innerMain.AnchorPoint = Vector2.new(0.5, 0.5)
		innerMain.BackgroundColor3 = library.colors.background
		colored[1 + #colored] = {innerMain, "BackgroundColor3", "background"}
		innerMain.BorderColor3 = library.colors.outerBorder
		colored[1 + #colored] = {innerMain, "BorderColor3", "outerBorder"}
		innerMain.Position = UDim2.fromScale(0.5, 0.5)
		innerMain.Size = UDim2.new(1, -14, 1, -14)
		innerMainBorder.Name = "innerMainBorder"
		innerMainBorder.Parent = innerMain
		innerMainBorder.AnchorPoint = Vector2.new(0.5, 0.5)
		innerMainBorder.BackgroundColor3 = library.colors.background
		colored[1 + #colored] = {innerMainBorder, "BackgroundColor3", "background"}
		innerMainBorder.BorderColor3 = library.colors.innerBorder
		colored[1 + #colored] = {innerMainBorder, "BorderColor3", "innerBorder"}
		innerMainBorder.BorderMode = Enum.BorderMode.Inset
		innerMainBorder.Position = UDim2.fromScale(0.5, 0.5)
		innerMainBorder.Size = UDim2.fromScale(1, 1)
		innerMainHolder.Name = "innerMainHolder"
		innerMainHolder.Parent = innerMain
		innerMainHolder.BackgroundColor3 = Color3.new(1, 1, 1)
		innerMainHolder.BackgroundTransparency = 1
		innerMainHolder.Position = UDim2:fromOffset(25)
		innerMainHolder.Size = UDim2.new(1, 0, 1, -25)
		innerBackdrop.Name = "innerBackdrop"
		innerBackdrop.Parent = innerMainHolder
		innerBackdrop.BackgroundColor3 = Color3.new(1, 1, 1)
		innerBackdrop.BackgroundTransparency = 1
		innerBackdrop.Size = UDim2.fromScale(1, 1)
		innerBackdrop.ZIndex = -1
		innerBackdrop.Visible = not not library_flags["__Designer.Background.UseBackgroundImage"]
		innerBackdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
		innerBackdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
		innerBackdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
		library.Backdrop = innerBackdrop
		tabsHolder.Name = "tabsHolder"
		tabsHolder.Parent = innerMain
		tabsHolder.BackgroundColor3 = library.colors.topGradient
		colored[1 + #colored] = {tabsHolder, "BackgroundColor3", "topGradient"}
		tabsHolder.BorderSizePixel = 0
		tabsHolder.Position = UDim2.fromOffset(1, 1)
		tabsHolder.Size = UDim2.new(1, -2, 0, 23)
		tabsHolder.Image = "rbxassetid://2454009026"
		tabsHolder.ImageColor3 = library.colors.bottomGradient
		colored[1 + #colored] = {tabsHolder, "ImageColor3", "bottomGradient"}
		tabHolderList.Name = "tabHolderList"
		tabHolderList.Parent = tabsHolder
		tabHolderList.FillDirection = Enum.FillDirection.Horizontal
		tabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
		tabHolderList.VerticalAlignment = Enum.VerticalAlignment.Center
		tabHolderList.Padding = UDim:new(3)
		tabHolderPadding.Name = "tabHolderPadding"
		tabHolderPadding.Parent = tabsHolder
		tabHolderPadding.PaddingLeft = UDim:new(7)
		headline.Name = "headline"
		headline.Parent = tabsHolder
		headline.BackgroundColor3 = Color3.new(1, 1, 1)
		headline.BackgroundTransparency = 1
		headline.LayoutOrder = 1
		headline.Font = Enum.Font.Code
		headline.Text = (windowName and tostring(windowName)) or "???"
		headline.TextColor3 = library.colors.main
		colored[1 + #colored] = {headline, "TextColor3", "main"}
		headline.TextSize = 14
		headline.TextStrokeColor3 = library.colors.outerBorder
		colored[1 + #colored] = {headline, "TextStrokeColor3", "outerBorder"}
		headline.TextStrokeTransparency = 0.75
		headline.Size = UDim2:new(textToSize(headline).X + 4, 1)
		splitter.Name = "splitter"
		splitter.Parent = tabsHolder
		splitter.BackgroundColor3 = Color3.new(1, 1, 1)
		splitter.BackgroundTransparency = 1
		splitter.LayoutOrder = 2
		splitter.Size = UDim2:new(6, 1)
		splitter.Font = Enum.Font.Code
		splitter.Text = "|"
		splitter.TextColor3 = library.colors.tabText
		colored[1 + #colored] = {splitter, "TextColor3", "tabText"}
		splitter.TextSize = 14
		splitter.TextStrokeColor3 = library.colors.tabText
		colored[1 + #colored] = {splitter, "TextStrokeColor3", "tabText"}
		splitter.TextStrokeTransparency = 0.75
		tabSlider.Name = "tabSlider"
		tabSlider.Parent = main
		tabSlider.BackgroundColor3 = library.colors.main
		colored[1 + #colored] = {tabSlider, "BackgroundColor3", "main"}
		tabSlider.BorderSizePixel = 0
		tabSlider.Position = UDim2.fromOffset(100, 30)
		tabSlider.Size = UDim2:fromOffset(1)
		tabSlider.Visible = false
		do
			local os_clock = os.clock
			library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(keyCode, gameProcessedEvent)
				gameProcessedEvent = gameProcessedEvent or userInputService:GetFocusedTextBox()
				if not gameProcessedEvent and keyCode.KeyCode == library.configuration.hideKeybind then
					if not lasthidebing or os_clock() - lasthidebing > 12 then
						main.Visible = not main.Visible
					end
					lasthidebing = nil
				end
			end)
		end
		local windowFunctions = {
			tabCount = 0,
			selected = {},
			Flags = elements
		}
		library.globals["__Window" .. windowName].windowFunctions = windowFunctions
		function windowFunctions:Show(x)
			main.Visible = x == nil or x == true or x == 1
		end
		function windowFunctions:Hide(x)
			main.Visible = x == false or x == 0
		end
		function windowFunctions:Visibility(x)
			if x == nil then
				main.Visible = not main.Visible
			else
				main.Visible = not not x
			end
		end
		function windowFunctions:MoveTabSlider(tabObject)
			spawn(function()
				tabSlider.Visible = true
				tweenService:Create(tabSlider, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
					Size = UDim2.fromOffset(tabObject.AbsoluteSize.X, 1),
					Position = UDim2.fromOffset(tabObject.AbsolutePosition.X, tabObject.AbsolutePosition.Y + tabObject.AbsoluteSize.Y) - UDim2.fromOffset(main.AbsolutePosition.X, main.AbsolutePosition.Y)
				}):Play()
			end)
		end
		windowFunctions.LastTab = nil
		function windowFunctions:CreateTab(options, ...)
			options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options or {
				Name = "Function Style: Elite Hax"
			}
			local image = options.Image
			if image then
				image = resolveid(image)
			end
			local tabName = options.Name or "Unnamed Tab"
			options.Name = tabName
			windowFunctions.tabCount = windowFunctions.tabCount + 1
			local newTab = Instance_new((image and "ImageButton") or "TextButton")
			local newTabHolder = Instance_new("Frame")
			library.globals["__Window" .. windowName].newTabHolder = newTabHolder
			local left = Instance_new("ScrollingFrame")
			local leftList = Instance_new("UIListLayout")
			local leftPadding = Instance_new("UIPadding")
			local right = Instance_new("ScrollingFrame")
			local rightList = Instance_new("UIListLayout")
			local rightPadding = Instance_new("UIPadding")
			newTab.Name = removeSpaces((tabName and tostring(tabName):lower() or "???") .. "Tab")
			newTab.Parent = tabsHolder
			newTab.BackgroundTransparency = 1
			newTab.LayoutOrder = (options.LastTab and 99999) or tonumber(options.TabOrder or options.LayoutOrder) or (2 + windowFunctions.tabCount)
			local colored_newTab_TextColor3 = nil
			if image then
				newTab.Image = image
				newTab.ImageColor3 = options.ImageColor or options.Color or Color3.new(1, 1, 1)
				newTab.Size = UDim2:new(tabsHolder.AbsoluteSize.Y, 1)
			else
				colored_newTab_TextColor3 = {newTab, "TextColor3", "tabText"}
				colored[1 + #colored] = colored_newTab_TextColor3
				newTab.Font = Enum.Font.Code
				newTab.Text = (tabName and tostring(tabName)) or "???"
				if windowFunctions.tabCount ~= 1 then
					colored_newTab_TextColor3[4] = 1.35
					newTab.TextColor3 = darkenColor(library.colors.tabText, 1.35)
				else
					newTab.TextColor3 = library.colors.tabText
				end
				newTab.TextSize = 14
				newTab.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
				newTab.TextStrokeTransparency = 0.75
				newTab.Size = UDim2:new(textToSize(newTab).X + 4, 1)
			end
			local function goto()
				if not library.colorpicker and not submenuOpen and windowFunctions.selected.button ~= newTab then
					pcall(function()
						for _, e in next, library.elements do
							if e and type(e) == "table" and e.Update then
								pcall(e.Update)
							end
						end
					end)
					if windowFunctions.LastTab then
						windowFunctions.LastTab[4] = 1.35
					end
					windowFunctions:MoveTabSlider(newTab)
					if windowFunctions.selected.button.ClassName == "TextButton" then
						tweenService:Create(windowFunctions.selected.button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = darkenColor(library.colors.tabText, 1.35)
						}):Play()
					end
					if colored_newTab_TextColor3 then
						colored_newTab_TextColor3[4] = nil
					end
					windowFunctions.selected.holder.Visible = false
					windowFunctions.selected.button = newTab
					windowFunctions.selected.holder = newTabHolder
					if windowFunctions.selected.button.ClassName == "TextButton" then
						tweenService:Create(windowFunctions.selected.button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.tabText
						}):Play()
					end
					windowFunctions.selected.holder.Visible = true
					windowFunctions.LastTab = colored_newTab_TextColor3
				end
			end
			if not homepage and newTab.LayoutOrder <= 4 then
				homepage = goto
			end
			library.signals[1 + #library.signals] = newTab.MouseButton1Click:Connect(goto)
			if windowFunctions.tabCount == 1 then
				tabSlider.Size = UDim2.fromOffset(newTab.AbsoluteSize.X, 1)
				tabSlider.Position = UDim2.fromOffset(newTab.AbsolutePosition.X, newTab.AbsolutePosition.Y + newTab.AbsoluteSize.Y) - UDim2.fromOffset(main.AbsolutePosition.X, main.AbsolutePosition.Y)
				tabSlider.Visible = true
				windowFunctions.selected.holder = newTabHolder
				windowFunctions.selected.button = newTab
			end
			newTabHolder.Name = removeSpaces((tabName and tabName:lower()) or "???") .. "TabHolder"
			newTabHolder.Parent = innerMainHolder
			newTabHolder.BackgroundColor3 = Color3.new(1, 1, 1)
			newTabHolder.BackgroundTransparency = 1
			newTabHolder.Size = UDim2.fromScale(1, 1)
			newTabHolder.Visible = windowFunctions.tabCount == 1
			left.Name = "left"
			left.Parent = newTabHolder
			left.BackgroundColor3 = Color3.new(1, 1, 1)
			left.BackgroundTransparency = 1
			left.Size = UDim2.fromScale(0.5, 1)
			left.CanvasSize = UDim2.new()
			left.ScrollBarThickness = 0
			leftList.Name = "leftList"
			leftList.Parent = left
			leftList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			leftList.SortOrder = Enum.SortOrder.LayoutOrder
			leftList.Padding = UDim:new(14)
			leftPadding.Name = "leftPadding"
			leftPadding.Parent = left
			leftPadding.PaddingTop = UDim:new(12)
			right.Name = "right"
			right.Parent = newTabHolder
			right.BackgroundColor3 = Color3.new(1, 1, 1)
			right.BackgroundTransparency = 1
			right.Size = UDim2.fromScale(0.5, 1)
			right.CanvasSize = UDim2.new()
			right.ScrollBarThickness = 0
			right.Position = UDim2.new(0.5)
			rightList.Name = "rightList"
			rightList.Parent = right
			rightList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			rightList.SortOrder = Enum.SortOrder.LayoutOrder
			rightList.Padding = UDim:new(14)
			rightPadding.Name = "rightPadding"
			rightPadding.Parent = right
			rightPadding.PaddingTop = UDim:new(12)
			local tabFunctions = {
				Flags = {}
			}
			function tabFunctions:CreateSection(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
				local sectionName, holderSide = options.Name or "Unnamed Section", options.Side
				options.Name = sectionName
				local newSection = Instance_new("Frame")
				local newSectionBorder = Instance_new("Frame")
				local insideBorderHider = Instance_new("Frame")
				local outsideBorderHider = Instance_new("Frame")
				local sectionHolder = Instance_new("Frame")
				local sectionList = Instance_new("UIListLayout")
				local sectionPadding = Instance_new("UIPadding")
				local sectionHeadline = Instance_new("TextLabel")
				colorpickerconflicts[1 + #colorpickerconflicts] = insideBorderHider
				colorpickerconflicts[1 + #colorpickerconflicts] = outsideBorderHider
				colorpickerconflicts[1 + #colorpickerconflicts] = sectionHeadline
				newSection.Name = removeSpaces((sectionName and sectionName:lower() or "???") .. "Section")
				newSection.Parent = (holderSide and ((holderSide:lower() == "left" and left) or right)) or left
				newSection.BackgroundColor3 = library.colors.sectionBackground
				colored[1 + #colored] = {newSection, "BackgroundColor3", "sectionBackground"}
				newSection.BorderColor3 = library.colors.outerBorder
				colored[1 + #colored] = {newSection, "BorderColor3", "outerBorder"}
				newSection.Size = UDim2.new(1, -20)
				newSection.Visible = false
				newSectionBorder.Name = "newSectionBorder"
				newSectionBorder.Parent = newSection
				newSectionBorder.BackgroundColor3 = library.colors.sectionBackground
				colored[1 + #colored] = {newSectionBorder, "BackgroundColor3", "sectionBackground"}
				newSectionBorder.BorderColor3 = library.colors.innerBorder
				colored[1 + #colored] = {newSectionBorder, "BorderColor3", "innerBorder"}
				newSectionBorder.BorderMode = Enum.BorderMode.Inset
				newSectionBorder.Size = UDim2.fromScale(1, 1)
				sectionHolder.Name = "sectionHolder"
				sectionHolder.Parent = newSection
				sectionHolder.BackgroundColor3 = Color3.new(1, 1, 1)
				sectionHolder.BackgroundTransparency = 1
				sectionHolder.Size = UDim2.fromScale(1, 1)
				sectionList.Name = "sectionList"
				sectionList.Parent = sectionHolder
				sectionList.HorizontalAlignment = Enum.HorizontalAlignment.Center
				sectionList.SortOrder = Enum.SortOrder.LayoutOrder
				sectionList.Padding = UDim:new(1)
				sectionPadding.Name = "sectionPadding"
				sectionPadding.Parent = sectionHolder
				sectionPadding.PaddingTop = UDim:new(9)
				sectionHeadline.Name = "sectionHeadline"
				sectionHeadline.Parent = newSection
				sectionHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				sectionHeadline.BackgroundTransparency = 1
				sectionHeadline.Position = UDim2.fromOffset(18, -8)
				sectionHeadline.ZIndex = 2
				sectionHeadline.Font = Enum.Font.Code
				sectionHeadline.LineHeight = 1.15
				sectionHeadline.Text = (sectionName and sectionName or "???")
				sectionHeadline.TextColor3 = library.colors.section
				colored[1 + #colored] = {sectionHeadline, "TextColor3", "section"}
				sectionHeadline.TextSize = 14
				sectionHeadline.Size = UDim2.fromOffset(textToSize(sectionHeadline).X + 4, 12)
				insideBorderHider.Name = "insideBorderHider"
				insideBorderHider.Parent = newSection
				insideBorderHider.BackgroundColor3 = library.colors.sectionBackground
				colored[1 + #colored] = {insideBorderHider, "BackgroundColor3", "sectionBackground"}
				insideBorderHider.BorderSizePixel = 0
				insideBorderHider.Position = UDim2.fromOffset(15)
				insideBorderHider.Size = UDim2.fromOffset(sectionHeadline.AbsoluteSize.X + 3, 1)
				outsideBorderHider.Name = "outsideBorderHider"
				outsideBorderHider.Parent = newSection
				outsideBorderHider.BackgroundColor3 = library.colors.background
				colored[1 + #colored] = {outsideBorderHider, "BackgroundColor3", "background"}
				outsideBorderHider.BorderSizePixel = 0
				outsideBorderHider.Position = UDim2.fromOffset(15, -1)
				outsideBorderHider.Size = UDim2.fromOffset(sectionHeadline.AbsoluteSize.X + 3, 1)
				local sectionFunctions = {
					Flags = {}
				}
				function sectionFunctions:Update(extra)
					local currentHolder = newSection.Parent
					if not newSection.Visible then
						newSection.Visible = true
					end
					newSection.Size = UDim2.new(1, -20, 0, (sectionList.AbsoluteContentSize.Y + 15))
					currentHolder.CanvasSize = UDim2:fromOffset(currentHolder:FindFirstChildOfClass("UIListLayout").AbsoluteContentSize.Y + 22 + (extra and extra or 0))
				end
				function sectionFunctions:AddToggle(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
					local toggleName, alreadyEnabled, callback, flagName = assert(options.Name, "Missing Name for new toggle."), options.Value or options.Enabled, options.Callback, options.Flag or (function()
						library.unnamedtoggles = 1 + (library.unnamedtoggles or 0)
						return "Toggle" .. tostring(library.unnamedtoggles)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local newToggle = Instance_new("Frame")
					local toggle = Instance_new("ImageLabel")
					local toggleInner = Instance_new("ImageLabel")
					local toggleButton = Instance_new("TextButton")
					local toggleHeadline = Instance_new("TextLabel")
					local keybindPositioner = Instance_new("Frame")
					local keybindList = Instance_new("UIListLayout")
					local keybindButton = Instance_new("TextButton")
					local lockedup = options.Locked
					newToggle.Name = removeSpaces((toggleName and toggleName:lower() or "???") .. "Toggle")
					newToggle.Parent = sectionHolder
					newToggle.BackgroundColor3 = Color3.new(1, 1, 1)
					newToggle.BackgroundTransparency = 1
					newToggle.Size = UDim2.new(1, 0, 0, 19)
					toggle.Name = "toggle"
					toggle.Parent = newToggle
					toggle.Active = true
					toggle.BackgroundColor3 = library.colors.topGradient
					local colored_toggle_BackgroundColor3 = {toggle, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_toggle_BackgroundColor3
					toggle.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {toggle, "BorderColor3", "elementBorder"}
					toggle.Position = UDim2.fromScale(0.0308237672, 0.165842205)
					toggle.Selectable = true
					toggle.Size = UDim2.fromOffset(12, 12)
					toggle.Image = "rbxassetid://2454009026"
					toggle.ImageColor3 = library.colors.bottomGradient
					local colored_toggle_ImageColor3 = {toggle, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_toggle_ImageColor3
					toggleInner.Name = "toggleInner"
					toggleInner.Parent = toggle
					toggleInner.Active = true
					toggleInner.AnchorPoint = Vector2.new(0.5, 0.5)
					toggleInner.BackgroundColor3 = library.colors.topGradient
					local colored_toggleInner_BackgroundColor3 = {toggleInner, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_toggleInner_BackgroundColor3
					toggleInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {toggleInner, "BorderColor3", "elementBorder"}
					toggleInner.Position = UDim2.fromScale(0.5, 0.5)
					toggleInner.Selectable = true
					toggleInner.Size = UDim2.new(1, -4, 1, -4)
					toggleInner.Image = "rbxassetid://2454009026"
					toggleInner.ImageColor3 = library.colors.bottomGradient
					local colored_toggleInner_ImageColor3 = {toggleInner, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_toggleInner_ImageColor3
					toggleButton.Name = "toggleButton"
					toggleButton.Parent = newToggle
					toggleButton.BackgroundColor3 = Color3.new(1, 1, 1)
					toggleButton.BackgroundTransparency = 1
					toggleButton.Size = UDim2.fromScale(1, 1)
					toggleButton.ZIndex = 5
					toggleButton.Font = Enum.Font.SourceSans
					toggleButton.Text = ""
					toggleButton.TextColor3 = Color3.new()
					toggleButton.TextSize = 14
					toggleButton.TextTransparency = 1
					toggleHeadline.Name = "toggleHeadline"
					toggleHeadline.Parent = newToggle
					toggleHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					toggleHeadline.BackgroundTransparency = 1
					toggleHeadline.Position = UDim2.fromScale(0.123, 0.165842161)
					toggleHeadline.Size = UDim2.fromOffset(170, 11)
					toggleHeadline.Font = Enum.Font.Code
					toggleHeadline.Text = toggleName or "???"
					toggleHeadline.TextColor3 = library.colors.elementText
					local colored_toggleHeadline_TextColor3 = {toggleHeadline, "TextColor3", "elementText", (lockedup and 0.5) or nil}
					colored[1 + #colored] = colored_toggleHeadline_TextColor3
					toggleHeadline.TextSize = 14
					toggleHeadline.TextXAlignment = Enum.TextXAlignment.Left
					local last_v = nil
					local function Set(t, newStatus)
						if nil == newStatus and t ~= nil then
							newStatus = t
						end
						last_v = library_flags[flagName]
						if options.Condition ~= nil then
							if type(options.Condition) == "function" then
								local v, e = pcall(options.Condition, newStatus, last_v)
								if e then
									if not v then
										warn(debug.traceback(string.format("Error in toggle %s's Condition function: %s", flagName, e), 2))
									end
								else
									return last_v
								end
							end
						end
						if newStatus ~= nil and type(newStatus) == "boolean" then
							library_flags[flagName] = newStatus
							if options.Location then
								options.Location[options.LocationFlag or flagName] = newStatus
							end
							if callback and (last_v ~= newStatus or options.AllowDuplicateCalls) then
								colored_toggleInner_BackgroundColor3[3] = (newStatus and "main") or "topGradient"
								colored_toggleInner_BackgroundColor3[4] = (newStatus and 1.5) or nil
								colored_toggleInner_ImageColor3[3] = (newStatus and "main") or "bottomGradient"
								colored_toggleInner_ImageColor3[4] = (newStatus and 2.5) or nil
								tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = (newStatus and darkenColor(library.colors.main, 1.5)) or library.colors.topGradient,
									ImageColor3 = (newStatus and darkenColor(library.colors.main, 2.5)) or library.colors.bottomGradient
								}):Play()
								task.spawn(callback, newStatus, last_v)
							end
						end
						return newStatus
					end
					options.Keybind = options.Keybind or options.Key or options.KeyBind
					local haskbflag, kbUpdate, kbData = nil, nil, nil
					if options.Keybind then
						local options = options.Keybind
						local htyp = typeof(options)
						if htyp == "EnumItem" then
							options = {
								Value = options
							}
						elseif htyp ~= "table" then
							options = {}
						end
						local presetKeybind, callback, kbpresscallback, kbflag = options.Value or options.Key, options.Callback, options.Pressed, options.Flag or (function()
							if flagName then
								return flagName .. "_ToggleKeybind"
							end
							library.unnamedkeybinds = 1 + (library.unnamedkeybinds or 0)
							return "Keybind" .. tostring(library.unnamedkeybinds)
						end)()
						if elements[kbflag] ~= nil or kbflag == flagName then
							warn(debug.traceback("Warning! Re-used flag '" .. kbflag .. "'", 3))
						end
						haskbflag = kbflag
						library.keyHandler = keyHandler
						local keyHandler = options.KeyNames or keyHandler
						local bindedKey = presetKeybind
						local justBinded = false
						local keyName = keyHandler.allowedKeys[bindedKey] or (bindedKey and (bindedKey.Name or tostring(bindedKey):gsub("Enum.KeyCode.", ""))) or "NONE"
						local newKeybind = newToggle
						keybindPositioner.Name = "keybindPositioner"
						keybindPositioner.Parent = newKeybind
						keybindPositioner.BackgroundColor3 = Color3.new(1, 1, 1)
						keybindPositioner.BackgroundTransparency = 1
						keybindPositioner.Position = UDim2.new(0.00448430516)
						keybindPositioner.Size = UDim2.fromOffset(214, 19)
						keybindPositioner.ZIndex = 1 + toggleButton.ZIndex
						keybindList.Name = "keybindList"
						keybindList.Parent = keybindPositioner
						keybindList.FillDirection = Enum.FillDirection.Horizontal
						keybindList.HorizontalAlignment = Enum.HorizontalAlignment.Right
						keybindList.SortOrder = Enum.SortOrder.LayoutOrder
						keybindList.VerticalAlignment = Enum.VerticalAlignment.Center
						keybindButton.Name = "keybindButton"
						keybindButton.Parent = keybindPositioner
						keybindButton.Active = false
						keybindButton.BackgroundColor3 = Color3.new(1, 1, 1)
						keybindButton.BackgroundTransparency = 1
						keybindButton.Position = UDim2.fromScale(0.598130822, 0.184210524)
						keybindButton.Selectable = false
						keybindButton.Size = UDim2.fromOffset(46, 12)
						keybindButton.Font = Enum.Font.Code
						keybindButton.Text = keyName or (presetKeybind and tostring(presetKeybind):gsub("Enum.KeyCode.", "")) or "[NONE]"
						keybindButton.TextColor3 = library.colors.otherElementText
						local colored_keybindButton_TextColor3 = {keybindButton, "TextColor3", "otherElementText"}
						colored[1 + #colored] = colored_keybindButton_TextColor3
						keybindButton.TextSize = 14
						keybindButton.TextXAlignment = Enum.TextXAlignment.Right
						keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
						local klast_v = bindedKey or presetKeybind
						local function newkey()
							if lockedup then
								return
							end
							local old_texts = keybindButton.Text
							colored_keybindButton_TextColor3[3] = "main"
							colored_keybindButton_TextColor3[4] = nil
							tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								TextColor3 = library.colors.main
							}):Play()
							if klast_v then
								keybindButton.Text = "(Was " .. (klast_v and tostring(klast_v):gsub("Enum.KeyCode.", "") or "[NONE]") .. ") [...]"
							else
								keybindButton.Text = "[...]"
							end
							local receivingKey = nil
							receivingKey = userInputService.InputBegan:Connect(function(key)
								if lockedup then
									return receivingKey:Disconnect()
								end
								klast_v = library_flags[kbflag]
								if not keyHandler.notAllowedKeys[key.KeyCode] then
									if key.KeyCode ~= Enum.KeyCode.Unknown then
										bindedKey = (key.KeyCode ~= Enum.KeyCode.Escape and key.KeyCode) or library_flags[kbflag]
										library_flags[kbflag] = bindedKey
										if options.Location then
											options.Location[options.LocationFlag or kbflag] = bindedKey
										end
										if bindedKey then
											keyName = keyHandler.allowedKeys[bindedKey] or (bindedKey and (bindedKey.Name or tostring(bindedKey):gsub("Enum.KeyCode.", ""))) or "NONE"
											keybindButton.Text = "[" .. (keyName or (bindedKey and bindedKey.Name) or "NONE") .. "]"
											keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
											justBinded = true
											colored_keybindButton_TextColor3[3] = "otherElementText"
											colored_keybindButton_TextColor3[4] = nil
											tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												TextColor3 = library.colors.otherElementText
											}):Play()
											receivingKey:Disconnect()
										end
										if callback and klast_v ~= bindedKey then
											task.spawn(callback, bindedKey, klast_v)
										end
										return
									elseif key.KeyCode == Enum.KeyCode.Unknown and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
										bindedKey = key.UserInputType
										library_flags[kbflag] = bindedKey
										if options.Location then
											options.Location[options.LocationFlag or kbflag] = bindedKey
										end
										keyName = keyHandler.allowedKeys[bindedKey]
										keybindButton.Text = "[" .. (keyName or (bindedKey and bindedKey.Name) or tostring(bindedKey.KeyCode):gsub("Enum.KeyCode.", "")) .. "]"
										keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
										justBinded = true
										colored_keybindButton_TextColor3[3] = "otherElementText"
										colored_keybindButton_TextColor3[4] = nil
										tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											TextColor3 = library.colors.otherElementText
										}):Play()
										receivingKey:Disconnect()
										if callback and klast_v ~= bindedKey then
											task.spawn(callback, bindedKey, klast_v)
										end
										return
									end
								end
								if key.KeyCode == Enum.KeyCode.Backspace or Enum.KeyCode.Escape == key.KeyCode then
									old_texts, bindedKey = "[NONE]", nil
								end
								keybindButton.Text = old_texts
								colored_keybindButton_TextColor3[3] = "otherElementText"
								colored_keybindButton_TextColor3[4] = nil
								tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									TextColor3 = library.colors.otherElementText
								}):Play()
								receivingKey:Disconnect()
								if callback and klast_v ~= bindedKey then
									task.spawn(callback, bindedKey, klast_v)
								end
							end)
							library.signals[1 + #library.signals] = receivingKey
						end
						library.signals[1 + #library.signals] = keybindButton.MouseButton1Click:Connect(newkey)
						if kbpresscallback and not justBinded then
							library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(key, chatting)
								chatting = chatting or not not userInputService:GetFocusedTextBox()
								if not chatting and not justBinded then
									if not keyHandler.notAllowedKeys[key.KeyCode] and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
										if bindedKey == key.UserInputType or not justBinded and bindedKey == key.KeyCode then
											if kbpresscallback then
												task.spawn(kbpresscallback, key, chatting)
											end
										end
										justBinded = false
									end
								end
							end)
						end
						options.Mode = (options.Mode and string.lower(tostring(options.Mode))) or "dynamic"
						local modes = {
							dynamic = 1,
							hold = 1,
							toggle = 1
						}
						library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(input, chatting)
							if justBinded then
								wait(0.1)
								justBinded = false
								return
							elseif lockedup then
								return
							end
							chatting = chatting or userInputService:GetFocusedTextBox()
							if not chatting then
								local key = library_flags[kbflag]
								local mode = options.Mode
								if not modes[mode] then
									mode = "dynamic"
									options.Mode = mode
								end
								if key == input.KeyCode or key == input.UserInputType then
									if mode == "dynamic" or mode == "both" or mode == "hold" then
										if mode == "dynamic" and library_flags[flagName] then
											return Set(false)
										end
										Set(true)
										local now = os.clock()
										local waittil = nil
										if mode == "dynamic" then
											waittil = Instance.new("BindableEvent")
										end
										local xconnection = nil
										xconnection = userInputService.InputEnded:Connect(function(input, chatting)
											chatting = chatting or userInputService:GetFocusedTextBox()
											if not chatting and (key == input.KeyCode or key == input.UserInputType) then
												xconnection = (xconnection and xconnection:Disconnect() and nil) or nil
												if mode == "hold" or os.clock() - now > math.clamp(tonumber(options.DynamicTime) or 0.65, 0.05, 20) then
													Set(false)
												end
											end
										end)
										library.signals[1 + #library.signals] = xconnection
									else
										Set(not library_flags[flagName])
									end
								end
							end
						end)
						local function kbset(t, key)
							if nil == key and t ~= nil then
								key = t
							end
							if key == "nil" or key == "NONE" or key == "none" then
								key = nil
							end
							last_v = library_flags[kbflag]
							bindedKey = key
							library_flags[kbflag] = key
							if options.Location then
								options.Location[options.LocationFlag or kbflag] = key
							end
							keyName = (key == nil and "NONE") or keyHandler.allowedKeys[key]
							keybindButton.Text = "[" .. (keyName or key.Name or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
							keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
							justBinded = true
							colored_keybindButton_TextColor3[3] = "otherElementText"
							colored_keybindButton_TextColor3[4] = nil
							tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								TextColor3 = library.colors.otherElementText
							}):Play()
							if callback and (last_v ~= key or options.AllowDuplicateCalls) then
								task.spawn(callback, key, last_v)
							end
							return key
						end
						if presetKeybind ~= nil then
							kbset(presetKeybind)
						else
							library_flags[kbflag] = bindedKey
							if options.Location then
								options.Location[options.LocationFlag or kbflag] = bindedKey
							end
						end
						local default = library_flags[kbflag]
						local function UpdateKb()
							callback, kbpresscallback = options.Callback, options.Pressed
							local key = library_flags[kbflag]
							bindedKey = key
							keyName = keyHandler.allowedKeys[bindedKey] or (bindedKey and (bindedKey.Name or tostring(bindedKey):gsub("Enum.KeyCode.", ""))) or "NONE"
							keybindButton.Text = "[" .. (keyName or (key and key.Name) or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
							keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
							colored_keybindButton_TextColor3[3] = "otherElementText"
							colored_keybindButton_TextColor3[4] = (lockedup and 2.5) or nil
							tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								TextColor3 = (lockedup and darkenColor(library.colors.otherElementText, colored_keybindButton_TextColor3[4])) or library.colors.otherElementText
							}):Play()
							return key
						end
						kbUpdate = UpdateKb
						local objectdata = {
							Options = options,
							Name = kbflag,
							Flag = kbflag,
							Type = "Keybind",
							Default = default,
							Parent = sectionFunctions,
							Instance = keybindButton,
							Get = function()
								return library_flags[kbflag]
							end,
							Set = kbset,
							RawSet = function(t, key)
								if t ~= nil and key == nil then
									key = t
								end
								library_flags[kbflag] = key
								UpdateKb()
								return key
							end,
							Update = UpdateKb,
							Reset = function()
								return kbset(nil, default)
							end
						}
						kbData = objectdata
						tabFunctions.Flags[kbflag], sectionFunctions.Flags[kbflag], elements[kbflag] = objectdata, objectdata, objectdata
					end
					sectionFunctions:Update()
					library.signals[1 + #library.signals] = toggleButton.MouseButton1Click:Connect(function()
						if not library.colorpicker and not submenuOpen and not lockedup then
							local newval = not library_flags[flagName]
							if options.Condition ~= nil then
								if type(options.Condition) == "function" then
									local v, e = pcall(options.Condition, newval, not newval)
									if e then
										if not v then
											warn(debug.traceback(string.format("Error in toggle %s's Condition function: %s", flagName, e), 2))
										end
									else
										return last_v
									end
								end
							end
							library_flags[flagName] = newval
							if options.Location then
								options.Location[options.LocationFlag or flagName] = newval
							end
							colored_toggleInner_BackgroundColor3[3] = (newval and "main") or "topGradient"
							colored_toggleInner_BackgroundColor3[4] = (newval and 1.5) or nil
							colored_toggleInner_ImageColor3[3] = (newval and "main") or "bottomGradient"
							colored_toggleInner_ImageColor3[4] = (newval and 2.5) or nil
							tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = (newval and darkenColor(library.colors.main, 1.5)) or library.colors.topGradient,
								ImageColor3 = (newval and darkenColor(library.colors.main, 2.5)) or library.colors.bottomGradient
							}):Play()
							if callback then
								task.spawn(callback, newval)
							end
						end
					end)
					library.signals[1 + #library.signals] = newToggle.MouseEnter:Connect(function()
						colored_toggle_BackgroundColor3[3] = "main"
						colored_toggle_BackgroundColor3[4] = 1.5
						colored_toggle_ImageColor3[3] = "main"
						colored_toggle_ImageColor3[4] = 2.5
						tweenService:Create(toggle, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = newToggle.MouseLeave:Connect(function()
						colored_toggle_BackgroundColor3[3] = "topGradient"
						colored_toggle_BackgroundColor3[4] = nil
						colored_toggle_ImageColor3[3] = "bottomGradient"
						colored_toggle_ImageColor3[4] = nil
						tweenService:Create(toggle, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end)
					if library_flags[flagName] then
						colored_toggleInner_BackgroundColor3[3] = "main"
						colored_toggleInner_BackgroundColor3[4] = 1.5
						colored_toggleInner_ImageColor3[3] = "main"
						colored_toggleInner_ImageColor3[4] = 2.5
						tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end
					local function Update()
						toggleName, callback = options.Name or toggleName, options.Callback
						local boolstatus = library_flags[flagName]
						colored_toggleInner_BackgroundColor3[3] = (boolstatus and "main") or "topGradient"
						colored_toggleInner_BackgroundColor3[4] = (boolstatus and 1.5) or nil
						colored_toggleInner_ImageColor3[3] = (boolstatus and "main") or "bottomGradient"
						colored_toggleInner_ImageColor3[4] = (boolstatus and 2.5) or nil
						if lockedup then
							colored_toggleInner_BackgroundColor3[4] = 1 + (colored_toggleInner_BackgroundColor3[4] or 1)
							colored_toggleInner_ImageColor3[4] = 1 + (colored_toggleInner_ImageColor3[4] or 1)
						end
						tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = (boolstatus and darkenColor(library.colors.main, colored_toggleInner_BackgroundColor3[4])) or library.colors.topGradient,
							ImageColor3 = (boolstatus and darkenColor(library.colors.main, colored_toggleInner_ImageColor3[4])) or library.colors.bottomGradient
						}):Play()
						colored_toggleHeadline_TextColor3[4] = (lockedup and 2.5) or nil
						tweenService:Create(toggleHeadline, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = (lockedup and darkenColor(library.colors.elementText, colored_toggleHeadline_TextColor3[4])) or library.colors.elementText
						}):Play()
						toggleHeadline.Text = toggleName or "???"
						return boolstatus
					end
					if alreadyEnabled ~= nil then
						Set(alreadyEnabled)
					else
						library_flags[flagName] = not not alreadyEnabled
						if options.Location then
							options.Location[options.LocationFlag or flagName] = not not alreadyEnabled
						end
					end
					local default = not not library_flags[flagName]
					Update()
					if kbUpdate then
						kbUpdate()
					end
					local objectdata = {
						Options = options,
						Type = "Toggle",
						Name = flagName,
						Flag = flagName,
						Default = default,
						Parent = sectionFunctions,
						Instance = toggleButton,
						Set = Set,
						RawSet = function(t, newStatus, condition)
							if t ~= nil and type(t) ~= "table" then
								newStatus, condition = t, newStatus
							end
							last_v = library_flags[flagName]
							if condition ~= false and condition ~= 0 then
								local overridecondition = condition and type(condition) == "function" and condition
								if overridecondition or options.Condition ~= nil then
									if type(overridecondition or options.Condition) == "function" then
										local v, e = pcall(overridecondition or options.Condition, newStatus, last_v)
										if e then
											if not v then
												warn(debug.traceback(string.format("Error in toggle (RawSet) %s's Condition function: %s", flagName, e), 2))
											end
										else
											return last_v
										end
									end
								end
							end
							library_flags[flagName] = newStatus
							if options.Location then
								options.Location[options.LocationFlag or flagName] = newStatus
							end
							Update()
							return newStatus
						end,
						KeybindData = kbData,
						Get = function()
							return library_flags[flagName]
						end,
						Update = Update,
						Reset = function()
							return Set(nil, default)
						end,
						SetLocked = function(t, state)
							if type(t) ~= "table" then
								state = t
							end
							local last_v = lockedup
							if state == nil then
								lockedup = not lockedup
							else
								lockedup = state
							end
							if lockedup ~= last_v then
								colored_toggleHeadline_TextColor3[4] = (lockedup and 2.5) or nil
								Update()
								if kbUpdate then
									kbUpdate()
								end
							end
							return lockedup
						end,
						Lock = function()
							if not lockedup then
								lockedup = true
								colored_toggleHeadline_TextColor3[4] = 2.5
								Update()
								if kbUpdate then
									kbUpdate()
								end
							end
							return lockedup
						end,
						Unlock = function()
							if lockedup then
								lockedup = false
								colored_toggleHeadline_TextColor3[4] = nil
								Update()
								if kbUpdate then
									kbUpdate()
								end
							end
							return lockedup
						end,
						SetCondition = function(t, condition)
							if type(t) ~= "table" and condition == nil then
								condition = t
							end
							options.Condition = condition
							return condition
						end
					}
					if kbData then
						kbData.ToggleData = objectdata
					end
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.CreateToggle = sectionFunctions.AddToggle
				sectionFunctions.NewToggle = sectionFunctions.AddToggle
				sectionFunctions.Toggle = sectionFunctions.AddToggle
				sectionFunctions.Tog = sectionFunctions.AddToggle
				function sectionFunctions:AddButton(...)
					local args = nil
					if ... and not select(2, ...) and type(...) == "table" and #... > 0 and type((...)[1]) == "table" and (...)[1].Name then
						args = ...
					else
						args = {...}
					end
					local buttons, offset = {}, 0
					local fram = nil
					for _, options in next, args do
						options = (options and options[1] and type(options[1]) == "string" and resolvevararg("Button", unpack(options))) or options
						local buttonName, callback = assert(options.Name, "Missing Name for new button."), options.Callback or (warn("AddButton missing callback. Name:", options.Name or "No Name", debug.traceback("")) and nil) or function()
						end
						local lockedup = options.Locked
						local realButton = Instance_new("TextButton")
						realButton.Name = "realButton"
						realButton.BackgroundColor3 = Color3.new(1, 1, 1)
						realButton.BackgroundTransparency = 1
						realButton.Size = UDim2.fromScale(1, 1)
						realButton.ZIndex = 5
						realButton.Font = Enum.Font.Code
						realButton.Text = (buttonName and tostring(buttonName)) or "???"
						realButton.TextColor3 = library.colors.elementText
						local colored_realButton_TextColor3 = {realButton, "TextColor3", "elementText"}
						colored[1 + #colored] = colored_realButton_TextColor3
						realButton.TextSize = 14
						local textsize = textToSize(realButton).X + 14
						if newSection.Parent.AbsoluteSize.X < offset + textsize + 8 then
							offset, fram = 0, nil
						end
						local newButton = fram or Instance_new("Frame")
						fram = newButton
						local button = Instance_new("ImageLabel")
						newButton.Name = removeSpaces((buttonName and buttonName:lower() or "???") .. "Holder")
						newButton.Parent = sectionHolder
						newButton.BackgroundColor3 = Color3.new(1, 1, 1)
						newButton.BackgroundTransparency = 1
						newButton.Size = UDim2.new(1, 0, 0, 24)
						button.Name = "button"
						button.Parent = newButton
						button.Active = true
						button.BackgroundColor3 = library.colors.topGradient
						local colored_button_BackgroundColor3 = {button, "BackgroundColor3", "topGradient"}
						colored[1 + #colored] = colored_button_BackgroundColor3
						button.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {button, "BorderColor3", "elementBorder"}
						button.Position = UDim2.new(0.031, offset, 0.166)
						button.Selectable = true
						button.Size = UDim2.fromOffset(28, 18)
						button.Image = "rbxassetid://2454009026"
						button.ImageColor3 = library.colors.bottomGradient
						local colored_button_ImageColor3 = {button, "ImageColor3", "bottomGradient"}
						colored[1 + #colored] = colored_button_ImageColor3
						local buttonInner = Instance_new("ImageLabel")
						buttonInner.Name = "buttonInner"
						buttonInner.Parent = button
						buttonInner.Active = true
						buttonInner.AnchorPoint = Vector2.new(0.5, 0.5)
						buttonInner.BackgroundColor3 = library.colors.topGradient
						local colored_buttonInner_BackgroundColor3 = {buttonInner, "BackgroundColor3", "topGradient"}
						colored[1 + #colored] = colored_buttonInner_BackgroundColor3
						buttonInner.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {buttonInner, "BorderColor3", "elementBorder"}
						buttonInner.Position = UDim2.fromScale(0.5, 0.5)
						buttonInner.Selectable = true
						buttonInner.Size = UDim2.new(1, -4, 1, -4)
						buttonInner.Image = "rbxassetid://2454009026"
						buttonInner.ImageColor3 = library.colors.bottomGradient
						local colored_buttonInner_ImageColor3 = {buttonInner, "ImageColor3", "bottomGradient"}
						colored[1 + #colored] = colored_buttonInner_ImageColor3
						button.Size = UDim2.fromOffset(textsize, 18)
						realButton.Parent = button
						offset = offset + textsize + 6
						sectionFunctions:Update()
						local presses = 0
						library.signals[1 + #library.signals] = realButton.MouseButton1Click:Connect(function()
							if lockedup then
								return
							end
							if options.Condition ~= nil and type(options.Condition) == "function" then
								local v, e = pcall(options.Condition, presses)
								if e then
									if not v then
										warn(debug.traceback(string.format("Error in button %s's Condition function: %s", buttonName, e), 2))
									end
								else
									return
								end
							end
							if not library.colorpicker and not submenuOpen then
								presses = 1 + presses
								task.spawn(callback, presses)
							end
						end)
						local imin = nil
						library.signals[1 + #library.signals] = button.MouseEnter:Connect(function()
							imin = 1
							colored_button_BackgroundColor3[3] = "main"
							colored_button_BackgroundColor3[4] = 1.5
							colored_button_ImageColor3[3] = "main"
							colored_button_ImageColor3[4] = 2.5
							tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = darkenColor(library.colors.main, 1.5),
								ImageColor3 = darkenColor(library.colors.main, 2.5)
							}):Play()
						end)
						library.signals[1 + #library.signals] = button.MouseLeave:Connect(function()
							imin = nil
							colored_button_BackgroundColor3[3] = "topGradient"
							colored_button_BackgroundColor3[4] = nil
							colored_button_ImageColor3[3] = "bottomGradient"
							colored_button_ImageColor3[4] = nil
							tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
						end)
						local function Update()
							buttonName, callback = options.Name or buttonName, options.Callback or (warn(debug.traceback("AddButton missing callback. Name:" .. (options.Name or buttonName or "No Name"), 2)) and nil) or function()
							end
							colored_button_BackgroundColor3[3] = (imin and "main") or "topGradient"
							colored_button_BackgroundColor3[4] = (imin and 1.5) or nil
							colored_button_ImageColor3[3] = (imin and "main") or "bottomGradient"
							colored_button_ImageColor3[4] = (imin and 2.5) or nil
							colored_buttonInner_BackgroundColor3[4] = nil
							colored_buttonInner_ImageColor3[4] = nil
							colored_realButton_TextColor3[4] = nil
							if lockedup then
								colored_button_BackgroundColor3[4] = 1.25
								colored_button_ImageColor3[4] = 1.25
								colored_buttonInner_BackgroundColor3[4] = 1.25
								colored_buttonInner_ImageColor3[4] = 1.25
								colored_realButton_TextColor3[4] = 1.75
							end
							tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = (imin and darkenColor(library.colors.main, colored_button_BackgroundColor3[4])) or darkenColor(library.colors.topGradient, colored_button_BackgroundColor3[4]),
								ImageColor3 = (imin and darkenColor(library.colors.main, colored_button_ImageColor3[4])) or darkenColor(library.colors.bottomGradient, colored_button_ImageColor3[4])
							}):Play()
							tweenService:Create(buttonInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = darkenColor(library.colors.topGradient, colored_buttonInner_BackgroundColor3[4]),
								ImageColor3 = darkenColor(library.colors.bottomGradient, colored_buttonInner_ImageColor3[4])
							}):Play()
							tweenService:Create(realButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								TextColor3 = darkenColor(library.colors.elementText, colored_realButton_TextColor3[4])
							}):Play()
							realButton.Text = (buttonName and tostring(buttonName)) or "???"
							return presses
						end
						Update()
						local objectdata = {
							Options = options,
							Name = buttonName,
							Flag = buttonName,
							Type = "Button",
							Parent = sectionFunctions,
							Instance = realButton,
							Press = function(...)
								if lockedup then
									return presses
								end
								if options.Condition ~= nil and type(options.Condition) == "function" then
									local v, e = pcall(options.Condition, presses)
									if e then
										if not v then
											warn(debug.traceback(string.format("Error in button %s's Condition function: %s", buttonName, e), 2))
										end
									else
										return presses
									end
								end
								local args = {...}
								local a1 = args[1]
								if a1 and type(a1) == "table" then
									table.remove(args, 1)
								end
								presses = 1 + presses
								task.spawn(callback, presses, ...)
								return presses
							end,
							RawPress = function(...)
								local args = {...}
								local a1 = args[1]
								if a1 and type(a1) == "table" then
									table.remove(args, 1)
								end
								task.spawn(callback, presses, ...)
								return presses
							end,
							Get = function()
								return callback, presses
							end,
							SetLocked = function(t, state)
								if type(t) ~= "table" then
									state = t
								end
								local last_v = lockedup
								if state == nil then
									lockedup = not lockedup
								else
									lockedup = state
								end
								if lockedup ~= last_v then
									Update()
								end
								return lockedup
							end,
							Lock = function()
								if not lockedup then
									lockedup = true
									Update()
								end
								return lockedup
							end,
							Unlock = function()
								if lockedup then
									lockedup = false
									Update()
								end
								return lockedup
							end,
							SetCondition = function(t, condition)
								if type(t) ~= "table" and condition == nil then
									condition = t
								end
								options.Condition = condition
								return condition
							end,
							Update = Update,
							SetText = function(t, str)
								if type(t) ~= "table" and str == nil then
									str = t
								end
								buttonName = str
								options.Name = str
								realButton.Text = (buttonName and tostring(buttonName)) or "???"
								return str
							end,
							SetCallback = function(t, call)
								if type(t) ~= "table" and call == nil then
									call = t
								end
								options.Callback = call
								callback = call
								return call
							end
						}
						tabFunctions.Flags[buttonName], sectionFunctions.Flags[buttonName], elements[buttonName] = objectdata, objectdata, objectdata
						buttons[1 + #buttons] = objectdata
					end
					function buttons.PressAll()
						for _, v in next, buttons do
							v.Press()
						end
					end
					function buttons.UpdateAll()
						for _, v in next, buttons do
							v.Update()
						end
					end
					if #buttons == 1 then
						for k, v in next, buttons[1] do
							if buttons[k] == nil then
								buttons[k] = v
							end
						end
					end
					return buttons
				end
				sectionFunctions.CreateButton = sectionFunctions.AddButton
				sectionFunctions.NewButton = sectionFunctions.AddButton
				sectionFunctions.Button = sectionFunctions.AddButton
				function sectionFunctions:AddTextbox(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Textbox", options, ...)) or options
					local textboxName, presetValue, placeholder, callback, flagName = assert(options.Name, "Missing Name for new textbox."), options.Value, options.Placeholder, options.Callback, options.Flag or (function()
						library.unnamedtextboxes = 1 + (library.unnamedtextboxes or 0)
						return "Textbox" .. tostring(library.unnamedtextboxes)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local requiredtype = options.Type
					local newTextbox = Instance_new("Frame")
					local textbox = Instance_new("ImageLabel")
					local textboxInner = Instance_new("ImageLabel")
					local realTextbox = Instance_new("TextBox")
					local textboxHeadline = Instance_new("TextLabel")
					newTextbox.Name = removeSpaces((textboxName and textboxName:lower()) or "???") .. "Holder"
					newTextbox.Parent = sectionHolder
					newTextbox.BackgroundColor3 = Color3.new(1, 1, 1)
					newTextbox.BackgroundTransparency = 1
					newTextbox.Size = UDim2.new(1, 0, 0, 42)
					textbox.Name = "textbox"
					textbox.Parent = newTextbox
					textbox.Active = true
					textbox.BackgroundColor3 = library.colors.topGradient
					local colored_textbox_BackgroundColor3 = {textbox, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_textbox_BackgroundColor3
					textbox.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {textbox, "BorderColor3", "elementBorder"}
					textbox.Position = UDim2.fromScale(0.031, 0.48)
					textbox.Selectable = true
					textbox.Size = UDim2.fromOffset(206, 18)
					textbox.Image = "rbxassetid://2454009026"
					textbox.ImageColor3 = library.colors.bottomGradient
					local colored_textbox_ImageColor3 = {textbox, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_textbox_ImageColor3
					textboxInner.Name = "textboxInner"
					textboxInner.Parent = textbox
					textboxInner.Active = true
					textboxInner.AnchorPoint = Vector2.new(0.5, 0.5)
					textboxInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {textboxInner, "BackgroundColor3", "topGradient"}
					textboxInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {textboxInner, "BorderColor3", "elementBorder"}
					textboxInner.Position = UDim2.fromScale(0.5, 0.5)
					textboxInner.Selectable = true
					textboxInner.Size = UDim2.new(1, -4, 1, -4)
					textboxInner.Image = "rbxassetid://2454009026"
					textboxInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {textboxInner, "ImageColor3", "bottomGradient"}
					realTextbox.Name = "realTextbox"
					if options.Rich or options.RichText or options.RichTextBox then
						realTextbox.RichText = true
					end
					if options.MultiLine or options.Lines then
						realTextbox.MultiLine = true
					end
					if options.Font or options.TextFont then
						realTextbox.Font = options.Font
					end
					if options.TextScaled or options.Scaled then
						realTextbox.TextScaled = true
					end
					realTextbox.BackgroundColor3 = Color3.new(1, 1, 1)
					realTextbox.BackgroundTransparency = 1
					realTextbox.Position = UDim2.new(0.0295485705)
					realTextbox.Size = UDim2.fromScale(0.97, 1)
					realTextbox.ZIndex = 5
					realTextbox.Font = Enum.Font.Code
					realTextbox.LineHeight = 1.15
					realTextbox.Text = tostring(presetValue)
					realTextbox.TextColor3 = library.colors.otherElementText
					colored[1 + #colored] = {realTextbox, "TextColor3", "otherElementText"}
					realTextbox.TextSize = 14
					if options.ClearTextOnFocus or options.ClearText then
						realTextbox.ClearTextOnFocus = true
					else
						realTextbox.ClearTextOnFocus = false
					end
					realTextbox.PlaceholderText = (placeholder ~= nil and tostring(placeholder)) or (presetValue ~= nil and tostring(presetValue)) or ""
					realTextbox.TextXAlignment = Enum.TextXAlignment.Left
					if options.CustomProperties and type(options.CustomProperties) == "table" then
						for k, v in next, options.CustomProperties do
							local oof, e = pcall(function()
								realTextbox[k] = v
							end)
							if not oof and e then
								warn("Error setting Textbox", flagName, "|", e, debug.traceback(""))
							end
						end
					end
					realTextbox.Parent = textbox
					textboxHeadline.Name = "textboxHeadline"
					textboxHeadline.Parent = newTextbox
					textboxHeadline.Active = true
					textboxHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					textboxHeadline.BackgroundTransparency = 1
					textboxHeadline.Position = UDim2.new(0.031)
					textboxHeadline.Selectable = true
					textboxHeadline.Size = UDim2.fromOffset(206, 20)
					textboxHeadline.ZIndex = 5
					textboxHeadline.Font = Enum.Font.Code
					textboxHeadline.LineHeight = 1.15
					textboxHeadline.Text = (textboxName and tostring(textboxName)) or "???"
					textboxHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {textboxHeadline, "TextColor3", "elementText"}
					textboxHeadline.TextSize = 14
					textboxHeadline.TextXAlignment = Enum.TextXAlignment.Left
					sectionFunctions:Update()
					local last_v = presetValue
					local function resolvevalue(val)
						if options.PreFormat then
							local typ = type(options.PreFormat)
							if typ == "function" then
								local x, e = pcall(options.PreFormat, val)
								if not x and e then
									warn("Error in Pre-Format (Textbox " .. flagName .. "):", e)
								else
									val = e
								end
							end
						end
						if requiredtype == "number" then
							if not options.Hex and not options.Binary and not options.Base then
								val = tonumber(val) or tonumber(val:gsub("%D", ""), 10) or 0
							else
								val = tonumber(val, (options.Hex and 16) or (options.Binary and 2) or options.Base or 10) or 0
							end
							if options.Max or options.Min then
								val = math.clamp(val, options.Min or -math.huge, options.Max or math.huge)
							end
							local decimalprecision = tonumber(options.Decimals or options.Precision or options.Precise)
							if decimalprecision then
								val = tonumber(string.format("%0." .. tostring(decimalprecision) .. "f", val))
							end
						end
						if options.PostFormat then
							local typ = type(options.PostFormat)
							if typ == "function" then
								local x, e = pcall(options.PostFormat, val)
								if not x and e then
									warn("Error in Post-Format (Textbox " .. flagName .. "):", e)
								else
									val = e
								end
							end
						end
						return (val and tonumber(val)) or val
					end
					library.signals[1 + #library.signals] = realTextbox.FocusLost:Connect(function()
						last_v = library_flags[flagName]
						local val = resolvevalue(realTextbox.Text)
						library_flags[flagName] = val
						if options.Location then
							options.Location[options.LocationFlag or flagName] = val
						end
						if callback and last_v ~= val then
							task.spawn(callback, tostring(val), last_v, realTextbox)
						end
					end)
					library.signals[1 + #library.signals] = newTextbox.MouseEnter:Connect(function()
						colored_textbox_BackgroundColor3[3] = "main"
						colored_textbox_BackgroundColor3[4] = 1.5
						colored_textbox_ImageColor3[3] = "main"
						colored_textbox_ImageColor3[4] = 2.5
						tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = newTextbox.MouseLeave:Connect(function()
						colored_textbox_BackgroundColor3[3] = "topGradient"
						colored_textbox_BackgroundColor3[4] = nil
						colored_textbox_ImageColor3[3] = "bottomGradient"
						colored_textbox_ImageColor3[4] = nil
						tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end)
					local function set(t, str)
						if nil == str and t ~= nil then
							str = t
						end
						last_v = library_flags[flagName]
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						local sstr = (str ~= nil and tostring(str)) or "Empty Text"
						if realTextbox.Text ~= sstr then
							realTextbox.Text = sstr
						end
						if callback and (last_v ~= str or options.AllowDuplicateCalls) then
							task.spawn(callback, str, last_v, realTextbox)
						end
						return str
					end
					if presetValue ~= nil then
						set(presetValue)
					else
						library_flags[flagName] = presetValue
						if options.Location then
							options.Location[options.LocationFlag or flagName] = presetValue
						end
					end
					local default = library_flags[flagName]
					local function update()
						textboxName, placeholder, callback = options.Name or textboxName, options.Placeholder or placeholder, options.Callback
						local str = library_flags[flagName]
						str = (str ~= nil and tostring(str)) or "Empty Text"
						if realTextbox.Text ~= str then
							realTextbox.Text = str
						end
						textboxHeadline.Text = (textboxName and tostring(textboxName)) or "???"
						return str
					end
					local objectdata = {
						Options = options,
						Name = flagName,
						Flag = flagName,
						Type = "Textbox",
						Default = default,
						Parent = sectionFunctions,
						Instance = realTextbox,
						Get = function()
							return library_flags[flagName]
						end,
						Set = set,
						Update = update,
						RawSet = function(t, str)
							if t ~= nil and str == nil then
								str = t
							end
							last_v = library_flags[flagName]
							library_flags[flagName] = str
							if options.Location then
								options.Location[options.LocationFlag or flagName] = str
							end
							update()
							return str
						end,
						Reset = function()
							return set(nil, default)
						end
					}
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.AddTextBox = sectionFunctions.AddTextbox
				sectionFunctions.NewTextBox = sectionFunctions.AddTextbox
				sectionFunctions.CreateTextBox = sectionFunctions.AddTextbox
				sectionFunctions.TextBox = sectionFunctions.AddTextbox
				sectionFunctions.NewTextbox = sectionFunctions.AddTextbox
				sectionFunctions.CreateTextbox = sectionFunctions.AddTextbox
				sectionFunctions.Textbox = sectionFunctions.AddTextbox
				sectionFunctions.Box = sectionFunctions.AddTextbox
				function sectionFunctions:AddKeybind(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Keybind", options, ...)) or options
					local keybindName, presetKeybind, callback, presscallback, flag = assert(options.Name, "Missing Name for new keybind."), options.Value, options.Callback, options.Pressed, options.Flag or (function()
						library.unnamedkeybinds = 1 + (library.unnamedkeybinds or 0)
						return "Keybind" .. tostring(library.unnamedkeybinds)
					end)()
					if elements[flag] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flag .. "'", 3))
					end
					library.keyHandler = keyHandler
					local keyHandler = options.KeyNames or keyHandler
					local newKeybind = Instance_new("Frame")
					local keybindHeadline = Instance_new("TextLabel")
					local keybindPositioner = Instance_new("Frame")
					local keybindList = Instance_new("UIListLayout")
					local keybindButton = Instance_new("TextButton")
					local bindedKey = presetKeybind
					local justBinded = false
					local keyName = (presetKeybind and tostring(presetKeybind):gsub("Enum.KeyCode.", "") or "")
					newKeybind.Name = "newKeybind"
					newKeybind.Parent = sectionHolder
					newKeybind.BackgroundColor3 = Color3.new(1, 1, 1)
					newKeybind.BackgroundTransparency = 1
					newKeybind.Size = UDim2.new(1, 0, 0, 19)
					keybindHeadline.Name = "keybindHeadline"
					keybindHeadline.Parent = newKeybind
					keybindHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					keybindHeadline.BackgroundTransparency = 1
					keybindHeadline.Position = UDim2.fromScale(0.031, 0.165842161)
					keybindHeadline.Size = UDim2.fromOffset(215, 12)
					keybindHeadline.Font = Enum.Font.Code
					keybindHeadline.Text = (keybindName and tostring(keybindName)) or "???"
					keybindHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {keybindHeadline, "TextColor3", "elementText"}
					keybindHeadline.TextSize = 14
					keybindHeadline.TextXAlignment = Enum.TextXAlignment.Left
					keybindPositioner.Name = "keybindPositioner"
					keybindPositioner.Parent = newKeybind
					keybindPositioner.BackgroundColor3 = Color3.new(1, 1, 1)
					keybindPositioner.BackgroundTransparency = 1
					keybindPositioner.Position = UDim2.new(0.00448430516)
					keybindPositioner.Size = UDim2.fromOffset(214, 19)
					keybindList.Name = "keybindList"
					keybindList.Parent = keybindPositioner
					keybindList.FillDirection = Enum.FillDirection.Horizontal
					keybindList.HorizontalAlignment = Enum.HorizontalAlignment.Right
					keybindList.SortOrder = Enum.SortOrder.LayoutOrder
					keybindList.VerticalAlignment = Enum.VerticalAlignment.Center
					keybindButton.Name = "keybindButton"
					keybindButton.Parent = keybindPositioner
					keybindButton.Active = false
					keybindButton.BackgroundColor3 = Color3.new(1, 1, 1)
					keybindButton.BackgroundTransparency = 1
					keybindButton.Position = UDim2.fromScale(0.598130822, 0.184210524)
					keybindButton.Selectable = false
					keybindButton.Size = UDim2.fromOffset(46, 12)
					keybindButton.Font = Enum.Font.Code
					keybindButton.Text = (presetKeybind and tostring(presetKeybind):gsub("Enum.KeyCode.", "") or "[NONE]")
					keybindButton.TextColor3 = library.colors.otherElementText
					local colored_keybindButton_TextColor3 = {keybindButton, "TextColor3", "otherElementText"}
					colored[1 + #colored] = colored_keybindButton_TextColor3
					keybindButton.TextSize = 14
					keybindButton.TextXAlignment = Enum.TextXAlignment.Right
					keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
					sectionFunctions:Update()
					local last_v = bindedKey or presetKeybind
					local function newkey()
						local old_texts = keybindButton.Text
						colored_keybindButton_TextColor3[3] = "main"
						colored_keybindButton_TextColor3[4] = nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.main
						}):Play()
						if last_v then
							keybindButton.Text = "(Was " .. (last_v and tostring(last_v):gsub("Enum.KeyCode.", "") or "[NONE]") .. ") [...]"
						else
							keybindButton.Text = "[...]"
						end
						local receivingKey = nil
						receivingKey = userInputService.InputBegan:Connect(function(key)
							last_v = library_flags[flag]
							if not keyHandler.notAllowedKeys[key.KeyCode] then
								if key.KeyCode ~= Enum.KeyCode.Unknown then
									bindedKey = (key.KeyCode ~= Enum.KeyCode.Escape and key.KeyCode) or library_flags[flag]
									library_flags[flag] = bindedKey
									if options.Location then
										options.Location[options.LocationFlag or flag] = bindedKey
									end
									if bindedKey then
										keyName = keyHandler.allowedKeys[bindedKey]
										keybindButton.Text = "[" .. (keyName or bindedKey.Name or tostring(key.KeyCode):gsub("Enum.KeyCode.", "")) .. "]"
										keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
										justBinded = true
										colored_keybindButton_TextColor3[3] = "otherElementText"
										colored_keybindButton_TextColor3[4] = nil
										tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											TextColor3 = library.colors.otherElementText
										}):Play()
										receivingKey:Disconnect()
									end
									if callback and last_v ~= bindedKey then
										task.spawn(callback, bindedKey, last_v)
									end
									return
								elseif key.KeyCode == Enum.KeyCode.Unknown and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
									bindedKey = key.UserInputType
									library_flags[flag] = bindedKey
									if options.Location then
										options.Location[options.LocationFlag or flag] = bindedKey
									end
									keyName = keyHandler.allowedKeys[bindedKey]
									keybindButton.Text = "[" .. (keyName or bindedKey.Name or tostring(key.KeyCode):gsub("Enum.KeyCode.", "")) .. "]"
									keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
									justBinded = true
									colored_keybindButton_TextColor3[3] = "otherElementText"
									colored_keybindButton_TextColor3[4] = nil
									tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										TextColor3 = library.colors.otherElementText
									}):Play()
									receivingKey:Disconnect()
									if callback and last_v ~= bindedKey then
										task.spawn(callback, bindedKey, last_v)
									end
									return
								end
							end
							if key.KeyCode == Enum.KeyCode.Backspace or Enum.KeyCode.Escape == key.KeyCode then
								old_texts, bindedKey = "[NONE]", nil
							end
							keybindButton.Text = old_texts
							colored_keybindButton_TextColor3[3] = "otherElementText"
							colored_keybindButton_TextColor3[4] = nil
							tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								TextColor3 = library.colors.otherElementText
							}):Play()
							receivingKey:Disconnect()
							if callback and last_v ~= bindedKey then
								task.spawn(callback, bindedKey, last_v)
							end
						end)
						library.signals[1 + #library.signals] = receivingKey
					end
					library.signals[1 + #library.signals] = keybindButton.MouseButton1Click:Connect(newkey)
					library.signals[1 + #library.signals] = newKeybind.InputEnded:Connect(function(input)
						if not library.colorpicker and not submenuOpen and input.UserInputType == Enum.UserInputType.MouseButton1 then
							newkey()
						end
					end)
					if presscallback then
						library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(key, chatting)
							if not keyHandler.notAllowedKeys[key.KeyCode] and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
								if not justBinded and bindedKey == key.UserInputType or not justBinded and bindedKey == key.KeyCode and not chatting then
									if presscallback then
										task.spawn(presscallback, key, chatting)
									end
								end
								if justBinded then
									justBinded = false
								end
							end
						end)
					end
					local function set(t, key)
						if nil == key and t ~= nil then
							key = t
						end
						if key == "nil" or key == "NONE" or key == "none" then
							key = nil
						end
						last_v = library_flags[flag]
						bindedKey = key
						library_flags[flag] = key
						if options.Location then
							options.Location[options.LocationFlag or flag] = key
						end
						keyName = (key == nil and "NONE") or keyHandler.allowedKeys[key]
						keybindButton.Text = "[" .. (keyName or key.Name or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
						keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
						justBinded = true
						colored_keybindButton_TextColor3[3] = "otherElementText"
						colored_keybindButton_TextColor3[4] = nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.otherElementText
						}):Play()
						if callback and (last_v ~= key or options.AllowDuplicateCalls) then
							task.spawn(callback, key, last_v)
						end
						return key
					end
					if presetKeybind ~= nil then
						set(presetKeybind)
					else
						library_flags[flag] = bindedKey
						if options.Location then
							options.Location[options.LocationFlag or flag] = bindedKey
						end
					end
					local default = library_flags[flag]
					local function update()
						keybindName, callback, presscallback = options.Name or keybindName, options.Callback, options.Pressed
						local key = library_flags[flag]
						keyName = (key == nil and "NONE") or keyHandler.allowedKeys[key]
						keybindButton.Text = "[" .. (keyName or key.Name or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
						keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
						colored_keybindButton_TextColor3[3] = "otherElementText"
						colored_keybindButton_TextColor3[4] = nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.otherElementText
						}):Play()
						keybindHeadline.Text = (keybindName and tostring(keybindName)) or "???"
						return key
					end
					local objectdata = {
						Options = options,
						Name = flag,
						Flag = flag,
						Type = "Keybind",
						Default = default,
						Parent = sectionFunctions,
						Instance = keybindButton,
						Get = function()
							return library_flags[flag]
						end,
						Set = set,
						RawSet = function(t, key)
							if nil == key and t ~= nil then
								key = t
							end
							if key == "nil" or key == "NONE" or key == "none" then
								key = nil
							end
							last_v = library_flags[flag]
							bindedKey = key
							library_flags[flag] = key
							if options.Location then
								options.Location[options.LocationFlag or flag] = key
							end
							justBinded = true
							return key
						end,
						Update = update,
						Reset = function()
							return set(nil, default)
						end
					}
					tabFunctions.Flags[flag], sectionFunctions.Flags[flag], elements[flag] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.NewKeybind = sectionFunctions.AddKeybind
				sectionFunctions.CreateKeybind = sectionFunctions.AddKeybind
				sectionFunctions.Keybind = sectionFunctions.AddKeybind
				sectionFunctions.Bind = sectionFunctions.AddKeybind
				function sectionFunctions:AddLabel(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Label", options, ...)) or options
					local labelName, flag = options.Text or options.Value or options.Name, options.Flag or (function()
						library.unnamedlabels = 1 + (library.unnamedlabels or 0)
						return "Label" .. tostring(library.unnamedlabels)
					end)()
					if elements[flag] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flag .. "'", 3))
					end
					local newLabel = Instance_new("Frame")
					local labelHeadline = Instance_new("TextLabel")
					local labelPositioner = Instance_new("Frame")
					local labelButton = Instance_new("TextButton")
					newLabel.Name = "newLabel"
					newLabel.Parent = sectionHolder
					newLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					newLabel.BackgroundTransparency = 1
					newLabel.Size = UDim2.new(1, 0, 0, 19)
					labelHeadline.Name = "labelHeadline"
					labelHeadline.Parent = newLabel
					labelHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					labelHeadline.BackgroundTransparency = 1
					labelHeadline.Position = UDim2.fromScale(0.031, 0.165842161)
					labelHeadline.Size = UDim2.fromOffset(215, 12)
					labelHeadline.Font = Enum.Font.Code
					labelHeadline.Text = (labelName and tostring(labelName)) or "Empty Text"
					labelHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {labelHeadline, "TextColor3", "elementText"}
					labelHeadline.TextSize = 14
					labelHeadline.TextXAlignment = Enum.TextXAlignment.Left
					labelPositioner.Name = "labelPositioner"
					labelPositioner.Parent = newLabel
					labelPositioner.BackgroundColor3 = Color3.new(1, 1, 1)
					labelPositioner.BackgroundTransparency = 1
					labelPositioner.Position = UDim2.new(0.00448430516)
					labelPositioner.Size = UDim2.fromOffset(214, 19)
					sectionFunctions:Update()
					local function set(t, str)
						if nil == str and t ~= nil then
							str = t
						end
						labelHeadline.Text = (nil ~= str and tostring(str)) or "Empty Text"
						return str
					end
					local default = labelHeadline.Text
					local objectdata = {
						Options = options,
						Name = flag,
						Flag = flag,
						Type = "Label",
						Default = default,
						Parent = sectionFunctions,
						Instance = labelHeadline,
						Get = function()
							return labelHeadline.Text, labelHeadline
						end,
						Set = set,
						RawSet = set,
						Update = function()
							return labelHeadline.Text
						end,
						Reset = function()
							return set(nil, default)
						end
					}
					tabFunctions.Flags[flag], sectionFunctions.Flags[flag], elements[flag] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.NewLabel = sectionFunctions.AddLabel
				sectionFunctions.CreateLabel = sectionFunctions.AddLabel
				sectionFunctions.Label = sectionFunctions.AddLabel
				sectionFunctions.Text = sectionFunctions.AddLabel
				function sectionFunctions:AddSlider(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Slider", options, ...)) or options
					local sliderName, maxValue, minValue, presetValue, callback, flagName = assert(options.Name, "Missing Name for new slider."), assert(options.Max, "Missing Max for new slider."), assert(options.Min, "Missing Min for new slider."), options.Value, options.Callback, options.Flag or (function()
						library.unnamedsliders = 1 + (library.unnamedsliders or 0)
						return "Slider" .. tostring(library.unnamedsliders)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local decimalprecision = tonumber(options.Decimals or options.Precision or options.Precise)
					if not decimalprecision and options.Max - options.Min <= 1 then
						decimalprecision = 1
					end
					if decimalprecision then
						decimalprecision = math.clamp(decimalprecision, 0, 99)
						if decimalprecision <= 0 then
							decimalprecision = nil
						end
						decimalprecision = tostring(decimalprecision)
					end
					local formattyp = options.Format and type(options.Format)
					local function resolvedisplay(val, was)
						local str = nil
						if decimalprecision then
							str = string.format("%0." .. decimalprecision .. "f", val)
						end
						str = str or tostring(val)
						if formattyp == "string" then
							return string.format(options.Format, val)
						elseif formattyp == "function" then
							local oof, g = pcall(options.Format, val, was)
							if not oof or not g then
								warn("Your format function for", sliderName, "Slider:", flagName, "has returned nothing. It should return a string to display.", debug.traceback(""))
								return "Format Function Errored"
							end
							return tostring(g)
						end
						return (sliderName or "???") .. ": " .. str
					end
					local usetextbox = options.Textbox or options.InputBox or options.CustomInput
					local newSlider = Instance_new("Frame")
					local slider = Instance_new("ImageLabel")
					local sliderInner = Instance_new("ImageLabel")
					local sliderColored = Instance_new("ImageLabel")
					local sliderHeadline = Instance_new("TextLabel")
					local startingValue = presetValue or minValue
					local sliderDragging = false
					newSlider.Name = "newSlider"
					newSlider.Parent = sectionHolder
					newSlider.BackgroundColor3 = Color3.new(1, 1, 1)
					newSlider.BackgroundTransparency = 1
					newSlider.Size = UDim2.new(1, 0, 0, 42)
					slider.Name = "slider"
					slider.Parent = newSlider
					slider.Active = true
					slider.BackgroundColor3 = library.colors.topGradient
					local colored_slider_BackgroundColor3 = {slider, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_slider_BackgroundColor3
					slider.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {slider, "BorderColor3", "elementBorder"}
					slider.Position = UDim2.fromScale(0.031, 0.48)
					slider.Selectable = true
					slider.Size = (usetextbox and UDim2.fromOffset(156, 18)) or UDim2.fromOffset(206, 18)
					slider.Image = "rbxassetid://2454009026"
					slider.ImageColor3 = library.colors.bottomGradient
					local colored_slider_ImageColor3 = {slider, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_slider_ImageColor3
					sliderInner.Name = "sliderInner"
					sliderInner.Parent = slider
					sliderInner.Active = true
					sliderInner.AnchorPoint = Vector2.new(0.5, 0.5)
					sliderInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {sliderInner, "BackgroundColor3", "topGradient"}
					sliderInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {sliderInner, "BorderColor3", "elementBorder"}
					sliderInner.Position = UDim2.fromScale(0.5, 0.5)
					sliderInner.Selectable = true
					sliderInner.Size = UDim2.new(1, -4, 1, -4)
					sliderInner.Image = "rbxassetid://2454009026"
					sliderInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {sliderInner, "ImageColor3", "bottomGradient"}
					sliderColored.Name = "sliderColored"
					sliderColored.Parent = sliderInner
					sliderColored.Active = true
					sliderColored.BackgroundColor3 = darkenColor(library.colors.main, 1.5)
					colored[1 + #colored] = {sliderColored, "BackgroundColor3", "main", 1.5}
					sliderColored.BorderSizePixel = 0
					sliderColored.Selectable = true
					sliderColored.Size = UDim2.fromScale(((startingValue or minValue) - minValue) / (maxValue - minValue), 1)
					sliderColored.Image = "rbxassetid://2454009026"
					sliderColored.ImageColor3 = darkenColor(library.colors.main, 2.5)
					colored[1 + #colored] = {sliderColored, "ImageColor3", "main", 2.5}
					sliderHeadline.Name = "sliderHeadline"
					sliderHeadline.Parent = newSlider
					sliderHeadline.Active = true
					sliderHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					sliderHeadline.BackgroundTransparency = 1
					sliderHeadline.Position = UDim2.new(0.031)
					sliderHeadline.Selectable = true
					sliderHeadline.Size = UDim2.fromOffset(206, 20)
					sliderHeadline.ZIndex = 5
					sliderHeadline.Font = Enum.Font.Code
					sliderHeadline.LineHeight = 1.15
					sliderHeadline.Text = resolvedisplay(startingValue)
					sliderHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {sliderHeadline, "TextColor3", "elementText"}
					sliderHeadline.TextSize = 14
					sliderHeadline.TextXAlignment = Enum.TextXAlignment.Left
					local realTextbox = nil
					local function Set(t, newValue)
						if nil == newValue and t ~= nil then
							newValue = t
						end
						minValue, maxValue = options.Min, options.Max
						if newValue and (options.IllegalInput or ((not minValue or newValue >= minValue) and (not maxValue or newValue <= maxValue))) then
							local last_val = library_flags[flagName]
							library_flags[flagName] = newValue
							if options.Location then
								options.Location[options.LocationFlag or flagName] = newValue
							end
							do
								local newValue = (options.IllegalInput and math.clamp(newValue, minValue or -math.huge, maxValue or math.huge)) or newValue
								tweenService:Create(sliderColored, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
									Size = UDim2.fromScale(((newValue or minValue) - minValue) / (maxValue - minValue), 1)
								}):Play()
							end
							sliderHeadline.Text = resolvedisplay(newValue, last_val)
							if usetextbox and realTextbox then
								realTextbox.Text = tostring(newValue)
							end
							if callback and (last_val ~= newValue or options.AllowDuplicateCalls) then
								task.spawn(callback, newValue, last_val)
							end
						end
						return newValue
					end
					if presetValue ~= nil then
						Set(presetValue)
					else
						library_flags[flagName] = startingValue
						if options.Location then
							options.Location[options.LocationFlag or flagName] = startingValue
						end
					end
					if usetextbox then
						if type(usetextbox) ~= "table" then
							usetextbox = options
						end
						local textbox = Instance_new("ImageLabel")
						local textboxInner = Instance_new("ImageLabel")
						realTextbox = Instance_new("TextBox")
						textbox.Name = "textbox"
						textbox.Parent = newSlider
						textbox.Active = true
						textbox.BackgroundColor3 = library.colors.topGradient
						local colored_textbox_BackgroundColor3 = {textbox, "BackgroundColor3", "topGradient"}
						colored[1 + #colored] = colored_textbox_BackgroundColor3
						textbox.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {textbox, "BorderColor3", "elementBorder"}
						textbox.Position = UDim2.new(1, -54, 0.48)
						textbox.Selectable = true
						textbox.Size = UDim2.fromOffset(43, 18)
						textbox.Image = "rbxassetid://2454009026"
						textbox.ImageColor3 = library.colors.bottomGradient
						local colored_textbox_ImageColor3 = {textbox, "ImageColor3", "bottomGradient"}
						colored[1 + #colored] = colored_textbox_ImageColor3
						textboxInner.Name = "textboxInner"
						textboxInner.Parent = textbox
						textboxInner.Active = true
						textboxInner.AnchorPoint = Vector2.new(0.5, 0.5)
						textboxInner.BackgroundColor3 = library.colors.topGradient
						colored[1 + #colored] = {textboxInner, "BackgroundColor3", "topGradient"}
						textboxInner.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {textboxInner, "BorderColor3", "elementBorder"}
						textboxInner.Position = UDim2.fromScale(0.5, 0.5)
						textboxInner.Selectable = true
						textboxInner.Size = UDim2.new(1, -4, 1, -4)
						textboxInner.Image = "rbxassetid://2454009026"
						textboxInner.ImageColor3 = library.colors.bottomGradient
						colored[1 + #colored] = {textboxInner, "ImageColor3", "bottomGradient"}
						realTextbox.Name = "realTextbox"
						realTextbox.Parent = textbox
						realTextbox.BackgroundColor3 = Color3.new(1, 1, 1)
						realTextbox.BackgroundTransparency = 1
						realTextbox.Position = UDim2.new(0.0295485705)
						realTextbox.Size = UDim2.fromScale(0.97, 1)
						realTextbox.ZIndex = 5
						realTextbox.ClearTextOnFocus = false
						realTextbox.Font = Enum.Font.Code
						realTextbox.LineHeight = 1.15
						realTextbox.Text = tostring(presetValue)
						realTextbox.TextColor3 = library.colors.otherElementText
						colored[1 + #colored] = {realTextbox, "TextColor3", "otherElementText"}
						realTextbox.TextSize = 14
						realTextbox.PlaceholderText = (presetValue ~= nil and tostring(presetValue)) or ""
						library.signals[1 + #library.signals] = realTextbox.FocusLost:Connect(function()
							local val = realTextbox.Text
							if usetextbox.PreFormat then
								local typ = type(usetextbox.PreFormat)
								if typ == "function" then
									local x, e = pcall(usetextbox.PreFormat, val)
									if not x and e then
										warn("Error in Pre-Format (Textbox " .. flagName .. "):", e)
									else
										val = e
									end
								end
							end
							val = (not usetextbox.Hex and not usetextbox.Binary and not usetextbox.Base and (tonumber(val) or tonumber(val:gsub("%D", ""), 10) or 0)) or tonumber(val, (usetextbox.Hex and 16) or (usetextbox.Binary and 2) or usetextbox.Base or 10) or 0
							if not options.IllegalInput and (options.Max or options.Min) then
								val = math.clamp(val, options.Min or -math.huge, options.Max or math.huge)
							end
							local decimalprecision = tonumber(options.Decimals or options.Precision or options.Precise)
							if decimalprecision then
								val = tonumber(string.format("%0." .. tostring(decimalprecision) .. "f", val))
							end
							if usetextbox.PostFormat then
								local typ = type(usetextbox.PostFormat)
								if typ == "function" then
									local x, e = pcall(usetextbox.PostFormat, val)
									if not x and e then
										warn("Error in Post-Format (Textbox " .. flagName .. "):", e)
									else
										val = e
									end
								end
							end
							Set((val and tonumber(val)) or presetValue or 0)
						end)
						library.signals[1 + #library.signals] = textbox.MouseEnter:Connect(function()
							colored_textbox_BackgroundColor3[3] = "main"
							colored_textbox_BackgroundColor3[4] = 1.5
							colored_textbox_ImageColor3[3] = "main"
							colored_textbox_ImageColor3[4] = 2.5
							tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = darkenColor(library.colors.main, 1.5),
								ImageColor3 = darkenColor(library.colors.main, 2.5)
							}):Play()
						end)
						library.signals[1 + #library.signals] = textbox.MouseLeave:Connect(function()
							colored_textbox_BackgroundColor3[3] = "topGradient"
							colored_textbox_BackgroundColor3[4] = nil
							colored_textbox_ImageColor3[3] = "bottomGradient"
							colored_textbox_ImageColor3[4] = nil
							tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
						end)
					end
					sectionFunctions:Update()
					library.signals[1 + #library.signals] = slider.MouseEnter:Connect(function()
						colored_slider_BackgroundColor3[3] = "main"
						colored_slider_BackgroundColor3[4] = 1.5
						colored_slider_ImageColor3[3] = "main"
						colored_slider_ImageColor3[4] = 2.5
						tweenService:Create(slider, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = slider.MouseLeave:Connect(function()
						colored_slider_BackgroundColor3[3] = "topGradient"
						colored_slider_BackgroundColor3[4] = nil
						colored_slider_ImageColor3[3] = "bottomGradient"
						colored_slider_ImageColor3[4] = nil
						tweenService:Create(slider, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end)
					local function sliding(input, sb, sc)
						local last_val = library_flags[flagName]
						local pos = UDim2.fromScale(math.clamp((input.Position.X - sb.AbsolutePosition.X) / sb.AbsoluteSize.X, 0, 1), 1)
						tweenService:Create(sc, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							Size = pos
						}):Play()
						local sliderValue = nil
						if decimalprecision then
							sliderValue = tonumber(string.format("%0." .. decimalprecision .. "f", ((pos.X.Scale * maxValue) / maxValue) * (maxValue - minValue) + minValue))
						end
						sliderValue = sliderValue or tonumber(string.format("%0.2f", (floor(((pos.X.Scale * maxValue) / maxValue) * (maxValue - minValue) + minValue))))
						library_flags[flagName] = sliderValue
						if options.Location then
							options.Location[options.LocationFlag or flagName] = sliderValue
						end
						sliderHeadline.Text = resolvedisplay(sliderValue, last_val)
						if usetextbox and realTextbox then
							realTextbox.Text = tostring(sliderValue)
						end
						if callback and last_val ~= sliderValue then
							task.spawn(callback, sliderValue, last_val)
						end
						last_val = sliderValue
					end
					library.signals[1 + #library.signals] = newSlider.InputBegan:Connect(function(input)
						if not library.colorpicker and input.UserInputType == Enum.UserInputType.MouseButton1 then
							sliderDragging = true
							isDraggingSomething = true
						end
					end)
					library.signals[1 + #library.signals] = newSlider.InputEnded:Connect(function(input)
						if not library.colorpicker and input.UserInputType == Enum.UserInputType.MouseButton1 then
							sliderDragging = false
							isDraggingSomething = false
						end
					end)
					library.signals[1 + #library.signals] = newSlider.InputBegan:Connect(function(input)
						if not library.colorpicker and not isDraggingSomething and input.UserInputType == Enum.UserInputType.MouseButton1 then
							isDraggingSomething = true
							sliding(input, sliderInner, sliderColored)
						end
					end)
					library.signals[1 + #library.signals] = userInputService.InputChanged:Connect(function(input)
						if not library.colorpicker and sliderDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
							sliding(input, sliderInner, sliderColored)
						end
					end)
					local default = library_flags[flagName]
					local function Update(t, last_val)
						if last_val == nil and t ~= nil and type(t) ~= "table" then
							last_val = t
						end
						sliderName, maxValue, minValue, callback = options.Name or sliderName, options.Max or maxValue, options.Min or minValue, options.Callback
						local newValue = library_flags[flagName]
						do
							local newValue = math.clamp(newValue, options.Min or -math.huge, options.Max or math.huge)
							tweenService:Create(sliderColored, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								Size = UDim2.fromScale(((newValue or minValue) - minValue) / (maxValue - minValue), 1)
							}):Play()
						end
						sliderHeadline.Text = resolvedisplay(newValue, last_val)
						if usetextbox and realTextbox then
							realTextbox.Text = tostring(newValue)
						end
						return newValue
					end
					local objectdata = {
						Options = options,
						Name = flagName,
						Flag = flagName,
						Type = "Slider",
						Default = default,
						Parent = sectionFunctions,
						Instance = sliderHeadline,
						Set = Set,
						Get = function()
							return library_flags[flagName]
						end,
						SetConstraints = function(t, min, max)
							if t and type(t) ~= "table" then
								min, max = t, min
							end
							if min then
								options.Min = min
							end
							if max then
								options.Max = max
							end
							Update()
						end,
						SetMin = function(t, min)
							if min == nil and t ~= nil then
								min = t
							end
							if min and min ~= options.Min then
								options.Min = min
								Update()
							end
						end,
						SetMax = function(t, max)
							if max == nil and t ~= nil then
								max = t
							end
							if max and max ~= options.Max then
								options.Max = max
								Update()
							end
						end,
						Update = Update,
						RawSet = function(t, newValue)
							if nil == newValue and t ~= nil then
								newValue = t
							end
							local last_val = library_flags[flagName]
							library_flags[flagName] = newValue
							if options.Location then
								options.Location[options.LocationFlag or flagName] = newValue
							end
							Update(nil, last_val)
						end,
						Reset = function()
							return Set(nil, default)
						end
					}
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.NewSlider = sectionFunctions.AddSlider
				sectionFunctions.CreateSlider = sectionFunctions.AddSlider
				sectionFunctions.NumberConstraint = sectionFunctions.AddSlider
				sectionFunctions.Slider = sectionFunctions.AddSlider
				sectionFunctions.Slide = sectionFunctions.AddSlider
				function sectionFunctions:AddSearchBox(options, ...)
					options = (options and type(options) == "string" and resolvevararg("SearchBox", options, ...)) or options
					local dropdownName, listt, val, callback, flagName = assert(options.Name, "Missing Name for new searchbox."), assert(options.List, "Missing List for new searchbox."), options.Value, options.Callback, options.Flag or (function()
						library.unnamedsearchbox = 1 + (library.unnamedsearchbox or 0)
						return "SearchBox" .. tostring(library.unnamedsearchbox)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local newDropdown = Instance_new("Frame")
					local dropdown = Instance_new("ImageLabel")
					local dropdownInner = Instance_new("ImageLabel")
					local dropdownToggle = Instance_new("ImageButton")
					local dropdownSelection = Instance_new("TextBox")
					local dropdownHeadline = Instance_new("TextLabel")
					local dropdownHolderFrame = Instance_new("ImageLabel")
					local dropdownHolderInner = Instance_new("ImageLabel")
					local realDropdownHolder = Instance_new("ScrollingFrame")
					local realDropdownHolderList = Instance_new("UIListLayout")
					local dropdownEnabled = false
					local resolvelist = getresolver(listt, options.Filter)
					local list = resolvelist()
					local multiselect = options.MultiSelect or options.Multi or options.Multiple
					local passed_multiselect = multiselect and type(multiselect)
					local blankstring = not multiselect and (options.BlankValue or options.NoValueString or options.Nothing)
					local selectedOption = val or list[1] or blankstring
					local addcallback = options.ItemAdded or options.AddedCallback
					local delcallback = options.ItemRemoved or options.RemovedCallback
					local clrcallback = options.ItemsCleared or options.ClearedCallback
					local modcallback = options.ItemChanged or options.ChangedCallback
					if blankstring and val == nil then
						val = blankstring
					end
					if val ~= nil then
						selectedOption = val
					end
					if multiselect and (not selectedOption or type(selectedOption) ~= "table") then
						selectedOption = {}
					end
					local selectedObjects = {}
					local optionCount = 0
					newDropdown.Name = "newDropdown"
					newDropdown.Parent = sectionHolder
					newDropdown.BackgroundColor3 = Color3.new(1, 1, 1)
					newDropdown.BackgroundTransparency = 1
					newDropdown.Size = UDim2.new(1, 0, 0, 42)
					dropdown.Name = "dropdown"
					dropdown.Parent = newDropdown
					dropdown.Active = true
					dropdown.BackgroundColor3 = library.colors.topGradient
					local colored_dropdown_BackgroundColor3 = {dropdown, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_dropdown_BackgroundColor3
					dropdown.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdown, "BorderColor3", "elementBorder"}
					dropdown.Position = UDim2.fromScale(0.027, 0.45)
					dropdown.Selectable = true
					dropdown.Size = UDim2.fromOffset(206, 18)
					dropdown.Image = "rbxassetid://2454009026"
					dropdown.ImageColor3 = library.colors.bottomGradient
					local colored_dropdown_ImageColor3 = {dropdown, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_dropdown_ImageColor3
					dropdownInner.Name = "dropdownInner"
					dropdownInner.Parent = dropdown
					dropdownInner.Active = true
					dropdownInner.AnchorPoint = Vector2.new(0.5, 0.5)
					dropdownInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownInner, "BackgroundColor3", "topGradient"}
					dropdownInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownInner, "BorderColor3", "elementBorder"}
					dropdownInner.Position = UDim2.fromScale(0.5, 0.5)
					dropdownInner.Selectable = true
					dropdownInner.Size = UDim2.new(1, -4, 1, -4)
					dropdownInner.Image = "rbxassetid://2454009026"
					dropdownInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownInner, "ImageColor3", "bottomGradient"}
					dropdownToggle.Name = "dropdownToggle"
					dropdownToggle.Parent = dropdown
					dropdownToggle.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownToggle.BackgroundTransparency = 1
					dropdownToggle.Position = UDim2.fromScale(0.9, 0.17)
					dropdownToggle.Rotation = 90
					dropdownToggle.Size = UDim2.fromOffset(12, 12)
					dropdownToggle.ZIndex = 6
					dropdownToggle.Image = "rbxassetid://71659683"
					dropdownToggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
					dropdownSelection.Name = "dropdownSelection"
					dropdownSelection.Parent = dropdown
					dropdownSelection.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownSelection.BackgroundTransparency = 1
					dropdownSelection.Position = UDim2.new(0.0295485705)
					dropdownSelection.Size = UDim2.fromScale(0.85, 1)
					dropdownSelection.ZIndex = 5
					dropdownSelection.Font = Enum.Font.Code
					dropdownSelection.LineHeight = 1.15
					dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or (multiselect and (blankstring or "Select Item(s)")) or (selectedOption and tostring(selectedOption)) or blankstring or "Not Have Select"
					dropdownSelection.TextColor3 = library.colors.otherElementText
					colored[1 + #colored] = {dropdownSelection, "TextColor3", "otherElementText"}
					dropdownSelection.TextSize = 14
					dropdownSelection.TextXAlignment = Enum.TextXAlignment.Left
					dropdownSelection.ClearTextOnFocus = true
					dropdownHeadline.Name = "dropdownHeadline"
					dropdownHeadline.Parent = newDropdown
					dropdownHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownHeadline.BackgroundTransparency = 1
					dropdownHeadline.Position = UDim2.fromScale(0.034, 0.03)
					dropdownHeadline.Size = UDim2.fromOffset(167, 11)
					dropdownHeadline.Font = Enum.Font.Code
					dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
					dropdownHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {dropdownHeadline, "TextColor3", "elementText"}
					dropdownHeadline.TextSize = 14
					dropdownHeadline.TextXAlignment = Enum.TextXAlignment.Left
					dropdownHolderFrame.Name = "dropdownHolderFrame"
					dropdownHolderFrame.Parent = newDropdown
					dropdownHolderFrame.Active = true
					dropdownHolderFrame.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownHolderFrame, "BackgroundColor3", "topGradient"}
					dropdownHolderFrame.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownHolderFrame, "BorderColor3", "elementBorder"}
					dropdownHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
					dropdownHolderFrame.Selectable = true
					dropdownHolderFrame.Size = UDim2.fromOffset(206, 22)
					dropdownHolderFrame.Visible = false
					dropdownHolderFrame.Image = "rbxassetid://2454009026"
					dropdownHolderFrame.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownHolderFrame, "ImageColor3", "bottomGradient"}
					dropdownHolderInner.Name = "dropdownHolderInner"
					dropdownHolderInner.Parent = dropdownHolderFrame
					dropdownHolderInner.Active = true
					dropdownHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
					dropdownHolderInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownHolderInner, "BackgroundColor3", "topGradient"}
					dropdownHolderInner.BorderColor3 = library.colors.elementBorder
					dropdownHolderInner.Position = UDim2.fromScale(0.5, 0.5)
					dropdownHolderInner.Selectable = true
					dropdownHolderInner.Size = UDim2.new(1, -4, 1, -4)
					dropdownHolderInner.Image = "rbxassetid://2454009026"
					dropdownHolderInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownHolderInner, "ImageColor3", "bottomGradient"}
					realDropdownHolder.Name = "realDropdownHolder"
					realDropdownHolder.Parent = dropdownHolderInner
					realDropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
					realDropdownHolder.BackgroundTransparency = 1
					realDropdownHolder.Selectable = false
					realDropdownHolder.Size = UDim2.fromScale(1, 1)
					realDropdownHolder.CanvasSize = UDim2.new()
					realDropdownHolder.ScrollBarThickness = 5
					realDropdownHolder.ScrollingDirection = Enum.ScrollingDirection.Y
					realDropdownHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
					realDropdownHolder.ScrollBarImageTransparency = 0.5
					realDropdownHolder.ScrollBarImageColor3 = library.colors.section
					colored[1 + #colored] = {realDropdownHolder, "ScrollBarImageColor3", "section"}
					realDropdownHolderList.Name = "realDropdownHolderList"
					realDropdownHolderList.Parent = realDropdownHolder
					realDropdownHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
					realDropdownHolderList.SortOrder = Enum.SortOrder.LayoutOrder
					sectionFunctions:Update()
					local restorezindex = {}
					library.signals[1 + #library.signals] = newDropdown.MouseEnter:Connect(function()
						colored_dropdown_BackgroundColor3[3] = "main"
						colored_dropdown_BackgroundColor3[4] = 1.5
						colored_dropdown_ImageColor3[3] = "main"
						colored_dropdown_ImageColor3[4] = 2.5
						tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = newDropdown.MouseLeave:Connect(function()
						if not dropdownEnabled then
							colored_dropdown_BackgroundColor3[3] = "topGradient"
							colored_dropdown_BackgroundColor3[4] = nil
							colored_dropdown_ImageColor3[3] = "bottomGradient"
							colored_dropdown_ImageColor3[4] = nil
							tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
						end
					end)
					local function UpdateDropdownHolder()
						if optionCount >= 6 then
							realDropdownHolder.CanvasSize = UDim2:fromOffset(realDropdownHolderList.AbsoluteContentSize.Y + 2)
						elseif optionCount <= 5 then
							dropdownHolderFrame.Size = UDim2.fromOffset(206, realDropdownHolderList.AbsoluteContentSize.Y + 4)
						end
					end
					local function AddOptions(optionsTable, filter)
						if options.Sort then
							local didstuff, dosort = nil, options.Sort
							if type(dosort) == "function" then
								local g, h = pcall(table.sort, optionsTable, dosort)
								if g then
									didstuff = true
								elseif h then
									warn("Error sorting list:", h, debug.traceback(""))
								end
							end
							if not didstuff then
								table.sort(optionsTable, library.defaultSort)
							end
						end
						if blankstring and (optionsTable[1] ~= blankstring or table.find(optionsTable, blankstring, 2)) then
							local exists = table.find(optionsTable, blankstring)
							if exists then
								for _ = 1, 35 do
									table.remove(optionsTable, exists)
									exists = table.find(optionsTable, blankstring)
									if not exists then
										break
									end
								end
							end
							table.insert(optionsTable, 1, blankstring)
						end
						optionCount = 0
						realDropdownHolderList.Parent = nil
						realDropdownHolder:ClearAllChildren()
						realDropdownHolderList.Parent = realDropdownHolder
						for _, v in next, optionsTable do
							if not filter or tostring(v):lower():find(dropdownSelection.Text:lower(), 1, not options.RegEx) then
								optionCount = optionCount + 1
								UpdateDropdownHolder()
								local newOption = Instance_new("ImageLabel")
								local optionButton = Instance_new("TextButton")
								if selectedOption == v then
									selectedObjects[1] = newOption
									selectedObjects[2] = optionButton
								end
								newOption.Name = "Frame"
								newOption.Parent = realDropdownHolder
								local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
								newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
								newOption.BorderSizePixel = 0
								newOption.Size = UDim2.fromOffset(202, 18)
								newOption.Image = "rbxassetid://2454009026"
								newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
								local stringed = tostring(v)
								optionButton.Name = stringed
								optionButton.Parent = newOption
								optionButton.Active = true
								optionButton.AnchorPoint = Vector2.new(0.5, 0.5)
								optionButton.BackgroundColor3 = Color3.new(1, 1, 1)
								optionButton.BackgroundTransparency = 1
								optionButton.Position = UDim2.fromScale(0.5, 0.5)
								optionButton.Selectable = true
								optionButton.Size = UDim2.new(1, -10, 1)
								optionButton.ZIndex = 5
								optionButton.Font = Enum.Font.Code
								optionButton.Text = (togged and (" " .. stringed)) or stringed
								optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
								optionButton.TextSize = 14
								optionButton.TextXAlignment = Enum.TextXAlignment.Left
								library.signals[1 + #library.signals] = optionButton[(multiselect and "MouseButton1Click") or "MouseButton1Down"]:Connect(function()
									if not library.colorpicker then
										dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or blankstring or "Select Item(s)"
										restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
										restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
										restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
										if multiselect then
											local cloned = {unpack(selectedOption)}
											local togged = table.find(selectedOption, v)
											if togged then
												table.remove(selectedOption, togged)
											else
												selectedOption[1 + #selectedOption] = v
											end
											togged = table.find(selectedOption, v)
											optionButton.Text = (togged and (" " .. stringed)) or stringed
											newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
											newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
											optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
											if callback then
												task.spawn(callback, selectedOption, cloned)
											end
											if togged then
												if addcallback then
													task.spawn(addcallback, v, selectedOption)
												end
											elseif delcallback then
												task.spawn(delcallback, v, selectedOption)
											end
											if modcallback then
												task.spawn(modcallback, v, togged, selectedOption)
											end
											if #selectedOption == 0 and clrcallback then
												task.spawn(clrcallback, selectedOption, cloned)
											end
											return
										else
											dropdownSelection.Text = stringed
											if selectedOption ~= v then
												local last_v = library_flags[flagName]
												selectedObjects[1].BackgroundColor3 = library.colors.topGradient
												selectedObjects[1].ImageColor3 = library.colors.bottomGradient
												selectedObjects[2].Text = selectedObjects[2].Name
												selectedObjects[2].TextColor3 = library.colors.otherElementText
												selectedOption = v
												selectedObjects[1] = newOption
												selectedObjects[2] = optionButton
												newOption.BackgroundColor3 = library.colors.selectedOption
												newOption.ImageColor3 = library.colors.unselectedOption
												optionButton.TextColor3 = library.colors.main
												dropdownHolderFrame.Visible = false
												dropdownToggle.Rotation = 90
												dropdownEnabled = false
												newDropdown.ZIndex = 1
												colored_dropdown_BackgroundColor3[3] = "topGradient"
												colored_dropdown_BackgroundColor3[4] = nil
												colored_dropdown_ImageColor3[3] = "bottomGradient"
												colored_dropdown_ImageColor3[4] = nil
												tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
													BackgroundColor3 = library.colors.topGradient,
													ImageColor3 = library.colors.bottomGradient
												}):Play()
												library_flags[flagName] = selectedOption
												if options.Location then
													options.Location[options.LocationFlag or flagName] = selectedOption
												end
												dropdownSelection.Text = tostring(selectedOption)
												if submenuOpen then
													submenuOpen = nil
												end
												if callback then
													task.spawn(callback, selectedOption, last_v)
												end
											else
												submenuOpen = nil
												dropdownToggle.Rotation = 90
												colored_dropdown_BackgroundColor3[3] = "topGradient"
												colored_dropdown_BackgroundColor3[4] = nil
												colored_dropdown_ImageColor3[3] = "bottomGradient"
												colored_dropdown_ImageColor3[4] = nil
												tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
													BackgroundColor3 = library.colors.topGradient,
													ImageColor3 = library.colors.bottomGradient
												}):Play()
												dropdownHolderFrame.Visible = false
											end
										end
										for ins, z in next, restorezindex do
											ins.ZIndex = z
										end
									end
								end)
								library.signals[1 + #library.signals] = optionButton.MouseEnter:Connect(function()
									tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = library.colors.hoveredOptionTop,
										ImageColor3 = library.colors.hoveredOptionBottom
									}):Play()
								end)
								library.signals[1 + #library.signals] = optionButton.MouseLeave:Connect(function()
									local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
									tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient,
										ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
									}):Play()
								end)
								UpdateDropdownHolder()
							end
						end
					end
					local precisionscrolling = nil
					local showing = false
					local function display(dropdownEnabled, f)
						if submenuOpen == dropdown or submenuOpen == nil then
							if dropdownEnabled then
								list = resolvelist()
								AddOptions(list, f)
								submenuOpen = dropdown
								dropdownToggle.Rotation = 270
								restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
								restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
								restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
								newSection.ZIndex = 50 + newSection.ZIndex
								newDropdown.ZIndex = 2
								sectionHolder.ZIndex = 2
								colored_dropdown_BackgroundColor3[3] = "main"
								colored_dropdown_BackgroundColor3[4] = 1.5
								colored_dropdown_ImageColor3[3] = "main"
								colored_dropdown_ImageColor3[4] = 2.5
								tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = darkenColor(library.colors.main, 1.5),
									ImageColor3 = darkenColor(library.colors.main, 2.5)
								}):Play()
								dropdownHolderFrame.Visible = true
								if not options.DisablePrecisionScrolling then
									local scrollrate = tonumber(options.ScrollButtonRate or options.ScrollRate) or 5
									local upkey = options.ScrollUpButton or library.scrollupbutton or shared.scrollupbutton or Enum.KeyCode.Up
									local downkey = options.ScrollDownButton or library.scrolldownbutton or shared.scrolldownbutton or Enum.KeyCode.Down
									precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or userInputService.InputBegan:Connect(function(input)
										if input.UserInputType == Enum.UserInputType.Keyboard then
											local code = input.KeyCode
											local isup = code == upkey
											local isdown = code == downkey
											if isup or isdown then
												local txt = userInputService:GetFocusedTextBox()
												if not txt or txt == dropdownSelection then
													while wait_check() and userInputService:IsKeyDown(code) do
														realDropdownHolder.CanvasPosition = Vector2:new(math.clamp(realDropdownHolder.CanvasPosition.Y + ((isup and -scrollrate) or scrollrate), 0, realDropdownHolder.AbsoluteCanvasSize.Y))
													end
												end
											end
										end
									end)
									library.signals[1 + #library.signals] = precisionscrolling
								end
							else
								submenuOpen = nil
								dropdownToggle.Rotation = 90
								colored_dropdown_BackgroundColor3[3] = "topGradient"
								colored_dropdown_BackgroundColor3[4] = nil
								colored_dropdown_ImageColor3[3] = "bottomGradient"
								colored_dropdown_ImageColor3[4] = nil
								tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = library.colors.topGradient,
									ImageColor3 = library.colors.bottomGradient
								}):Play()
								dropdownHolderFrame.Visible = false
								for ins, z in next, restorezindex do
									ins.ZIndex = z
								end
								precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or nil
							end
						end
						showing = dropdownEnabled
					end
					local Set = (multiselect and function(t, dat)
						if nil == dat and t ~= nil then
							dat = t
						end
						local lastv = library_flags[flagName]
						if not lastv or selectedOption ~= lastv then
							if lastv and type(lastv) == "table" then
								selectedOption = library_flags[flagName]
							else
								library_flags[flagName] = selectedOption
							end
							warn("Attempting to use new table for", flagName, " Please use :Set(), because setting it through flags table may cause errors", debug.traceback(""))
							lastv = library_flags[flagName]
						end
						local cloned = {unpack(selectedOption)}
						if not dat then
							if #selectedOption ~= 0 then
								table.clear(selectedOption)
								if callback then
									task.spawn(callback, selectedOption, cloned)
								end
							end
							return selectedOption
						elseif type(dat) ~= "table" then
							warn("Expected table for argument #1 on Set for MultiSelect searchbox. Got", dat, debug.traceback(""))
							return selectedOption
						end
						for k = table.pack(unpack(dat)).n, 1, -1 do
							if dat[k] == nil then
								table.remove(dat, k)
							end
						end
						local proceed = #cloned ~= #dat
						table.clear(selectedOption)
						for k, v in next, dat do
							selectedOption[k] = v
							if not proceed and cloned[k] ~= v then
								proceed = 1
							end
						end
						dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or blankstring or "Select Item(s)"
						if proceed and callback then
							task.spawn(callback, selectedOption, cloned)
						end
						return selectedOption
					end) or function(t, str)
						if nil == str and t then
							str = t
						end
						local last_v = library_flags[flagName]
						selectedOption = str
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						local sstr = (selectedOption and tostring(selectedOption)) or blankstring or "Not Have String"
						if dropdownSelection.Text ~= sstr then
							dropdownSelection.Text = sstr
						end
						if callback and (last_v ~= str or options.AllowDuplicateCalls) then
							task.spawn(callback, str, last_v)
						end
						return str
					end
					if val ~= nil then
						Set(val)
					else
						library_flags[flagName] = selectedOption
						if options.Location then
							options.Location[options.LocationFlag or flagName] = selectedOption
						end
					end
					library.signals[1 + #library.signals] = dropdownToggle.MouseButton1Click:Connect(function()
						showing = not showing
						display(showing)
					end)
					library.signals[1 + #library.signals] = dropdownSelection.Focused:Connect(function()
						showing = true
						display(true)
					end)
					library.signals[1 + #library.signals] = dropdownSelection:GetPropertyChangedSignal("Text"):Connect(function()
						if showing then
							display(true, #dropdownSelection.Text > 0)
						end
					end)
					if not multiselect then
						library.signals[1 + #library.signals] = dropdownSelection.FocusLost:Connect(function(b)
							if showing then
								wait()
							end
							showing = false
							display(false)
							if b then
								Set(dropdownSelection.Text)
							end
						end)
					end
					AddOptions(list)
					local default = library_flags[flagName]
					local function update()
						dropdownName, callback = options.Name or dropdownName, options.Callback
						local sstr = (passed_multiselect == "string" and multiselect) or (not multiselect and library_flags[flagName] and tostring(library_flags[flagName])) or (not multiselect and selectedOption and tostring(selectedOption)) or blankstring or "Nothing"
						if dropdownSelection.Text ~= sstr then
							dropdownSelection.Text = sstr
						end
						dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
						return sstr
					end
					local function validate(fallbackValue)
						if list and table.find(list, library_flags[flagName]) then
							update()
							return true
						end
						if fallbackValue ~= nil then
							if fallbackValue == "__DEFAULT" then
								fallbackValue = default
							end
						else
							fallbackValue = list[1]
						end
						if multiselect and type(fallbackValue) ~= "table" then
							fallbackValue = {fallbackValue}
						end
						return Set(fallbackValue)
					end
					local objectdata = {
						Options = options,
						Name = flagName,
						Flag = flagName,
						Type = "SearchBox",
						Default = default,
						Parent = sectionFunctions,
						Instance = dropdownSelection,
						Validate = validate,
						Set = Set,
						RawSet = ((multiselect and function(t, dat)
							if nil == dat and t ~= nil then
								dat = t
							end
							local lastv = library_flags[flagName]
							if not lastv or selectedOption ~= lastv then
								if lastv and type(lastv) == "table" then
									selectedOption = library_flags[flagName]
								else
									library_flags[flagName] = selectedOption
								end
								warn("Attempting to use new table for", flagName, " Please use :Set(), as setting through flags table may cause errors", debug.traceback(""))
								lastv = library_flags[flagName]
							end
							local cloned = {unpack(selectedOption)}
							if not dat then
								if #selectedOption ~= 0 then
									table.clear(selectedOption)
									if callback then
										task.spawn(callback, selectedOption, cloned)
									end
								end
								return selectedOption
							elseif type(dat) ~= "table" then
								warn("Expected table for argument #1 on Set for MultiSelect searchbox. Got", dat, debug.traceback(""))
								return selectedOption
							end
							for k = table.pack(unpack(dat)).n, 1, -1 do
								if dat[k] == nil then
									table.remove(dat, k)
								end
							end
							local proceed = #cloned ~= #dat
							table.clear(selectedOption)
							for k, v in next, dat do
								selectedOption[k] = v
								if not proceed and cloned[k] ~= v then
									proceed = 1
								end
							end
							update()
							return selectedOption
						end) or function(t, str)
							if nil == str and t then
								str = t
							end
							selectedOption = str
							library_flags[flagName] = str
							if options.Location then
								options.Location[options.LocationFlag or flagName] = str
							end
							update()
							return str
						end),
						Get = function()
							return library_flags[flagName]
						end,
						Update = update,
						Reset = function()
							return Set(nil, default)
						end
					}
					function objectdata.UpdateList(t, listt, updateValues)
						if (nil == listt and t ~= nil) or (type(t) == "table" and type(listt) ~= "table") then
							listt, updateValues = t, listt
						end
						if listt == objectdata then
							listt = nil
						end
						resolvelist = getresolver(listt or options.List, options.Filter, options.Method)
						list = resolvelist()
						if updateValues then
							validate()
						end
						if showing then
							display(false)
							display(true)
						end
						return list
					end
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.NewSearchBox = sectionFunctions.AddSearchBox
				sectionFunctions.CreateSearchBox = sectionFunctions.AddSearchBox
				sectionFunctions.SearchBox = sectionFunctions.AddSearchBox
				sectionFunctions.CreateSearchbox = sectionFunctions.AddSearchBox
				sectionFunctions.NewSearchbox = sectionFunctions.AddSearchBox
				sectionFunctions.Searchbox = sectionFunctions.AddSearchBox
				sectionFunctions.Sbox = sectionFunctions.AddSearchBox
				sectionFunctions.SBox = sectionFunctions.AddSearchBox
				if isfolder and makefolder and listfiles and readfile and writefile then
					function sectionFunctions:AddPersistence(options, ...)
						options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
						local dropdownName, custom_workspace, val, persistiveflags, suffix, callback, loadcallback, savecallback, postload, postsave, flagName = assert(options.Name, "Missing Name for new persistence."), options.Workspace or library.WorkspaceName, options.Value, options.Persistive or options.Flags or "all", options.Suffix, options.Callback, options.LoadCallback, options.SaveCallback, options.PostLoadCallback, options.PostSaveCallback, options.Flag or (function()
							library.unnamedpersistence = 1 + (library.unnamedpersistence or 0)
							return "Persistence" .. tostring(library.unnamedpersistence)
						end)()
						if elements[flagName] ~= nil then
							warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
						end
						local designerpersists = options.Desginer
						local newDropdown = Instance_new("Frame")
						local dropdown = Instance_new("ImageLabel")
						local dropdownInner = Instance_new("ImageLabel")
						local dropdownToggle = Instance_new("ImageButton")
						local dropdownSelection = Instance_new("TextBox")
						local dropdownHeadline = Instance_new("TextLabel")
						local dropdownHolderFrame = Instance_new("ImageLabel")
						local dropdownHolderInner = Instance_new("ImageLabel")
						local realDropdownHolder = Instance_new("ScrollingFrame")
						local realDropdownHolderList = Instance_new("UIListLayout")
						local dropdownEnabled = false
						if not isfolder("./Function Lib") then
							makefolder("./Function Lib")
						end
						local common_string = "./Function Lib/" .. tostring(custom_workspace or library.WorkspaceName)
						local function resolvelist(nofold)
							if custom_workspace ~= options.Workspace then
								custom_workspace = options.Workspace
								common_string = "./Function Lib/" .. tostring(custom_workspace or library.WorkspaceName)
							end
							if not isfolder or not makefolder or not listfiles then
								return {}
							end
							if not isfolder(common_string) then
								if nofold then
									return {}
								end
								makefolder(common_string)
							end
							assert(isfolder(common_string), "Couldn't create folder: " .. tostring(library.WorkspaceName or "No workspace name?"))
							local names, files = {}, listfiles(common_string)
							if #files > 0 then
								local len = #common_string + 2
								for _, f in next, files do
									names[1 + #names] = string.sub(f, len, -5)
								end
								table.sort(names)
							end
							return names
						end
						local list = resolvelist(true)
						local blankstring = options.BlankValue or options.NoValueString or options.Nothing
						local selectedObjects = {}
						local optionCount = 0
						if blankstring and val == nil then
							val = blankstring
						end
						local selectedOption = val or blankstring or list[1]
						newDropdown.Name = "newDropdown"
						newDropdown.Parent = sectionHolder
						newDropdown.BackgroundColor3 = Color3.new(1, 1, 1)
						newDropdown.BackgroundTransparency = 1
						newDropdown.Size = UDim2.new(1, 0, 0, 42)
						dropdown.Name = "dropdown"
						dropdown.Parent = newDropdown
						dropdown.Active = true
						dropdown.BackgroundColor3 = library.colors.topGradient
						local colored_dropdown_BackgroundColor3 = {dropdown, "BackgroundColor3", "topGradient"}
						colored[1 + #colored] = colored_dropdown_BackgroundColor3
						dropdown.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {dropdown, "BorderColor3", "elementBorder"}
						dropdown.Position = UDim2.fromScale(0.027, 0.45)
						dropdown.Selectable = true
						dropdown.Size = UDim2.fromOffset(206, 18)
						dropdown.Image = "rbxassetid://2454009026"
						dropdown.ImageColor3 = library.colors.bottomGradient
						local colored_dropdown_ImageColor3 = {dropdown, "ImageColor3", "bottomGradient"}
						colored[1 + #colored] = colored_dropdown_ImageColor3
						dropdownInner.Name = "dropdownInner"
						dropdownInner.Parent = dropdown
						dropdownInner.Active = true
						dropdownInner.AnchorPoint = Vector2.new(0.5, 0.5)
						dropdownInner.BackgroundColor3 = library.colors.topGradient
						colored[1 + #colored] = {dropdownInner, "BackgroundColor3", "topGradient"}
						dropdownInner.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {dropdownInner, "BorderColor3", "elementBorder"}
						dropdownInner.Position = UDim2.fromScale(0.5, 0.5)
						dropdownInner.Selectable = true
						dropdownInner.Size = UDim2.new(1, -4, 1, -4)
						dropdownInner.Image = "rbxassetid://2454009026"
						dropdownInner.ImageColor3 = library.colors.bottomGradient
						colored[1 + #colored] = {dropdownInner, "ImageColor3", "bottomGradient"}
						dropdownToggle.Name = "dropdownToggle"
						dropdownToggle.Parent = dropdown
						dropdownToggle.BackgroundColor3 = Color3.new(1, 1, 1)
						dropdownToggle.BackgroundTransparency = 1
						dropdownToggle.Position = UDim2.fromScale(0.9, 0.17)
						dropdownToggle.Rotation = 90
						dropdownToggle.Size = UDim2.fromOffset(12, 12)
						dropdownToggle.ZIndex = 2
						dropdownToggle.Image = "rbxassetid://71659683"
						dropdownToggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
						dropdownSelection.Name = "dropdownSelection"
						dropdownSelection.Parent = dropdown
						dropdownSelection.BackgroundColor3 = Color3.new(1, 1, 1)
						dropdownSelection.BackgroundTransparency = 1
						dropdownSelection.Position = UDim2.new(0.0295485705)
						dropdownSelection.Size = UDim2.fromScale(0.97, 1)
						dropdownSelection.ZIndex = 5
						dropdownSelection.Font = Enum.Font.Code
						dropdownSelection.LineHeight = 1.15
						dropdownSelection.Text = (selectedOption and tostring(selectedOption)) or "nil"
						dropdownSelection.TextColor3 = library.colors.otherElementText
						colored[1 + #colored] = {dropdownSelection, "TextColor3", "otherElementText"}
						dropdownSelection.TextSize = 14
						dropdownSelection.TextXAlignment = Enum.TextXAlignment.Left
						dropdownHeadline.Name = "dropdownHeadline"
						dropdownHeadline.Parent = newDropdown
						dropdownHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
						dropdownHeadline.BackgroundTransparency = 1
						dropdownHeadline.Position = UDim2.fromScale(0.034, 0.03)
						dropdownHeadline.Size = UDim2.fromOffset(167, 11)
						dropdownHeadline.Font = Enum.Font.Code
						dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
						dropdownHeadline.TextColor3 = library.colors.elementText
						colored[1 + #colored] = {dropdownHeadline, "TextColor3", "elementText"}
						dropdownHeadline.TextSize = 14
						dropdownHeadline.TextXAlignment = Enum.TextXAlignment.Left
						dropdownHolderFrame.Name = "dropdownHolderFrame"
						dropdownHolderFrame.Parent = newDropdown
						dropdownHolderFrame.Active = true
						dropdownHolderFrame.BackgroundColor3 = library.colors.topGradient
						colored[1 + #colored] = {dropdownHolderFrame, "BackgroundColor3", "topGradient"}
						dropdownHolderFrame.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {dropdownHolderFrame, "BorderColor3", "elementBorder"}
						dropdownHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
						dropdownHolderFrame.Selectable = true
						dropdownHolderFrame.Size = UDim2.fromOffset(206, 22)
						dropdownHolderFrame.Visible = false
						dropdownHolderFrame.Image = "rbxassetid://2454009026"
						dropdownHolderFrame.ImageColor3 = library.colors.bottomGradient
						colored[1 + #colored] = {dropdownHolderFrame, "ImageColor3", "bottomGradient"}
						dropdownHolderInner.Name = "dropdownHolderInner"
						dropdownHolderInner.Parent = dropdownHolderFrame
						dropdownHolderInner.Active = true
						dropdownHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
						dropdownHolderInner.BackgroundColor3 = library.colors.topGradient
						colored[1 + #colored] = {dropdownHolderInner, "BackgroundColor3", "topGradient"}
						dropdownHolderInner.BorderColor3 = library.colors.elementBorder
						colored[1 + #colored] = {dropdownHolderInner, "BorderColor3", "elementBorder"}
						dropdownHolderInner.Position = UDim2.fromScale(0.5, 0.5)
						dropdownHolderInner.Selectable = true
						dropdownHolderInner.Size = UDim2.new(1, -4, 1, -4)
						dropdownHolderInner.Image = "rbxassetid://2454009026"
						dropdownHolderInner.ImageColor3 = library.colors.bottomGradient
						colored[1 + #colored] = {dropdownHolderInner, "ImageColor3", "bottomGradient"}
						realDropdownHolder.Name = "realDropdownHolder"
						realDropdownHolder.Parent = dropdownHolderInner
						realDropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
						realDropdownHolder.BackgroundTransparency = 1
						realDropdownHolder.Selectable = false
						realDropdownHolder.Size = UDim2.fromScale(1, 1)
						realDropdownHolder.CanvasSize = UDim2.new()
						realDropdownHolder.ScrollBarThickness = 5
						realDropdownHolder.ScrollingDirection = Enum.ScrollingDirection.Y
						realDropdownHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
						realDropdownHolder.ScrollBarImageTransparency = 0.5
						realDropdownHolder.ScrollBarImageColor3 = library.colors.section
						colored[1 + #colored] = {realDropdownHolder, "ScrollBarImageColor3", "section"}
						realDropdownHolderList.Name = "realDropdownHolderList"
						realDropdownHolderList.Parent = realDropdownHolder
						realDropdownHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
						realDropdownHolderList.SortOrder = Enum.SortOrder.LayoutOrder
						sectionFunctions:Update()
						library.signals[1 + #library.signals] = newDropdown.MouseEnter:Connect(function()
							colored_dropdown_BackgroundColor3[3] = "main"
							colored_dropdown_BackgroundColor3[4] = 1.5
							colored_dropdown_ImageColor3[3] = "main"
							colored_dropdown_ImageColor3[4] = 2.5
							tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = darkenColor(library.colors.main, 1.5),
								ImageColor3 = darkenColor(library.colors.main, 2.5)
							}):Play()
						end)
						library.signals[1 + #library.signals] = newDropdown.MouseLeave:Connect(function()
							if not dropdownEnabled then
								colored_dropdown_BackgroundColor3[3] = "topGradient"
								colored_dropdown_BackgroundColor3[4] = nil
								colored_dropdown_ImageColor3[3] = "bottomGradient"
								colored_dropdown_ImageColor3[4] = nil
								tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = library.colors.topGradient,
									ImageColor3 = library.colors.bottomGradient
								}):Play()
							end
						end)
						local restorezindex = {}
						local function UpdateDropdownHolder()
							if optionCount >= 6 then
								realDropdownHolder.CanvasSize = UDim2:fromOffset(realDropdownHolderList.AbsoluteContentSize.Y + 2)
							elseif optionCount <= 5 then
								dropdownHolderFrame.Size = UDim2.fromOffset(206, (realDropdownHolderList.AbsoluteContentSize.Y + 4))
							end
						end
						local function AddOptions(optionsTable, filter)
							if options.Sort then
								local didstuff, dosort = nil, options.Sort
								if type(dosort) == "function" then
									local g, h = pcall(table.sort, optionsTable, dosort)
									if g then
										didstuff = true
									elseif h then
										warn("Error sorting list:", h, debug.traceback(""))
									end
								end
								if not didstuff then
									table.sort(optionsTable, library.defaultSort)
								end
							end
							if blankstring and (optionsTable[1] ~= blankstring or table.find(optionsTable, blankstring, 2)) then
								local exists = table.find(optionsTable, blankstring)
								if exists then
									for _ = 1, 35 do
										table.remove(optionsTable, exists)
										exists = table.find(optionsTable, blankstring)
										if not exists then
											break
										end
									end
								end
								table.insert(optionsTable, 1, blankstring)
							end
							optionCount = 0
							realDropdownHolderList.Parent = nil
							realDropdownHolder:ClearAllChildren()
							realDropdownHolderList.Parent = realDropdownHolder
							for _, v in next, optionsTable do
								if not filter or tostring(v):lower():find(dropdownSelection.Text:lower(), 1, true) then
									optionCount = optionCount + 1
									UpdateDropdownHolder()
									local newOption = Instance_new("ImageLabel")
									local optionButton = Instance_new("TextButton")
									if selectedOption == v or not selectedObjects[1] or not selectedObjects[2] then
										selectedObjects[1] = newOption
										selectedObjects[2] = optionButton
									end
									newOption.Name = "Frame"
									newOption.Parent = realDropdownHolder
									newOption.BackgroundColor3 = (selectedOption == v and library.colors.selectedOption or library.colors.topGradient)
									newOption.BorderSizePixel = 0
									newOption.Size = UDim2.fromOffset(202, 18)
									newOption.Image = "rbxassetid://2454009026"
									newOption.ImageColor3 = (selectedOption == v and library.colors.unselectedOption or library.colors.bottomGradient)
									optionButton.Name = tostring(v)
									optionButton.Parent = newOption
									optionButton.AnchorPoint = Vector2.new(0.5, 0.5)
									optionButton.BackgroundColor3 = Color3.new(1, 1, 1)
									optionButton.BackgroundTransparency = 1
									optionButton.Position = UDim2.fromScale(0.5, 0.5)
									optionButton.Size = UDim2.new(1, -10, 1)
									optionButton.ZIndex = 5
									optionButton.Font = Enum.Font.Code
									optionButton.Text = (selectedOption == v and " " .. tostring(v)) or tostring(v)
									optionButton.TextColor3 = (selectedOption == v and library.colors.main or library.colors.otherElementText)
									optionButton.TextSize = 14
									optionButton.TextXAlignment = Enum.TextXAlignment.Left
									library.signals[1 + #library.signals] = optionButton.MouseButton1Down:Connect(function()
										dropdownSelection.Text = tostring(v)
										restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
										restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
										restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
										if selectedOption ~= v then
											local last_v = library_flags[flagName]
											selectedObjects[1].BackgroundColor3 = library.colors.topGradient
											selectedObjects[1].ImageColor3 = library.colors.bottomGradient
											selectedObjects[2].Text = selectedObjects[2].Name
											selectedObjects[2].TextColor3 = library.colors.otherElementText
											selectedOption = v
											selectedObjects[1] = newOption
											selectedObjects[2] = optionButton
											newOption.BackgroundColor3 = library.colors.selectedOption
											newOption.ImageColor3 = library.colors.unselectedOption
											optionButton.TextColor3 = library.colors.main
											dropdownHolderFrame.Visible = false
											dropdownToggle.Rotation = 90
											dropdownEnabled = false
											colored_dropdown_BackgroundColor3[3] = "topGradient"
											colored_dropdown_BackgroundColor3[4] = nil
											colored_dropdown_ImageColor3[3] = "bottomGradient"
											colored_dropdown_ImageColor3[4] = nil
											tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												BackgroundColor3 = library.colors.topGradient,
												ImageColor3 = library.colors.bottomGradient
											}):Play()
											library_flags[flagName] = selectedOption
											if options.Location then
												options.Location[options.LocationFlag or flagName] = selectedOption
											end
											dropdownSelection.Text = tostring(selectedOption)
											if submenuOpen then
												submenuOpen = nil
											end
											if callback then
												task.spawn(callback, selectedOption, last_v)
											end
										else
											submenuOpen = nil
											dropdownToggle.Rotation = 90
											newDropdown.ZIndex = 1
											sectionHolder.ZIndex = 1
											colored_dropdown_BackgroundColor3[3] = "topGradient"
											colored_dropdown_BackgroundColor3[4] = nil
											colored_dropdown_ImageColor3[3] = "bottomGradient"
											colored_dropdown_ImageColor3[4] = nil
											tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												BackgroundColor3 = library.colors.topGradient,
												ImageColor3 = library.colors.bottomGradient
											}):Play()
											dropdownHolderFrame.Visible = false
										end
										for ins, z in next, restorezindex do
											ins.ZIndex = z
										end
									end)
									library.signals[1 + #library.signals] = optionButton.MouseEnter:Connect(function()
										tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											BackgroundColor3 = library.colors.hoveredOptionTop,
											ImageColor3 = library.colors.hoveredOptionBottom
										}):Play()
									end)
									library.signals[1 + #library.signals] = optionButton.MouseLeave:Connect(function()
										tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											BackgroundColor3 = library.colors.unhoveredOptionTop,
											ImageColor3 = library.colors.unhoveredOptionBottom
										}):Play()
									end)
									UpdateDropdownHolder()
								end
							end
						end
						local precisionscrolling = nil
						local showing = false
						local function display(dropdownEnabled, f)
							if submenuOpen == dropdown or submenuOpen == nil then
								if dropdownEnabled then
									list = resolvelist(true)
									AddOptions(list, f)
									submenuOpen = dropdown
									restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
									restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
									restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
									newSection.ZIndex = 50 + newSection.ZIndex
									dropdownToggle.Rotation = 270
									newDropdown.ZIndex = 2
									sectionHolder.ZIndex = 2
									colored_dropdown_BackgroundColor3[3] = "main"
									colored_dropdown_BackgroundColor3[4] = 1.5
									colored_dropdown_ImageColor3[3] = "main"
									colored_dropdown_ImageColor3[4] = 2.5
									tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = darkenColor(library.colors.main, 1.5),
										ImageColor3 = darkenColor(library.colors.main, 2.5)
									}):Play()
									dropdownHolderFrame.Visible = true
									if not options.DisablePrecisionScrolling then
										local upkey = options.ScrollUpButton or library.scrollupbutton or shared.scrollupbutton or Enum.KeyCode.Up
										local downkey = options.ScrollDownButton or library.scrolldownbutton or shared.scrolldownbutton or Enum.KeyCode.Down
										precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or userInputService.InputBegan:Connect(function(input)
											if input.UserInputType == Enum.UserInputType.Keyboard then
												local code = input.KeyCode
												local isup = code == upkey
												local isdown = code == downkey
												if isup or isdown then
													local txt = userInputService:GetFocusedTextBox()
													if not txt then
														while wait_check() and userInputService:IsKeyDown(code) do
															realDropdownHolder.CanvasPosition = Vector2:new(math.clamp(realDropdownHolder.CanvasPosition.Y + ((isup and -5) or 5), 0, realDropdownHolder.AbsoluteCanvasSize.Y))
														end
													end
												end
											end
										end)
										library.signals[1 + #library.signals] = precisionscrolling
									end
								else
									submenuOpen = nil
									dropdownToggle.Rotation = 90
									colored_dropdown_BackgroundColor3[3] = "topGradient"
									colored_dropdown_BackgroundColor3[4] = nil
									colored_dropdown_ImageColor3[3] = "bottomGradient"
									colored_dropdown_ImageColor3[4] = nil
									tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = library.colors.topGradient,
										ImageColor3 = library.colors.bottomGradient
									}):Play()
									dropdownHolderFrame.Visible = false
									for ins, z in next, restorezindex do
										ins.ZIndex = z
									end
									precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or nil
								end
								showing = dropdownEnabled
							end
						end
						local last_v = nil
						local function Set(t, str)
							if nil == str and t then
								str = t
							end
							selectedOption = str
							last_v = library_flags[flagName]
							library_flags[flagName] = str
							if options.Location then
								options.Location[options.LocationFlag or flagName] = str
							end
							local sstr = (selectedOption and tostring(selectedOption)) or blankstring or "Not Have String"
							if dropdownSelection.Text ~= sstr then
								dropdownSelection.Text = sstr
							end
							if callback and (last_v ~= str or options.AllowDuplicateCalls) then
								task.spawn(callback, str, last_v)
							end
							return str
						end
						if val ~= nil then
							Set(val)
						else
							Set("Filename")
						end
						library.signals[1 + #library.signals] = dropdownSelection.Focused:Connect(function()
							showing = true
							display(true)
						end)
						library.signals[1 + #library.signals] = dropdownSelection:GetPropertyChangedSignal("Text"):Connect(function()
							if showing then
								display(true, #dropdownSelection.Text > 0)
							end
						end)
						library.signals[1 + #library.signals] = dropdownSelection.FocusLost:Connect(function(b)
							if showing then
								wait()
							end
							showing = false
							display(false)
							if b then
								Set(dropdownSelection.Text)
							end
						end)
						AddOptions(list)
						local function savestuff(s, get)
							if not s or type(s) ~= "string" then
								s = nil
							end
							local rawfile = "json__save"
							if not get then
								local filenameddst = string.gsub(s or dropdownSelection.Text or "", "%W", "")
								if #filenameddst == 0 then
									return
								end
								rawfile = string.format("%s/%s.txt", common_string, filenameddst)
							end
							if savecallback then
								local x, e = pcall(savecallback, rawfile, library_flags[flagName])
								if not x and e then
									warn("Error while calling the Pre-Save callback:", e, debug.traceback(""))
								end
							end
							local working_with = {}
							if persistiveflags == 1 or persistiveflags == true or persistiveflags == "*" then
								persistiveflags = "all"
							elseif persistiveflags == 2 then
								persistiveflags = "tab"
							elseif persistiveflags == 3 then
								persistiveflags = "section"
							end
							if persistiveflags == "all" or persistiveflags == "tab" or persistiveflags == "section" then
								for cflag, data in next, (persistiveflags == "all" and elements) or (persistiveflags == "tab" and tabFunctions.Flags) or (persistiveflags == "section" and sectionFunctions.Flags) do
									if data.Type ~= "Persistence" and (designerpersists or string.sub(cflag, 1, 11) ~= "__Designer.") then
										working_with[cflag] = data
									end
								end
							elseif type(persistiveflags) == "table" then
								if #persistiveflags > 0 then
									local inverted = persistiveflags[0] == false or persistiveflags.Inverted
									for k, cflag in next, persistiveflags do
										if k > 0 then
											local data = elements[cflag]
											if data and data.Type ~= "Persistence" and (designerpersists or string.sub(cflag, 1, 11) ~= "__Designer.") then
												working_with[cflag] = (not inverted and data) or nil
											end
										end
									end
								else
									for cflag, persists in next, elements do
										if persists and (designerpersists or string.sub(cflag, 1, 11) ~= "__Designer.") then
											local data = elements[cflag]
											if data then
												working_with[cflag] = data
											end
										end
									end
								end
							end
							local saving = {}
							for cflag in next, working_with do
								local value = library_flags[cflag]
								local good, jval = nil, nil
								if value ~= nil then
									good, jval = JSONEncode(value)
								else
									good, jval = true, "null"
								end
								if not good or (jval == "null" and value ~= nil) then
									local typ = typeof(value)
									if typ == "Color3" then
										value = (library.rainbowflags[cflag] and "rainbow") or Color3ToHex(value)
									end
									value = tostring(value)
									good, jval = JSONEncode(value)
									if not good or (jval == "null" and value ~= nil) then
										warn("Could not save value:", value, debug.traceback(""))
									end
								end
								if good and jval then
									saving[cflag] = value
								end
							end
							local ret = nil
							local good, content = JSONEncode(saving)
							if good and content then
								if not get then
									if not isfolder(common_string) then
										makefolder(common_string)
									end
									writefile(rawfile, content)
								else
									ret = content
								end
							end
							if postsave then
								local x, e = pcall(postsave, rawfile, library_flags[flagName])
								if not x and e then
									warn("Error while calling the Post-Save callback:", e, debug.traceback(""))
								end
							end
							return ret
						end
						local function loadstuff(s, jsonmode, silent)
							if not s or type(s) ~= "string" then
								s = nil
							end
							local filename = "json__load"
							if not jsonmode then
								local filenameddst = convertfilename(s or dropdownSelection.Text, nil, "")
								if #filenameddst == 0 then
									return
								end
								filename = string.format("%s/%s.txt", common_string, filenameddst)
							end
							if loadcallback then
								local x, e = pcall(loadcallback, (jsonmode and s) or filename, library_flags[flagName])
								if not x and e then
									warn("Error while calling the Pre-Load callback:", e, debug.traceback(""))
								end
							end
							if jsonmode or not isfile or isfile(filename) then
								local content = (jsonmode and s) or (not jsonmode and readfile(filename))
								if content and #content > 1 then
									local good, jcontent = JSONDecode(content)
									if good and jcontent then
										for cflag, val in next, jcontent do
											if val and type(val) == "string" and #val > 7 and #val < 64 and string.sub(val, 1, 5) == "Enum." then
												local e = string.find(val, ".", 6, true)
												if e then
													local en = Enum[string.sub(val, 6, e - 1)]
													en = en and en[string.sub(val, e + 1)]
													if en then
														val = en
													else
														warn("Tried & failed to convert '" .. val .. "' to EnumItem")
													end
												end
											end
											local data = elements[cflag]
											if data and data.Type ~= "Persistence" then
												if silent and data.RawSet then
													data:RawSet(val)
												elseif data.Set then
													data:Set(val)
												else
													library_flags[cflag] = val
												end
											end
										end
									end
								end
							end
							if postload then
								local x, e = pcall(postload, filename, library_flags[flagName])
								if not x and e then
									warn("Error while calling the Post-Load callback:", e, debug.traceback(""))
								end
							end
						end
						do
							local buttons, offset = {}, 0
							local fram = nil
							for _, options in next, {{
								Name = "Save" .. ((suffix and (" " .. tostring(suffix))) or ""),
								Callback = savestuff
								}, {
									Name = "Load" .. ((suffix and (" " .. tostring(suffix))) or ""),
									Callback = loadstuff
								}} do
								local buttonName, callback = options.Name, options.Callback
								local realButton = Instance_new("TextButton")
								realButton.Name = "realButton"
								realButton.BackgroundColor3 = Color3.new(1, 1, 1)
								realButton.BackgroundTransparency = 1
								realButton.Size = UDim2.fromScale(1, 1)
								realButton.ZIndex = 5
								realButton.Font = Enum.Font.Code
								realButton.Text = (buttonName and tostring(buttonName)) or "???"
								realButton.TextColor3 = library.colors.elementText
								colored[1 + #colored] = {realButton, "TextColor3", "elementText"}
								realButton.TextSize = 14
								local textsize = textToSize(realButton).X + 14
								if newSection.Parent.AbsoluteSize.X < offset + textsize + 8 then
									offset, fram = 0, nil
								end
								local newButton = fram or Instance_new("Frame")
								fram = newButton
								local button = Instance_new("ImageLabel")
								newButton.Name = removeSpaces((buttonName and buttonName:lower() or "???") .. "Holder")
								newButton.Parent = sectionHolder
								newButton.BackgroundColor3 = Color3.new(1, 1, 1)
								newButton.BackgroundTransparency = 1
								newButton.Size = UDim2.new(1, 0, 0, 24)
								button.Name = "button"
								button.Parent = newButton
								button.Active = true
								button.BackgroundColor3 = library.colors.topGradient
								local colored_button_BackgroundColor3 = {button, "BackgroundColor3", "topGradient"}
								colored[1 + #colored] = colored_button_BackgroundColor3
								button.BorderColor3 = library.colors.elementBorder
								colored[1 + #colored] = {button, "BorderColor3", "elementBorder"}
								button.Position = UDim2.new(0.031, offset, 0.166)
								button.Selectable = true
								button.Size = UDim2.fromOffset(28, 18)
								button.Image = "rbxassetid://2454009026"
								button.ImageColor3 = library.colors.bottomGradient
								local colored_button_ImageColor3 = {button, "ImageColor3", "bottomGradient"}
								colored[1 + #colored] = colored_button_ImageColor3
								local buttonInner = Instance_new("ImageLabel")
								buttonInner.Name = "buttonInner"
								buttonInner.Parent = button
								buttonInner.Active = true
								buttonInner.AnchorPoint = Vector2.new(0.5, 0.5)
								buttonInner.BackgroundColor3 = library.colors.topGradient
								colored[1 + #colored] = {buttonInner, "BackgroundColor3", "topGradient"}
								buttonInner.BorderColor3 = library.colors.elementBorder
								colored[1 + #colored] = {buttonInner, "BorderColor3", "elementBorder"}
								buttonInner.Position = UDim2.fromScale(0.5, 0.5)
								buttonInner.Selectable = true
								buttonInner.Size = UDim2.new(1, -4, 1, -4)
								buttonInner.Image = "rbxassetid://2454009026"
								buttonInner.ImageColor3 = library.colors.bottomGradient
								colored[1 + #colored] = {buttonInner, "ImageColor3", "bottomGradient"}
								button.Size = UDim2.fromOffset(textsize, 18)
								realButton.Parent = button
								offset = offset + textsize + 6
								sectionFunctions:Update()
								local presses = 0
								library.signals[1 + #library.signals] = realButton.MouseButton1Click:Connect(function()
									if not library.colorpicker and not submenuOpen then
										presses = 1 + presses
										task.spawn(callback, presses)
									end
								end)
								library.signals[1 + #library.signals] = button.MouseEnter:Connect(function()
									colored_button_BackgroundColor3[3] = "main"
									colored_button_BackgroundColor3[4] = 1.5
									colored_button_ImageColor3[3] = "main"
									colored_button_ImageColor3[4] = 2.5
									tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = darkenColor(library.colors.main, 1.5),
										ImageColor3 = darkenColor(library.colors.main, 2.5)
									}):Play()
								end)
								library.signals[1 + #library.signals] = button.MouseLeave:Connect(function()
									colored_button_BackgroundColor3[3] = "topGradient"
									colored_button_BackgroundColor3[4] = nil
									colored_button_ImageColor3[3] = "bottomGradient"
									colored_button_ImageColor3[4] = nil
									tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = library.colors.topGradient,
										ImageColor3 = library.colors.bottomGradient
									}):Play()
								end)
							end
						end
						local default = library_flags[flagName]
						local function update()
							dropdownName, custom_workspace, persistiveflags, suffix, callback, loadcallback, savecallback, postload, postsave = options.Name or dropdownName, options.Workspace or library.WorkspaceName, options.Persistive or options.Flags or "all", options.Suffix, options.Callback, options.LoadCallback, options.SaveCallback, options.PostLoadCallback, options.PostSaveCallback
							local sstr = tostring(library_flags[flagName])
							if dropdownSelection.Text ~= sstr then
								dropdownSelection.Text = sstr
							end
							dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
							return sstr
						end
						local objectdata = {
							Options = options,
							Name = flagName,
							Flag = flagName,
							Type = "Persistence",
							Default = default,
							Parent = sectionFunctions,
							Instance = dropdownSelection,
							Set = Set,
							SaveFile = function(t, str, ret)
								if t ~= nil and type(t) ~= "table" then
									str, ret = t, str
								end
								if type(str) == "string" then
									str = str:match("(.+)%..+$") or str
								end
								return savestuff(str, ret)
							end,
							LoadFile = function(t, str, jsonmode)
								if t ~= nil and type(t) ~= "table" then
									str, jsonmode = t, str
								end
								if isfile and isfile(str) then
									return loadstuff(readfile(str), true)
								elseif not jsonmode and type(str) == "string" then
									str = str:match("(.+)%..+$") or str
								end
								return loadstuff(str, jsonmode)
							end,
							LoadJSON = function(_, json)
								return loadstuff(json, true)
							end,
							LoadFileRaw = function(t, str, jsonmode)
								if t ~= nil and type(t) ~= "table" then
									str, jsonmode = t, str
								end
								if isfile and isfile(str) then
									return loadstuff(readfile(str), true, true)
								elseif not jsonmode and type(str) == "string" then
									str = str:match("(.+)%..+$") or str
								end
								return loadstuff(str, jsonmode, true)
							end,
							LoadJSONRaw = function(_, json)
								return loadstuff(json, true, true)
							end,
							GetJSON = function(t, clipboard)
								if nil == clipboard and t ~= nil then
									clipboard = t
								end
								local json = savestuff(nil, true)
								local clipfunc = (clipboard and type(clipboard) == "function" and clipboard) or setclipboard
								if clipboard and clipfunc then
									clipfunc(json)
								end
								return json
							end,
							RawSet = function(t, str)
								if nil == str and t ~= nil then
									str = t
								end
								selectedOption = str
								last_v = library_flags[flagName]
								library_flags[flagName] = str
								if options.Location then
									options.Location[options.LocationFlag or flagName] = str
								end
								update()
								return str
							end,
							Get = function()
								return library_flags[flagName]
							end,
							Update = update,
							Reset = function()
								return Set(nil, default)
							end
						}
						tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
						return objectdata
					end
				else
					function sectionFunctions.AddPersistence()
						if not library.warnedpersistance then
							library.warnedpersistance = 1
							warn(debug.traceback("Persistance not supported"))
						end
						function sectionFunctions.AddPersistence()
						end
					end
				end
				sectionFunctions.NewPersistence = sectionFunctions.AddPersistence
				sectionFunctions.CreatePersistence = sectionFunctions.AddPersistence
				sectionFunctions.Persistence = sectionFunctions.AddPersistence
				sectionFunctions.CreateSaveLoad = sectionFunctions.AddPersistence
				sectionFunctions.SaveLoad = sectionFunctions.AddPersistence
				sectionFunctions.SL = sectionFunctions.AddPersistence
				function sectionFunctions:AddDropdown(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Dropdown", options, ...)) or options
					local dropdownName, listt, val, callback, flagName = assert(options.Name, "Missing Name for new searchbox."), assert(options.List, "Missing List for new searchbox."), options.Value, options.Callback, options.Flag or (function()
						library.unnameddropdown = 1 + (library.unnameddropdown or 0)
						return "Dropdown" .. tostring(library.unnameddropdown)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local newDropdown = Instance_new("Frame")
					local dropdown = Instance_new("ImageLabel")
					local dropdownInner = Instance_new("ImageLabel")
					local dropdownToggle = Instance_new("ImageButton")
					local dropdownSelection = Instance_new("TextLabel")
					local dropdownHeadline = Instance_new("TextLabel")
					local dropdownHolderFrame = Instance_new("ImageLabel")
					local dropdownHolderInner = Instance_new("ImageLabel")
					local realDropdownHolder = Instance_new("ScrollingFrame")
					local realDropdownHolderList = Instance_new("UIListLayout")
					local dropdownEnabled = false
					local multiselect = options.MultiSelect or options.Multi or options.Multiple
					local addcallback = options.ItemAdded or options.AddedCallback
					local delcallback = options.ItemRemoved or options.RemovedCallback
					local clrcallback = options.ItemsCleared or options.ClearedCallback
					local modcallback = options.ItemChanged or options.ChangedCallback
					local blankstring = not multiselect and (options.BlankValue or options.NoValueString or options.Nothing)
					local resolvelist = getresolver(listt, options.Filter, options.Method)
					local list = resolvelist()
					local selectedOption = list[1]
					local passed_multiselect = multiselect and type(multiselect)
					if blankstring and val == nil then
						val = blankstring
					end
					if val ~= nil then
						selectedOption = val
					end
					if multiselect and (not selectedOption or type(selectedOption) ~= "table") then
						selectedOption = {}
					end
					local selectedObjects = {}
					local optionCount = 0
					newDropdown.Name = "newDropdown"
					newDropdown.Parent = sectionHolder
					newDropdown.BackgroundColor3 = Color3.new(1, 1, 1)
					newDropdown.BackgroundTransparency = 1
					newDropdown.Size = UDim2.new(1, 0, 0, 42)
					dropdown.Name = "dropdown"
					dropdown.Parent = newDropdown
					dropdown.Active = true
					dropdown.BackgroundColor3 = library.colors.topGradient
					local colored_dropdown_BackgroundColor3 = {dropdown, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_dropdown_BackgroundColor3
					dropdown.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdown, "BorderColor3", "elementBorder"}
					dropdown.Position = UDim2.fromScale(0.027, 0.45)
					dropdown.Selectable = true
					dropdown.Size = UDim2.fromOffset(206, 18)
					dropdown.Image = "rbxassetid://2454009026"
					dropdown.ImageColor3 = library.colors.bottomGradient
					local colored_dropdown_ImageColor3 = {dropdown, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_dropdown_ImageColor3
					dropdownInner.Name = "dropdownInner"
					dropdownInner.Parent = dropdown
					dropdownInner.Active = true
					dropdownInner.AnchorPoint = Vector2.new(0.5, 0.5)
					dropdownInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownInner, "BackgroundColor3", "topGradient"}
					dropdownInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownInner, "BorderColor3", "elementBorder"}
					dropdownInner.Position = UDim2.fromScale(0.5, 0.5)
					dropdownInner.Selectable = true
					dropdownInner.Size = UDim2.new(1, -4, 1, -4)
					dropdownInner.Image = "rbxassetid://2454009026"
					dropdownInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownInner, "ImageColor3", "bottomGradient"}
					dropdownToggle.Name = "dropdownToggle"
					dropdownToggle.Parent = dropdown
					dropdownToggle.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownToggle.BackgroundTransparency = 1
					dropdownToggle.Position = UDim2.fromScale(0.9, 0.17)
					dropdownToggle.Rotation = 90
					dropdownToggle.Size = UDim2.fromOffset(12, 12)
					dropdownToggle.ZIndex = 2
					dropdownToggle.Image = "rbxassetid://71659683"
					dropdownToggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
					dropdownSelection.Name = "dropdownSelection"
					dropdownSelection.Parent = dropdown
					dropdownSelection.Active = true
					dropdownSelection.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownSelection.BackgroundTransparency = 1
					dropdownSelection.Position = UDim2.new(0.0295)
					dropdownSelection.Selectable = true
					dropdownSelection.Size = UDim2.fromScale(0.97, 1)
					dropdownSelection.ZIndex = 5
					dropdownSelection.Font = Enum.Font.Code
					dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or (multiselect and (blankstring or "Select Item(s)")) or (selectedOption and tostring(selectedOption)) or blankstring or "Not Have String"
					dropdownSelection.TextColor3 = library.colors.otherElementText
					colored[1 + #colored] = {dropdownSelection, "TextColor3", "otherElementText"}
					dropdownSelection.TextSize = 14
					dropdownSelection.TextXAlignment = Enum.TextXAlignment.Left
					dropdownHeadline.Name = "dropdownHeadline"
					dropdownHeadline.Parent = newDropdown
					dropdownHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownHeadline.BackgroundTransparency = 1
					dropdownHeadline.Position = UDim2.fromScale(0.034, 0.03)
					dropdownHeadline.Size = UDim2.fromOffset(167, 11)
					dropdownHeadline.Font = Enum.Font.Code
					dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
					dropdownHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {dropdownHeadline, "TextColor3", "elementText"}
					dropdownHeadline.TextSize = 14
					dropdownHeadline.TextXAlignment = Enum.TextXAlignment.Left
					dropdownHolderFrame.Name = "dropdownHolderFrame"
					dropdownHolderFrame.Parent = newDropdown
					dropdownHolderFrame.Active = true
					dropdownHolderFrame.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownHolderFrame, "BackgroundColor3", "topGradient"}
					dropdownHolderFrame.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownHolderFrame, "BorderColor3", "elementBorder"}
					dropdownHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
					dropdownHolderFrame.Selectable = true
					dropdownHolderFrame.Size = UDim2.fromOffset(206, 22)
					dropdownHolderFrame.Visible = false
					dropdownHolderFrame.Image = "rbxassetid://2454009026"
					dropdownHolderFrame.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownHolderFrame, "ImageColor3", "bottomGradient"}
					dropdownHolderInner.Name = "dropdownHolderInner"
					dropdownHolderInner.Parent = dropdownHolderFrame
					dropdownHolderInner.Active = true
					dropdownHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
					dropdownHolderInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownHolderInner, "BackgroundColor3", "topGradient"}
					dropdownHolderInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownHolderInner, "BorderColor3", "elementBorder"}
					dropdownHolderInner.Position = UDim2.fromScale(0.5, 0.5)
					dropdownHolderInner.Selectable = true
					dropdownHolderInner.Size = UDim2.new(1, -4, 1, -4)
					dropdownHolderInner.Image = "rbxassetid://2454009026"
					dropdownHolderInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownHolderInner, "ImageColor3", "bottomGradient"}
					realDropdownHolder.Name = "realDropdownHolder"
					realDropdownHolder.Parent = dropdownHolderInner
					realDropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
					realDropdownHolder.BackgroundTransparency = 1
					realDropdownHolder.Selectable = false
					realDropdownHolder.Size = UDim2.fromScale(1, 1)
					realDropdownHolder.CanvasSize = UDim2.new()
					realDropdownHolder.ScrollBarThickness = 5
					realDropdownHolder.ScrollingDirection = Enum.ScrollingDirection.Y
					realDropdownHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
					realDropdownHolder.ScrollBarImageTransparency = 0.5
					realDropdownHolder.ScrollBarImageColor3 = library.colors.section
					colored[1 + #colored] = {realDropdownHolder, "ScrollBarImageColor3", "section"}
					realDropdownHolderList.Name = "realDropdownHolderList"
					realDropdownHolderList.Parent = realDropdownHolder
					realDropdownHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
					realDropdownHolderList.SortOrder = Enum.SortOrder.LayoutOrder
					sectionFunctions:Update()
					local showing = false
					local function UpdateDropdownHolder()
						if optionCount >= 6 then
							realDropdownHolder.CanvasSize = UDim2:fromOffset(realDropdownHolderList.AbsoluteContentSize.Y + 2)
						elseif optionCount <= 5 then
							dropdownHolderFrame.Size = UDim2.fromOffset(206, realDropdownHolderList.AbsoluteContentSize.Y + 4)
						end
					end
					local restorezindex = {}
					local Set = (multiselect and function(t, dat)
						if nil == dat and t ~= nil then
							dat = t
						end
						local lastv = library_flags[flagName]
						if not lastv or selectedOption ~= lastv then
							if lastv and type(lastv) == "table" then
								selectedOption = library_flags[flagName]
							else
								library_flags[flagName] = selectedOption
							end
							warn("Attempting to use new table for", flagName, " Please use :Set(), as setting through flags table may cause errors", debug.traceback(""))
							lastv = library_flags[flagName]
						end
						local cloned = {unpack(selectedOption)}
						if not dat then
							if #selectedOption ~= 0 then
								table.clear(selectedOption)
								if callback then
									task.spawn(callback, selectedOption, cloned)
								end
							end
							return selectedOption
						elseif type(dat) ~= "table" then
							warn("Expected table for argument #1 on Set for MultiSelect dropdown. Got", dat, debug.traceback(""))
							return selectedOption
						end
						for k = table.pack(unpack(dat)).n, 1, -1 do
							if dat[k] == nil then
								table.remove(dat, k)
							end
						end
						local proceed = #cloned ~= #dat
						table.clear(selectedOption)
						for k, v in next, dat do
							selectedOption[k] = v
							if not proceed and cloned[k] ~= v then
								proceed = 1
							end
						end
						dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or blankstring or "Select Item(s)"
						if proceed and callback then
							task.spawn(callback, selectedOption, cloned)
						end
						return selectedOption
					end) or function(t, str)
						if nil == str and t ~= nil then
							str = t
						end
						local last_v = library_flags[flagName]
						selectedOption = str
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						local sstr = (selectedOption and tostring(selectedOption)) or blankstring or "Not Have String"
						if dropdownSelection.Text ~= sstr then
							dropdownSelection.Text = sstr
						end
						if callback and (last_v ~= str or options.AllowDuplicateCalls) then
							task.spawn(callback, str, last_v)
						end
						return str
					end
					if val ~= nil then
						Set(val)
					else
						library_flags[flagName] = selectedOption
						if options.Location then
							options.Location[options.LocationFlag or flagName] = selectedOption
						end
					end
					local function AddOptions(optionsTable)
						if options.Sort then
							local didstuff, dosort = nil, options.Sort
							if type(dosort) == "function" then
								local g, h = pcall(table.sort, optionsTable, dosort)
								if g then
									didstuff = true
								elseif h then
									warn("Error sorting list:", h, debug.traceback(""))
								end
							elseif dosort ~= 1 and dosort ~= true then
								warn("Potential mistake for passed Sort argument:", dosort, debug.traceback(""))
							end
							if not didstuff then
								table.sort(optionsTable, library.defaultSort)
							end
						end
						if blankstring and (optionsTable[1] ~= blankstring or table.find(optionsTable, blankstring, 2)) then
							local exists = table.find(optionsTable, blankstring)
							if exists then
								for _ = 1, 35 do
									table.remove(optionsTable, exists)
									exists = table.find(optionsTable, blankstring)
									if not exists then
										break
									end
								end
							end
							table.insert(optionsTable, 1, blankstring)
						end
						optionCount = 0
						realDropdownHolderList.Parent = nil
						realDropdownHolder:ClearAllChildren()
						realDropdownHolderList.Parent = realDropdownHolder
						for _, v in next, optionsTable do
							optionCount = optionCount + 1
							local newOption = Instance_new("ImageLabel")
							local optionButton = Instance_new("TextButton")
							if selectedOption == v then
								selectedObjects[1] = newOption
								selectedObjects[2] = optionButton
							end
							newOption.Name = "Frame"
							newOption.Parent = realDropdownHolder
							local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
							newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
							newOption.BorderSizePixel = 0
							newOption.Size = UDim2.fromOffset(202, 18)
							newOption.Image = "rbxassetid://2454009026"
							newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
							local stringed = tostring(v)
							optionButton.Name = stringed
							optionButton.Parent = newOption
							optionButton.AnchorPoint = Vector2.new(0.5, 0.5)
							optionButton.BackgroundColor3 = Color3.new(1, 1, 1)
							optionButton.BackgroundTransparency = 1
							optionButton.Position = UDim2.fromScale(0.5, 0.5)
							optionButton.Size = UDim2.new(1, -10, 1)
							optionButton.ZIndex = 5
							optionButton.Font = Enum.Font.Code
							optionButton.Text = (togged and (" " .. stringed)) or stringed
							optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
							optionButton.TextSize = 14
							optionButton.TextXAlignment = Enum.TextXAlignment.Left
							library.signals[1 + #library.signals] = optionButton.MouseButton1Click:Connect(function()
								if not library.colorpicker then
									restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
									restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
									restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
									if multiselect then
										local cloned = {unpack(selectedOption)}
										local togged = table.find(selectedOption, v)
										if togged then
											table.remove(selectedOption, togged)
										else
											selectedOption[1 + #selectedOption] = v
										end
										togged = table.find(selectedOption, v)
										optionButton.Text = (togged and (" " .. stringed)) or stringed
										newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
										newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
										optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
										dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or blankstring or "Select Item(s)"
										if callback then
											task.spawn(callback, selectedOption, cloned)
										end
										if togged then
											if addcallback then
												task.spawn(addcallback, v, selectedOption)
											end
										elseif delcallback then
											task.spawn(delcallback, v, selectedOption)
										end
										if modcallback then
											task.spawn(modcallback, v, togged, selectedOption)
										end
										if #selectedOption == 0 and clrcallback then
											task.spawn(clrcallback, selectedOption, cloned)
										end
										return
									else
										if selectedOption ~= v then
											local last_v = library_flags[flagName]
											selectedObjects[1].BackgroundColor3 = library.colors.topGradient
											selectedObjects[1].ImageColor3 = library.colors.bottomGradient
											selectedObjects[2].Text = selectedObjects[2].Name
											selectedObjects[2].TextColor3 = library.colors.otherElementText
											selectedOption = v
											dropdownSelection.Text = stringed
											selectedObjects[1] = newOption
											selectedObjects[2] = optionButton
											newOption.BackgroundColor3 = library.colors.selectedOption
											newOption.ImageColor3 = library.colors.unselectedOption
											optionButton.Text = " " .. stringed
											optionButton.TextColor3 = library.colors.main
											dropdownHolderFrame.Visible = false
											dropdownToggle.Rotation = 90
											dropdownEnabled = false
											newDropdown.ZIndex = 1
											colored_dropdown_BackgroundColor3[3] = "topGradient"
											colored_dropdown_BackgroundColor3[4] = nil
											colored_dropdown_ImageColor3[3] = "bottomGradient"
											colored_dropdown_ImageColor3[4] = nil
											tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												BackgroundColor3 = library.colors.topGradient,
												ImageColor3 = library.colors.bottomGradient
											}):Play()
											library_flags[flagName] = selectedOption
											if options.Location then
												options.Location[options.LocationFlag or flagName] = selectedOption
											end
											submenuOpen = nil
											showing = false
											if callback then
												task.spawn(callback, selectedOption, last_v)
											end
										else
											showing = false
											submenuOpen = nil
											dropdownToggle.Rotation = 90
											newDropdown.ZIndex = 1
											sectionHolder.ZIndex = 1
											colored_dropdown_BackgroundColor3[3] = "topGradient"
											colored_dropdown_BackgroundColor3[4] = nil
											colored_dropdown_ImageColor3[3] = "bottomGradient"
											colored_dropdown_ImageColor3[4] = nil
											tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												BackgroundColor3 = library.colors.topGradient,
												ImageColor3 = library.colors.bottomGradient
											}):Play()
											dropdownHolderFrame.Visible = false
										end
									end
									for ins, z in next, restorezindex do
										ins.ZIndex = z
									end
								end
							end)
							library.signals[1 + #library.signals] = optionButton.MouseEnter:Connect(function()
								tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = library.colors.hoveredOptionTop,
									ImageColor3 = library.colors.hoveredOptionBottom
								}):Play()
							end)
							library.signals[1 + #library.signals] = optionButton.MouseLeave:Connect(function()
								local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
								tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient,
									ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
								}):Play()
							end)
							UpdateDropdownHolder()
						end
					end
					local precisionscrolling = nil
					local function display(dropdownEnabled)
						list = resolvelist()
						if dropdownEnabled then
							AddOptions(list)
							submenuOpen = dropdown
							dropdownToggle.Rotation = 270
							restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
							restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
							restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
							newSection.ZIndex = 50 + newSection.ZIndex
							newDropdown.ZIndex = 2
							sectionHolder.ZIndex = 2
							colored_dropdown_BackgroundColor3[3] = "main"
							colored_dropdown_BackgroundColor3[4] = 1.5
							colored_dropdown_ImageColor3[3] = "main"
							colored_dropdown_ImageColor3[4] = 2.5
							tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = darkenColor(library.colors.main, 1.5),
								ImageColor3 = darkenColor(library.colors.main, 2.5)
							}):Play()
							dropdownHolderFrame.Visible = true
							if not options.DisablePrecisionScrolling then
								local upkey = options.ScrollUpButton or library.scrollupbutton or shared.scrollupbutton or Enum.KeyCode.Up
								local downkey = options.ScrollDownButton or library.scrolldownbutton or shared.scrolldownbutton or Enum.KeyCode.Down
								precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or userInputService.InputBegan:Connect(function(input)
									if input.UserInputType == Enum.UserInputType.Keyboard then
										local code = input.KeyCode
										local isup = code == upkey
										local isdown = code == downkey
										if isup or isdown then
											local txt = userInputService:GetFocusedTextBox()
											if not txt or txt == dropdownSelection then
												while wait_check() and userInputService:IsKeyDown(code) do
													realDropdownHolder.CanvasPosition = Vector2:new(math.clamp(realDropdownHolder.CanvasPosition.Y + ((isup and -5) or 5), 0, realDropdownHolder.AbsoluteCanvasSize.Y))
												end
											end
										end
									end
								end)
								library.signals[1 + #library.signals] = precisionscrolling
							end
						else
							submenuOpen = nil
							dropdownToggle.Rotation = 90
							colored_dropdown_BackgroundColor3[3] = "topGradient"
							colored_dropdown_BackgroundColor3[4] = nil
							colored_dropdown_ImageColor3[3] = "bottomGradient"
							colored_dropdown_ImageColor3[4] = nil
							tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
							dropdownHolderFrame.Visible = false
							for ins, z in next, restorezindex do
								ins.ZIndex = z
							end
							precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or nil
						end
						if not multiselect and (not next(list) or not table.find(list, library_flags[flagName])) then
							Set(list[1])
						end
						showing = dropdownEnabled
					end
					library.signals[1 + #library.signals] = newDropdown.InputEnded:Connect(function(input)
						if not library.colorpicker and input.UserInputType == Enum.UserInputType.MouseButton1 then
							showing = not showing
							display(showing)
						end
					end)
					library.signals[1 + #library.signals] = newDropdown.MouseEnter:Connect(function()
						colored_dropdown_BackgroundColor3[3] = "main"
						colored_dropdown_BackgroundColor3[4] = 1.5
						colored_dropdown_ImageColor3[3] = "main"
						colored_dropdown_ImageColor3[4] = 2.5
						tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = newDropdown.MouseLeave:Connect(function()
						if not dropdownEnabled then
							colored_dropdown_BackgroundColor3[3] = "topGradient"
							colored_dropdown_BackgroundColor3[4] = nil
							colored_dropdown_ImageColor3[3] = "bottomGradient"
							colored_dropdown_ImageColor3[4] = nil
							tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
						end
					end)
					library.signals[1 + #library.signals] = dropdownToggle.MouseButton1Click:Connect(function()
						if not library.colorpicker then
							showing = not showing
							display(showing)
						end
					end)
					AddOptions(list)
					local default = library_flags[flagName]
					local function update()
						dropdownName, callback = options.Name or dropdownName, options.Callback
						local sstr = (passed_multiselect == "string" and multiselect) or (library_flags[flagName] and tostring(library_flags[flagName])) or (selectedOption and tostring(selectedOption)) or blankstring or "nil"
						if dropdownSelection.Text ~= sstr then
							dropdownSelection.Text = sstr
						end
						dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
						return sstr
					end
					local function validate(fallbackValue)
						if list and table.find(list, library_flags[flagName]) then
							update()
							return true
						end
						if fallbackValue ~= nil then
							if fallbackValue == "__DEFAULT" then
								fallbackValue = fallbackValue
							end
						else
							fallbackValue = list[1]
						end
						return Set((multiselect and {fallbackValue}) or fallbackValue)
					end
					local objectdata = {
						Options = options,
						Name = flagName,
						Flag = flagName,
						Type = "Dropdown",
						Default = default,
						Parent = sectionFunctions,
						Instance = dropdownSelection,
						Get = function()
							return library_flags[flagName]
						end,
						Set = Set,
						RawSet = ((multiselect and function(t, dat)
							if nil == dat and t ~= nil then
								dat = t
							end
							local lastv = library_flags[flagName]
							if not lastv or selectedOption ~= lastv then
								if lastv and type(lastv) == "table" then
									selectedOption = library_flags[flagName]
								else
									library_flags[flagName] = selectedOption
								end
								warn("Attempting to use new table for", flagName, " Please use :Set(), as setting through flags table may cause errors", debug.traceback(""))
								lastv = library_flags[flagName]
							end
							local cloned = {unpack(selectedOption)}
							if not dat then
								if #selectedOption ~= 0 then
									table.clear(selectedOption)
								end
								return selectedOption
							elseif type(dat) ~= "table" then
								warn("Expected table for argument #1 on Set for MultiSelect dropdown. Got", dat, debug.traceback(""))
								return selectedOption
							end
							for k = table.pack(unpack(dat)).n, 1, -1 do
								if dat[k] == nil then
									table.remove(dat, k)
								end
							end
							table.clear(selectedOption)
							for k, v in next, dat do
								selectedOption[k] = v
							end
							return selectedOption
						end) or function(t, str)
							if nil == str and t ~= nil then
								str = t
							end
							selectedOption = str
							library_flags[flagName] = str
							if options.Location then
								options.Location[options.LocationFlag or flagName] = str
							end
							update()
							return str
						end),
						Update = update,
						Reset = function()
							return Set(nil, default)
						end
					}
					function objectdata.UpdateList(t, listt, updateValues)
						if (nil == listt and t ~= nil) or (type(t) == "table" and type(listt) ~= "table") then
							listt, updateValues = t, listt
						end
						if listt == objectdata then
							listt = nil
						end
						resolvelist = getresolver(listt or options.List, options.Filter, options.Method)
						list = resolvelist()
						if updateValues then
							validate()
						end
						if showing then
							display(false)
							display(true)
						end
						return list
					end
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.AddDropDown = sectionFunctions.AddDropdown
				sectionFunctions.NewDropDown = sectionFunctions.AddDropdown
				sectionFunctions.NewDropdown = sectionFunctions.AddDropdown
				sectionFunctions.CreateDropdown = sectionFunctions.AddDropdown
				sectionFunctions.CreateDropdown = sectionFunctions.AddDropdown
				sectionFunctions.DropDown = sectionFunctions.AddDropdown
				sectionFunctions.Dropdown = sectionFunctions.AddDropdown
				sectionFunctions.DD = sectionFunctions.AddDropdown
				sectionFunctions.Dd = sectionFunctions.AddDropdown
				function sectionFunctions:AddColorpicker(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Colorpicker", options, ...)) or options
					if options.Random == true then
						options.Value = "random"
					elseif options.Rainbow == true then
						options.Value = "rainbow"
					end
					local colorPickerName, presetColor, callback, flagName = assert(options.Name, "Missing Name for new colorpicker."), options.Value, options.Callback, options.Flag or (function()
						library.unnamedcolorpicker = 1 + (library.unnamedcolorpicker or 0)
						return "Colorpicker" .. tostring(library.unnamedcolorpicker)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local designers = options.__designer
					options.__designer = nil
					local rainbowColorMode = false
					if presetColor == "random" then
						presetColor = Color3.new(math.random(), math.random(), math.random())
					elseif presetColor == "rainbow" then
						presetColor = Color3.new(1, 1, 1)
						rainbowColorMode = true
					end
					local newColorPicker = Instance_new("Frame")
					local colorPicker = Instance_new("ImageLabel")
					local colorPickerInner = Instance_new("ImageLabel")
					local colorPickerHeadline = Instance_new("TextLabel")
					local colorPickerButton = Instance_new("TextButton")
					local colorPickerHolderFrame = Instance_new("ImageLabel")
					local colorPickerHolderInner = Instance_new("ImageLabel")
					local color = Instance_new("ImageLabel")
					local selectorColor = Instance_new("Frame")
					local hue = Instance_new("ImageLabel")
					local hueGradient = Instance_new("UIGradient")
					local selectorHue = Instance_new("Frame")
					local randomColor = Instance_new("ImageLabel")
					local randomColorInner = Instance_new("ImageLabel")
					local randomColorButton = Instance_new("ImageButton")
					local hexInputBox = Instance_new("TextBox")
					local hexInput = Instance_new("ImageLabel")
					local hexInputInner = Instance_new("ImageLabel")
					local rainbow = Instance_new("ImageLabel")
					local rainbowInner = Instance_new("ImageLabel")
					local rainbowButton = Instance_new("ImageButton")
					local startingColor = presetColor or Color3.new(1, 1, 1)
					local colorPickerEnabled = false
					local colorH, colorS, colorV = 1, 1, 1
					local colorInput, hueInput = nil, nil
					local oldBackgroundColor = Color3.new()
					local oldImageColor = oldBackgroundColor
					local oldColor = oldBackgroundColor
					local rainbowColorValue = 0
					newColorPicker.Name = "newColorPicker"
					newColorPicker.Parent = sectionHolder
					newColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
					newColorPicker.BackgroundTransparency = 1
					newColorPicker.Size = UDim2.new(1, 0, 0, 19)
					colorPicker.Name = "colorPicker"
					colorPicker.Parent = newColorPicker
					colorPicker.Active = true
					colorPicker.BackgroundColor3 = library.colors.topGradient
					local colored_colorPicker_BackgroundColor3 = {colorPicker, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_colorPicker_BackgroundColor3
					colorPicker.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {colorPicker, "BorderColor3", "elementBorder"}
					colorPicker.Position = UDim2.fromScale(0.842, 0.113)
					colorPicker.Selectable = true
					colorPicker.Size = UDim2.fromOffset(24, 12)
					colorPicker.Image = "rbxassetid://2454009026"
					colorPicker.ImageColor3 = library.colors.bottomGradient
					local colored_colorPicker_ImageColor3 = {colorPicker, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_colorPicker_ImageColor3
					colorPickerInner.Name = "colorPickerInner"
					colorPickerInner.Parent = colorPicker
					colorPickerInner.Active = true
					colorPickerInner.AnchorPoint = Vector2.new(0.5, 0.5)
					colorPickerInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {colorPickerInner, "BorderColor3", "elementBorder"}
					colorPickerInner.Position = UDim2.fromScale(0.5, 0.5)
					colorPickerInner.Selectable = true
					colorPickerInner.Size = UDim2.new(1, -4, 1, -4)
					colorPickerInner.Image = "rbxassetid://2454009026"
					colorPickerInner.BackgroundColor3 = darkenColor(startingColor, 1.5)
					colorPickerInner.ImageColor3 = darkenColor(startingColor, 2.5)
					colorPickerHeadline.Name = "colorPickerHeadline"
					colorPickerHeadline.Parent = newColorPicker
					colorPickerHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					colorPickerHeadline.BackgroundTransparency = 1
					colorPickerHeadline.Position = UDim2.fromScale(0.034, 0.113)
					colorPickerHeadline.Size = UDim2.fromOffset(173, 11)
					colorPickerHeadline.Font = Enum.Font.Code
					colorPickerHeadline.Text = colorPickerName or "???"
					colorPickerHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {colorPickerHeadline, "TextColor3", "elementText"}
					colorPickerHeadline.TextSize = 14
					colorPickerHeadline.TextXAlignment = Enum.TextXAlignment.Left
					colorPickerButton.Name = "colorPickerButton"
					colorPickerButton.Parent = newColorPicker
					colorPickerButton.BackgroundColor3 = Color3.new(1, 1, 1)
					colorPickerButton.BackgroundTransparency = 1
					colorPickerButton.Size = UDim2.fromScale(1, 1)
					colorPickerButton.ZIndex = 5
					colorPickerButton.Font = Enum.Font.SourceSans
					colorPickerButton.Text = ""
					colorPickerButton.TextColor3 = Color3.new()
					colorPickerButton.TextSize = 14
					colorPickerButton.TextTransparency = 1
					colorPickerButton.BorderColor3 = library.colors.elementBorder
					local colored_colorPickerButton_BorderColor3 = {colorPickerButton, "BorderColor3", "elementBorder"}
					colored[1 + #colored] = colored_colorPickerButton_BorderColor3
					local function UpdateColorPicker(force, rainbsow)
						local last_vv = library_flags[flagName]
						local newColor = force or Color3.fromHSV(colorH, colorS, colorV)
						if not force then
							colorH, colorS, colorV = newColor:ToHSV()
						end
						colorPickerInner.BackgroundColor3 = darkenColor(newColor, 1.5)
						colorPickerInner.ImageColor3 = darkenColor(newColor, 2.5)
						color.BackgroundColor3 = Color3.fromHSV(colorH, 1, 1)
						library_flags[flagName] = newColor
						if options.Location then
							options.Location[options.LocationFlag or flagName] = newColor
						end
						hexInputBox.Text = Color3ToHex(newColor)
						if force then
							color.BackgroundColor3 = force
							selectorColor.Position = UDim2.new(force and select(3, Color3.toHSV(force)))
						end
						local pos = 1 - (Color3.toHSV(newColor))
						local scalex = selectorHue.Position.X.Scale
						if scalex ~= pos and not ((pos == 0 or pos == 1) and (scalex == 1 or scalex == 0)) then
							selectorHue.Position = UDim2.new(pos)
						end
						if callback and last_vv ~= newColor then
							task.spawn(callback, newColor, last_vv, rainbsow)
						end
					end
					library.signals[1 + #library.signals] = colorPickerButton.MouseButton1Click:Connect(function()
						if submenuOpen == colorPicker or submenuOpen == nil then
							colorPickerEnabled = not colorPickerEnabled
							library.colorpicker = colorPickerEnabled
							colorPickerHolderFrame.Visible = colorPickerEnabled
							if colorPickerEnabled then
								for _, v in next, colorpickerconflicts do
									v.Visible = false
								end
								submenuOpen = colorPicker
								newColorPicker.ZIndex = 2
								newSection.ZIndex = 100 + newSection.ZIndex
								colorPickerButton.BorderColor3 = library.colors.main
								colored_colorPickerButton_BorderColor3[3] = "main"
								UpdateColorPicker()
							else
								for _, v in next, colorpickerconflicts do
									v.Visible = true
								end
								submenuOpen = nil
								newColorPicker.ZIndex = 0
								newSection.ZIndex = newSection.ZIndex - 100
								colorPickerButton.BorderColor3 = library.colors.elementBorder
								colored_colorPickerButton_BorderColor3[3] = "elementBorder"
							end
						end
					end)
					colorPickerHolderFrame.Name = "colorPickerHolderFrame"
					colorPickerHolderFrame.Parent = newColorPicker
					colorPickerHolderFrame.Active = true
					colorPickerHolderFrame.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {colorPickerHolderFrame, "BackgroundColor3", "topGradient"}
					colorPickerHolderFrame.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {colorPickerHolderFrame, "BorderColor3", "elementBorder"}
					colorPickerHolderFrame.Selectable = true
					colorPickerHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
					colorPickerHolderFrame.Size = UDim2.fromOffset(206, 250)
					if math.ceil(colorPickerHolderFrame.AbsolutePosition.Y + colorPickerHolderFrame.AbsoluteSize.Y) > floor(newTabHolder.AbsoluteSize.Y + newTabHolder.AbsolutePosition.Y) then
						colorPickerHolderFrame.Position = UDim2.new(0.025, 0, 1.012, -colorPickerHolderFrame.AbsoluteSize.Y - colorPickerButton.AbsoluteSize.Y - 2)
					end
					colorPickerHolderFrame.Visible = false
					colorPickerHolderFrame.Image = "rbxassetid://2454009026"
					colorPickerHolderFrame.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {colorPickerHolderFrame, "ImageColor3", "bottomGradient"}
					colorPickerHolderInner.Name = "colorPickerHolderInner"
					colorPickerHolderInner.Parent = colorPickerHolderFrame
					colorPickerHolderInner.Active = true
					colorPickerHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
					colorPickerHolderInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {colorPickerHolderInner, "BackgroundColor3", "topGradient"}
					colorPickerHolderInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {colorPickerHolderInner, "BorderColor3", "elementBorder"}
					colorPickerHolderInner.Position = UDim2.fromScale(0.5, 0.5)
					colorPickerHolderInner.Selectable = true
					colorPickerHolderInner.Size = UDim2.new(1, -4, 1, -4)
					colorPickerHolderInner.Image = "rbxassetid://2454009026"
					colorPickerHolderInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {colorPickerHolderInner, "ImageColor3", "bottomGradient"}
					color.Name = "color"
					color.Parent = colorPickerHolderInner
					color.BackgroundColor3 = startingColor
					color.BorderSizePixel = 0
					color.Position = UDim2.fromOffset(5, 5)
					color.Size = UDim2.new(1, -10, 0, 192)
					color.Image = "rbxassetid://4155801252"
					selectorColor.Name = "selectorColor"
					selectorColor.Parent = color
					selectorColor.AnchorPoint = Vector2.new(0.5, 0.5)
					selectorColor.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
					selectorColor.BorderColor3 = Color3.fromRGB(69, 65, 70)
					selectorColor.Position = UDim2.new(startingColor and select(3, Color3.toHSV(startingColor)))
					selectorColor.Size = UDim2.fromOffset(4, 4)
					hue.Name = "hue"
					hue.Parent = colorPickerHolderInner
					hue.BackgroundColor3 = Color3.new(1, 1, 1)
					hue.BorderSizePixel = 0
					hue.Position = UDim2.fromOffset(5, 202)
					hue.Size = UDim2.new(1, -10, 0, 14)
					hue.Image = "rbxassetid://3570695787"
					hue.ScaleType = Enum.ScaleType.Slice
					hue.SliceScale = 0.01
					hueGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(235, 7, 255)), ColorSequenceKeypoint.new(0.33, Color3:fromRGB(9, 189)), ColorSequenceKeypoint.new(0.5, Color3:fromRGB(193, 196)), ColorSequenceKeypoint.new(0.66, Color3:new(1)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 247)), ColorSequenceKeypoint.new(1, Color3.new(1))})
					hueGradient.Name = "hueGradient"
					hueGradient.Parent = hue
					selectorHue.Name = "selectorHue"
					selectorHue.Parent = hue
					selectorHue.BackgroundColor3 = Color3:fromRGB(125, 255)
					selectorHue.BackgroundTransparency = 0.2
					selectorHue.BorderColor3 = Color3:fromRGB(84, 91)
					selectorHue.Position = UDim2.new(1 - (Color3.toHSV(startingColor)))
					selectorHue.Size = UDim2:new(2, 1)
					hexInput.Name = "hexInput"
					hexInput.Parent = colorPickerHolderInner
					hexInput.Active = true
					hexInput.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {hexInput, "BackgroundColor3", "topGradient"}
					hexInput.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {hexInput, "BorderColor3", "elementBorder"}
					hexInput.Position = UDim2.fromOffset(5, 223)
					hexInput.Selectable = true
					hexInput.Size = UDim2.fromOffset(150, 18)
					hexInput.Image = "rbxassetid://2454009026"
					hexInput.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {hexInput, "ImageColor3", "bottomGradient"}
					hexInputInner.Name = "hexInputInner"
					hexInputInner.Parent = hexInput
					hexInputInner.Active = true
					hexInputInner.AnchorPoint = Vector2.new(0.5, 0.5)
					hexInputInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {hexInputInner, "BackgroundColor3", "topGradient"}
					hexInputInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {hexInputInner, "BorderColor3", "elementBorder"}
					hexInputInner.Position = UDim2.fromScale(0.5, 0.5)
					hexInputInner.Selectable = true
					hexInputInner.Size = UDim2.new(1, -4, 1, -4)
					hexInputInner.Image = "rbxassetid://2454009026"
					hexInputInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {hexInputInner, "ImageColor3", "bottomGradient"}
					hexInputBox.Name = "hexInputBox"
					hexInputBox.Parent = hexInput
					hexInputBox.BackgroundColor3 = Color3.new(1, 1, 1)
					hexInputBox.BackgroundTransparency = 1
					hexInputBox.Size = UDim2.fromScale(1, 1)
					hexInputBox.ZIndex = 5
					hexInputBox.Font = Enum.Font.Code
					hexInputBox.PlaceholderText = "Hex Input"
					hexInputBox.Text = Color3ToHex(startingColor)
					hexInputBox.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {hexInputBox, "TextColor3", "elementText"}
					hexInputBox.TextSize = 14
					hexInputBox.ClearTextOnFocus = false
					randomColor.Name = "randomColor"
					randomColor.Parent = colorPickerHolderInner
					randomColor.Active = true
					randomColor.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {randomColor, "BackgroundColor3", "topGradient"}
					randomColor.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {randomColor, "BorderColor3", "elementBorder"}
					randomColor.Position = UDim2.fromOffset(158, 223)
					randomColor.Selectable = true
					randomColor.Size = UDim2.fromOffset(18, 18)
					randomColor.Image = "rbxassetid://2454009026"
					randomColor.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {randomColor, "ImageColor3", "bottomGradient"}
					randomColorInner.Name = "randomColorInner"
					randomColorInner.Parent = randomColor
					randomColorInner.Active = true
					randomColorInner.AnchorPoint = Vector2.new(0.5, 0.5)
					randomColorInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {randomColorInner, "BackgroundColor3", "topGradient"}
					randomColorInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {randomColorInner, "BorderColor3", "elementBorder"}
					randomColorInner.Position = UDim2.fromScale(0.5, 0.5)
					randomColorInner.Selectable = true
					randomColorInner.Size = UDim2.new(1, -4, 1, -4)
					randomColorInner.Image = "rbxassetid://2454009026"
					randomColorInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {randomColorInner, "ImageColor3", "bottomGradient"}
					randomColorButton.Name = "randomColorButton"
					randomColorButton.Parent = randomColor
					randomColorButton.BackgroundColor3 = Color3.new(1, 1, 1)
					randomColorButton.BackgroundTransparency = 1
					randomColorButton.Size = UDim2.fromScale(1, 1)
					randomColorButton.ZIndex = 5
					randomColorButton.Image = "rbxassetid://7484765651"
					rainbow.Name = "rainbow"
					rainbow.Parent = colorPickerHolderInner
					rainbow.Active = true
					rainbow.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {rainbow, "BackgroundColor3", "topGradient"}
					rainbow.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {rainbow, "BorderColor3", "elementBorder"}
					rainbow.Position = UDim2.fromOffset(158 + 18 + 4, 223)
					rainbow.Selectable = true
					rainbow.Size = UDim2.fromOffset(18, 18)
					rainbow.Image = "rbxassetid://2454009026"
					rainbow.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {rainbow, "ImageColor3", "bottomGradient"}
					rainbowInner.Name = "rainbowInner"
					rainbowInner.Parent = randomColor
					rainbowInner.Active = true
					rainbowInner.AnchorPoint = Vector2.new(0.5, 0.5)
					rainbowInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {rainbowInner, "BackgroundColor3", "topGradient"}
					rainbowInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {rainbowInner, "BorderColor3", "elementBorder"}
					rainbowInner.Position = UDim2.fromScale(0.5, 0.5)
					rainbowInner.Selectable = true
					rainbowInner.Size = UDim2.new(1, -4, 1, -4)
					rainbowInner.Image = "rbxassetid://2454009026"
					rainbowInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {rainbowInner, "ImageColor3", "bottomGradient"}
					rainbowButton.Name = "rainbowButton"
					rainbowButton.Parent = rainbow
					rainbowButton.BackgroundColor3 = Color3.new(1, 1, 1)
					rainbowButton.BackgroundTransparency = 1
					rainbowButton.Size = UDim2.fromScale(1, 1)
					rainbowButton.ZIndex = 5
					rainbowButton.Image = "rbxassetid://7484772919"
					local indexwith = (designers and "rainbows") or "rainbowsg"
					local function setrainbow(t, rainbowColorMod)
						if nil == rainbowColorMod and t ~= nil then
							rainbowColorMod = t
						end
						if rainbowColorMod == nil or type(rainbowColorMod) ~= "boolean" then
							rainbowColorMode = not rainbowColorMode
						else
							rainbowColorMode = rainbowColorMod
						end
						if colorInput then
							colorInput = (colorInput:Disconnect() and nil) or nil
						end
						if hueInput then
							hueInput = (hueInput:Disconnect() and nil) or nil
						end
						pcall(function()
							if destroyrainbows and library.rainbows <= 0 then
								destroyrainbows = nil
							end
							if destroyrainbowsg and library.rainbowsg <= 0 then
								destroyrainbowsg = nil
							end
						end)
						if rainbowColorMode then
							pcall(function()
								if not library.rainbowflags[flagName] then
									library[indexwith] = 1 + library[indexwith]
								end
								library.rainbowflags[flagName] = true
								oldImageColor = colorPickerInner.ImageColor3
								oldBackgroundColor = colorPickerInner.BackgroundColor3
								oldColor = color.BackgroundColor3
								pcall(function()
									local common_float = 1 / 255
									while wait_check() and rainbowColorMode and (options.Value == "rainbow" or ((not designers and not destroyrainbowsg) or (designers and not destroyrainbows))) do
										rainbowColorValue = common_float + rainbowColorValue
										if rainbowColorValue > 1 then
											rainbowColorValue = 0
										end
										colorH = rainbowColorValue
										UpdateColorPicker(Color3.fromHSV(rainbowColorValue, 1, 1), true)
									end
								end)
							end)
							pcall(function()
								rainbowColorMode = nil
								if library.rainbowflags[flagName] then
									library[indexwith] = library[indexwith] - 1
								end
								library.rainbowflags[flagName] = nil
							end)
						end
						UpdateColorPicker(library_flags[flagName])
					end
					library.signals[1 + #library.signals] = randomColorButton.MouseButton1Click:Connect(function()
						if rainbowColorMode then
							setrainbow(false)
						end
						UpdateColorPicker(Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))
					end)
					library.signals[1 + #library.signals] = rainbowButton.MouseButton1Click:Connect(setrainbow)
					sectionFunctions:Update()
					library.signals[1 + #library.signals] = newColorPicker.MouseEnter:Connect(function()
						tweenService:Create(colorPicker, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
						colored_colorPicker_BackgroundColor3[3] = "main"
						colored_colorPicker_BackgroundColor3[4] = 1.5
						colored_colorPicker_ImageColor3[3] = "main"
						colored_colorPicker_ImageColor3[4] = 2.5
					end)
					library.signals[1 + #library.signals] = newColorPicker.MouseLeave:Connect(function()
						if not colorPickerEnabled then
							tweenService:Create(colorPicker, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
							colored_colorPicker_BackgroundColor3[3] = "topGradient"
							colored_colorPicker_BackgroundColor3[4] = nil
							colored_colorPicker_ImageColor3[3] = "bottomGradient"
							colored_colorPicker_ImageColor3[4] = nil
						end
					end)
					hexInputBox.FocusLost:Connect(function()
						if #hexInputBox.Text > 5 then
							local last_vv = library_flags[flagName]
							local not_fucked, clr = pcall(Color3FromHex, hexInputBox.Text)
							UpdateColorPicker((not_fucked and clr) or last_vv)
						end
					end)
					colorH = 1 - (math.clamp(selectorHue.AbsolutePosition.X - hue.AbsolutePosition.X, 0, hue.AbsoluteSize.X) / hue.AbsoluteSize.X)
					colorS = (math.clamp(selectorColor.AbsolutePosition.X - color.AbsolutePosition.X, 0, color.AbsoluteSize.X) / color.AbsoluteSize.X)
					colorV = 1 - (math.clamp(selectorColor.AbsolutePosition.Y - color.AbsolutePosition.Y, 0, color.AbsoluteSize.Y) / color.AbsoluteSize.Y)
					library.signals[1 + #library.signals] = color.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							isDraggingSomething = true
							colorInput = (colorInput and colorInput:Disconnect() and nil) or runService.RenderStepped:Connect(function()
								local colorX = (math.clamp(mouse.X - color.AbsolutePosition.X, 0, color.AbsoluteSize.X) / color.AbsoluteSize.X)
								local colorY = (math.clamp(mouse.Y - color.AbsolutePosition.Y, 0, color.AbsoluteSize.Y) / color.AbsoluteSize.Y)
								selectorColor.Position = UDim2.fromScale(colorX, colorY)
								colorS = colorX
								colorV = 1 - colorY
								UpdateColorPicker()
							end)
							library.signals[1 + #library.signals] = colorInput
						end
					end)
					library.signals[1 + #library.signals] = color.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if colorInput then
								isDraggingSomething = false
								colorInput:Disconnect()
							end
						end
					end)
					library.signals[1 + #library.signals] = hue.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if hueInput then
								hueInput:Disconnect()
							end
							isDraggingSomething = true
							hueInput = runService.RenderStepped:Connect(function()
								local hueX = math.clamp(mouse.X - hue.AbsolutePosition.X, 0, hue.AbsoluteSize.X) / hue.AbsoluteSize.X
								selectorHue.Position = UDim2.new(hueX)
								colorH = 1 - hueX
								UpdateColorPicker()
							end)
							library.signals[1 + #library.signals] = hueInput
						end
					end)
					library.signals[1 + #library.signals] = hue.InputEnded:Connect(function(input)
						if hueInput and input.UserInputType == Enum.UserInputType.MouseButton1 then
							isDraggingSomething = false
							hueInput:Disconnect()
						end
					end)
					if rainbowColorMode then
						spawn(function()
							rainbowColorMode = nil
							setrainbow(true)
						end)
					end
					local function Set(t, clr)
						if clr == nil and t ~= nil then
							clr = t
						end
						if clr == "rainbow" then
							if not rainbowColorMode then
								task.spawn(setrainbow, true)
							end
							return
						elseif clr == "random" then
							clr = Color3.new(math.random(), math.random(), math.random())
						elseif type(clr) == "string" and tonumber(clr, 16) then
							clr = Color3FromHex(clr)
						end
						task.spawn(setrainbow, false)
						local last_v = library_flags[flagName]
						library_flags[flagName] = clr
						if options.Location then
							options.Location[options.LocationFlag or flagName] = clr
						end
						color.BackgroundColor3 = clr
						selectorColor.Position = UDim2.new(clr and select(3, Color3.toHSV(clr)))
						selectorHue.Position = UDim2.new(1 - (Color3.toHSV(clr)))
						colorPickerInner.BackgroundColor3 = darkenColor(clr, 1.5)
						colorPickerInner.ImageColor3 = darkenColor(clr, 2.5)
						hexInputBox.Text = Color3ToHex(clr)
						colorH, colorS, colorV = Color3.toHSV(clr)
						if callback and (last_v ~= clr or options.AllowDuplicateCalls) then
							task.spawn(callback, clr, last_v)
						end
						return clr
					end
					if presetColor ~= nil then
						Set(presetColor)
					else
						library_flags[flagName] = startingColor
						if options.Location then
							options.Location[options.LocationFlag or flagName] = startingColor
						end
					end
					local default = options.Value or startingColor or library_flags[flagName]
					local function update()
						colorPickerName, callback = options.Name or colorPickerName, options.Callback
						local clr = library_flags[flagName]
						color.BackgroundColor3 = clr
						selectorColor.Position = UDim2.new(clr and select(3, Color3.toHSV(clr)))
						selectorHue.Position = UDim2.new(1 - (Color3.toHSV(clr)))
						colorPickerInner.BackgroundColor3 = darkenColor(clr, 1.5)
						colorPickerInner.ImageColor3 = darkenColor(clr, 2.5)
						hexInputBox.Text = Color3ToHex(clr)
						colorPickerHeadline.Text = colorPickerName or "???"
						return clr
					end
					local objectdata = {
						Options = options,
						Name = flagName,
						Flag = flagName,
						Type = "Colorpicker",
						Default = default,
						Parent = sectionFunctions,
						Instance = newColorPicker,
						SetRainbow = setrainbow,
						Get = function()
							return library_flags[flagName]
						end,
						GetRainbow = function()
							return rainbowColorMode
						end,
						Set = Set,
						RawSet = function(t, clr)
							if clr == nil and t ~= nil then
								clr = t
							end
							if clr == "rainbow" then
								if not rainbowColorMode then
									task.spawn(setrainbow, true)
								end
								return clr
							elseif clr == "random" then
								clr = Color3.new(math.random(), math.random(), math.random())
							elseif clr and type(clr) == "string" and tonumber(clr, 16) then
								clr = Color3FromHex(clr)
							end
							task.spawn(setrainbow, false)
							library_flags[flagName] = clr
							if options.Location then
								options.Location[options.LocationFlag or flagName] = clr
							end
							return clr
						end,
						Update = update,
						Reset = function()
							return Set(nil, default)
						end
					}
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
				sectionFunctions.AddColorPicker = sectionFunctions.AddColorpicker
				sectionFunctions.NewColorpicker = sectionFunctions.AddColorpicker
				sectionFunctions.NewColorPicker = sectionFunctions.AddColorpicker
				sectionFunctions.CreateColorPicker = sectionFunctions.AddColorpicker
				sectionFunctions.CreateColorpicker = sectionFunctions.AddColorpicker
				sectionFunctions.ColorPicker = sectionFunctions.AddColorpicker
				sectionFunctions.Colorpicker = sectionFunctions.AddColorpicker
				sectionFunctions.Cp = sectionFunctions.AddColorpicker
				sectionFunctions.CP = sectionFunctions.AddColorpicker
				function sectionFunctions:UpdateAll()
					local target = self or sectionFunctions
					if target and type(target) == "table" and target.Flags then
						for _, e in next, target.Flags do
							if e and type(e) == "table" and e.Update then
								pcall(e.Update)
							end
						end
					end
				end
				return sectionFunctions
			end
			tabFunctions.AddSection = tabFunctions.CreateSection
			tabFunctions.NewSection = tabFunctions.CreateSection
			tabFunctions.Section = tabFunctions.CreateSection
			tabFunctions.Sec = tabFunctions.CreateSection
			tabFunctions.S = tabFunctions.CreateSection
			function tabFunctions:UpdateAll()
				local target = self or tabFunctions
				if target and type(target) == "table" and target.Flags then
					for _, e in next, target.Flags do
						if e and type(e) == "table" and e.Update then
							pcall(e.Update)
						end
					end
				end
			end
			return tabFunctions
		end
		windowFunctions.AddTab = windowFunctions.CreateTab
		windowFunctions.NewTab = windowFunctions.CreateTab
		windowFunctions.Tab = windowFunctions.CreateTab
		windowFunctions.T = windowFunctions.CreateTab
		function windowFunctions:CreateDesigner(options, ...)
			options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
			assert(shared.bypasstablimit or library.Designer == nil, "Designer already exists")
			options = options or {}
			options.Image = options.Image or 7483871523
			options.LastTab = true
			local designer = windowFunctions:CreateTab(options)
			local colorsection = designer:CreateSection({
				Name = "Colors"
			})
			local backgroundsection = designer:CreateSection({
				Name = "Background",
				Side = "right"
			})
			local detailssection = designer:CreateSection({
				Name = "Info"
			})
			local filessection = designer:CreateSection({
				Name = "Profiles",
				Side = "right"
			})
			local settingssection = designer:CreateSection({
				Name = "Settings",
				Side = "right"
			})
			local designerelements = {}
			library.designerelements = designerelements
			for _, v in next, {{"Main", "main"}, {"Background", "background"}, {"Outer Border", "outerBorder"}, {"Inner Border", "innerBorder"}, {"Top Gradient", "topGradient"}, {"Bottom Gradient", "bottomGradient"}, {"Section Background", "sectionBackground"}, {"Section", "section"}, {"Element Text", "elementText"}, {"Other Element Text", "otherElementText"}, {"Tab Text", "tabText"}, {"Element Border", "elementBorder"}, {"Selected Option", "selectedOption"}, {"Unselected Option", "unselectedOption"}, {"Hovered Option Top", "hoveredOptionTop"}, {"Unhovered Option Top", "unhoveredOptionTop"}, {"Hovered Option Bottom", "hoveredOptionBottom"}, {"Unhovered Option Bottom", "unhoveredOptionBottom"}} do
				local nam, codename = v[1], v[2]
				local cflag = "__Designer.Colors." .. codename
				designerelements[codename] = {
					Return = colorsection:AddColorpicker({
						Name = nam,
						Flag = cflag,
						Value = library.colors[codename],
						Callback = function(v, y)
							library.colors[codename] = v or y
						end,
						__designer = 1
					}),
					Flag = cflag
				}
			end
			local flags = {}
			local persistoptions = {
				Name = "Workspace Profile",
				Flag = "__Designer.Background.WorkspaceProfile",
				Flags = true,
				Suffix = "Config",
				Workspace = library.WorkspaceName or "Unnamed Workspace",
				Desginer = true
			}
			local daaata = {{"AddTextbox", "__Designer.Textbox.ImageAssetID", backgroundsection, {
				Name = "Image Asset ID",
				Placeholder = "rbxassetid://4427304036",
				Flag = "__Designer.Background.ImageAssetID",
				Value = "rbxassetid://4427304036",
				Callback = updatecolorsnotween
			}}, {"AddColorpicker", "__Designer.Colorpicker.ImageColor", backgroundsection, {
				Name = "Image Color",
				Flag = "__Designer.Background.ImageColor",
				Value = Color3.new(1, 1, 1),
				Callback = updatecolorsnotween,
				__designer = 1
			}}, {"AddSlider", "__Designer.Slider.ImageTransparency", backgroundsection, {
				Name = "Image Transparency",
				Flag = "__Designer.Background.ImageTransparency",
				Value = 95,
				Min = 0,
				Max = 100,
				Format = "Image Transparency: %s%%",
				Textbox = true,
				Callback = updatecolorsnotween
			}}, {"AddToggle", "__Designer.Toggle.UseBackgroundImage", backgroundsection, {
				Name = "Use Background Image",
				Flag = "__Designer.Background.UseBackgroundImage",
				Value = true,
				Callback = updatecolorsnotween
			}}, {"AddPersistence", "__Designer.Persistence.ThemeFile", filessection, {
				Name = "Theme Profile",
				Flag = "__Designer.Files.ThemeFile",
				Workspace = "Function Lib Themes",
				Flags = flags,
				Suffix = "Theme",
				Desginer = true
			}}, {"AddTextbox", "__Designer.Textbox.WorkspaceName", filessection, {
				Name = "Workspace Name",
				Value = library.WorkspaceName or "Unnamed Workspace",
				Flag = "__Designer.Files.WorkspaceFile",
				Callback = function(n, o)
					persistoptions.Workspace = n or o
				end
			}}, {"AddPersistence", "__Designer.Persistence.WorkspaceProfile", filessection, persistoptions}, {"AddButton", "__Designer.Button.TerminateGUI", settingssection, {{
				Name = "Terminate GUI",
				Callback = library.unload
			}, {
				Name = "Reset GUI",
				Callback = resetall
			}}}, {"AddKeybind", "__Designer.Keybind.ShowHideKey", settingssection, {
				Name = "Show/Hide Key",
				Location = library.configuration,
				Flag = "__Designer.Settings.ShowHideKey",
				LocationFlag = "hideKeybind",
				Value = library.configuration.hideKeybind,
				Callback = function()
					lasthidebing = os.clock()
				end
			}}}
			if setclipboard and daaata[8] then
				local common_table = daaata[8][4]
				if common_table then
					common_table[1 + #common_table] = {
						Name = "Join Discord",
						Callback = function()
							local http = game:GetService('HttpService') 
							local req =  http_request or request or HttpPost or syn.request 
							if req then
								req({
									Url = 'http://127.0.0.1:6463/rpc?v=1',
									Method = 'POST',
									Headers = {
										['Content-Type'] = 'application/json',
										Origin = 'https://discord.com'
									},
									Body = http:JSONEncode({
										cmd = 'INVITE_BROWSER',
										nonce = http:GenerateGUID(false),
										args = {code = 'uNQRZs6gzm'}
									})
								})
							end
						end
					}
					common_table = nil
				end
			end
			if options.Info then
				local typ = type(options.Info)
				if typ == "string" then
					daaata[1 + #daaata] = {"AddLabel", "__Designer.Label.Creator", detailssection, {
						Text = options.Info
					}}
				elseif typ == "table" and #options.Info > 0 then
					for _, v in next, options.Info do
						daaata[1 + #daaata] = {"AddLabel", "__Designer.Label.Creator", detailssection, {
							Text = tostring(v)
						}}
					end
				end
			end
			for _, v in next, daaata do
				designerelements[v[2]] = v[3][v[1]](v[3], v[4])
			end
			designerelements["__Designer.Textbox.WorkspaceName"]:Set(library.WorkspaceName or "Unnamed Workspace")
			for k, v in next, elements do
				if v and k and string.sub(k, 1, 11) == "__Designer." and v.Type and v.Type ~= "Persistence" then
					flags[1 + #flags] = k
				end
			end
			if library.Backdrop then
				library.Backdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
				library.Backdrop.Visible = not not library_flags["__Designer.Background.UseBackgroundImage"]
				library.Backdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
				library.Backdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
			end
			local function setbackground(t, Asset, Transparency, Visible)
				if Visible == nil and t ~= nil and type(t) ~= "table" then
					Asset, Transparency, Visible = t, Transparency, Visible
				end
				if Visible == 0 or ((Asset == 0 or Asset == false) and Visible == nil and Transparency == nil) then
					Visible = false
				elseif Visible == 1 or ((Asset == 1 or Asset == true) and Visible == nil and Transparency == nil) then
					Visible = true
				elseif Asset == nil and Transparency == nil and Visible == nil then
					Visible = not library_flags["__Designer.Background.UseBackgroundImage"]
				end
				local temp = Asset and type(Asset)
				if Transparency == nil and Visible == nil and temp == "number" and ((Asset ~= 1 and Asset ~= 0) or (Asset > 0 and Asset <= 100)) then
					Transparency, Asset, temp = Asset, nil
				end
				if temp and ((temp == "number" and Asset > 1) or temp == "string") then
					designerelements["__Designer.Textbox.ImageAssetID"]:Set(Asset)
				end
				temp = tonumber(Transparency)
				if temp then
					designerelements["__Designer.Slider.ImageTransparency"]:Set(temp)
				end
				if Visible ~= nil then
					designerelements["__Designer.Toggle.UseBackgroundImage"]:Set(not not Visible)
				end
				return Asset, Transparency, Visible
			end
			local bk = options.Background or options.Backdrop or options.Grahpic
			if bk then
				if type(bk) == "table" then
					setbackground(bk.Asset or bk[1], bk.Transparency or bk[2], bk.Visible or bk[3])
				else
					setbackground(bk, 0, 1)
				end
			end
			library.Designer = {
				Options = options,
				Parent = windowFunctions,
				Name = "Designer",
				Flag = "Designer",
				Type = "Designer",
				Instance = designer,
				SetBackground = setbackground
			}
			local savestuff = library.elements["__Designer.Background.WorkspaceProfile"]
			if savestuff then
				library.LoadFile = savestuff.LoadFile
				library.LoadFileRaw = savestuff.LoadFileRaw
				library.LoadJSON = savestuff.LoadJSON
				library.LoadJSONRaw = savestuff.LoadJSONRaw
				library.SaveFile = savestuff.SaveFile
				library.GetJSON = savestuff.GetJSON
			end
			spawn(updatecolorsnotween)
			return library.Designer
		end
		windowFunctions.AddDesigner = windowFunctions.CreateDesigner
		windowFunctions.NewDesigner = windowFunctions.CreateDesigner
		windowFunctions.Designer = windowFunctions.CreateDesigner
		windowFunctions.D = windowFunctions.CreateDesigner
		function windowFunctions:UpdateAll()
			local target = self or windowFunctions
			if target and type(target) == "table" and target.Flags then
				for _, e in next, target.Flags do
					if e and type(e) == "table" and e.Update then
						pcall(e.Update)
					end
				end
				pcall(function()
					if library.Backdrop then
						library.Backdrop.Visible = not not library_flags["__Designer.Background.UseBackgroundImage"]
						library.Backdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
						library.Backdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
						library.Backdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
					end
				end)
			end
		end
		library.UpdateAll = windowFunctions.UpdateAll
		if options.Themeable or options.DefaultTheme or options.Theme then
			spawn(function()
				local os_clock = os.clock
				local starttime = os_clock()
				while os_clock() - starttime < 12 do
					if homepage then
						windowFunctions.GoHome = homepage
						local x, e = pcall(homepage)
						if not x and e then
							warn("Error going to Homepage:", e)
						end
						x, e = nil
						break
					end
					task.wait()
				end
				local whatDoILookLike = options.Themeable or options.DefaultTheme or options.Theme
				windowFunctions:CreateDesigner((type(whatDoILookLike) == "table" and whatDoILookLike) or nil)
				if options.DefaultTheme or options.Theme then
					spawn(function()
						local content = options.DefaultTheme or options.Theme or options.JSON or options.ThemeJSON
						if content and type(content) == "string" and #content > 1 then
							local good, jcontent = JSONDecode(content)
							if good and jcontent then
								for cflag, val in next, jcontent do
									local data = elements[cflag]
									if data and data.Type ~= "Persistence" then
										if data.Set then
											data:Set(val)
										elseif data.RawSet then
											data:RawSet(val)
										else
											library.flags[cflag] = val
										end
									end
								end
							end
						end
					end)
				end
				os_clock, starttime = nil
			end)
		end
		return windowFunctions
	end

	library.NewWindow = library.CreateWindow
	library.AddWindow = library.CreateWindow
	library.Window = library.CreateWindow
	library.W = library.CreateWindow


	local PepsiUi = library:CreateWindow({
		Name = "Name Hub",
		Theme = {
			Image = "rbxassetid://7483871523",
			Info = "Made By Sulfurz\nver 0.0.1",
			Background = {
				Asset = "rbxassetid://5553946656"
			}
		}
	})

	local Main = PepsiUi:CreateTab({
		Name = "Main"
	})

	local MainTab = Main:CreateSection({
		Name = "Main", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	local fast = MainTab:AddLabel({
		Name = ""
	})

	task.spawn(function()
		while task.wait() do
			pcall(function()
				fast:Set("Fast Delay :" .. tostring(_G.Fast))
			end)
		end
	end)


	MainTab:AddToggle({
		Name = "Auto Farm",
		Value = _G.Settings.Main["Auto Farm Level"], -- ปรับค่าToggle true/false or Config
		Callback = function(value)
			_G.Settings.Main["Auto Farm Level"] = value
			Auto_Farm_Level = value
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})

	MainTab:AddButton({
		Name = "Stop TP",
		Callback = function()
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
	})

	AttackRandomType = 1
	task.spawn(function()
		while wait() do 
			AttackRandomType = math.random(1,5)
			wait(0.3)
		end
	end)

	_G.RedeemCodeLocalFastAutoFarm = false
	function AutoFarmLevel()
		GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
		GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value

		if _G.Settings.Main["Fast Auto Farm Level"] and (MyLevel >= 15 and MyLevel <= 300) then
			if _G.Settings.Configs["Auto Haki"] then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
			if _G.RedeemCodeLocalFastAutoFarm == false then
				function Redeem(value)
					game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
				end
				for i,v in pairs(CodeApi) do
					Redeem(v) 
				end
				wait()
				_G.RedeemCodeLocalFastAutoFarm = true
			end
			if MyLevel >= 15 and MyLevel <= 70 then
				local CFrameMon = CFrame.new(-4698, 845, -1912)
				if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Settings.Main["Fast Auto Farm Level"] and v.Name == "God's Guard [Lv. 450]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()
								FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if FarmtoTarget then FarmtoTarget:Stop() end
									for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
										if _G.Settings.Main["Fast Auto Farm Level"] and v2.Name == "God's Guard [Lv. 450]" and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
											if InMyNetWork(v2.HumanoidRootPart) then
												v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												v2.Humanoid.JumpPower = 0
												v2.Humanoid.WalkSpeed = 0
												v2.HumanoidRootPart.CanCollide = false
												v2.Humanoid:ChangeState(14)
												v2.Humanoid:ChangeState(11)
												v2.HumanoidRootPart.Size = Vector3.new(55,55,55)
											end
										end
									end
									if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
									if AttackRandomType == 1 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
									elseif AttackRandomType == 2 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 60)
									elseif AttackRandomType == 3 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -60)
									elseif AttackRandomType == 4 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(60, 1, 0)
									elseif AttackRandomType == 5 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-60, 1, 0)
									else
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
									end
									FastAttack = true
									EquipWeapon(_G.Settings.Configs["Select Weapon"])
								end
							until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]")) or not (_G.Settings.Main["Fast Auto Farm Level"] or _G.Settings.Main["Auto Farm Level"]) or v.Humanoid.Health <= 0 or not v.Parent
							FastAttack = false
						end
					end
				else
					Modstween = toTarget(CFrameMon)
					if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
					elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if Modstween then Modstween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					end 
				end
			elseif MyLevel >= 70 and MyLevel <= 300 then
				if GetQuest.Visible == false then
					if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then 
						local CFrameMon = CFrame.new(-4698, 845, -1912)
						if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if _G.Settings.Main["Fast Auto Farm Level"] and v.Name == "God's Guard [Lv. 450]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
												if _G.Settings.Main["Fast Auto Farm Level"] and v2.Name == "God's Guard [Lv. 450]" and v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
													if InMyNetWork(v2.HumanoidRootPart) then
														v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
														v2.Humanoid.JumpPower = 0
														v2.Humanoid.WalkSpeed = 0
														v2.HumanoidRootPart.CanCollide = false
														v2.Humanoid:ChangeState(14)
														v2.Humanoid:ChangeState(11)
														v2.HumanoidRootPart.Size = Vector3.new(55,55,55)
													end
												end
											end
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											if AttackRandomType == 1 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
											elseif AttackRandomType == 2 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 60)
											elseif AttackRandomType == 3 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -60)
											elseif AttackRandomType == 4 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(60, 1, 0)
											elseif AttackRandomType == 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-60, 1, 0)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
											end
											FastAttack = true
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
									until not (game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]")) or not (_G.Settings.Main["Fast Auto Farm Level"] or _G.Settings.Main["Auto Farm Level"]) or v.Humanoid.Health <= 0 or not v.Parent
									FastAttack = false
								end
							end
						else
							Modstween = toTarget(CFrameMon)
							if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				elseif GetQuest.Visible == true then
					local AllPlayersTableSkipFarm = {}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						table.insert(AllPlayersTableSkipFarm,v.Name)
					end
					if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
						for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
								if _G.Settings.Main["Auto Farm Level"] and _G.Settings.Main["Fast Auto Farm Level"] and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										if World1 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - v.HumanoidRootPart.Position).magnitude < 5000 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
										elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
												local args = {
													[1] = "EnablePvp"
												}

												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											-- game:GetService('VirtualUser'):CaptureController()
											-- game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
											-- if CombatFrameworkR.activeController.hitboxMagnitude ~= 55 and CombatFrameworkR.activeController and CombatFrameworkR.activeController.equipped then
											--     CombatFrameworkR.activeController.hitboxMagnitude = 55
											-- end
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											if AttackRandomType == 1 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
											elseif AttackRandomType == 2 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 7)
											elseif AttackRandomType == 3 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -7)
											elseif AttackRandomType == 4 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(7, 1, 0)
											elseif AttackRandomType == 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-7, 1, 0)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
											end
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
											AttackPlayers()
											wait(.1)
											-- game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											-- game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
									until not _G.Settings.Main["Auto Farm Level"] or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
								end
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if _G.Settings.Main["Auto Farm Level"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if string.find(GetQuestTitle.Text, QuestName) then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
											elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												StartMagnet = true
												PosMon = v.HumanoidRootPart.CFrame
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												end
												FastAttack = true
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
										until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
										FastAttack = false
										StartMagnet = false
									else
										Com("F_","AbandonQuest");
									end
								end
							end
						else
							StartMagnet = false
							if not string.find(GetQuestTitle.Text, NameCheckQuest) then Com("F_","AbandonQuest"); end
							Modstween = toTarget(CFrameMon)
							if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
							elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				end
			end
		else
			if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
			if GetQuest.Visible == false then
				StartMagnet = false
				FastAttack = false
				Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
				if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Questtween then Questtween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Questtween then Questtween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
				elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Questtween then Questtween:Stop() end
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Questtween then Questtween:Stop() end
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
					if Questtween then Questtween:Stop() end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						Com("F_","StartQuest", QuestName, LevelQuest)
						Com("F_","SetSpawnPoint")
					end
				end
			elseif GetQuest.Visible == true then
				if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.Settings.Main["Auto Farm Level"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if string.find(GetQuestTitle.Text, NameMon) then
								repeat wait()
									FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if FarmtoTarget then FarmtoTarget:Stop() end
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										StartMagnet = true
										FastAttack = true
										if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
											_G.Settings.Configs["Fast Attack Type"] = "Slow"
										else
											_G.Settings.Configs["Fast Attack Type"] = "Fast"
										end
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										v.Humanoid:ChangeState(14)
										PosMon = v.HumanoidRootPart.CFrame
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0)
									end
								until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
								StartMagnet = false
								FastAttack = false
							else
								Com("F_","AbandonQuest");
							end
						end
					end
				else
					StartMagnet = false
					FastAttack = false
					if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
					Modstween = toTarget(CFrameMon.Position,CFrameMon)
					if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
					elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
						if Modstween then Modstween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					end 
				end
			end
		end
	end

	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Main["Auto Farm Level"] then
					if _G.Settings.Configs["Double Quest"] then 
						if SubQuest == true then 
							if LevelFarm then 
								if tonumber(LevelFarm-1) ~= 0 then 
									CheckOldQuest(tonumber(LevelFarm-1))
								end
							end
						else
							CheckQuest()
							oldmob = Name
							oldcheckquest = NameMon
							spawn(function()
								pcall(function()
									if NoLoopDuplicate == false then 
										if CheckNotifyComplete() and _G.Settings.Main["Auto Farm Level"] then
											NoLoopDuplicate = true 
											while wait() do
												SubQuest = true
												if CheckNotifyComplete() or _G.Settings.Main["Auto Farm Level"] == false then
													break;
												end
											end
											SubQuest = false
											NoLoopDuplicate = false
										end
									end
								end)
							end)
							if SubQuest == true then  
								if LevelFarm then 
									if tonumber(LevelFarm-1) ~= 0 then 
										CheckOldQuest(tonumber(LevelFarm-1))
									end
								end
							end
						end
					else
						CheckQuest()
					end
					AutoFarmLevel()
				end
			end)
		end
	end)

	local MiscTabMain = Main:CreateSection({
		Name = "Misc", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	MiscTabMain:AddToggle({
		Name = "Auto Farm Chest",
		Value = AutoFarmChest,
		Callback = function(value)
			AutoFarmChest = value
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})

	_G.MagnitudeAdd = 0
	task.spawn(function()
		while wait() do 
			if AutoFarmChest then
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
					if v.Name:find("Chest") then
						if game:GetService("Workspace"):FindFirstChild(v.Name) then
							if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
								repeat wait()
									if game:GetService("Workspace"):FindFirstChild(v.Name) then
										toTargetP(v.CFrame)
									end
								until AutoFarmChest == false or not v.Parent
								toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
								_G.MagnitudeAdd = _G.MagnitudeAdd+1500
								break
							end
						end
					end
				end
			end
		end
	end)

	MiscTabMain:AddLabel({
		Name = "           Mob Aura"
	})

	if _G.Settings.Configs["Distance Mob Aura"] == nil then
		_G.Settings.Configs["Distance Mob Aura"] = 1000
	end

	MiscTabMain:AddSlider({
		Name = "Distance Mob Aura",
		value = _G.Settings.Configs["Distance Mob Aura"],
		Min = 1,
		Max = 5000,
		Format = "Distance : %s",
		Callback = function(value)
			_G.Settings.Configs["Distance Mob Aura"] = value
			SaveSettings()
		end
	})

	MiscTabMain:AddToggle({
		Name = "Mob Aura",
		Value = _G.Settings.Main["Mob Auras"],
		Callback = function(Value)
			_G.Settings.Main["Mob Auras"] = value
			SaveSettings()
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
			task.spawn(function()
				while wait() do
					if _G.Settings.Main["Mob Auras"] then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.Settings.Main["Mob Auras"] and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= _G.Settings.Configs["Distance Mob Aura"] then
								FastAttack = true
								repeat task.wait()
									if _G.Settings.Configs["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
										wait()
										EquipWeapon(_G.Settings.Configs["Select Weapon"])
									end
									if not _G.Settings.Configs["Fast Attack"] then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									if _G.Settings.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									PosMonAura = v.HumanoidRootPart.CFrame
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									MagnetMobAura = true
								until not _G.Settings.Main["Mob Auras"] or not v.Parent or v.Humanoid.Health <= 0
								FastAttack = false
								MagnetMobAura = false
							end
						end
					end
				end
			end)
			
			spawn(function()
				while true do game:GetService("RunService").RenderStepped:Wait()
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						if MagnetMobAura and _G.Settings.Main["Mob Auras"] then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if MagnetMobAura and _G.Settings.Main["Mob Auras"] and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									v.Humanoid:ChangeState(14)
									v.HumanoidRootPart.CanCollide = false
									v.Head.CanCollide = false
									v.HumanoidRootPart.CFrame = PosMonAura
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
								end
							end
						end
					end
				end
			end)
		end
	})

	if World1 then
		
		local w1 = Main:CreateSection({
			Name = "Item", -- ชื่อ
			Side = "Left" -- ตำแหน่ง Left/Right
		})
		
		w1:AddToggle({
			Name = "Auto New World",
			value = _G.Settings.Main["Auto New World"],
			callback = function(value)
				_G.Settings.Main["Auto New World"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
							task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto New World"] then
								if game.Players.LocalPlayer.Data.Level.Value >= 700 then
									if Auto_Farm_Level then
										_G.Settings.Main["Auto Farm Level"] = false
									end
									if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
										wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
										EquipWeapon("Key")
										repeat wait() toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto New World"]
										wait(3)
									elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
													repeat wait()
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														FastAttack = true
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
													until v.Humanoid.Health <= 0 or not v.Parent
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
												end
											end
										else
											toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									end
								end
							end
						end)
					end
				end)
			end
		})
		
		w1:AddToggle({
			Name = "Auto Saber",
			Value = _G.Settings.Main["Auto Saber"],
			Callback = function(Value)
				_G.Settings.Main["Auto Saber"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
								if Auto_Farm_Level then
									_G.Settings.Main["Auto Farm Level"] = false
								end
								if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
									if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
										if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
											wait(1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
											wait(1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
											wait(1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
											wait(1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
											wait(1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
											wait(1) 
										else
											toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
										end
									else
										if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
											if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
												EquipWeapon("Torch")
												toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
											else
												toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                 
											end
										else
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
												wait(0.5)
												EquipWeapon("Cup")
												wait(0.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
												wait(0)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
											else
												if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
												elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
													if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
														toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
														for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
															if v.Name == "Mob Leader [Lv. 120] [Boss]" then
																repeat wait()
																	StartMagnet = true
																	FastAttack = true
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																	PosMon = v.HumanoidRootPart.CFrame
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Saber"] == false
															end
														end
													end
												elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
													wait(0.5)
													EquipWeapon("Relic")
													wait(0.5)
													toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
												end
											end
										end
									end
								else
									if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
										toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Saber Expert [Lv. 200] [Boss]" then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
												until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Saber"] == false
												if v.Humanoid.Health <= 0 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
												end
												_G.Settings.Main["Auto Farm Level"] = true
											end
										end
									end
								end
							end
						end)
					end
				end)
			end
		})

		w1:AddToggle({
			Name = "Auto Pole",
			Value = _G.Settings.Main["Auto Pole"],
			Callback = function(Value)
				_G.Settings.Main["Auto Pole"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Pole"] then
								if game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
												end
											until not _G.Settings.Main["Auto Pole"] or v.Humanoid.Health <= 0 or not v.Parent
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
									if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then
											Questtween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406, 5606.90918, -2267.46436)
									end
								end
							end
						end)
					end
				end)
			end
		})

		w1:AddLabel({
			Name = "           Auto Buy",
		})

		w1:AddToggle({
			Name = "Auto Buy Ablility",
			Value = _G.Settings.Main["Auto Buy Ablility"],
			Callback = function(Value)
				_G.Settings.Main["Auto Buy Ablility"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Buy Ablility"] then
								local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
								local BusoCheck = false
								local SoruCheck = false
								local GeppoCheck = false
								local KenCheck = false
								if Beli >= 885000 then
									repeat wait() 
										local args = {
											[1] = "BuyHaki",
											[2] = "Buso"
										}

										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										BusoCheck = true
										local args = {
											[1] = "BuyHaki",
											[2] = "Geppo"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										GeppoCheck = true
										local args = {
											[1] = "BuyHaki",
											[2] = "Soru"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										SoruCheck = true
										local args = {
											[1] = "KenTalk",
											[2] = "Start"
										}

										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

										local args = {
											[1] = "KenTalk",
											[2] = "Buy"
										}

										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										KenCheck = true
									until not BusoCheck and not GeppoCheck and not SoruCheck and not KenCheck or not _G.Settings.Main["Auto Buy Ablility"]
								end
							end
						end)
					end
				end)
			end
		})

		w1:AddLabel({Name="         Farm Materail"})
		
		w1:AddDropdown({
			Name = "Select Materail",
			Value = SelectModeMaterial,
			List = AllMaterial,
			Callback = function(Value)
				SelectModeMaterial = Value
			end
		})

		w1:AddToggle({
			Name = "Auto Farm Materail",
			Value = AutoFarmMaterial,
			Callback = function(x)
				AutoFarmMaterial = x
				if x == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				if x == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				spawn(function()
					while wait() do 
						if AutoFarmMaterial then    
							xpcall(function()
								if (SelectModeMaterial~="") then 
									CheckMaterial(SelectModeMaterial);
									if CustomFindFirstChild(MaterialMob) then
										for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
											if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
												repeat wait();
													FarmtoTarget=toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1));
													if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150)) then 
														if FarmtoTarget then FarmtoTarget:Stop(); end 
														FastAttack=true;
														EquipWeapon(_G.Settings.Configs["Select Weapon"]);
														spawn(function()for v4,v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
																if (v5.Name==v1.Name) then 
																	spawn(function()
																		if InMyNetWork(v5.HumanoidRootPart) then 
																			v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
																			v5.Humanoid.JumpPower=0;
																			v5.Humanoid.WalkSpeed=0;
																			v5.HumanoidRootPart.CanCollide=false;
																			v5.Humanoid:ChangeState(14);
																			v5.Humanoid:ChangeState(11);
																			v5.HumanoidRootPart.Size=Vector3.new(55,55,55);
																		end 
																	end);
																end 
															end 
														end);
														if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=150)) then 
															game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
															game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
														end 
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1);
													end 
												until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent FastAttack=false;
											end 
										end 
									else 
										FastAttack=false;
										Modstween = toTarget(CFrameMon);
										if (World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
											if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
										elseif (World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
											if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
										elseif (World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
											if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
										elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
											if Modstween then Modstween:Stop();end 
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
										end 
									end 
								end
							end,function(x)
								print("Auto Farm Material Error : "..x)
							end)
						else
							break;
						end
					end
				end)
			end
		})

	elseif World2 then
		
		local w2 = Main:CreateSection({
			Name = "Item", -- ชื่อ
			Side = "Left" -- ตำแหน่ง Left/Right
		})

		w2:AddToggle({
			Name = "Auto Factory",
			Value = _G.Settings.Main["Auto Factory"],
			Callback = function(value)
				_G.Settings.Main["Auto Factory"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Factory"] then
								if game.Workspace.Enemies:FindFirstChild("Core") then
									_G.FactoryCore = true
									if _G.Settings.Main["Auto Farm Level"] then
										Auto_Farm_Level = false
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
											repeat wait()
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
											until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Factory"] == false
										end
									end
								elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
									_G.FactoryCore = true
									if _G.Settings.Main["Auto Farm Level"] then
										Auto_Farm_Level = false
									end
									toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
								elseif not game.ReplicatedStorage:FindFirstChild("Core") then
									if _G.Settings.Main["Auto Factory Hop"] then
										ServerHop:Teleport()
									else
										if _G.Settings.Main["Auto Farm Level"] then
											_G.FactoryCore = false
											Auto_Farm_Level = true
										end
									end
								end
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto Factory Hop",
			value = _G.Settings.Main["Auto Factory Hop"],
			Callback = function(value)
				_G.Settings.Main["Auto Factory Hop"] = value
				SaveSettings()
			end
		})

		w2:AddToggle({
			Name = "Auto Third World",
			Value = _G.Settings.Main["Auto Third Sea"],
			Callback = function(value)
				_G.Settings.Main["Auto Third Sea"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Third Sea"] then
								if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
									if Auto_Farm_Level then
										_G.Settings.Main["Auto Farm Level"] = false
									end
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
											Com("F_","TravelZou")
											if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
												if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttack = true
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	PosMon = v.HumanoidRootPart.CFrame
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																end
															until not _G.Settings.Main["Auto Third Sea"] or not v.Parent or v.Humanoid.Health <= 0 
															wait(.5)
															Check = 2
															repeat wait() Com("F_","TravelZou") until Check == 1
															FastAttack = false
														end
													end
												else
													Com("F_","ZQuestProgress","Check")
													Com("F_","ZQuestProgress","Begin")
												end
											elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
												Com("F_","TravelZou")
											else
												if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttack = true
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	PosMon = v.HumanoidRootPart.CFrame
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																end
															until not _G.Settings.Main["Auto Third Sea"] or not v.Parent or v.Humanoid.Health <= 0 
															FastAttack = false
														end
													end
												else
													TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
													if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if TweenDonSwanthireworld then
															TweenDonSwanthireworld:Stop()
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
														end
													end
												end
											end
										else
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
												TabelDevilFruitStore = {}
												TabelDevilFruitOpen = {}

												for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
													for i1,v1 in pairs(v) do
														if i1 == "Name" then 
															table.insert(TabelDevilFruitStore,v1)
														end
													end
												end

												for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
													if v.Price >= 1000000 then  
														table.insert(TabelDevilFruitOpen,v.Name)
													end
												end

												for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
													for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
														if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
															if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
																Com("F_","LoadFruit",DevilFruitStore)
															else
																Com("F_","TalkTrevor","1")
																Com("F_","TalkTrevor","2")
																Com("F_","TalkTrevor","3")
															end
														end
													end
												end

												Com("F_","TalkTrevor","1")
												Com("F_","TalkTrevor","2")
												Com("F_","TalkTrevor","3")	
											end
										end
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
											if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
												if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if v.Name == "Swan Pirate [Lv. 775]" then
															pcall(function()
																repeat wait()
																	if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																		Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																	elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																		if Farmtween then Farmtween:Stop() end
																		FastAttack = true
																		StartMagnet = true
																		if _G.Settings.Configs["Auto Haki"] then
																			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																			end
																		end
																		if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																			wait()
																			EquipWeapon(_G.Settings.Configs["Select Weapon"])
																		end
																		PosMon = v.HumanoidRootPart.CFrame
																		if not _G.Settings.Configs["Fast Attack"] then
																			game:GetService'VirtualUser':CaptureController()
																			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																		end
																		v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																		if _G.Settings.Configs["Show Hitbox"] then
																			v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																		else
																			v.HumanoidRootPart.Transparency = 1
																		end
																		v.Humanoid.JumpPower = 0
																		v.Humanoid.WalkSpeed = 0
																		v.HumanoidRootPart.CanCollide = false
																		v.Humanoid:ChangeState(11)
																		toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																	end
																until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Third Sea"] == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
																FastAttack = false
																StartMagnet = false
															end)
														end
													end
												else
													Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
													if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Bartilotween then Bartilotween:Stop() end
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
													end
												end
											else
												Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
												if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Bartilotween then Bartilotween:Stop() end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
													Com("F_","StartQuest","BartiloQuest",1)
												end
											end
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
											if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "Jeremy [Lv. 850] [Boss]" then
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																FastAttack = true
																if _G.Settings.Configs["Auto Haki"] then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																	wait()
																	EquipWeapon(_G.Settings.Configs["Select Weapon"])
																end
																PosMon = v.HumanoidRootPart.CFrame
																if not _G.Settings.Configs["Fast Attack"] then
																	game:GetService'VirtualUser':CaptureController()
																	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																end
																v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																if _G.Settings.Configs["Show Hitbox"] then
																	v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																else
																	v.HumanoidRootPart.Transparency = 1
																end
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)															
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															end
														until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Third Sea"] == false
														FastAttack = false
													end
												end
											else
												Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
												if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Bartilotween then Bartilotween:Stop() end
													game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
												end
											end
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
											if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
											elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
												wait(.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
												wait(.1)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
											end
										end
									end
								end
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto Bartilo Quest",
			Value = _G.Settings.Main["Auto Bartilo Quest"],
			Callback = function(value)
				_G.Settings.Main["Auto Bartilo Quest"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Bartilo Quest"] then
								if game.Players.LocalPlayer.Data.Level.Value >= 850 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
										if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
											if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														pcall(function()
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttack = true
																	StartMagnet = true
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	PosMon = v.HumanoidRootPart.CFrame
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																end
															until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Bartilo Quest"] == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
															StartMagnet = false
															FastAttack = false
														end)
													end
												end
											else
												Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
												if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Questtween then
														Questtween:Stop()
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
												end
											end
										else
											Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
											if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then
													Bartilotween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
												local args = {
													[1] = "StartQuest",
													[2] = "BartiloQuest",
													[3] = 1
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
									if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Jeremy [Lv. 850] [Boss]" then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														FastAttack = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Bartilo Quest"] == false
												FastAttack = false
											end
										end
									else
										Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
										if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then
												Bartilotween:Stop()
											end
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
									if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
									elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Bartilotween then
											Bartilotween:Stop()
										end
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
										wait(.5)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
										wait(1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
									end
								end
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto Dark Coat",
			Value = _G.Settings.Main["Auto Dark Coat"],
			Callback =  function(value)
				_G.Settings.Main["Auto Dark Coat"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Dark Coat"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until _G.Settings.Main["Auto Dark Coat"] == false or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
								end
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto Ectoplasm",
			value = _G.Settings.Main["Auto Ectoplasm"],
			Callback = function(value)
				_G.Settings.Main["Auto Ectoplasm"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Ectoplasm"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Ectoplasm"] or not v.Parent or v.Humanoid.Health <= 0
												StartMagnet = false
												FastAttack = false
											end
										end
									end
								else
									StartMagnet = false
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto True Triple Katana",
			Value = _G.Settings.Main["Auto True Triple Katana"],
			Callback = function(Value)
				_G.Settings.Main["Auto True Triple Katana"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto True Triple Katana"] then
								local string_1 = "MysteriousMan";
								local string_2 = "2";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2);  
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto Rengoku Sword",
			Value = _G.Settings.Main["Auto Rengoku"],
			Callback = function(Value)
				_G.Settings.Main["Auto Rengoku"] = value
				if value == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Rengoku"] then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
									EquipWeapon("Hidden Key")
									toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
								elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not _G.Settings.Main["Auto Rengoku"] or not v.Parent or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									StartMagnet = false
									FastAttack = false
									toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
								end
							end
						end)
					end
				end)
			end
		})
		
		w2:AddToggle({
			Name = "Auto Swan Glasses",
			Value = _G.Settings.Main["Auto Swan Glasses"],
			Callback = function(value)
				_G.Settings.Main["Auto Swan Glasses"] = value
				if value == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Swan Glasses"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Swan Glasses"] or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									repeat wait()
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
									until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not _G.Settings.Main["Auto Swan Glasses"]
								end
							end
						end)
					end
				end)
			end
		})

		w2:AddLabel({
			Name = "           Auto Buy"
		})

		w2:AddToggle({
			Name = "Auto Buy Legendary Sword",
			Value = _G.Settings.Main["Auto Buy Legendary Sword"],
			Callback = function(Value)
				_G.Settings.Main["Auto Buy Legendary Sword"] = value
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Buy Legendary Sword"] then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
							end
						end)
					end
				end)
			end
		})

		w2:AddToggle({
			Name = "Auto Buy Enchanment Haki",
			Value = _G.Settings.Main["Auto Buy Enchanment Haki"],
			Callback = function(Value)
				_G.Settings.Main["Auto Buy Enchanment Haki"] = value
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Buy Enchanment Haki"] then
								local args = {
									[1] = "ColorsDealer",
									[2] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end)
					end
				end)
			end
		})

		w2:AddLabel({
			Name = "         Farm Material"
		})

		w2:AddDropdown({
			Name = "Select Materail",
			Value = SelectModeMaterial,
			List = AllMaterial,
			Callback = function(Value)
				SelectModeMaterial = Value
			end
		})

		w2:AddToggle({
			Name = "Auto Farm Materail",
			Value = AutoFarmMaterial,
			Callback = function(x)
				AutoFarmMaterial = x
				if x == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				if x == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				spawn(function()
					while wait() do 
						if AutoFarmMaterial then    
							xpcall(function()
								if (SelectModeMaterial~="") then 
									CheckMaterial(SelectModeMaterial);
									if CustomFindFirstChild(MaterialMob) then
										for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
											if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
												repeat wait();
													FarmtoTarget=toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1));
													if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150)) then 
														if FarmtoTarget then FarmtoTarget:Stop(); end 
														FastAttack=true;
														EquipWeapon(_G.Settings.Configs["Select Weapon"]);
														spawn(function()for v4,v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
																if (v5.Name==v1.Name) then 
																	spawn(function()
																		if InMyNetWork(v5.HumanoidRootPart) then 
																			v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
																			v5.Humanoid.JumpPower=0;
																			v5.Humanoid.WalkSpeed=0;
																			v5.HumanoidRootPart.CanCollide=false;
																			v5.Humanoid:ChangeState(14);
																			v5.Humanoid:ChangeState(11);
																			v5.HumanoidRootPart.Size=Vector3.new(55,55,55);
																		end 
																	end);
																end 
															end 
														end);
														if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=150)) then 
															game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
															game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
														end 
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1);
													end 
												until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent FastAttack=false;
											end 
										end 
									else 
										FastAttack=false;
										Modstween = toTarget(CFrameMon);
										if (World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
											if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
										elseif (World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
											if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
										elseif (World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
											if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
										elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
											if Modstween then Modstween:Stop();end 
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
										end 
									end 
								end
							end,function(x)
								print("Auto Farm Material Error : "..x)
							end)
						else
							break;
						end
					end
				end)
			end
		})

		w2:AddLabel({
			Name = "         Soul Guitar"
		})

		w2:AddToggle({
			Name = "Auto Material Soul Guitar",
			Value = _G.Settings.Main["Auto Material Soul Guitar"],
			Callback = function(Value)
				_G.Settings.Main["Auto Material Soul Guitar"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				_G.Settings.Main["Auto Farm Bone"] = false
				_G.Settings.Main["Auto Ectoplasm"] = false
				_G.Auto_Dark_Coat = false
				SaveSettings()
			end
		})

	elseif World3 then
		
		local w3 = Main:CreateSection({
			Name = "Item", -- ชื่อ
			Side = "Left" -- ตำแหน่ง Left/Right
		})
		
		w3:AddToggle({
			Name = "Auto Holy Torch",
			value = _G.Settings.Main["Auto Holy Torch"],
			Callback = function(value)
				_G.Settings.Main["Auto Holy Torch"] = value
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						if _G.Settings.Main["Auto Holy Torch"] then
							repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
							wait(1)
							repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
							wait(1)
							repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
							wait(1)
							repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
							wait(1)
							repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
						else
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							break
						end
					end
				end)
			end
		})
		
		w3:AddToggle({
			Name = 'Auto Budddy Sword',
			Value = _G.Settings.Main["Auto Buddy Swords"],
			Callback = function(value)
				_G.Settings.Main["Auto Buddy Swords"] = value
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Buddy Swords"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Buddy Swords"] or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								end
							end
						end)
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Farm Boss Hallow",
			Value = _G.Settings.Main["Auto Farm Boss Hallow"],
			Callback = function(value)
				_G.Settings.Main["Auto Farm Boss Hallow"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Farm Boss Hallow"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if string.find(v.Name , "Soul Reaper") then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until v.Humanoid.Health <= 0 or not _G.Settings.Main["Auto Farm Boss Hallow"]
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
								end
							end
						end)
					end
				end)
			end
		})
		
		w3:AddToggle({
			Name = "Auto Rainbow Haki",
			Value = _G.Settings.Main["Auto Rainbow Haki"],
			Callback = function(Value)
				_G.Settings.Main["Auto Rainbow Haki"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Rainbow Haki"] then
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
									toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
									if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
										wait(1.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
									end
								elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Stone [Lv. 1550] [Boss]" then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)												
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnet = false
												FastAttack = false
											end
										end
									else
										toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
									end
								elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Island Empress [Lv. 1675] [Boss]" then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnet = false
												FastAttack = false
											end
										end
									else
										toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
									end
								elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnet = false
												FastAttack = false
											end
										end
									else
										toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
									end
								elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnet = false
												FastAttack = false
											end
										end
									else
										toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
									end
								elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												StartMagnet = false
												FastAttack = false
											end
										end
									else
										toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
									end
								else
									toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
									if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
										wait(1.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
									end
								end
							end
						end)
					end
				end)
			end
		})

		local Elite_Hunter_Status = w3:AddLabel({
			Name = ""
		})

		task.spawn(function()
			while task.wait() do
				pcall(function()
					if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
						Elite_Hunter_Status:Set("Status : Spawned\nName : Diablo ✅")   
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then 
						Elite_Hunter_Status:Set("Status : Spawned\nName : Deandre ✅")   
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
						Elite_Hunter_Status:Set("Status : Spawned\nName : Urban ✅") 
					else
						Elite_Hunter_Status:Set("Status : Not Spawn ❌")    
					end
				end)
			end
		end)
		
		w3:AddToggle({
			Name = "Auto Elite Hunter",
			Value = _G.Settings.Main["Auto Elite Hunter"],
			Callback = function(value)
				_G.Settings.Main["Auto Elite Hunter"] = value
				if value == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Elite Hunter"] then
								if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
									if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
										for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
											if string.find(v.Name,"Diablo") then
												EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if EliteHunter then
														EliteHunter:Stop()
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												end
											end	
											if string.find(v.Name,"Urban") then
												EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if EliteHunter then
														EliteHunter:Stop()
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												end
											end	
											if string.find(v.Name,"Deandre") then
												EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if EliteHunter then
														EliteHunter:Stop()
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
												end
											end	
										end
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if _G.Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
														Farmtween = toTarget(v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if Farmtween then
															Farmtween:Stop()
														end
														if AttackRandomType == 1 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
														elseif AttackRandomType == 2 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
														elseif AttackRandomType == 3 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
														elseif AttackRandomType == 4 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
														elseif AttackRandomType == 5 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
														else
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
														end
														FastAttack = true
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end 
												until not _G.Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
												FastAttack = false
											end
											if _G.Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
														Farmtween = toTarget(v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if Farmtween then
															Farmtween:Stop()
														end
														if AttackRandomType == 1 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
														elseif AttackRandomType == 2 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
														elseif AttackRandomType == 3 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
														elseif AttackRandomType == 4 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
														elseif AttackRandomType == 5 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
														else
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
														end
														FastAttack = true
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end 
												until not _G.Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
												FastAttack = false
											end
											if _G.Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
														Farmtween = toTarget(v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if Farmtween then
															Farmtween:Stop()
														end
														if AttackRandomType == 1 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
														elseif AttackRandomType == 2 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
														elseif AttackRandomType == 3 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
														elseif AttackRandomType == 4 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
														elseif AttackRandomType == 5 then
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
														else
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
														end
														FastAttack = true
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end 
												until not _G.Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
												FastAttack = false
											end
										end
									else
										local string_1 = "EliteHunter";
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1);
									end
								else
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							end
						end)
					end
				end)
			end
		})
		
		w3:AddToggle({
			Name = "Auto Musketeer Hat",
			Value = _G.Settings.Main["Auto Musketeer Hat"],
			Callback = function(value)
				_G.Settings.Main["Auto Musketeer Hat"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Musketeer Hat"] then
								if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
										if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Forest Pirate [Lv. 1825]" then
													repeat wait()
														StartMagnet = true
														FastAttack = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until not _G.Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
													StartMagnet = false
													FastAttack = false
												end
											end
										else
											toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
										end
									else
										toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
										if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
											wait(1.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
										end
									end
								elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
									if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
										if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
													OldCFrameElephant = v.HumanoidRootPart.CFrame
													repeat wait()
														StartMagnet = true
														FastAttack = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until not _G.Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
													StartMagnet = false
													FastAttack = false
												end
											end
										else
											toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
										end
									else
										toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
										if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
											wait(1.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
										end
									end
								elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
									toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
								end
							end
						end)
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Farm Bone",
			Value = _G.Settings.Main["Auto Farm Bone"],
			Callback = function(value)
				_G.Settings.Main["Auto Farm Bone"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Farm Bone"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until not _G.Settings.Main["Auto Farm Bone"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
												StartMagnet = false
												FastAttack = false
											end
										end
									end
								else
									toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
								end
							end
						end)
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Ken_Haki V2",
			Value = _G.Settings.Main["Auto Ken-Haki V2"],
			Callback = function(value)
				_G.Settings.Main["Auto Ken-Haki V2"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Ken-Haki V2"] then
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
									repeat 
										toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
										wait() 
									until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
									wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
									wait(1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
										repeat 
											toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
											wait() 
										until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
										wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
									elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
										repeat 
											toTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
											wait() 
										until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
										wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
										wait(1)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
									elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
										if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Forest Pirate [Lv. 1825]" then
													repeat wait()
														StartMagnet = true
														FastAttack = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until not _G.Settings.Main["Auto Ken-Haki V2"] or v.Humanoid.Health <= 0
													StartMagnet = false
													FastAttack = false
												end
											end
										else
											repeat 
												toTarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
												wait() 
											until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
										end
									elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
										if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
													repeat wait()
														StartMagnet = true
														FastAttack = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until not _G.Settings.Main["Auto Ken-Haki V2"] or v.Humanoid.Health <= 0
													StartMagnet = false
													FastAttack = false
												end
											end
										else
											repeat 
												toTarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
												wait() 
											until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
										end
									else
										for i,v in pairs(game.Workspace:GetDescendants()) do
											if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
												v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
												wait()
												firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
												wait()
											end
										end  
									end
								end
							end
						end)
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Cavender",
			Value = _G.Settings.Main["Auto Cavander"],
			Callback = function(value)
				_G.Settings.Main["Auto Cavander"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Cavander"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("Beautiful Pirate [Lv. 1950] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Cavander"] or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
								end
							end
						end)
					end
				end)
			end
		})
		
		w3:AddToggle({
			Name = "Auto Yama Sword",
			Value = _G.Settings.Main["Auto Yama Sword"],
			Callback = function(value)
				_G.Settings.Main["Auto Yama Sword"] = value
				SaveSettings()
				spawn(function()
					while wait() do
						if _G.Settings.Main["Auto Yama Sword"] then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
								repeat wait()
									fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
								until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not AutoYama
							end
						end
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Tushita Sword",
			Value = _G.Settings.Main["Auto Tushita Sword"],
			Callback = function(value)
				_G.Settings.Main["Auto Tushita Sword"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						if _G.Settings.Main["Auto Tushita Sword"] then
							if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == ("Longma [Lv. 2000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
										repeat wait()
											StartMagnet = true
											FastAttack = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Tushita Sword"] or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										FastAttack = false
									end
								end
							else
								toTarget(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
							end
						end
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Serpent Bow",
			Value = _G.Settings.Main["Auto Serpent Bow"],
			Callback = function(value)
				_G.Settings.Main["Auto Serpent Bow"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						if _G.Settings.Main["Auto Serpent Bow"] then
							if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == ("Island Empress [Lv. 1675] [Boss]" or v.Name == "Island Empress [Lv. 1675] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
										repeat wait()
											StartMagnet = true
											FastAttack = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Serpent Bow"] or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										FastAttack = false
									end
								end
							else
								toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
							end
						end
					end
				end)
			end
		})

		w3:AddToggle({
			Name = "Auto Dark Dagger",
			Value = _G.Settings.Main["Auto Dark Dagger"],
			Callback = function(value)
				_G.Settings.Main["Auto Dark Dagger"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Dark Dagger"] then
								if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Dark Dagger"] or not v.Parent or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									toTarget(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
								end
							end
						end)
					end
				end)
			end
		})

		task.spawn(function()
			while wait() do
				pcall(function()
					if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
						KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
					elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
						KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
					elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
						KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
					end
				end)
			end
		end)
		
		local Kill_Cake_Monster_ST = w3:AddLabel({
			Name = ""
		})
		
		spawn(function()
			while wait() do
				pcall(function()
					if not game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
						local OP = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						local Lp = tonumber(string.match(tostring(OP), "%d+"))
						Kill_Cake_Monster_ST:Set("Kill Cake Monster : "..tostring(Lp).."/1")
					else
						Kill_Cake_Monster_ST:Set("Kill Cake Monster : Spawned !!!")
					end
				end)
			end
		end)

		w3:AddToggle({
			Name = "Auto Cake Prince",
			Value = _G.Settings.Main["Auto Cake Prince"],
			Callback = function(value)
				_G.Settings.Main["Auto Cake Prince"] = value
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()

				task.spawn(function()
					while wait() do
						if _G.Settings.Main["Auto Cake Prince"] then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if _G.Settings.Main["Auto Cake Prince"] and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(30,_G.Settings.Configs["Distance Auto Farm"],30))
												end
											until not _G.Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
									end
								else
									if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
										FastAttack = false
										Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
										if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then Questtween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
											wait(.1)
										end
									end 
								end
							else
								if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													FastAttack = true
													StartMagnet = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												end
											until not _G.Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
											StartMagnet = false
											FastAttack = false
										end
									end
								else
									Questtween = toTarget(CFrame.new(-2077, 252, -12373))
									if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
									end
								end
							end
						else
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
							break
						end
					end
				end)
			end
		})
		
		DoughMob = {"Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]"}
		
		w3:AddToggle({
			Name = "Auto Dough V2",
			Value = _G.Settings.Main["Auto Dough V2"],
			Callback = function(value)
				_G.Settings.Main["Auto Dough V2"] = value
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				SaveSettings()
				task.spawn(function()
					while wait() do
						pcall(function()
							if _G.Settings.Main["Auto Dough V2"] then
								if not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
									if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
										local args = {
											[1] = "CakeScientist",
											[2] = "Check"
										}

										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
										local args = {
											[1] = "RaidsNpc",
											[2] = "Check"
										}

										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
									end
								elseif game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
									if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
										RedDorTween = toTargetP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782))
										if (CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
											if RedDorTween then RedDorTween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
											wait(0.5)
											EquipWeapon("Red Key")
											---- Rejoin For fix bug
											local ts = game:GetService("TeleportService")
											local p = game:GetService("Players").LocalPlayer
											ts:Teleport(game.PlaceId, p)
											wait(0.5)
										end
									elseif game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
										if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if _G.Settings.Main["Auto Dough V2"] and v.Name == "Dough King [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then
																Farmtween:Stop()
															end
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															v.HumanoidRootPart.Size = Vector3.new(55,55,55)
															FastAttack = true
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(40, 30, 30)
														end
													until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")
													FastAttack = false
												end
											end
										else
											if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
												FastAttack = false
												Questtween = toTargetP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
												if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Questtween then Questtween:Stop() end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
													wait(1)
												end
											end 
										end
									elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
										if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if _G.Settings.Main["Auto Dough V2"] and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															FastAttack = true
															PosFarmCakePrince = v.HumanoidRootPart.CFrame
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
															MagnetFarmCakePrince = true
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
														end
													until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
													FastAttack = false
													MagnetFarmCakePrince = false
												end
											end
										else
											MagnetFarmCakePrince = false
											FastAttack = false
											Questtween = toTarget(CFrame.new(-2077, 252, -12373))
											if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Questtween then Questtween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
											end
										end
									elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") >= 10 then
										game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
										wait(0.2)
									elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
										if (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
											if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
												if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
													for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
														if string.find(v.Name,"Diablo") then
															DoughTween = toTarget(v.HumanoidRootPart.CFrame)
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
																if DoughTween then
																	DoughTween:Stop()
																end
																game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
															end
														end	
														if string.find(v.Name,"Urban") then
															DoughTween = toTarget(v.HumanoidRootPart.CFrame)
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
																if DoughTween then
																	DoughTween:Stop()
																end
																game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
															end
														end	
														if string.find(v.Name,"Deandre") then
															DoughTween = toTarget(v.HumanoidRootPart.CFrame)
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
																if DoughTween then
																	DoughTween:Stop()
																end
																game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
															end
														end	
													end
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if _G.Settings.Main["Auto Dough V2"] and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then
																		Farmtween:Stop()
																	end
																	EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	FastAttack = true
																	if AttackRandomType == 1 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
																	elseif AttackRandomType == 2 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
																	elseif AttackRandomType == 3 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
																	elseif AttackRandomType == 4 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
																	elseif AttackRandomType == 5 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
																	else
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
																	end
																end 
															until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
															FastAttack = false
														end
														if _G.Settings.Main["Auto Dough V2"] and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then
																		Farmtween:Stop()
																	end
																	EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	FastAttack = true
																	if AttackRandomType == 1 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
																	elseif AttackRandomType == 2 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
																	elseif AttackRandomType == 3 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
																	elseif AttackRandomType == 4 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
																	elseif AttackRandomType == 5 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
																	else
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
																	end
																end 
															until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
															FastAttack = false
														end
														if _G.Settings.Main["Auto Dough V2"] and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then
																		Farmtween:Stop()
																	end
																	EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	FastAttack = true
																	if AttackRandomType == 1 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
																	elseif AttackRandomType == 2 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
																	elseif AttackRandomType == 3 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
																	elseif AttackRandomType == 4 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
																	elseif AttackRandomType == 5 then
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
																	else
																		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
																	end
																end 
															until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
															FastAttack = false
														end
													end
												end
											else
												local string_1 = "EliteHunter";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1);
											end
										elseif _G.Settings.Main["Hop"] and _G.Settings.Main["Auto Dough V2"] and not (game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
											Time = 1 -- seconds
											repeat wait() until game:IsLoaded()
											wait(Time)
											game.StarterGui:SetCore("SendNotification", {
												Title = "Hop Low Server ", 
												Text = "กำลังหาเซิฟ",
												Icon = "http://www.roblox.com/asset/?id=11939784291",
												Duration = 25
											})
											print("Hoppp")
											local PlaceID = game.PlaceId
											local AllIDs = {}
											local foundAnything = ""
											local actualHour = os.date("!*t").hour
											local Deleted = false
											function TPReturner()
											local Site;
											if foundAnything == "" then
												Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
											else
												Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
											end
											local ID = ""
											if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
												foundAnything = Site.nextPageCursor
											end
											local num = 0;
											for i,v in pairs(Site.data) do
												local Possible = true
												ID = tostring(v.id)
												if tonumber(v.maxPlayers) > tonumber(v.playing) then
													for _,Existing in pairs(AllIDs) do
														if num ~= 0 then
															if ID == tostring(Existing) then
																Possible = false
															end
														else
															if tonumber(actualHour) ~= tonumber(Existing) then
																local delFile = pcall(function()
																	delfile("NotSameServers.json")
																	AllIDs = {}
																	table.insert(AllIDs, actualHour)
																end)
															end
														end
														num = num + 1
													end
													if Possible == true then
														table.insert(AllIDs, ID)
														wait()
														pcall(function()
															writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
															wait()
															game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
														end)
														wait(4)
													end
												end
											end
											end
											
											function Teleport()
											while wait() do
												pcall(function()
													TPReturner()
													if foundAnything ~= "" then
														TPReturner()
													end
												end)
											end
											end
											Teleport()
										end
									else
										if game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if _G.Settings.Main["Auto Dough V2"] and (v.Name == "Candy Rebel [Lv. 2375]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													repeat wait()
														-- if game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) > 3500 then
														--     if Questtween then Questtween:Stop() end
														--     if game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Dead then return end
														--     ResetSetSpawn(v.HumanoidRootPart.CFrame)
														-- else
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
															Farmtween = toTarget(v.HumanoidRootPart.CFrame)
															FastAttack = false
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
															if Farmtween then Farmtween:Stop() end
															FastAttack = true
															PosFarmCoco = v.HumanoidRootPart.CFrame
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
															MagnetFarmCoco = true
														end
													until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
													FastAttack = false
													MagnetFarmCoco = false
												end
											end
										else
											MagnetFarmCoco = false
											FastAttack = false
											Questtween = toTarget(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
											if (CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Questtween then
													Questtween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
											end
										end
									end
								else
									print("Error Whyyy")
								end
							end
						end)
					end
				end)
			end
		})
		
		task.spawn(function()
			while task.wait() do
				if _G.Settings.Main["Auto Dough V2"] then
					if MagnetFarmCakePrince then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if MagnetFarmCakePrince and _G.Settings.Main["Auto Dough V2"] and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								if InMyNetWork(v.HumanoidRootPart) then
									v.HumanoidRootPart.CFrame = PosFarmCakePrince
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								end
							end
						end
					end
				else
					break
				end
			end
		end)

		task.spawn(function()
			while task.wait() do
				if _G.Settings.Main["Auto Dough V2"] then
					if MagnetFarmCoco then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if MagnetFarmCoco and _G.Settings.Main["Auto Dough V2"] and (v.Name == "Candy Rebel [Lv. 2375]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								if InMyNetWork(v.HumanoidRootPart) then
									v.HumanoidRootPart.CFrame = PosFarmCoco
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								end
							end
						end
					end
				else
					break
				end
			end
		end)

		w3:AddToggle({
			Name = "Hop",
			Value = _G.Settings.Main["Hop"],
			Callback = function(value)
				_G.Settings.Main["Hop"] = value
				SaveSettings()
			end
		})

		w3:AddLabel({
			Name = "         Farm Material"
		})

		w3:AddDropdown({
			Name = "Select Materail",
			Value = SelectModeMaterial,
			List = AllMaterial,
			Callback = function(Value)
				SelectModeMaterial = Value
			end
		})

		w3:AddToggle({
			Name = "Auto Farm Materail",
			Value = AutoFarmMaterial,
			Callback = function(x)
				AutoFarmMaterial = x
				if x == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				if x == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				spawn(function()
					while wait() do 
						if AutoFarmMaterial then    
							xpcall(function()
								if (SelectModeMaterial~="") then 
									CheckMaterial(SelectModeMaterial);
									if CustomFindFirstChild(MaterialMob) then
										for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
											if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
												repeat wait();
													FarmtoTarget=toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1));
													if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150)) then 
														if FarmtoTarget then FarmtoTarget:Stop(); end 
														FastAttack=true;
														EquipWeapon(_G.Settings.Configs["Select Weapon"]);
														spawn(function()for v4,v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
																if (v5.Name==v1.Name) then 
																	spawn(function()
																		if InMyNetWork(v5.HumanoidRootPart) then 
																			v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
																			v5.Humanoid.JumpPower=0;
																			v5.Humanoid.WalkSpeed=0;
																			v5.HumanoidRootPart.CanCollide=false;
																			v5.Humanoid:ChangeState(14);
																			v5.Humanoid:ChangeState(11);
																			v5.HumanoidRootPart.Size=Vector3.new(55,55,55);
																		end 
																	end);
																end 
															end 
														end);
														if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=150)) then 
															game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
															game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
														end 
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1);
													end 
												until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent FastAttack=false;
											end 
										end 
									else 
										FastAttack=false;
										Modstween = toTarget(CFrameMon);
										if (World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
											if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
										elseif (World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
											if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
										elseif (World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
											if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
										elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
											if Modstween then Modstween:Stop();end 
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
										end 
									end 
								end
							end,function(x)
								print("Auto Farm Material Error : "..x)
							end)
						else
							break;
						end
					end
				end)
			end
		})
		
		w3:AddLabel({
			Name = "         Soul Guitar"
		})

		w3:AddLabel({
			Name = "    Quest 3 Not Work Now"
		})
		
		w3:AddToggle({
			Name = "Auto Soul Guitar",
			Value = _G.Settings.Main["Auto Quest Soul Guitar"],
			Callback = function(value)
				_G.Settings.Main["Auto Quest Soul Guitar"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
			end
		})

		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Quest Soul Guitar"] then
						if GetWeaponInventory("Soul Guitar") == false then
							if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
								if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
								else
									if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
										if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
											Quest2 = true
											repeat wait() toTarget(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto Quest Soul Guitar"]
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
											wait(1)
										elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
											if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
												Quest4 = true
												repeat wait() toTarget(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto Quest Soul Guitar"]
												wait(1)
												toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
												wait(1)
												toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
												wait(1)
												toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
												wait(1)
												toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
												wait(1)
												toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
												wait(1)
												fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											else
												Quest3 = true
												--Not Work Yet
											end
										else
											if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
												local args = {
													[1] = "GuitarPuzzleProgress",
													[2] = "Ghost"
												}

												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
														if v.Name == "Living Zombie [Lv. 2000]" then
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.Transparency = 1
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
															toTarget(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
													end
												end
											else
												toTarget(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
											end
										end
									else    
										if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
											print("Go to Grave")
											toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
										elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
											print("Wait Next Night")
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
										end
									end
								end
							else
								toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
							end
						end
					end
				end)
			end
		end)

		w3:AddToggle({
			Name = "Auto Material Soul Guitar",
			Value = _G.Settings.Main["Auto Material Soul Guitar"],
			Callback = function(value)
				_G.Settings.Main["Auto Material Soul Guitar"] = value
				if value == false then
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
				end
				SaveSettings()
			end
		})

		w3:AddLabel({
			Name = "      Cursed Dual Katana"
		})

		w3:AddToggle({
			Name = "Auto Cursed Dual Katana",
			Value = Auto_Cursed_Dual_Katana,
			Callback = function(value)
				Auto_Cursed_Dual_Katana = value
			end
		})

		spawn(function()
			while wait() do
				pcall(function()
					if Auto_Cursed_Dual_Katana then
						if GetWeaponInventory("Cursed Dual Katana") == true then
							if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then

							else
								print("Get Weapon")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
								if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
										EquipWeapon("Tushita")
									else
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v.Name == "Tushita" and v:IsA("Tool") then
												if v.Level.Value >= 350 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
													_G.Settings.Main["Auto Farm Bone"] = false
												else
													_G.Select_Weapon = "Tushita"
													_G.Settings.Main["Auto Farm Bone"] = true
												end
											end
										end
									end
								elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
										EquipWeapon("Yama")
									else
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v.Name == "Yama" and v:IsA("Tool") then
												if v.Level.Value >= 350 then
													Auto_CDK_Quest = true
													_G.Settings.Main["Auto Farm Bone"] = false
												else
													_G.Select_Weapon = "Yama"
													_G.Settings.Main["Auto Farm Bone"] = true
												end
											end
										end
									end
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
							end      
						end
					end
				end)
			end
		end)

		spawn(function()
			while wait() do
				pcall(function()
					if Auto_CDK_Quest then
						if GetMaterial("Alucard Fragment") == 0 then
							Auto_Quest_Yama_1 = true
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
						elseif GetMaterial("Alucard Fragment") == 1 then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = true
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
						elseif GetMaterial("Alucard Fragment") == 2 then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = true
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
						elseif GetMaterial("Alucard Fragment") == 3 then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = true
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
						elseif GetMaterial("Alucard Fragment") == 4 then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = true
							Auto_Quest_Tushita_3 = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
						elseif GetMaterial("Alucard Fragment") == 5 then
							Auto_Quest_Yama_1 = false
							Auto_Quest_Yama_2 = false
							Auto_Quest_Yama_3 = false
							Auto_Quest_Tushita_1 = false
							Auto_Quest_Tushita_2 = false
							Auto_Quest_Tushita_3 = true
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
						elseif GetMaterial("Alucard Fragment") == 6 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
								Auto_Quest_Yama_1 = false
								Auto_Quest_Yama_2 = false
								Auto_Quest_Yama_3 = false
								Auto_Quest_Tushita_1 = false
								Auto_Quest_Tushita_2 = false
								Auto_Quest_Tushita_3 = false
								if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
											if v.Humanoid.Health > 0 then
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
										end
									end
								end
							else
								if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
									wait(1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
									wait(1)
									toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)
									toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
								else
									toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
								end   
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while wait() do
				if Auto_Quest_Yama_1 then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Mythological Pirate [Lv. 1850]" then
									repeat wait()
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
									until Auto_CDK_Quest == false or Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
								end
							end
						else
							toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
						end
					end)
				end
			end
		end)

		spawn(function()
			while wait() do
				pcall(function()
					if Auto_Quest_Yama_2 then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v:FindFirstChild("HazeESP") then
								v.HazeESP.Size = UDim2.new(50,50,50,50)
								v.HazeESP.MaxDistance = "inf"
							end
						end
						for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							if v:FindFirstChild("HazeESP") then
								v.HazeESP.Size = UDim2.new(50,50,50,50)
								v.HazeESP.MaxDistance = "inf"
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while wait() do
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
							v.HumanoidRootPart.CFrame = PosMonsEsp
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
								local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
								vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
								vc.Velocity = Vector3.new(0, 0, 0)
							end
						end
					end
				end)
			end
		end)

		spawn(function()
			while wait() do
				if Auto_Quest_Yama_2 then 
					pcall(function() 
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v:FindFirstChild("HazeESP") then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
										BTP(y.HumanoidRootPart.CFrameMon * CFrame.new(0,20,0))
									else
										StartMagnet = true
										FastAttack = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMonsEsp = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
									end      
								until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
							else
								for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
									if y:FindFirstChild("HazeESP") then
										if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
											BTP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
										else
											toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
										end
									end
								end
							end
						end
					end)
				end
			end
		end)

		spawn(function()
			while wait() do
				if Auto_Quest_Yama_3 then
					pcall(function()
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
							_G.Settings.Main["Auto Farm Bone"] = false           
							toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
						elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
							repeat wait()
								if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
											if v.Humanoid.Health > 0 then
												repeat wait()
													StartMagnet = true
													FastAttack = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMonsEsp = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
												until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
											end
										end
									end
								else
									wait(5)
									toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)        
									toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)     
									toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)     
									toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
								end
							until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
											if v.Humanoid.Health > 0 then
												repeat wait()
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
												until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
											end
										end
									end
								else
									toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
								end
							else
								_G.Settings.Main["Auto Farm Bone"] = true
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
							end
						end
					end)
				end
			end
		end)

		spawn(function() 
			while wait() do
				if Auto_Quest_Tushita_1 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
				end
			end
		end)

		spawn(function()
			while wait() do
				if Auto_Quest_Tushita_1 then
					BTP(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
					wait(5)
					BTP(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
					wait(5)
					BTP(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
				end
			end
		end)

		spawn(function()
			while wait() do
				if Auto_Quest_Tushita_2 then
					pcall(function()
						if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
										repeat wait()
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
									end
								end
							end
						else
							toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
						end
					end)
				end
			end
		end)

		spawn(function()
			while wait() do
				if Auto_Quest_Tushita_3 then
					pcall(function()
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
										if v.Humanoid.Health > 0 then
											repeat wait()
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
											until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
										end
									end
								end
							else
								toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
							end
						elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
							repeat wait()
								if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
											if v.Humanoid.Health > 0 then
												repeat wait()
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
												until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
											end
										end
									end
								else
									wait(5)
									toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)        
									toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)     
									toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
									wait(1.5)
									game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
									wait(1.5)     
									toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
								end
							until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
						else
							ServerHop:Teleport()
						end
					end)
				end
			end
		end)
		
		task.spawn(function()
			while wait() do
				pcall(function()
					if GetWeaponInventory("Soul Guitar") == false then
						if _G.Settings.Main["Auto Material Soul Guitar"] then
							if GetMaterial("Bones") >= 500 and GetMaterial("Ectoplasm") >= 250 and GetMaterial("Dark Fragment") >= 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
							else
								if GetMaterial("Ectoplasm") <= 250 then
									if World2 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
													if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															StartMagnet = true
															FastAttack = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														until not _G.Settings.Main["Auto Material Soul Guitar"] or not v.Parent or v.Humanoid.Health <= 0
														StartMagnet = false
														FastAttack = false
													end
												end
											end
										else
											StartMagnet = false
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									end
								elseif GetMaterial("Dark Fragment") < 1 then
									if World2 then
										if game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat task.wait()
														FastAttack = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until _G.Settings.Main["Auto Material Soul Guitar"] or v.Humanoid.Health <= 0
												end
											end
										else
											toTarget(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									end
								elseif GetMaterial("Bones") <= 500 then
									if World3 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
													if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															StartMagnet = true
															FastAttack = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														until not _G.Settings.Main["Auto Material Soul Guitar"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
														StartMagnet = false
														FastAttack = false
													end
												end
											end
										else
											toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									end
								end
							end
						end
					end
				end)
			end
		end)
	end

	local ConfixTab = Main:CreateSection({
		Name = "Con Fix", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	ConfixTab:AddToggle({
		Name = "Bypass TP",
		Value = _G.Settings.Configs["Bypass TP"],
		Callback = function(value)
			_G.Settings.Configs["Bypass TP"] = value		    
			SaveSettings()
		end
	})

	if World1 then
		ConfixTab:AddToggle({
			Name = "Fast Farm Level",
			Value = _G.Settings.Main["Fast Auto Farm Level"],
			Callback = function(value)
			_G.Settings.Main["Fast Auto Farm Level"] = value
			SaveSettings()
			end
		})
	end

	ConfixTab:AddToggle({
		Name = "Fast Attack",
		Value = _G.Settings.Configs["Fast Attack"],
		Callback = function(value)
			_G.Settings.Configs["Fast Attack"] = value
			SaveSettings()
		end
	})

	ConfixTab:AddDropdown({
		Name = "Fast Attack Type",
		Value = _G.Settings.Configs["Fast Attack Type"],
		List = {"Fast","Normal","Slow"},
		Callback = function(value)
			_G.Settings.Configs["Fast Attack Type"] = value
			SaveSettings()
		end
	})

	ConfixTab:AddDropdown({
		Name = "Fast Attack Mode",
		Value = "Normal",
		List = {"Normal","Extream"},
		Callback = function(value)
			_G.Settings.Configs["Fast Attack Mode"] = value
			SaveSettings()
		end
	})

	coroutine.wrap(function()
		while task.wait(.1) do
			pcall(function()
				if _G.Settings.Configs["Fast Attack Mode"] == "Normal" then
					if FastAttack and _G.Settings.Configs["Fast Attack"] and not (_G.Settings.Mastery["Auto Farm Gun Mastery"] or _G.Settings.Mastery["Auto Farm Fruit Mastery"]) then
						_G.Sup = true
						AttackFunction()
						if _G.Settings.Configs["Fast Attack Type"] == "Normal" then
							if tick() - cooldownfastattack > .9 then wait(.1) cooldownfastattack = tick() end
						elseif _G.Settings.Configs["Fast Attack Type"] == "Fast" then
							if tick() - cooldownfastattack > 1.5 then wait(.01) cooldownfastattack = tick() end
						elseif _G.Settings.Configs["Fast Attack Type"] == "Slow" then
							if tick() - cooldownfastattack > .3 then wait(.7) cooldownfastattack = tick() end
						end
					end
				elseif _G.Settings.Configs["Fast Attack Mode"] == "Extream" then
					if FastAttack and _G.Settings.Configs["Fast Attack"] and not (_G.Settings.Mastery["Auto Farm Gun Mastery"] or _G.Settings.Mastery["Auto Farm Fruit Mastery"]) then
						_G.Sup = false
						repeat wait(_G.Fast)
							if _G.Settings.Configs["Fast Attack Type"] == "Normal" then
								_G.Fast = 0.095
							elseif _G.Settings.Configs["Fast Attack Type"] == "Fast" then
								_G.Fast = 0.085858
							elseif _G.Settings.Configs["Fast Attack Type"] == "Slow" then
								_G.Fast = 0.195
							end
							AttackFunctions()
						until _G.Sup == true
						--[[repeat wait(_G.Fast)
							AttackFunctions()
						until _G.Sup == true]]
					end
				elseif FastAttack and _G.Settings.Configs["Fast Attack"] == false then
					if ac.hitboxMagnitude ~= 55 then
						ac.hitboxMagnitude = 55
					end
					ac:attack()
				end
			end)
		end
	end)()



	Weapon = {
		"Melee",
		"Sword",
		"Fruit"
	}

	ConfixTab:AddDropdown({
		Name = "Select Weapon",
		Value = SelectWeapon,
		List = Weapon,
		Callback = function(value)
			SelectWeapon = value
		end
	})

	task.spawn(function()
		while wait() do
			pcall(function()
				if SelectWeapon == "Melee" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Configs["Select Weapon"] = v.Name
							end
						end
					end
				elseif SelectWeapon == "Sword" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Sword" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Configs["Select Weapon"] = v.Name
							end
						end
					end
				elseif SelectWeapon == "Fruit" then
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Blox Fruit" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Configs["Select Weapon"] = v.Name
							end
						end
					end
				else
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
							if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								_G.Settings.Configs["Select Weapon"] = v.Name
							end
						end
					end
				end
			end)
		end
	end)

	local Misccon = Main:CreateSection({
		Name = "Misc Confix", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	Misccon:AddToggle({
		Name = "Auto Haki",
		Value = _G.Settings.Configs["Auto Haki"],
		Callback = function(value)
			_G.Settings.Configs["Auto Haki"] = value
			SaveSettings()
		end
	})

	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Configs["Auto Haki"] then
					if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
					end
				end
			end)
		end
	end)

	Misccon:AddSlider({
		Name = "Distance Auto Farm",
		Value = _G.Settings.Configs["Distance Auto Farm"],
		Min = 1,
		Max = 50,
		Callback = function(value)
			_G.Settings.Configs["Distance Auto Farm"] = value
			SaveSettings()
		end
	})


	Misccon:AddToggle({
		Name = "Camera Shaker",
		Value = _G.Settings.Configs["Camera Shaker"],
		Callback = function(value)
			_G.Settings.Configs["Camera Shaker"] = value
			CameraShaker()
			SaveSettings()
		end
	})

	Misccon:AddLabel({
		Name = "          Mob Configs"
	})

	Misccon:AddToggle({
		Name = "Acctive Bring Mob",
		Value = _G.Settings.Configs["Bring Mob"],
		Callback = function(value)
			_G.Settings.Configs["Bring Mob"] = value
			SaveSettings()
		end
	})


	Misccon:AddToggle({
		Name = "Show Hit Box",
		Value = _G.Settings.Configs["Show Hitbox"],
		Callback = function(value)
			_G.Settings.Configs["Show Hitbox"] = value
			SaveSettings()
		end
	})

	Misccon:AddSlider({
		Name = "Hitbox Transparency",
		Value = 0.5,
		Min = 0,
		Max = 1,
		Callback = function(Value)
			_G.Hitbox_LocalTransparency = value
		end
	})

	Misccon:AddToggle({
		Name = "Disabled Damage",
		Value = _G.Settings.Configs["Disabled Damage"],
		Callback = function(value)
			_G.Settings.Configs["Disabled Damage"] = value
			DisabledDamage()
			SaveSettings()
		end
	})

	Misccon:AddLabel({
		Name = "         Redeem Code"
	})

	Misccon:AddToggle({
		Name = "Redeem Code",
		Value = _G.Settings.Stat["Enabled Auto Redeem Code"],
		Callback = function(value)
			_G.Settings.Stat["Enabled Auto Redeem Code"] = value
			SaveSettings()
		end
	})

	Misccon:AddSlider({
		Name = "Redeem Select Level",
		Value = _G.Settings.Stat["Select Level Redeem Code"],
		Min = 0,
		Max = 2450,
		Callback = function(value)
			_G.Settings.Stat["Select Level Redeem Code"] = value
			SaveSettings()
		end
	})

	local fightTab = Main:CreateSection({
		Name = "Fighting Style", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	local SupComplete = false
	local EClawComplete = false
	local TalComplete = false
	local SharkComplete = false
	local DeathComplete = false
	local GodComplete = false

	function GetAllMeleeFarm()
		if SupComplete == false then
			local args = {
				[1] = "BuySuperhuman"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if CheckMasteryWeapon("Superhuman",400) == "true UpTo" then
				SupComplete = true
			end
		end
		wait(.5)
		if EClawComplete == false then
			local string_1 = "BuyElectricClaw";
			local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
			Target:InvokeServer(string_1);

			if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" then
				EClawComplete = true
			end
		end
		wait(.5)
		if TalComplete == false then
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")

			if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" then
				TalComplete = true
			end
		end
		wait(.5)
		if SharkComplete == false then
			local args = {
				[1] = "BuySharkmanKarate"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

			if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" then
				SharkComplete = true
			end
		end
		wait(.5)
		if DeathComplete == false then
			local args = {
				[1] = "BuyDeathStep"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

			if CheckMasteryWeapon("Death Step",400) == "true UpTo" then
				DeathComplete = true
			end
		end
		if GodComplete == false then
			local args = {
				[1] = "BuyGodhuman"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

			if CheckMasteryWeapon("Godhuman",350) == "true UpTo" then
				GodComplete = true
			end
		end
	end

	fightTab:AddToggle({
		Name = "Auto God Human",
		Value = _G.Settings.FightingStyle["Auto God Human"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto God Human"] = value
			BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
			if BuyGodhuman then
				if BuyGodhuman ~= 1 then
					GetAllMeleeFarm()
				end
			end
			SaveSettings()
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.FightingStyle["Auto God Human"] then
							BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
							if BuyGodhuman then
								if BuyGodhuman == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
									_G.Settings.FightingStyle["Auto God Human"] = false
								end
							end
							if not HasTalon then
								BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))

								if BuyDragonTalon then
									if BuyDragonTalon == 1 then
										HasTalon = true
									end
								end
							end
							if not HasSuperhuman then
								BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))

								if BuySuperhuman then
									if BuySuperhuman == 1 then
										HasSuperhuman = true
									end
								end
							end
							if not HasKarate then
								BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))

								if BuySharkmanKarate then
									if BuySharkmanKarate == 1 then
										HasKarate = true
									end
								end
							end
							if not HasDeathStep then
								BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "BuyDeathStep",true))

								if BuyDeathStep then
									if BuyDeathStep == 1 then
										HasDeathStep = true
									end
								end
							end
							if not HasElectricClaw then
								BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
								if BuyElectricClaw then
									if BuyElectricClaw == 1 then
										HasElectricClaw = true
									end
								end
							end

							if not HasSuperhuman then
								if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
												if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
													if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
														if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
															local args = {
																[1] = "BuyElectro"
															}
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
														end
													end
												end
											end
										end
									end
									_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")

									if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
										local args = {
											[1] = "BuyElectro"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
										local args = {
											[1] = "BuyBlackLeg"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
										local args = {
											[1] = "BuyBlackLeg"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
										local args = {
											[1] = "BuyFishmanKarate"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
										local args = {
											[1] = "BuyFishmanKarate"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
										local args = {
											[1] = "BlackbeardReward",
											[2] = "DragonClaw",
											[3] = "2"
										}
										HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										if _G.Settings.FightingStyle["Auto God Human"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
											if game.Players.LocalPlayer.Data.Level.Value > 1100 then
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
											end
										else
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											local args = {
												[1] = "BlackbeardReward",
												[2] = "DragonClaw",
												[3] = "2"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end
									if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
										local args = {
											[1] = "BlackbeardReward",
											[2] = "DragonClaw",
											[3] = "2"
										}
										HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										if _G.Settings.FightingStyle["Auto God Human"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
											if game.Players.LocalPlayer.Data.Level.Value > 1100 then
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
											end
										else
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											local args = {
												[1] = "BlackbeardReward",
												[2] = "DragonClaw",
												[3] = "2"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
										end
									end

									if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
										local args = {
											[1] = "BuySuperhuman"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
										local args = {
											[1] = "BuySuperhuman"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end 
								end
							elseif not HasKarate then
								if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
											local args = {
												[1] = "BuyFishmanKarate"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end

									if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
											if World2 then
												KillSharkMan = true
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
											else
												KillSharkMan = false
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											end
										elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
											KillSharkMan = false
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											local args = {
												[1] = "BuySharkmanKarate"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
											KillSharkMan = false
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											local args = {
												[1] = "BuySharkmanKarate"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end

									if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
											if World2 then
												KillSharkMan = true
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
											else
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
												KillSharkMan = false
											end
										elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
											KillSharkMan = false
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											local args = {
												[1] = "BuySharkmanKarate"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
											KillSharkMan = false
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											local args = {
												[1] = "BuySharkmanKarate"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
									end
									_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
								end
							elseif not HasDeathStep then
								if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
										local args = {
											[1] = "BuyDeathStep"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

									end  
									if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
										local args = {
											[1] = "BuyDeathStep"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

									end  
									_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
								end
							elseif not HasTalon then
								if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
									_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")

									if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
											local string_1 = "Bones";
											local string_2 = "Buy";
											local number_1 = 1;
											local number_2 = 1;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2, number_1, number_2);

											local string_1 = "BuyDragonTalon";
											local bool_1 = true;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, bool_1);
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
										else
											local string_1 = "Bones";
											local string_2 = "Buy";
											local number_1 = 1;
											local number_2 = 1;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2, number_1, number_2);
										end 
									end

									if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
											local string_1 = "Bones";
											local string_2 = "Buy";
											local number_1 = 1;
											local number_2 = 1;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2, number_1, number_2);

											local string_1 = "BuyDragonTalon";
											local bool_1 = true;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, bool_1);
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
										else
											local string_1 = "Bones";
											local string_2 = "Buy";
											local number_1 = 1;
											local number_2 = 1;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2, number_1, number_2);
										end 
									end
								end
							elseif not HasElectricClaw then
								if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
									_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
										local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
										if v175 == 4 then
											local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
											if v176 == nil then
												game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
											end
										else
											local string_1 = "BuyElectricClaw";
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1);
										end
									end

									if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
										local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
										if v175 == 4 then
											local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
											if v176 == nil then
												game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
											end
										else
											local string_1 = "BuyElectricClaw";
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1);
										end
									end
								end
							end
							if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
								if HasSuperhuman and not SupComplete then
									local args = {
										[1] = "BuySuperhuman"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									wait(0.2)
									if CheckMasteryWeapon("Superhuman",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SupComplete == false then
										SupComplete = true
									end
								elseif HasTalon and not TalComplete then
									local args = {
										[1] = "BuyDragonTalon"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									wait(0.2)
									if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and TalComplete == false then
										TalComplete = true
									end
								elseif HasKarate and not SharkComplete then
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									wait(0.2)
									if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SharkComplete == false then
										SharkComplete = true
									end
								elseif HasDeathStep and not DeathComplete then
									local args = {
										[1] = "BuyDeathStep"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									wait(0.2)
									if CheckMasteryWeapon("Death Step",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and DeathComplete == false then
										DeathComplete = true
									end
								elseif HasElectricClaw and not EClawComplete then
									local args = {
										[1] = "BuyElectricClaw"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									wait(0.2)
									if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and EClawComplete == false then
										EClawComplete = true
									end
								end
							end

							if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
								if GetMaterial("Fish Tail") >= 20 then
									if GetMaterial("Magma Ore") >= 20 then
										if GetMaterial("Dragon Scale") >= 10 then
											if GetMaterial("Mystic Droplet") >= 10 then
												Com("F_","BuyGodhuman")
												BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))

												if BuyGodhuman then
													if BuyGodhuman == 1 then
														_G.Settings.FightingStyle["Auto God Human"] = false
													end
												end
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
											elseif not World2 then
												Com("F_","TravelDressrosa")
											elseif World2 then
												if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
												CheckMaterial("Mystic Droplet")
												if CustomFindFirstChild(MaterialMob) then
													for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
															repeat wait()
																FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
																if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
																	if FarmtoTarget then FarmtoTarget:Stop() end
																	FastAttack = true
																	EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	spawn(function()
																		for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																			if v2.Name == v.Name then
																				spawn(function()
																					if InMyNetWork(v2.HumanoidRootPart) then
																						v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																						v2.Humanoid.JumpPower = 0
																						v2.Humanoid.WalkSpeed = 0
																						v2.HumanoidRootPart.CanCollide = false
																						v2.Humanoid:ChangeState(11)
																						v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																					end
																				end)
																			end
																		end
																	end)
																	if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																		game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																		game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																	end
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																end
															until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
															FastAttack = false
														end
													end
												else
													FastAttack = false
													Modstween = toTarget(CFrameMon.Position,CFrameMon)
													if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
														if Modstween then Modstween:Stop() end wait(.5)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
													elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
														if Modstween then Modstween:Stop() end wait(.5)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
													elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
														if Modstween then Modstween:Stop() end wait(.5)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
													elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if Modstween then Modstween:Stop() end
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
													end 
												end
											end
										elseif not World3 then
											Com("F_","TravelZou")
										elseif World3 then
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
											CheckMaterial("Dragon Scale")
											if CustomFindFirstChild(MaterialMob) then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
														repeat wait()
															FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
																if FarmtoTarget then FarmtoTarget:Stop() end
																FastAttack = true
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
																spawn(function()
																	for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																		if v2.Name == v.Name then
																			spawn(function()
																				if InMyNetWork(v2.HumanoidRootPart) then
																					v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																					v2.Humanoid.JumpPower = 0
																					v2.Humanoid.WalkSpeed = 0
																					v2.HumanoidRootPart.CanCollide = false
																					v2.Humanoid:ChangeState(11)
																					v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																				end
																			end)
																		end
																	end
																end)
																if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																end
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															end
														until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
														FastAttack = false
													end
												end
											else
												FastAttack = false
												Modstween = toTarget(CFrameMon.Position,CFrameMon)
												if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
													if Modstween then Modstween:Stop() end wait(.5)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
												elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
													if Modstween then Modstween:Stop() end wait(.5)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
												elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
													if Modstween then Modstween:Stop() end wait(.5)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
												elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Modstween then Modstween:Stop() end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
												end 
											end
										end
									elseif not World1 then
										Com("F_","TravelMain")
									elseif World1 then
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
										CheckMaterial("Magma Ore")
										if CustomFindFirstChild(MaterialMob) then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													repeat wait()
														FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
															if FarmtoTarget then FarmtoTarget:Stop() end
															FastAttack = true
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															spawn(function()
																for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																	if v2.Name == v.Name then
																		spawn(function()
																			if InMyNetWork(v2.HumanoidRootPart) then
																				v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																				v2.Humanoid.JumpPower = 0
																				v2.Humanoid.WalkSpeed = 0
																				v2.HumanoidRootPart.CanCollide = false
																				v2.Humanoid:ChangeState(11)
																				v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																			end
																		end)
																	end
																end
															end)
															if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														end
													until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
													FastAttack = false
												end
											end
										else
											FastAttack = false
											Modstween = toTarget(CFrameMon.Position,CFrameMon)
											if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
											elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
											elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
											elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Modstween then Modstween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
											end 
										end
									end
								elseif not World1 then
									Com("F_","TravelMain")
								elseif World1 then
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
									CheckMaterial("Fish Tail")
									if CustomFindFirstChild(MaterialMob) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												repeat wait()
													FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if FarmtoTarget then FarmtoTarget:Stop() end
														FastAttack = true
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
														spawn(function()
															for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																if v2.Name == v.Name then
																	spawn(function()
																		if InMyNetWork(v2.HumanoidRootPart) then
																			v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																			v2.Humanoid.JumpPower = 0
																			v2.Humanoid.WalkSpeed = 0
																			v2.HumanoidRootPart.CanCollide = false
																			v2.Humanoid:ChangeState(11)
																			v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																		end
																	end)
																end
															end
														end)
														if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													end
												until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
												FastAttack = false
											end
										end
									else
										FastAttack = false
										Modstween = toTarget(CFrameMon.Position,CFrameMon)
										if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
										elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
										elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Modstween then Modstween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										end 
									end
								end
							end
						end
					end)
				end
			end)
		end
	})

	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto God Human"] and World2 then
					if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
						if (KillSharkMan == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks.") then
							if KillFish then KillFish:Stop() end
							Com("F_","SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
								if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
									repeat wait()
										if game.Workspace.Enemies:FindFirstChild(v.Name) then
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
												if Farmtween then Farmtween:Stop() end
												FastAttack = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
											end
										end
									until not v.Parent or not _G.Settings.FightingStyle["Auto God Human"] or KillSharkMan == false or v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
									FastAttack = false
								end
							end
						end
					else
						if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." then
								ServerHop:Teleport()
							end
						end
					end
				end
			end)
		end
	end)

	fightTab:AddToggle({
		Name = "Auto SuperHuman",
		Value = _G.Settings.FightingStyle["Auto Superhuman"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto Superhuman"] = value
			SaveSettings()
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.FightingStyle["Auto Superhuman"] then
							if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
												if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
													if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
														local args = {
															[1] = "BuyElectro"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
												end
											end
										end
									end
								end

								_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")

								if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
									local args = {
										[1] = "BuyElectro"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
									local args = {
										[1] = "BuyBlackLeg"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
									local args = {
										[1] = "BuyBlackLeg"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
									local args = {
										[1] = "BuyFishmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
									local args = {
										[1] = "BuyFishmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									if _G.Settings.FightingStyle["Auto Superhuman"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
										if game.Players.LocalPlayer.Data.Level.Value > 1100 then
											_G.Settings.Raids["Select Raids"] = "Flame"
											_G.Settings.Raids["Auto Raids"] = true
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
										end
									else
										_G.Settings.Raids["Auto Raids"] = false
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
										local args = {
											[1] = "BlackbeardReward",
											[2] = "DragonClaw",
											[3] = "2"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										_G.Settings.Raids["Auto Raids"] = false
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									end
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									if _G.Settings.FightingStyle["Auto Superhuman"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
										if game.Players.LocalPlayer.Data.Level.Value > 1100 then
											_G.Settings.Raids["Select Raids"] = "Flame"
											_G.Settings.Raids["Auto Raids"] = true
											if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
										end
									else
										_G.Settings.Raids["Auto Raids"] = false
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
										local args = {
											[1] = "BlackbeardReward",
											[2] = "DragonClaw",
											[3] = "2"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										_G.Settings.Raids["Auto Raids"] = false
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									end
								end

								if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
									Auto_Farm_Level = _G.Settings.Main["Auto Farm Level"]
									local args = {
										[1] = "BuySuperhuman"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
									Auto_Farm_Level = _G.Settings.Main["Auto Farm Level"]
									local args = {
										[1] = "BuySuperhuman"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end 
							end
						end
					end)
				end
			end)
		end
	})

	fightTab:AddToggle({
		Name = "Auto Electric Claw",
		Value = _G.Settings.FightingStyle["Auto Electric Claw"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto Electric Claw"] = value
			SaveSettings()
			if _G.Settings.FightingStyle["Auto Electric Claw"] then
				Com("F_","BuyElectro")
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.FightingStyle["Auto Electric Claw"] then
							if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
									_G.Settings.Configs["Select Weapon"] = "Electro"
								end  
								if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
									_G.Settings.Configs["Select Weapon"] = "Electro"
								end  
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
									local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
									if v175 == 4 then
										local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
										if v176 == nil then
											game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
										end
									else
										local string_1 = "BuyElectricClaw";
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1);
									end
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
									local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
									if v175 == 4 then
										local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
										if v176 == nil then
											game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
										end
									else
										local string_1 = "BuyElectricClaw";
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1);
									end
								end
							end
						end
					end)
				end
			end)
		end
	})

	fightTab:AddToggle({
		Name = "Auto Death Step",
		Value = _G.Settings.FightingStyle["Auto Death Step"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto Death Step"] = value
			SaveSettings()
			if _G.Settings.FightingStyle["Auto Death Step"] then
				Com("F_","BuyBlackLeg")
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.FightingStyle["Auto Death Step"] then
							if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
									local args = {
										[1] = "BuyDeathStep"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									_G.Settings.Configs["Select Weapon"] = "Death Step"
								end  
								if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
									local args = {
										[1] = "BuyDeathStep"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

									_G.Settings.Configs["Select Weapon"] = "Death Step"
								end  
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
									_G.Settings.Configs["Select Weapon"] = "Black Leg"
								end 
							end
						elseif _G.Settings.FightingStyle["Auto Fully Death Step"] then
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
								if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
										EquipWeapon("Library Key")
										repeat wait() toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.FightingStyle["Auto Death Step"]
										if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
											wait(1.2)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
											wait(0.5)
										end
									elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
										if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
														repeat wait()
															if game.Workspace.Enemies:FindFirstChild(v.Name) then
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
																	Farmtween = toTarget(v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttack = true
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																	if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																		game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																		game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																	end
																end
															end
														until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.FightingStyle["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
														FastAttack = false
													end
												end
											else
												toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame)
											end
										end
									end
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
							end
						end
					end)
				end
			end)
		end
	})

	fightTab:AddToggle({
		Name = "Auto SharkMan Karate",
		Value = _G.Settings.FightingStyle["Auto SharkMan Karate"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto SharkMan Karate"] = value
			SaveSettings()
			if _G.Settings.FightingStyle["Auto SharkMan Karate"] then
				Com("F_","BuySharkmanKarate")
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.FightingStyle["Auto SharkMan Karate"] then
							if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
								if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
										_G.Settings.Configs["Select Weapon"] = "Sharkman Karate"
									end  
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
										_G.Settings.Configs["Select Weapon"] = "Sharkman Karate"
									end  
									if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
										_G.Settings.Configs["Select Weapon"] = "Fishman Karate"
									end 
								else 
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
								end
							end
						elseif _G.Settings.FightingStyle["Auto Fully SharkMan Karate"] then
							if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
										repeat wait() toTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
										if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
											wait(1.2)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
											wait(0.5)
										end
									elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
										if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
														repeat wait()
															if game.Workspace.Enemies:FindFirstChild(v.Name) then
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
																	Farmtween = toTarget(v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttack = true
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																	if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
																	if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																		game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																		game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																	end
																end
															end
														until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.FightingStyle["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
														FastAttack = false													end
												end
											else
												toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
											end
										end
									end
								else 
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
							end
						end
					end)
				end
			end)
		end
	})

	fightTab:AddToggle({
		Name = "Auto Dragon Talon",
		Value = _G.Settings.FightingStyle["Auto Dragon Talon"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto Dragon Talon"] = value
			SaveSettings()
			if _G.Settings.FightingStyle["Auto Dragon Talon"] then
				Com("F_","BlackbeardReward","DragonClaw","2")
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.FightingStyle["Auto Dragon Talon"] then
							if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
								end
								if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
								end

								if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
									if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
										local string_1 = "Bones";
										local string_2 = "Buy";
										local number_1 = 1;
										local number_2 = 1;
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1, string_2, number_1, number_2);

										local string_1 = "BuyDragonTalon";
										local bool_1 = true;
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1, bool_1);
									elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
										game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
									else
										local string_1 = "BuyDragonTalon";
										local bool_1 = true;
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1, bool_1);
										local string_1 = "BuyDragonTalon";
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1);
									end 
								end

								if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
									if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
										local string_1 = "Bones";
										local string_2 = "Buy";
										local number_1 = 1;
										local number_2 = 1;
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1, string_2, number_1, number_2);

										local string_1 = "BuyDragonTalon";
										local bool_1 = true;
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1, bool_1);
									elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
										game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
									else
										local string_1 = "BuyDragonTalon";
										local bool_1 = true;
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1, bool_1);
										local string_1 = "BuyDragonTalon";
										local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
										Target:InvokeServer(string_1);
									end 
								end
							end
						end
					end)
				end
			end)
		end
	})

	fightTab:AddToggle({
		Name = "Fully Death Step",
		Value = _G.Settings.FightingStyle["Auto Fully Death Step"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto Fully Death Step"] = value
			SaveSettings()
		end
	})

	fightTab:AddToggle({
		Name = "Auto Fully SharkMan Karate",
		Value = _G.Settings.FightingStyle["Auto Fully SharkMan Karate"],
		Callback = function(value)
			_G.Settings.FightingStyle["Auto Fully SharkMan Karate"] = value
			SaveSettings()
		end
	})


	local BossTab = Main:CreateSection({
		Name = "Farm Boss", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	BossTab:AddToggle({
		Name = "Farm All Boss",
		Value = _G.Settings.Boss["Auto All Boss"],
		Callback = function(value)
			_G.Settings.Boss["Auto All Boss"] = value
			SaveSettings()
			_G.GetBoss = false
			MsBoss = ""
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
		end
	})

	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto All Boss"] then
				GetBossName()
			end
		end
	end)

	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto All Boss"] then
				pcall(function()
					CheckBossQuest()
					if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
						if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											_G.GetBoss = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											StartMagnet = true
											FastAttack = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
											PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
										until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
										_G.GetBoss = false
									end
								end
							else
								_G.GetBoss = true
								toTarget(CFrameBoss)
							end
						else
							_G.GetBoss = false
						end
					else
						if _G.Settings.Boss["Auto Quest"] then
							CheckBossQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								_G.GetBoss = true
								repeat wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Boss["Auto All Boss"]
								if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == MsBoss then
												repeat wait()
													_G.GetBoss = true
													if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														StartMagnet = true
														FastAttack = true
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
														PosMon = v.HumanoidRootPart.CFrame
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)								
													else
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
													end
												until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
												_G.GetBoss = false
											end
										end
									else
										_G.GetBoss = true
										toTarget(CFrameBoss)
									end
								else
									_G.GetBoss = false
								end
							end
						else
							if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												_G.GetBoss = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												StartMagnet = true
												FastAttack = true
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
											_G.GetBoss = false
										end
									end
								else
									_G.GetBoss = true
									toTarget(CFrameBoss)
								end
							else
								_G.GetBoss = false
							end
						end
					end
				end)
			end
		end
	end)

	BossTab:AddToggle({
		Name = "Auto Boss Select",
		Value = _G.Settings.Boss["Auto Boss Select"],
		Callback = function(Value)
			_G.Settings.Boss["Auto Boss Select"] = value
			SaveSettings()
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
		end
	})

	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto Boss Select"] then
				pcall(function()
					CheckBossQuest()
					if _G.Settings.Boss["Auto Quest"] then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Boss["Auto Boss Select"]
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												StartMagnet = true
												FastAttack = true
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								toTarget(CFrameBoss)
							end
						end
					else
						CheckBossQuest()
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										StartMagnet = true
										FastAttack = true
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)								
									until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							toTarget(CFrameBoss)
						end
					end
				end)
			end
		end
	end)

	local BossTable = {}   
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if string.find(v.Name,"Boss") then
					table.insert(BossTable,v.Name)
				end
			end
			for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
				if string.find(v.Name,"Boss") then
					table.insert(BossTable,v.Name)
				end
			end

	local Boss_Dropdown = BossTab:AddDropdown({
		Name = "Select Boss",
		value = _G.Settings.Boss["Select Boss"],
		List = BossTable,
		Callback = function(value)
			_G.Settings.Boss["Select Boss"] = value
			SaveSettings()
		end
	})

	BossTab:AddButton({
		Name = "Refresh Boss",
		Callback = function()
			table.clear(BossTable)
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if string.find(v.Name,"Boss") then
					table.insert(BossTable,v.Name)
				end
			end
			for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
				if string.find(v.Name,"Boss") then
					table.insert(BossTable,v.Name)
				end
			end
		end
	})

	BossTab:AddLabel({
		Name = "           Confix"
	})

	BossTab:AddToggle({
		Name = 'Auto Quest',
		Value = _G.Settings.Boss["Auto Quest"],
		Callback = function(value)
			_G.Settings.Boss["Auto Quest"] = value
			SaveSettings()
		end
	})





	local Mas = Main:CreateSection({
		Name = "Mastery", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit and _G.Settings.Mastery["Auto Farm Fruit Mastery"] then
							if type(args[2]) == "vector" then 
								args[2] = PositionSkillMasteryDevilFruit
							else
								args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
							end
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)

	spawn(function()
		local gt = getrawmetatable(game)
		local old = gt.__namecall
		setreadonly(gt,false)
		gt.__namecall = newcclosure(function(...)
			local args = {...}
			if getnamecallmethod() == "InvokeServer" then 
				if SelectWeaponGun then
					if SelectWeaponGun == "Soul Guitar" then
						if tostring(args[2]) == "TAP" then
							if _G.Settings.Mastery["Auto Farm Gun Mastery"] and UseSkillMasteryGun then
								args[3] = PositionSkillMasteryGun
							end
						end
					end
				end
			end
			return old(unpack(args))
		end)
		setreadonly(gt,true)
	end)

	task.spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)

	function AutoFarmMasteryGun()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Auto Farm Gun Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
								game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
							end
							HealthMin = v.Humanoid.MaxHealth*_G.Settings.Mastery["Mob Health (%)"]/100
							PositionSkillMasteryGun = v.HumanoidRootPart.Position
							if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								EquipWeapon(SelectWeaponGun)
								UseSkillMasteryGun = true
								-- v.HumanoidRootPart.CanCollide = false
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
									Click()
									local args = {
										[1] = v.HumanoidRootPart.Position,
										[2] = v.HumanoidRootPart
									}
									game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
								end 
							else
								UseSkillMasteryGun = false
								Click()
								EquipWeapon(_G.Settings.Configs["Select Weapon"])
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
							end
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Gun Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
					UseSkillMasteryGun = false
					StartMagnet = false
				end
			end
		else
			StartMagnet = false
			Modstween = toTarget(CFrameMon)
			if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end 
		end
	end

	function AutoFarmMasteryDevilFruit()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Auto Farm Fruit Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							HealthMin = v.Humanoid.MaxHealth*_G.Settings.Mastery["Mob Health (%)"]/100
							if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
								if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
									PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
									UseSkillMasteryDevilFruit = true
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
										MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
										DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
									elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
										MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
										DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
									end
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end   
									elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										else
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
										if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
											game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										end  
									elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(4)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
										if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
											game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										end
									elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
										game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
										if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
											game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										end
										if _G.Settings.Configs["Skill V"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
										if _G.Settings.Configs["Skill F"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
											game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
										end
									end
								end
							else
								game:GetService('VirtualUser'):CaptureController()
								game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
								UseSkillMasteryDevilFruit = false
								EquipWeapon(_G.Settings.Configs["Select Weapon"])
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
							end
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
					StartMagnet = false
				end
			end
		else
			StartMagnet = false
			Modstween = toTarget(CFrameMon.Position,CFrameMon)
			if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end 
		end
	end

	function CheckMasteryWeapon(NameWe,MasNum)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		return "else"
	end

	local AllSwordInInventroy = {};
	pcall(function()
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
			if (type(v) ~= "table") then
			elseif (v.Type == "Sword") then
				table.insert(AllSwordInInventroy, v.Name);
			end
		end
	end)

	table.insert(AllSwordInInventroy, GetFightingStyle("Sword"));


	_G.Settings.Mastery["Select Multi Sword"] = AllSwordInInventroy

	Mas:AddDropdown({
		Name = "Select Sword",
		Value = _G.Settings.Mastery["Select Multi Sword"],
		List = AllSwordInInventroy,
		MultiSelect = true,
		Callback = function(value)
			_G.Settings.Mastery["Select Multi Sword"] = value
			if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})

	Mas:AddButton({
		Name = "Refresh",
		Callback = function(value)
			table.clear(AllSwordInInventroy)
			pcall(function()
				for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
					if (type(v) ~= "table") then
					elseif (v.Type == "Sword") then
						table.insert(AllSwordInInventroy, v.Name);
					end
				end
			end)
		end
	})



	local function CheckQuestMasteryFarm()
		if World1 then
			Name = "Galley Captain [Lv. 650]";
			CFrameMon = CFrame.new(5649, 39, 4936);
		end
		if World2 then
			Name = "Water Fighter [Lv. 1450]";
			CFrameMon = CFrame.new(-3385, 239, -10542);
		end
		if ThreeWorld then
			Name = "Reborn Skeleton [Lv. 1975]";
			CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
		end
	end

	function AutoFarmMasterySwordList()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) or (ThreeWorld and (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]"))) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Farm Mastery SwordList"] and ((ThreeWorld and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]")) or v.Name == Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							FastAttack = true
							EquipWeaponSword()
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
								game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) and ((ThreeWorld and not (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]")) or v.Name == Name) or not _G.Settings.Mastery["Farm Mastery SwordList"] or v.Humanoid.Health <= 0 or not v.Parent
					StartMagnet = false
					FastAttack = false
				end
			end
		else
			StartMagnet = false
			Modstween = toTarget(CFrameMon)
			if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif World2 and string.find(Name, "Ship") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif World2 and not string.find(Name, "Ship") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				-- elseif game.Players.LocalPlayer:DistanceFromCharacter(CFrameMon.Position) > 3500 then
				--     if Modstween then Modstween:Stop() end
				--     if game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Dead then return end
				--     ResetSetSpawn(CFrameMon)
			elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end
		end
	end

	local function inmyself(name)
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
	end

	SwordListFarmComplete = {};
	Mas:AddToggle({
		Name = "Auto Farm Sword Mastery",
		Value = _G.Settings.Mastery["Farm Mastery SwordList"],
		Callback = function(x)
			_G.Settings.Mastery["Farm Mastery SwordList"] = x
			if x == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings();
			spawn(function()
				while wait() do
					if _G.Settings.Mastery["Farm Mastery SwordList"] and #_G.Settings.Mastery["Select Multi Sword"] ~= 0 then
						for i,v in pairs(_G.Settings.Mastery["Select Multi Sword"]) do
							if _G.Settings.Mastery["Farm Mastery SwordList"] == false and table.find(SwordListFarmComplete,v) then
								break;
							end
							if not game.Players.LocalPlayer.Backpack:FindFirstChild(v) and not game.Players.LocalPlayer.Character:FindFirstChild(v) and game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health ~= 0 then
								while _G.Settings.Mastery["Farm Mastery SwordList"] do wait()
									if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) or _G.Settings.Mastery["Farm Mastery SwordList"] == false or table.find(SwordListFarmComplete,v) then 
										break;
									end
									wait(0.5)
									Com("F_","StoreItem",tostring(GetFightingStyle("Sword")),inmyself(GetFightingStyle("Sword")))
									wait(0.5)
									Com("F_","LoadItem",tostring(v))
									wait(0.5)
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
										SelectWeaponInSwordList = v
										break;
									end
									if CheckMasteryWeapon(v,600) == "true" or CheckMasteryWeapon(v,600) == "true UpTo" then
										print("DONE "..v)     
										table.insert(SwordListFarmComplete,v)
										break;
									end
								end
							end
							wait(0.2)
							if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
								while _G.Settings.Mastery["Farm Mastery SwordList"] do wait()
									if table.find(SwordListFarmComplete,v) and #_G.Settings.Mastery["Select Multi Sword"] ~= 0 and #SwordListFarmComplete ~= 0 then
										break
									end
									if _G.Settings.Mastery["Farm Mastery SwordList"] == false then
										break;
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
										SelectWeaponInSwordList = v
									end
									CheckQuestMasteryFarm()
									AutoFarmMasterySwordList()
									if CheckMasteryWeapon(v,600) == "true" or CheckMasteryWeapon(v,600) == "true UpTo" then
										print("DONE "..v)
										table.insert(SwordListFarmComplete,v)
										break;
									end
								end
							end
						end
					else 
						break;
					end
				end
			end)
		end
	})

	Mas:AddToggle({
		Name = "Auto Farm Fruit Mastery",
		Value = _G.Settings.Mastery["Auto Farm Fruit Mastery"],
		Callback = function(value)
			_G.Settings.Mastery["Auto Farm Fruit Mastery"] = value
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
			SaveSettings()
		end
	})

	Mas:AddToggle({
		Name = "Auto Farm Gun Mastery",
		Value = _G.Settings.Mastery["Auto Farm Gun Mastery"],
		Callback = function(value)
			_G.Settings.Mastery["Auto Farm Gun Mastery"] = value
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			SaveSettings()
		end
	})


	Mas:AddLabel({
		Name = "         Mastery Confix"
	})

	Mas:AddSlider({
		Name = "Mob Health (%)",
		Value = _G.Settings.Mastery["Mob Health (%)"],
		Min = 0,
		Max = 100,
		Format = "Mob Health : %s%%",
		Callback = function(value)
			_G.Settings.Mastery["Mob Health (%)"] = value
			SaveSettings()
		end
	})

	Mas:AddLabel({
		Name = "          Skill List"
	})

	Mas:AddToggle({
		Name = "Skill Z",
		Value = _G.Settings.Configs["Skill Z"],
		Callback = function(value)
			_G.Settings.Configs["Skill Z"] = value
			SaveSettings()
		end
	})

	Mas:AddToggle({
		Name = "Skill X",
		Value = _G.Settings.Configs["Skill X"],
		Callback = function(value)
			_G.Settings.Configs["Skill X"] = value
			SaveSettings()
		end
	})


	Mas:AddToggle({
		Name = "Skill C",
		Value = _G.Settings.Configs["Skill C"],
		Callback = function(value)
			_G.Settings.Configs["Skill C"] = value
			SaveSettings()
		end
	})


	Mas:AddToggle({
		Name = "Skill V",
		Value = _G.Settings.Configs["Skill V"],
		Callback = function(value)
			_G.Settings.Configs["Skill V"] = value
			SaveSettings()
		end
	})

	Mas:AddToggle({
		Name = "Skill F",
		Value = _G.Settings.Configs["Skill F"],
		Callback = function(value)
			_G.Settings.Configs["Skill F"] = value
			SaveSettings()
		end
	})

	spawn(function()
		while wait() do
			if _G.Settings.Mastery["Auto Farm Fruit Mastery"] then
				CheckQuest()
				AutoFarmMasteryDevilFruit()
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.Settings.Mastery["Auto Farm Gun Mastery"] then
				CheckQuest()
				AutoFarmMasteryGun()
			end
		end
	end)

	local st = PepsiUi:CreateTab({
		Name = "Players"
	})

	local Autos = st:CreateSection({
		Name = "Auto Stats", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})


	Autos:AddToggle({
		Name = "Auto Stats",
		Value = _G.Settings.Stat["Enabled Auto Stats"],
		Callback = function(value)
			_G.Settings.Stat["Enabled Auto Stats"] = value
			SaveSettings()
		end
	})

	Autos:AddDropdown({
		Name = "Select Stats",
		Value = "Max Stats",
		List = {"Max Stats","Melee","Defense","Sword","Gun","Devil Fruits"},
		Callback = function(value)
			_G.Settings.Stat["Select Stats"] = value
			SaveSettings()
			task.spawn(function()
				pcall(function()
					while wait() do
						if _G.Settings.Stat["Enabled Auto Stats"] then
							if  _G.Settings.Stat["Select Stats"] == "Melee" then
								local args = {
									[1] = "AddPoint",
									[2] = "Melee",
									[3] = _G.Settings.Stat["Point Select"]
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Settings.Stat["Select Stats"] == "Defense" then
								local args = {
									[1] = "AddPoint",
									[2] = "Defense",
									[3] = _G.Settings.Stat["Point Select"]
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Settings.Stat["Select Stats"] == "Sword" then
								local args = {
									[1] = "AddPoint",
									[2] = "Sword",
									[3] = _G.Settings.Stat["Point Select"]
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Settings.Stat["Select Stats"] == "Gun" then
								local args = {
									[1] = "AddPoint",
									[2] = "Gun",
									[3] = _G.Settings.Stat["Point Select"]
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Settings.Stat["Select Stats"] == "Devil Fruits" then
								local args = {
									[1] = "AddPoint",
									[2] = "Demon Fruit",
									[3] = _G.Settings.Stat["Point Select"]
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							elseif _G.Settings.Stat["Select Stats"] == "Max Stats" then
								if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value < 2400 then
									local args = {
										[1] = "AddPoint",
										[2] = "Melee",
										[3] = _G.Settings.Stat["Point Select"]
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								else
									local args = {
										[1] = "AddPoint",
										[2] = "Defense",
										[3] = _G.Settings.Stat["Point Select"]
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))	
								end
							end
						end
					end
				end)
			end)
		end
	})

	Autos:AddSlider({
		Name = "Point Select",
		Value = _G.Settings.Stat["Point Select"],
		Min = 0,
		Max = 2450,
		Callback = function(value)
			_G.Settings.Stat["Point Select"] = value
		end
	})


	local CombatTab = st:CreateSection({
		Name = "Combat", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})



	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	spawn(function()
		while wait() do
			if _G.Settings.Combat["Aimbot Skill"] then
				pcall(function()
					local MaxDist, Closest = math.huge
					for i,v in pairs(game:GetService("Players"):GetChildren()) do 
						local Head = v.Character:FindFirstChild("HumanoidRootPart")
						local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
						local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
						local Dist = (TheirPos - MousePos).Magnitude
						if Dist < MaxDist and Dist <= _G.Settings.Combat["Fov Size"] and v.Name ~= game.Players.LocalPlayer.Name then
							MaxDist = Dist
							_G.Aim_Players = v
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if _G.Settings.Combat["Aimbot Skill"] then
							args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)

	local Circle = Drawing.new("Circle")
	Circle.Color =  Color3.fromRGB(255, 255, 255)
	Circle.Thickness = 1
	Circle.Radius = 250
	Circle.NumSides = 460
	Circle.Filled = false
	Circle.Transparency = 1

	game:GetService("RunService").Stepped:Connect(function()
		Circle.Radius = tonumber(_G.Settings.Combat["Fov Size"])
		Circle.Thickness = 1
		Circle.NumSides = 460
		Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
		if _G.Settings.Combat["Show Fov"] then
			Circle.Visible = true
		else
			Circle.Visible = false
		end
	end)

	CombatTab:AddSlider({
		Name = "Fov Size",
		Value = 250,
		Min = 0,
		Max = 1000,
		Callback = function(value)
			_G.Settings.Combat["Fov Size"] = value
			SaveSettings()
		end
	})

	CombatTab:AddToggle({
		Name = "Show Fov",
		Value = _G.Settings.Combat["Show Fov"],
		Callback = function(value)
			_G.Settings.Combat["Show Fov"] = value
		end
	})

	CombatTab:AddToggle({
		Name = "Aimbot Skill",
		Value = _G.Settings.Combat["Aimbot Skill"],
		Callback = function(value)
			_G.Settings.Combat["Aimbot Skill"] = value
		end
	})

	CombatTab:AddToggle({
		Name = "Aimbot Gun",
		Value = Aimbot,
		Callback = function(value)
			Aimbot = value
		end
	})

	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if Skillaimbot then
						args[2] = AimBotSkillPosition
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)

	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)

	--[aimbot skill]

	task.spawn(function()
		while wait() do
			if Skillaimbot then
				if game.Players:FindFirstChild(SelectPlayer) and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectPlayer).Character.Humanoid.Health > 0 then
					AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart").Position
				end
			end
		end
	end)

	--[aimbot gun]

	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectPlayer) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
		end 
	end)


	local isw = PepsiUi:CreateTab({
		Name = "TP"
	})

	local WordTab = isw:CreateSection({
		Name = "Word", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	if World1 then

		WordTab:AddButton({
			Name = "Teleport To world : 2",
			Callback = function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
			end
		})

		WordTab:AddButton({
			Name = "Teleport To world : 3",
			Callback = function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
			end
		})

	elseif World2 then
		
		WordTab:AddButton({
			Name = "Teleport To world : 1",
			Callback = function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
			end
		})

		WordTab:AddButton({
			Name = "Teleport To world : 3",
			Callback = function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
			end
		})
		
	elseif World3 then
		
		WordTab:AddButton({
			Name = "Teleport To world : 1",
			Callback = function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
			end
		})

		WordTab:AddButton({
			Name = "Teleport To world : 2",
			Callback = function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
			end
		})
	end

	TeleportTable = {}

	if World1 then
		TeleportTable = {"Jones Salad","Marine1","Marine2","Midle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","UnderWater Gate","UnderWater City","Fountain City","Sky1","Sky2","Sky3"}
	elseif World2 then
		TeleportTable = {"Dock","Mansion","Kingdom Of Rose","Cafe","Sunflower Field","Jeramy Mountain","Colossuem","Factory","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Ice Castle","Usopp's Island","inscription Island","Forgotten Island","Ghost Ship"}
	elseif World3 then
		TeleportTable = {"Port Town","Hydra Island","Gaint Tree","Mansion","Castle on the Sea","Graveyard Island","Icecream Island","Peanut Island","Lab","Cake Loaf"}
	end

	local IsTab = isw:CreateSection({
		Name = "Word", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	IsTab:AddButton({
		Name = "Teleport To Select",
		Callback = function()
			if World1 then
				if _G.SelectLocalTeleport == "Jones Salad" then
					toTarget(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
				end

				if _G.SelectLocalTeleport == "Marine1" then
					toTarget(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
				end

				if _G.SelectLocalTeleport == "Marine2" then
					toTarget(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
				end

				if _G.SelectLocalTeleport == "Midle Town" then
					toTarget(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
				end

				if _G.SelectLocalTeleport == "Jungle" then
					toTarget(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
				end

				if _G.SelectLocalTeleport == "Pirate Village" then
					toTarget(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
				end

				if _G.SelectLocalTeleport == "Desert" then
					toTarget(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
				end

				if _G.SelectLocalTeleport == "Frozen Village" then
					toTarget(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
				end

				if _G.SelectLocalTeleport == "Colosseum" then
					toTarget(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
				end

				if _G.SelectLocalTeleport == "Prison" then
					toTarget(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
				end

				if _G.SelectLocalTeleport == "Mob Leader" then
					toTarget(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
				end

				if _G.SelectLocalTeleport == "Magma Village" then
					toTarget(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
				end

				if _G.SelectLocalTeleport == "UnderWater Gate" then
					toTarget(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
				end

				if _G.SelectLocalTeleport == "UnderWater City" then
					toTarget(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
				end

				if _G.SelectLocalTeleport == "Fountain City" then
					toTarget(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
				end

				if _G.SelectLocalTeleport == "Sky1" then
					toTarget(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
				end

				if _G.SelectLocalTeleport == "Sky2" then
					toTarget(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
				end

				if _G.SelectLocalTeleport == "Sky3" then
					toTarget(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
				end
			elseif World2 then
				if _G.SelectLocalTeleport == "Dock" then
					toTarget(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
				end

				if _G.SelectLocalTeleport == "Mansion" then
					toTarget(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
				end

				if _G.SelectLocalTeleport == "Kingdom Of Rose" then
					toTarget(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
				end

				if _G.SelectLocalTeleport == "Cafe" then
					toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
				end

				if _G.SelectLocalTeleport == "Sunflower Field" then
					toTarget(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
				end

				if _G.SelectLocalTeleport == "Jeramy Mountain" then
					toTarget(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
				end

				if _G.SelectLocalTeleport == "Colossuem" then
					toTarget(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
				end

				if _G.SelectLocalTeleport == "Factory" then
					toTarget(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
				end

				if _G.SelectLocalTeleport == "The Bridge" then
					toTarget(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
				end

				if _G.SelectLocalTeleport == "Green Bit" then
					toTarget(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
				end

				if _G.SelectLocalTeleport == "Graveyard" then
					toTarget(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
				end

				if _G.SelectLocalTeleport == "Dark Area" then
					toTarget(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
				end

				if _G.SelectLocalTeleport == "Snow Mountain" then
					toTarget(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
				end

				if _G.SelectLocalTeleport == "Hot Island" then
					toTarget(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
				end

				if _G.SelectLocalTeleport == "Cold Island" then
					toTarget(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
				end

				if _G.SelectLocalTeleport == "Ice Castle" then
					toTarget(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
				end

				if _G.SelectLocalTeleport == "Usopp's Island" then
					toTarget(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
				end

				if _G.SelectLocalTeleport == "inscription Island" then
					toTarget(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
				end

				if _G.SelectLocalTeleport == "Forgotten Island" then
					toTarget(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
				end

				if _G.SelectLocalTeleport == "Ghost Ship" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			elseif World3 then
				if _G.SelectLocalTeleport == "Port Town" then
					toTarget(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
				end

				if _G.SelectLocalTeleport == "Hydra Island" then
					toTarget(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
				end

				if _G.SelectLocalTeleport == "Gaint Tree" then
					toTarget(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
				end

				if _G.SelectLocalTeleport == "Mansion" then
					local args = {
						[1] = "requestEntrance",
						[2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)
					}

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end

				if _G.SelectLocalTeleport == "Castle on the Sea" then
					local args = {
						[1] = "requestEntrance",
						[2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)
					}

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end

				if _G.SelectLocalTeleport == "Graveyard Island" then
					toTarget(CFrame.new(-9515.07324, 142.130615, 5537.58398))
				end

				if _G.SelectLocalTeleport == "Icecream Island" then
					toTarget(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572, 2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
				end

				if _G.SelectLocalTeleport == "Peanut Island" then
					toTarget(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837, -1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
				end

				if _G.SelectLocalTeleport == "Lab" then
					toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
				end

				if _G.SelectLocalTeleport == "Cake Loaf" then
					toTarget(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
				end
			end
		end
	})

	IsTab:AddDropdown({
		Name = "Select Island",
		Value = _G.SelectLocalTeleport,
		List = TeleportTable,
		Callback = function(value)
			_G.SelectLocalTeleport = value
		end
	})

	--[[local RaidTab = isw:CreateSection({
		Name = "Raid", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	RaidTab:AddToggle({
		Name = "Auto Raid",
		Value = _G.Settings.Raids["Auto Raids"],
		Callback = function(value)
			_G.Settings.Raids["Auto Raids"] = value
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
			SaveSettings()
		end
	})


	RaidTab:AddDropdown({
		Name = "Select Raid",
		Value = "Flame",
		List = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
		Callback = function(value)
			_G.Settings.Raids["Select Raids"] = value
			SaveSettings()
		end
	})

	RaidTab:AddLabel({
		Name = "        Raids Configs"
	})

	RaidTab:AddToggle({
		Name = "Kill Aura",
		Value = _G.Settings.Raids["Kill Aura"],
		Callback = function(value)
			_G.Settings.Raids["Kill Aura"] = value
			SaveSettings()
		end
	})

	RaidTab:AddToggle({
		Name = "Auto Next Island",
		Value = _G.Settings.Raids["Auto Next Place"],
		Callback = function(value)
			_G.Settings.Raids["Auto Next Place"] = value
			SaveSettings()
		end
	})

	task.spawn(function()
		while wait() do
			if _G.Settings.Raids["Auto Raids"] and not _G.Settings.Main["Auto Farm Level"]  then 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
						if World2 then
							fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						elseif World3 then
							fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
						wait(17)
					elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
						pcall(function()
							repeat wait()
								if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then

								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
									end
								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Raids["Auto Raids"] and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
										repeat wait()
											v.Humanoid.Health = 0
											v:BreakJoints()
										until not _G.Settings.Raids["Auto Raids"] or v.Humanoid.Health <= 0 or not v.Parent
									end
								end
								if _G.Settings.Raids["Auto Awakened"] then	
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
								end
							until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
							if _G.Settings.Raids["Auto Awakened"] then	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
							end
						end)
					end           
				else
					if _G.Settings.Raids["Auto Awakened"] then	
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
					local args = {
						[1] = "RaidsNpc",
						[2] = "Select",
						[3] = tostring(_G.Settings.Raids["Select Raids"])
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end
	end)

	spawn(function()
		while wait() do
			if _G.Settings.Raids["Kill Aura"] then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						pcall(function()
							repeat wait()
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.HumanoidRootPart.Transparency = 0.8
							until not _G.Settings.Raids["Kill Aura"] or not _G.Settings.Raids["Auto Raids"] or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
			end
		end
	end)

	task.spawn(function()
		pcall(function()
			while task.wait() do
				if _G.Settings.Raids["Auto Next Place"] then
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(0,30,0))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(0,30,0))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(0,30,0))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(0,30,0))
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
							toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(0,30,0))
						end
					else
						if (CFrame.new(-5017.7880859375, 314.9747009277344, -2912.518798828125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5017.7880859375, 314.9747009277344, -2912.518798828125)
						else
							toTarget(CFrame.new(-5017.7880859375, 314.9747009277344, -2912.518798828125))
						end
						game:GetService("VirtualUser"):SetKeyDown('0x20')
						wait(2)
						game:GetService("VirtualUser"):SetKeyUp('0x20')
					end
				else
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			end
		end)
	end)]]

	local Shoptab = PepsiUi:CreateTab({
		Name = "Shop"
	})

	local Miscshop = Shoptab:CreateSection({
		Name = "Bones", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	if World3 then
		Miscshop:AddToggle({
			Name = "Auto Random Surprise",
			Value = _G.Settings.Main["Auto Random Bone"],
			Callback = function(value)
				_G.Settings.Main["Auto Random Bone"] = value
				SaveSettings()
			end
		})
		
		spawn(function()
			while wait(.1) do
				if _G.Settings.Main["Auto Random Bone"] then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
				end
			end
		end)
	end

	if World2 then
			Miscshop:AddToggle({
			Name = "Auto Buy Legendary Sword",
			Value = _G.Settings.Main["Auto Buy Legendary Sword"],
			Callback = function(value)
				_G.Settings.Main["Auto Buy Legendary Sword"] = value
				SaveSettings()
			end
		})

		spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Buy Legendary Sword"] then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "1"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "3"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
		end)
	end

	Miscshop:AddToggle({
		Name = "Auto Buy Color Haki",
		Value = _G.Settings.Main["Auto Buy Enchanment Haki"],
		Callback = function(value)
			_G.Settings.Main["Auto Buy Enchanment Haki"] = value
			SaveSettings()
		end
	})

	if _G.Settings.Main["Auto Buy Enchanment Haki"] then
		local args = {
			[1] = "ColorsDealer",
			[2] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end

	local Ftab = Shoptab:CreateSection({
		Name = "Fragment", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	Ftab:AddButton({
		Name = "Reroll Race",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
		end
	})

	Ftab:AddButton({
		Name = "Refund Stat",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
		end
	})

	local Cotab = Shoptab:CreateSection({
		Name = "Com Bat", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	Cotab:AddButton({
		Name = "Black Leg",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
		end
	})

	Cotab:AddButton({
		Name = "Electro",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
		end
	})

	Cotab:AddButton({
		Name = "Fishman Karate",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
		end
	})


	Cotab:AddButton({
		Name = "Dragon Claw",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
		end
	})

	Cotab:AddButton({
		Name = "Superhuman",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
		end
	})

	Cotab:AddButton({
		Name = "Death Step",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
		end
	})

	Cotab:AddButton({
		Name = "Sharkman Karate",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
		end
	})

	Cotab:AddButton({
		Name = "Electric Claw",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
		end
	})

	Cotab:AddButton({
		Name = "Dragon Talon",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
		end
	})

	Cotab:AddButton({
		Name = "Godhuman",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
		end
	})

	local Page2 = PepsiUi:CreateTab({
		Name = "Misc"
	})

	local screenTab = Page2:CreateSection({
		Name = "White Screen", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	screenTab:AddToggle({
		Name = "White Screen",
		Value = _G.Settings.HUD["White Screen"],
		Callback = function(value)
			_G.Settings.HUD["White Screen"] = value
			SaveSettings()
			if _G.Settings.HUD["White Screen"] then
				game:GetService("RunService"):Set3dRenderingEnabled(false)
			else
				game:GetService("RunService"):Set3dRenderingEnabled(true)
			end
		end
	})

	screenTab:AddButton({
		Name = "Fast Mode",
		Callback = function()
			wait(3)
			pcall(function()
				local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
				local g = game
				local w = g.Workspace
				local l = g.Lighting
				local t = w.Terrain
				t.WaterWaveSize = 0
				t.WaterWaveSpeed = 0
				t.WaterReflectance = 0
				t.WaterTransparency = 0
				l.GlobalShadows = false
				l.FogEnd = 9e9
				l.Brightness = 0
				settings().Rendering.QualityLevel = "Level01"
				for i, v in pairs(g:GetDescendants()) do
					if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
							v.Material = "Plastic"
							v.Reflectance = 0
							--v.CanCollide = false
					elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
							v.Transparency = 1
					elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
							v.Lifetime = NumberRange.new(0)
					elseif v:IsA("Explosion") then
							v.BlastPressure = 1
							v.BlastRadius = 1
					elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
							v.Enabled = false
					elseif v:IsA("MeshPart") then
							v.Material = "Plastic"
							v.Reflectance = 0
							v.TextureID = 10385902758728957    
					end
				end
				for i, e in pairs(l:GetChildren()) do
					if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
							e.Enabled = false
					end
				end
				for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
					if v.Name == ("Water;") then
						v.Transparency = 1
						v.Material = "Plastic"
					end
				end
			end)
			pcall(function()
				if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
				if hookfunction and setreadonly then
				local mt = getrawmetatable(game)
				local old = mt.__newindex
				setreadonly(mt, false)
				local sda
				sda = hookfunction(old, function(t, k, v)
					if k == "Material" then
						if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
					elseif k == "TopSurface" then v = "Smooth"
					elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
					elseif k == "WaterTransparency" then v = 1
					elseif k == "GlobalShadows" then v = false end
					return sda(t, k, v)
				end)
				setreadonly(mt, true)
				end
				local g = game
				local w = g.Workspace
				local l = g:GetService"Lighting"
				local t = w:WaitForChild"Terrain"
				t.WaterWaveSize = 0
				t.WaterWaveSpeed = 0
				t.WaterReflectance = 0
				t.WaterTransparency = 1
				l.GlobalShadows = false
			end)
		end
	})

	screenTab:AddButton({
		Name = "Kaitun Cap",
		Callback = function()
			local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
			local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
			local Items = {}
			local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
			local RaityColor =  {
				["Common"] = Color3.fromRGB(179, 179, 179),
				["Uncommon"] = Color3.fromRGB(92, 140, 211),
				["Rare"] =  Color3.fromRGB(140, 82, 255),
				["Legendary"] = Color3.fromRGB(213, 43, 228) ,
				["Mythical"] =  Color3.fromRGB(238, 47, 50)
			}
			function GetRaity(color)
				for k,v in pairs(RaityColor) do 
					if v==color then return k end
				end
			end

			for k,v in pairs(Inventory) do 
				Items[v.Name] = v
			end

			local total = #getupvalue(cac.UpdateRender,4)
			local rac = {}
			local allitem = {}
			local total2 = 0
			while total2<total do 
				local i = 0
				while i < 25000 and total2<total do 
					game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
					for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do 
						if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then 
							local vaihuhu = GetRaity(v.Background.BackgroundColor3)
							if vaihuhu then
								print("Rac")
								if not allitem[vaihuhu] then 
									allitem[vaihuhu] = {}
								end
								table.insert(allitem[vaihuhu],v:Clone())
							end
							total2=total2+1
							rac[v.ItemName.Text] = true
						end
					end
					i=i+20
				end
				wait()
			end
			function GetXY(vec) 
				return vec*100
			end

			local tvk = Instance.new("UIListLayout")
			tvk.FillDirection = Enum.FillDirection.Vertical
			tvk.SortOrder = 2
			tvk.Padding = UDim.new(0,10)

			local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
			Left.BackgroundTransparency = 1
			Left.Size = UDim2.new(.5,0,1,0) 
			tvk.Parent = Left

			local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
			Right.BackgroundTransparency = 1
			Right.Size = UDim2.new(.5,0,1,0) 
			Right.Position = UDim2.new(.6,0,0,0)
			tvk:Clone().Parent = Right
			for k,v in pairs(allitem) do 
				local cac = Instance.new("Frame",Left)
				cac.BackgroundTransparency = 1
				cac.Size = UDim2.new(1,0,0,0) 
				cac.LayoutOrder = table.find(RaityLevel,k)

				local cac2 = Instance.new("Frame",Right)
				cac2.BackgroundTransparency = 1
				cac2.Size = UDim2.new(1,0,0,0) 
				cac2.LayoutOrder = table.find(RaityLevel,k)

				local tvk = Instance.new("UIGridLayout",cac)
				tvk.CellPadding = UDim2.new(.005,0,.005,0)
				tvk.CellSize =  UDim2.new(0,70,0,70)
				tvk.FillDirectionMaxCells = 100
				tvk.FillDirection = Enum.FillDirection.Horizontal

				local ccc = tvk:Clone()
				ccc.Parent = cac2
				for k,v in pairs(v) do 
					if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then 
						if v.ItemLine2.Text~="Accessory" then 
							local bucac = v.ItemName:Clone()
							bucac.BackgroundTransparency = 1
							bucac.TextSize = 10
							bucac.TextXAlignment  = 2
							bucac.TextYAlignment  = 2
							bucac.ZIndex  = 5
							bucac.Text = Items[v.ItemName.Text].Mastery
							bucac.Size = UDim2.new(.5,0,.5,0)
							bucac.Position = UDim2.new(.5,0,.5,0)
							bucac.Parent = v
						end
						v.Parent = cac
					elseif v.ItemLine2.Text == "Blox Fruit" then 
						v.Parent = cac2
					end
				end
				cac.AutomaticSize = 2
				cac2.AutomaticSize = 2
			end
			local ListHuhu = {
				["Superhuman"] = Vector2.new(3,2),
				["DeathStep"] = Vector2.new(4,3),
				["ElectricClaw"] = Vector2.new(2,0),
				["SharkmanKarate"] = Vector2.new(0,0),
				["DragonTalon"] = Vector2.new(1,5)
			}
			local MeleeG = Instance.new("Frame",Left)
			MeleeG.BackgroundTransparency = 1
			MeleeG.Size = UDim2.new(1,0,0,0) 
			MeleeG.LayoutOrder = table.find(RaityLevel,k)
			MeleeG.AutomaticSize=2
			MeleeG.LayoutOrder = 100
			local tvk = Instance.new("UIGridLayout",MeleeG)
			tvk.CellPadding = UDim2.new(.005,0,.005,0)
			tvk.CellSize =  UDim2.new(0,70,0,70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal

			local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
			for k,v in pairs(cac) do
				if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then 
					local huhu = Instance.new("ImageLabel",MeleeG)
					huhu.Image = "rbxassetid://9945562382"
					huhu.ImageRectSize = Vector2.new(100,100)
					huhu.ImageRectOffset = ListHuhu[v]*100
				end
			end
			function formatNumber(v)
				return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
			end
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,0,500)
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0,800,0,550)

			local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
			thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
			thieunang.Position = UDim2.new(0,800,0.63,0)
			local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
			thieunang.Text = "ƒ"..n
			print("Done")
			pcall(function() 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
			end)
			pcall(function() 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
			end)
			pcall(function() 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
			end)
			for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do 
				if v:IsA("ImageButton") then 
					v:Destroy()
				end
			end
			pcall(function() 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
			end)
		end
	})

	screenTab:AddButton({
		Name = "Remove Kaitun Cap",
		Callback = function()
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
		end
	})

	local inf = Page2:CreateSection({
		Name = "Inf/No cd", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})


	inf:AddToggle({
		Name = "No Soru Cooldown",
		Value = _G.Settings.Misc["No Soru Cooldown"],
		Callback = function(value)
			_G.Settings.Misc["No Soru Cooldown"] = value
			NoCooldown()
			SaveSettings()
		end
	})


	inf:AddToggle({
		Name = "No Dash Cooldown",
		Value = _G.Settings.Misc["No Dash Cooldown"],
		Callback = function(value)
			_G.Settings.Misc["No Dash Cooldown"] = value
			NoCooldown()
			SaveSettings()
		end
	})


	inf:AddToggle({
		Name = "Infinities Geppo",
		Value = _G.Settings.Misc["Infinities Geppo"],
		Callback = function(value)
			_G.Settings.Misc["Infinities Geppo"] = value
			NoCooldown()
			SaveSettings()
		end
	})


	inf:AddToggle({
		Name = "Infinities Energy",
		Value = _G.Settings.Misc["Infinities Energy"],
		Callback = function(value)
			_G.Settings.Misc["Infinities Energy"] = value
			InfinitiesEnergy()
			SaveSettings()
		end
	})

	local ot = Page2:CreateSection({
		Name = "Misc", -- ชื่อ
		Side = "Left" -- ตำแหน่ง Left/Right
	})

	ot:AddToggle({
		Name = "No Fog",
		Value = _G.Settings.Misc["No Fog"],
		Callback = function(value)
			_G.Settings.Misc["No Fog"] = value
			SaveSettings()
			task.spawn(function()
				while wait() do
					pcall(function()
						if _G.Settings.Misc["No Fog"] then
							game.Lighting.FogEnd = math.huge
							if game:GetService("Lighting"):FindFirstChild("FantasySky") then game:GetService("Lighting").FantasySky:Destroy()
							end
						else
							game.Lighting.FogEnd = 2500
						end
					end)
				end
			end)
		end
	})

	local WallTP = nil
	ot:AddToggle({
		Name = "Wall TP",
		Value = _G.Settings.Misc["Wall-TP"],
		Callback = function(value)
			_G.Settings.Misc["Wall-TP"] = value
			SaveSettings()
			task.spawn(function()
				if _G.Settings.Misc["Wall-TP"] then
					local torso
					if r15(game.Players.LocalPlayer) then
						torso = game.Players.LocalPlayer.Character.UpperTorso
					else
						torso = game.Players.LocalPlayer.Character.Torso
					end
					local function touchedFunc(hit)
						local Root = getRoot(game.Players.LocalPlayer.Character)
						if hit:IsA("BasePart") and hit.Position.Y > Root.Position.Y - game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight then
							local hitP = getRoot(hit.Parent)
							if hitP ~= nil then
								Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hitP.Size.Z/2 + game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight,Root.CFrame.lookVector.Z)
							elseif hitP == nil then
								Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hit.Size.Y/2 + game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight,Root.CFrame.lookVector.Z)
							end
						end
					end
					WallTP = torso.Touched:Connect(touchedFunc)
				elseif not _G.Settings.Misc["Wall-TP"] then
					if WallTP then
						WallTP:Disconnect()
					end
				end
			end)
		end
	})

	ot:AddToggle({
		Name = "Fly",
		Value = _G.Settings.Misc["Fly"],
		Callback = function(value)
			_G.Settings.Misc["Fly"] = value
			SaveSettings()
			task.spawn(function()
				if _G.Settings.Misc["Fly"] then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
					local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
					Head.Anchored = true
					CFloop = RunService.Heartbeat:Connect(function(deltaTime)
						local moveDirection = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (_G.Settings.Misc["Fly Speed"] * deltaTime)
						local headCFrame = Head.CFrame
						local cameraCFrame = workspace.CurrentCamera.CFrame
						local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
						cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
						local cameraPosition = cameraCFrame.Position
						local headPosition = headCFrame.Position

						local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
						Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
					end)
				else
					if CFloop then
						CFloop:Disconnect()
						game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
						local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
						Head.Anchored = false
					end
				end
			end)
		end
	})

	ot:AddSlider({
		Name = "Fly Speed",
		Value = _G.Settings.Misc["Fly Speed"],
		Min = 0,
		Max = 1000,
		Callback = function(Value)
			if isNumber(value) then
				_G.Settings.Misc["Fly Speed"] = value
			end
		end
	})

	local fps = Page2:CreateSection({
		Name = "FPS CAP", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	fps:AddSlider({
		Name = "Fps Cap",
		Value = 60,
		Min = 1,
		Max = 360,
		callback = function(value)
			Fpscap = value
		end
	})

	fps:AddToggle({
		Name = "Lock Fps Cap",
		Value = false,
		Callback = function(value)
			if Lock == true then
				setfpscap(Fpscap)
			else
				setfpscap(120)
			end
		end
	})



	local WebHookLog = {}

	local AllRequest = http_request or request or HttpPost or syn.request
	function WebHookLog:WebHookKaiTanSend(WebHookUrl)

		function GetFightingStyle(Style)
			ReturnText = ""
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == Style then
						ReturnText = v.Name
					end
				end
			end
			for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == Style then
						ReturnText = v.Name
					end
				end
			end
			if ReturnText ~= "" then
				return ReturnText
			else
				return "Not Have"
			end
		end

		function GetAwaken()
			ReturnText = ""
			Awakened_Z = ":x:"
			Awakened_X = ":x:"
			Awakened_C = ":x:"
			Awakened_V = ":x:"
			Awakened_F = ":x:"
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Blox Fruit" then
						if v:FindFirstChild("AwakenedMoves") then
							if v.AwakenedMoves:FindFirstChild("Z") then
								Awakened_Z = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("X") then
								Awakened_X = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("C") then
								Awakened_C = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("V") then
								Awakened_V = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("F") then
								Awakened_F = ":white_check_mark:"
							end
							ReturnText = ":regional_indicator_z:"..Awakened_Z..
								"\n"..":regional_indicator_x:"..Awakened_X..
								"\n"..":regional_indicator_c:"..Awakened_C..
								"\n"..":regional_indicator_v:"..Awakened_V..
								"\n"..":regional_indicator_f:"..Awakened_F
						else
							ReturnText = "This Fruit Can't Awakened"
						end
					end
				end
			end
			for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Blox Fruit" then
						if v:FindFirstChild("AwakenedMoves") then
							if v.AwakenedMoves:FindFirstChild("Z") then
								Awakened_Z = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("X") then
								Awakened_X = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("C") then
								Awakened_C = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("V") then
								Awakened_V = ":white_check_mark:"
							end
							if v.AwakenedMoves:FindFirstChild("F") then
								Awakened_F = ":white_check_mark:"
							end
							ReturnText = ":regional_indicator_z:"..Awakened_Z..
								"\n"..":regional_indicator_x:"..Awakened_X..
								"\n"..":regional_indicator_c:"..Awakened_C..
								"\n"..":regional_indicator_v:"..Awakened_V..
								"\n"..":regional_indicator_f:"..Awakened_F
						else
							ReturnText = "This Fruit Can't Awakened"
						end
					end
				end
			end
			if ReturnText ~= "" then
				return ReturnText
			else
				return "Not Have"
			end
		end

		function GetWeapon(Rare)
			if Rare == "Common" then
				RareNumber = 0
			elseif Rare == "Uncommon" then
				RareNumber = 1
			elseif Rare == "Rare" then
				RareNumber = 2
			elseif Rare == "Legendary" then
				RareNumber = 3
			elseif Rare == "Mythical" then
				RareNumber = 4
			else
				return "Worng InPut"
			end
			local ReturnText = ""
			for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
				if type(v) == "table" then
					if v.Rarity then
						if tonumber(v.Rarity) == RareNumber then
							ReturnText = ReturnText .. v.Name .. "\n"
						end
					end
				end
			end
			if ReturnText ~= "" then
				return ReturnText
			else
				return "Not Have"
			end
		end

		function GetFruitInU()
			local ReturnText = ""
			for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
				if type(v) == "table" then
					if v ~= nil then
						ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
					end
				end
			end

			if ReturnText ~= "" then
				return ReturnText
			else
				return "Not Have"
			end
		end

		function GetAllMelee()
			BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
			if BuyDragonTalon then
				if BuyDragonTalon == 1 then
					TalComplete = true
				end
			end
			BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
			if BuySuperhuman then
				if BuySuperhuman == 1 then
					SupComplete = true
				end
			end
			BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
			if BuySharkmanKarate then
				if BuySharkmanKarate == 1 then
					SharkComplete = true
				end
			end
			BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
			if BuyDeathStep then
				if BuyDeathStep == 1 then
					DeathComplete = true
				end
			end
			BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
			if BuyElectricClaw then
				if BuyElectricClaw == 1 then
					EClawComplete = true
				end
			end
			BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
			if BuyGod then
				if BuyGod == 1 then
					GodComplete = true
				end
			end
			ReturnText = {}
			if SupComplete == true then
				table.insert(ReturnText,"SuperHuman")
			end
			if EClawComplete == true then
				table.insert(ReturnText,"\nElectric Claw")
			end
			if TalComplete == true then
				table.insert(ReturnText,"\nDragon Talon")
			end
			if SharkComplete == true then
				table.insert(ReturnText,"\nSharkman Karate")
			end
			if DeathComplete == true then
				table.insert(ReturnText,"\nDeath Step")
			end
			if GodComplete == true then
				table.insert(ReturnText,"\nGod Human")
			end

			if #ReturnText ~= 0 then
				return table.concat(ReturnText,",")
			else
				return "Not Have"
			end
		end

		local Embeds = {{
			["title"] = "Sulfurz Web Hook Stats**",
			["color"] = 1127128,
			["fields"] = {
				{
					["name"] = "User Name",
					["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
					["inline"] = true
				},
				{
					["name"] = "Level",
					["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
					["inline"] = true
				},
				{
					["name"] = "Fragments",
					["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
					["inline"] = true
				},
				{
					["name"] = "Bounty/Honor",
					["value"] = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),
					["inline"] = true
				},
				{
					["name"] = "Beli",
					["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
					["inline"] = true
				},
				{
					["name"] = "Fighting Style",
					["value"] = GetFightingStyle("Melee").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Melee")).Level.Value),
					["inline"] = true
				},
				{
					["name"] = "Sword",
					["value"] = GetFightingStyle("Sword").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Sword")).Level.Value) ,
					["inline"] = true
				},
				{
					["name"] = "Devil Fruit",
					["value"] = GetFightingStyle("Blox Fruit").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Blox Fruit")).Level.Value),
					["inline"] = true
				},
				{
					["name"] = "Gun",
					["value"] = GetFightingStyle("Gun").."\nMas : "..tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(GetFightingStyle("Gun")).Level.Value),
					["inline"] = true
				},
				{
					["name"] = "Accessory",
					["value"] = GetFightingStyle("Wear"),
					["inline"] = true
				},
				{
					["name"] = "Race",
					["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
					["inline"] = true
				},
				{
					["name"] = "Awakened",
					["value"] = tostring(GetAwaken()),
					["inline"] = true
				},
				{
					["name"] = "Status",
					["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
						"\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
						"\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
						"\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
						"\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
					["inline"] = true
				},
				{
					["name"] = "Common :blue_circle:",
					["value"] = "```sml\n"..tostring(GetWeapon("Common")).."```",
					["inline"] = true
				},
				{
					["name"] = "Uncommon :green_circle:",
					["value"] = "```sml\n"..tostring(GetWeapon("Uncommon")).."```",
					["inline"] = true
				},
				{
					["name"] = "Rare :yellow_circle:",
					["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
					["inline"] = true
				},
				{
					["name"] = "Legendary :purple_circle:",
					["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
					["inline"] = true
				},
				{
					["name"] = "Mythical :red_circle:",
					["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
					["inline"] = true
				},
				{
					["name"] = "Fruit In Inventory",
					["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
					["inline"] = true
				},
				{
					["name"] = "All Melee",
					["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
					["inline"] = true
				},



				{
					["name"] = "ㅤ",
					["value"] = tostring("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
					["inline"] = false
				}},
			["footer"] = {
				["text"] = "Made by ! Sulfurz".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
				["icon_url"] = "https://media.discordapp.net/attachments/991643580361867335/1036591759238627409/20221031_170501.jpg"
			},
		}}

		local Message
		if _G.SendWebHookPing then
			Message = {
				['username'] = "Sulfurz Hook",
				["avatar_url"] = "https://media.discordapp.net/attachments/991643580361867335/1036591759238627409/20221031_170501.jpg",
				["content"] = "@everyone",
				["embeds"] = Embeds,
			}
		else
			Message = {
				['username'] = "Sulfurz Hook",
				["avatar_url"] = "https://media.discordapp.net/attachments/991643580361867335/1036591759238627409/20221031_170501.jpg",
				["embeds"] = Embeds,
			}
		end

		local DataCallBack = AllRequest({
			Url = WebHookUrl,
			Method = 'POST',
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = game:GetService("HttpService"):JSONEncode(Message)
		})
		return DataCallBack
	end



	local Webhook = Page2:CreateSection({
		Name = "Web Hook", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	Webhook:AddTextBox({
		Name = "Link Web Hook",
		Value = Webhooklink,
		placeholder = "Web Hook Here",
		Callback = function(x)
			Webhooklink = x
		end
	})

	Webhook:AddButton({
		Name = "Send WebHook",
		Callback = function()
			WebHookLog:WebHookKaiTanSend(Webhooklink)
		end
	})

	local serv = Page2:CreateSection({
		Name = "Serv", -- ชื่อ
		Side = "Right" -- ตำแหน่ง Left/Right
	})

	serv:AddButton({
		Name = "Hop Server",
		Callback = function()
			print("Not Work Now")
		end
	})

	serv:AddButton({
		Name = "Sejoin Serv",
		Callback = function()
			local ts = game:GetService("TeleportService") local p = game.Players.LocalPlayer ts:Teleport(game.PlaceId, p)
		end
	})



	serv:AddToggle({
		Name = "Auto Rejoin",
		Value = _G.Settings.Misc['Auto Rejoin'],
		Callback = function(value)
			_G.Settings.Misc['Auto Rejoin'] = value
			SaveSettings()
		end
	})

	spawn(function()
		while wait() do
			if _G.Settings.Misc['Auto Rejoin'] then
				_G.Settings.Misc['Auto Rejoin'] = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						print("Dev | Rejoin!")
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				end)
			end
		end
	end)

	return library, library_flags, library.subs
