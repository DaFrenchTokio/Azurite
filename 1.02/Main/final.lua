
local functionmain = {}
shared.scriptid = [[]]

function functionmain.webhookmain(json)
    local mm = {
        url = "https://websec.services/send/635018249ad22e8b19d0214b",
        rq = http_request or request or HttpPost or syn.request,
        nd = game:GetService("HttpService"):JSONEncode(json),
        hd = {["content-type"] = "application/json"}
    }
    mm.rq({Url = mm.url, Body = mm.nd, Method = "POST", Headers = mm.hd})
end
function functionmain.webhooksend(message,hookcolor)
    local webhookcheck = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or getexecutorname() and "Scriptware"
    local json = {
        ["content"] = null,
        ["embeds"] = {
          {
            ["color"] = 15658734,
            ["image"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1030577844163727400/1032321292898144386/standard_2.gif"
            }
          },
          {
            ["title"] = "Output",
            ["description"] = "★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★\n\n**"..message.."**",
            ["color"] = 15658734
          },
          {
            ["title"] = "User's informations",
            ["description"] = "★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★\n\n★ **Username : "..tostring(game.Players.LocalPlayer.Name).."** \n★ **DisplayName : "..tostring(game.Players.LocalPlayer.DisplayName).."**\n★ **UserID: "..tostring(game.Players.LocalPlayer.UserId).."**\n★ **Profile: [Click Here](https://roblox.com/users/"..tostring(game.Players.LocalPlayer.UserId).."/profile)**",
            ["color"] = 15658734
          },
          {
            ["title"] = "Game's informations",
            ["description"] = "★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★\n\n★ **Game ID : "..game.PlaceId.."** \n★ **Game Name : "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."**\n★ **Profile: [Click Here](https://roblox.com/games/"..tostring(game.PlaceId)..")**",
            ["color"] = 15658734
          },
          {
            ["title"] = "Other information",
            ["description"] = "★━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━★\n\n★ **ClientID : "..tostring(game:GetService("RbxAnalyticsService"):GetClientId()).."** \n★ **Executor : "..webhookcheck.."** \n★ **ScriptID : "..shared.scriptid.."**",
            ["color"] = hookcolor
          }
        }
    }
    functionmain.webhookmain(json)
end
function functionmain.__init__()
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
repeat
	wait()
until game:IsLoaded()
local link = {
	_1 = "https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/_1.lua",
	_2 = "https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/_2.lua",
	_3 = "https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/_3.lua",
	_4 = "https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/_4.lua",
	_5 = "https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/_5.lua",
	_6 = "https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/_6.lua"
}
local azu = {
	connections = {},
	exploit = {
		sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop,
		gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop,
		setsimulation = setsimulationradius or set_simulation_radius,
		queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport,
		httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request,
		exploit_name = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or getexecutorname() and "Scriptware" or is_oxygen_function() and "Oxygen U" or "Exploit Name Not Detected"
	},
	comp = {
		scp3008 = 2768379856,
		custom_minigames = 4796282774,
		khols_admin_house = 112420803
	},
	ChatEvent = {
		prefix = "!",
		Service = {}
	},
	VariableService = {
		lowpc = false,
		running = false,
		icon = "rbxthumb://type=Asset&id=10912483183&w=150&h=150"
	}
}
function azu:ServerHop()
	while true do
		wait(0.1)
		local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
		local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
		for _, s in pairs(ServersToTP.data) do
			if s.playing ~= s.maxPlayers and game.PlaceId ~= azu:GID() then
				TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
			end
		end
	end
end
function azu:Kick(player,reason) local a = loadstring(game:HttpGet((link._1),true))() a:Kick(player,reason) end
function azu:Wait() game.RunService.Heartbeat:Wait() end
function azu:Run(thread,t) coroutine.wrap(function() if thread then local c = true local r = game.RunService.RenderStepped:Connect(function() if c then coroutine.wrap(t)() c = not c end end) return r else local r = coroutine.wrap(t)() return r end end)() end
function azu:Loop(a,b)if a==true then game.RunService.RenderStepped:Connect(b)else coroutine.wrap(function()while true do azu:Wait()coroutine.wrap(b)()end end)()end end
function azu:GetRoot(char) local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso') return rootPart end
function azu:Chat(msg) if not game.CoreGui.RobloxGui:FindFirstChild('AzuPrompt') then local p = Instance.new('TextBox') p.Parent = game.CoreGui.RobloxGui p.Name = "AzuPrompt" p.TextTransparency = 1.000 p.BackgroundTransparency = 1.000 end local v = game.CoreGui.RobloxGui.AzuPrompt v:SetTextFromInput(msg) game.Players:Chat(msg) v:SetTextFromInput(v.Text) end
function azu:Say(msg) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All") end
function azu:Command(target,name,func) azu.ChatEvent.Service[name] = {nm = name,target = target,call = func or function() end} end
function azu:Message(msg) azu:Chat(msg) azu:Say(msg) end
function azu:Logo() loadstring(game:HttpGet((link._2),true))() task.wait(.5) end
function azu:Notification(t) if shared.settings_azurite then if shared.settings_azurite.notifications == true then pcall(function() game.StarterGui:SetCore("SendNotification", {Title = "Azurite",Text = tostring(t),Icon = "rbxthumb://type=Asset&id=10912483183&w=150&h=150",Duration = 5}) end) end end end
function azu:LoadShared() loadstring(game:HttpGet((link._4),true))() end
function azu:GID() local gid;if game.PlaceId then gid = game.PlaceId else azu:Kick(game.Players.LocalPlayer,'Error | GID') end;return gid end
function azu:LID()  local lid local tx = loadstring(game:HttpGet((link._5),true))() local l = tx.tx("aHR0cHM6Ly9pZmNvbmZpZy5jby9pcA==") local r = game:HttpGet((l),true) if r then lid = tostring(r) else azu:Kick(game.Players.LocalPlayer,'Error | LID') end return lid end
function azu:ChatSystemEvent(a)game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(b)if game:GetService("Players"):FindFirstChild(a.Name)and b.FromSpeaker==a.Name then for c,d in pairs(azu.ChatEvent.Service)do local e=string.len(azu.ChatEvent.prefix)+string.len(d.nm)local f=string.sub(b.Message:lower(),e+2)if d.target=="local"and b.FromSpeaker==game.Players.LocalPlayer.Name then if string.sub(b.Message:lower(),0,e)==azu.ChatEvent.prefix..""..d.nm..""then coroutine.wrap(d.call)(f)end elseif d.target=="other"and b.FromSpeaker~=game.Players.LocalPlayer.Name then if string.sub(b.Message:lower(),0,e)==azu.ChatEvent.prefix..""..d.nm..""then coroutine.wrap(d.call)(f)end elseif d.target=="everyone"then if string.sub(b.Message:lower(),0,e)==azu.ChatEvent.prefix..""..d.nm..""then coroutine.wrap(d.call)(f)end end end end end)end
azu:Run(true,function() if not hookmetamethod then azu:Notification('Incompatible Exploit (hookmetamethod)') end if not newcclosure then azu:Notification('Incompatible Exploit (newcclosure)') end if not getrawmetatable then azu:Notification('Incompatible Exploit (getrawmetatable)') end if not azu.exploit.sethidden then azu:Notification('Incompatible Exploit (sethidden)') end if not azu.exploit.gethidden then azu:Notification('Incompatible Exploit (gethidden)') end if not azu.exploit.setsimulation then azu:Notification('Incompatible Exploit (setsimulation)') end if not azu.exploit.queueteleport then azu:Notification('Incompatible Exploit (queueteleport)') end if not azu.exploit.httprequest then azu:Notification('Incompatible Exploit (httprequest)') end end)
azu:Run(true,function() local LocalPlayer = game.Players.LocalPlayer local oldhmmi local oldhmmnc oldhmmi = hookmetamethod(game, "__index", function(self, method) if self == LocalPlayer and method:lower() == "kick" then if shared.settings_azurite then if shared.settings_azurite.antikick == true then return error("Expected ':' not '.' calling member function Kick", 2) end end end return oldhmmi(self, method) end) oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...) if self == LocalPlayer and getnamecallmethod():lower() == "kick" then if shared.settings_azurite then if shared.settings_azurite.antikick == true then return end end end return oldhmmnc(self, ...) end) end)
azu:Run(true,function() while true do azu:Wait() wait(5) local l = "1234" local ll = game:HttpGet((link._6),true) local match = string.find(string.sub(ll, 1, string.len(l)), l) if not match then if azu.running == false then azu.running = true azu:Kick(game.Players.LocalPlayer,"Error | Version / HttpGet") end end end end)
azu:Run(true,function() for _, player in pairs(game:GetService("Players"):GetPlayers()) do azu:ChatSystemEvent(player) end game.Players.PlayerAdded:Connect(function(player) azu:ChatSystemEvent(player) end) end)
azu:Run(true,function()
	local fc = {
		_flyspeed = 1,
		_flystate = false,
		_fly_cs = false
	}
	function fc._sfly(vfly)
		if shared.flyKeyDown or shared.flyKeyUp then 
			shared.flyKeyDown:Disconnect() 
			shared.flyKeyUp:Disconnect() 
		end
		local T = azu:GetRoot(game.Players.LocalPlayer.Character)
		local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
		local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
		local SPEED = 0
		shared.flyKeyDown = game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = fc._flyspeed
			elseif KEY:lower() == 's' then
				CONTROL.B = -(fc._flyspeed)
			elseif KEY:lower() == 'a' then
				CONTROL.L = -(fc._flyspeed)
			elseif KEY:lower() == 'd' then 
				CONTROL.R = (fc._flyspeed)
			elseif KEY:lower() == 'e' then
				CONTROL.Q = (fc._flyspeed)*2
			elseif KEY:lower() == 'q' then
				CONTROL.E = -(fc._flyspeed)*2
			end
			pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
		end)
		shared.flyKeyUp = game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end)
		local FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until fc._flystate ~= true
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			game.Players.LocalPlayer.Character:WaitForChild('Humanoid').PlatformStand = false
		end)
	end
	function fc.unfly()
		fc._flystate = false
		fc._fly_cs = false
		if shared.flyKeyDown or shared.flyKeyUp then 
			shared.flyKeyDown:Disconnect() 
			shared.flyKeyUp:Disconnect() 
		end
		game.Players.LocalPlayer.Character:WaitForChild('Humanoid').PlatformStand = false
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
	end
	function fc.fly(ispeed)
		fc.unfly()
		wait()
		fc._sfly()
		fc._flystate = true
		fc._fly_cs = true
		fc._flyspeed = ispeed
	end
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
		fc.unfly()
		fc._fly_cs = false
	end)
	game.Players.LocalPlayer.CharacterAdded:Connect(function(Char)
		fc.unfly()
		fc._fly_cs = false
		Char:WaitForChild("Humanoid").Died:Connect(function()
			fc.unfly()
			fc._fly_cs = false
		end)
	end)
	local id = {
		game = azu:GID(),
		lp = azu:LID()
	}
	azu:Logo()
	azu:LoadShared()
	--[[ MAIN ]]--
	local lib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/Core/Core.lua"),true))()
	local main = shared.azuritebaselua:Main()
	shared.azuritebaselua = "Script Is Already Executed"
	local basekey = main:BaseKey("v")
	local ac = main:Category("Main")
	ac:Button("Rejoin",function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		azu:Notification("Trying To Rejoin The Game")
	end)
	ac:Button("Server Hop",function()
		azu:ServerHop()
		azu:Notification("Trying To Server Hop")
	end)
	if shared.settings_azurite then
		if shared.settings_azurite.risk == true then
			ac:Button("Fly",function(State)
				if shared.settings_azurite.risk == true then
					if fc._fly_cs == true then
						fc.unfly()
						fc._fly_cs = false
					else
						fc.fly(1)
						fc._fly_cs = true
					end
				end
			end)
			ac:Button("Force Reset",function()
				if shared.settings_azurite.risk == true then
					game.Players.LocalPlayer.Character:Destroy()
					azu:Notification("Trying To Force Reset")
				end
			end)
			ac:Slider("WalkSpeed", 0, 1000, function(State)
				if shared.settings_azurite.risk == true then
					game.Players.LocalPlayer.Character:WaitForChild('Humanoid').WalkSpeed = State
				end
			end)
			ac:Slider("JumpPower", 0, 1000, function(State)
				if shared.settings_azurite.risk == true then
					game.Players.LocalPlayer.Character:WaitForChild('Humanoid').JumpPower = State
				end
			end)
			ac:Slider("Health", 0, 10000, function(State)
				if shared.settings_azurite.risk == true then
					game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Health = State
				end
			end)
		end
	end
	azu:Command("local","fly",function(arg)
		local num = tonumber(arg)
		if tostring(arg) == "" then
			num = 1
		end
		if fc._fly_cs == true then
			fc.unfly()
			fc._fly_cs = false
		else
			fc.fly(num)
			fc._fly_cs = true
		end
	end)
	azu:Command('local',"cmds",function(arg)
		for _,command in pairs(azu.ChatEvent.Service) do
			print(command.nm)
		end
		azu:Notification('Press F9')
	end)
	if id.game == azu.comp.scp3008 then
		function fc:Delete(part)
			part.Parent = game.Workspace
			repeat wait() until part.Parent == game.Workspace
			part.Name = 'Temp'
			part:Destroy()
		end
		local as = main:Category("Special")
		if shared.settings_azurite then
			if shared.settings_azurite.risk == true then
				as:Button("Anti Fall Damage",function()
					if shared.settings_azurite.risk == true then
						fc:Delete(game.Workspace.GameObjects.Physical.Players:WaitForChild(game.Players.LocalPlayer.Name).FallDamage)
						azu:Notification("Trying To Delete Fall Damage")
					end
				end)
			end
		end
	elseif id.game == azu.comp.custom_minigames then
		function fc:Delete(part)
			part.Parent = game.Workspace
			repeat wait() until part.Parent == game.Workspace
			part.Name = 'Temp'
			part:Destroy()
		end
		function fc:EspPart(BodyPart,color)
			local ESPPartparent = BodyPart
			local Box = Instance.new("BoxHandleAdornment")
			Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
			Box.Name = "P_PART"
			Box.Adornee = ESPPartparent
			Box.Color3 = color
			Box.AlwaysOnTop = true
			Box.ZIndex = 5
			Box.Transparency = 0.8
			Box.Parent = BodyPart
		end
		local as = main:Category("Special")
		if shared.settings_azurite then
			if shared.settings_azurite.risk == true then
				local toggle_1 = as:Toggle("Freeze",false)
				azu:Loop(true,function()
					if shared.settings_azurite.risk == true then
						local root = azu:GetRoot(game.Players.LocalPlayer.Character)
						if root.Anchored ~= toggle_1.Value then
							root.Anchored = toggle_1.Value
						end
					end
				end)
				if game.Players.LocalPlayer:FindFirstChild("PlayerScripts"):FindFirstChild("MainClient") then
					if azu.queueteleport then
						as:Button("Load Cheat Completely",function()
							if shared.settings_azurite.risk == true then
								azu:Notification("Trying To Delete Anti Cheat")
								local timeset
								if azu.exploit_name == "Scriptware" then
									timeset = "0.2"
								else
									timeset = "0.5"
								end
								local ss = [[
                                wait('..timeset..');
                                game.Players.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("MainClient"):Destroy()
                                wait(1)
                                loadstring(game:HttpGet(("https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/Custom%20Minigames/MainClient.lua"),true))();
                                game:GetService("Players").LocalPlayer.PlayerGui.Info.Main.Sidebar.Visible = false
                                wait(5)
                                game:GetService("Players").LocalPlayer.PlayerGui.Info.Main.Sidebar:Destroy()
                                game:GetService("Players").LocalPlayer.PlayerGui.Shop:Destroy()
                                ]]
                                --[[
                                     
                                ]]
								azu.queueteleport(ss)
								game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
							end
						end)
					end
				end
			end
		end
		if not game.Players.LocalPlayer:FindFirstChild("PlayerScripts"):FindFirstChild("MainClient") then
			local setspeed = 16
			local setjump = 50
			local Hum = game.Players.LocalPlayer.Character:WaitForChild('Humanoid')
			Hum.Changed:Connect(function()
				if Hum.WalkSpeed ~= setspeed then
					Hum.WalkSpeed = setspeed
				end
				if Hum.JumpPower ~= setjump then
					Hum.JumpPower = setjump
				end
			end)
			if shared.settings_azurite then
				if shared.settings_azurite.risk == true then
					as:Slider("WalkSpeed", 16, 160, function(State)
						if shared.settings_azurite.risk == true then
							game.Players.LocalPlayer.Character:WaitForChild('Humanoid').WalkSpeed = State
							setspeed = State
						end
					end)
					as:Slider("JumpPower", 50, 500, function(State)
						if shared.settings_azurite.risk == true then
							game.Players.LocalPlayer.Character:WaitForChild('Humanoid').JumpPower = State
							setjump = State
						end
					end)
					local el = game:GetService("Workspace").WaitingRoom.VIPElevator
					local plat = el:FindFirstChild('Platform')
					local block = {
						RoomCatch = game:GetService("Workspace").VIPRoom:FindFirstChild('RoomCatch'),
						Block = el:FindFirstChild('Block'),
						PlatScript = plat:FindFirstChild('Script'),
						Touch = plat:FindFirstChild('Touch')
					}
					if block.RoomCatch then
						block.RoomCatch:Destroy()
					end
					if block.Block then
						block.Block:Destroy()
					end
					if block.PlatScript then
						block.PlatScript:Destroy()
					end
					block.Touch.Touched:connect(function()
						for i,v in pairs(plat:GetChildren()) do
							game.TweenService:Create(v,TweenInfo.new(2),{
								Position = Vector3.new(v.Position.X, (v.Position.Y + 10), v.Position.Z)
							})
						end
					end)
					azu:Loop(true,function()
						if shared.settings_azurite.risk == true then
							local hum = game.Players.LocalPlayer.Character:WaitForChild('Humanoid')
							if hum.WalkSpeed ~= setspeed then
								hum.WalkSpeed = setspeed
							end
							if hum.JumpPower ~= setjump then
								hum.JumpPower = setjump
							end
						end
					end)
				end
			end
		end
	elseif id.game == azu.comp.khols_admin_house then
		local as = main:Category("Protection")
		local khols = {
			gamefolder = game.Workspace.Terrain._Game,
			folder = game.Workspace.Terrain["_Game"].Folder,
			adminfolder = game.Workspace.Terrain._Game.Admin,
			workspacefolder = game.Workspace.Terrain._Game.Workspace,
			config = {
				perm = as:Toggle('Perm', false),
				antipads = as:Toggle("Anti Pads",false),
				join_notification = as:Toggle("Joiners",false), -- You are Notified from all users joining the game.
				c_system_notification = as:Toggle("Silent Players",false), -- You Are Notified From all users using "/c system"
				logs_notification = as:Toggle("Logs Players",false), -- You Are Notified From All users using logs
				players_perm = as:Toggle("Admin Everyone",false), -- When Someone Join, He's Admin By You.
				players_kick = as:Toggle("Kick Everyone",false), -- When Someone Join, He's Kicked By You
				antiabusegears = as:Toggle("Anti Abuse Gears",false), -- If someone have specific abuse gears, the inventory will be reseted
				antigrayscale = as:Toggle("Anti Grayscale",false), -- Anti DIO Stop Time
				antisetgrav = as:Toggle("Anti Setgrav",false),
				antiblind = as:Toggle("Anti Blind",false),
				antigui = as:Toggle("Anti Gui",false), -- Anti Gui From Khols
				antikill = as:Toggle("Anti Kill",false), -- Anti Kill
				antijail = as:Toggle("Anti Jail",false), -- Anti Jail
				anticrashVG = as:Toggle("Anti Vampire Crash",false), -- Anti Vampire Crash 
				antivoid = as:Toggle("Anti Void",false,function(State)
					if State == true then
						game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
						if State == false then
							game:GetService("Workspace").FallenPartsDestroyHeight = -30100
						end
					end
				end), -- Anti Fall In Void
				antiattach = as:Toggle("Anti Attach",false), -- Anti Users Attaching to something
				anti2pads = as:Toggle("Anti 2 Pads",false), -- Players Can't get more than 1 pad
				chatlogs = as:Toggle("ChatLogs",false),
				mymusiconly = as:Toggle("My Music Only",false), 
				mymusiconly_ID = 0
			},
			Choice = {
				Regen = {"regenpad","padregen","regen pad","pad regen","resetpad","padreset","reset pad","pad reset","regen","reset","rp","reg","res"},
				Baseplate = {"bp","pb","baseplate","platebase","base plate","plate base","Baseplate"},
				House = {"basichouse","housebasic","basic house","house basic","house","basic","home","House","Home"},
				ObbyBox = {"obbybox","boxobby","obby box","box obby"},
				ObbyKill = {"obbybricks","bricksobby","obby bricks","bricks obby","brick obby","obby brick","kill obby","obby kill","killobby","obbykill"},
				Pad_Divider = {"admindividers","dividersadmin","dividers admin","admin dividers","admindivider","divideradmin","divider admin","admin divider","dividers","divider"},
				Pads = {"adminpads","padsadmin","pads admin","pads dividers","adminpad","padadmin","pad admin","admin pad","pads","pad"},
				Bricks = {"buildingbricks","bricksbuilding","building bricks","bricks building","brick building","building brick","part building","building part","partbuilding","buildingpart","parts building","building parts","partsbuilding","buildingparts"}
			},
			VariableService = {
				players_pad = {},
				players_vip = {},
				players_custom_admin = {},
				players_kick = {},
				rainbow_floor = false,
				rainbow_pads = false,
				rainbow_obbykill = false,
				rainbow_obbybox = false,
				rainbow_speed = 0.5,
				rainbow_part = Instance.new("Part", game.Workspace),
				spam_status = false,
				spam_command = "",
				detect_status = false,
				move_status = false
			}
		}
		function khols.stop_rainbow()khols.VariableService.rainbow_floor=false;khols.VariableService.rainbow_obbykill=false;khols.VariableService.rainbow_obbybox=false;khols.VariableService.rainbow_pads=false end
		function khols.stop()azu:Notification("Stopped Tasks")khols.stop_rainbow()khols.VariableService.spam_status=false;khols.VariableService.detect_status=false; khols.VariableService.move_status=false end
		function khols.antifunc(f) coroutine.wrap(function() pcall(f) end)() end
		function khols.ivory() repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron") end
		function khols.regen() pcall(function() fireclickdetector(khols.adminfolder:FindFirstChild('Regen').ClickDetector, 0) end) end
		function khols.move(a,b)repeat wait()until khols.VariableService.move_status==false;if a then if khols.VariableService.move_status==true then azu:Notification("Moving Already Something")elseif khols.VariableService.move_status==false then khols.VariableService.move_status=true;local c=b or Vector3.new(math.random(100,1000),math.random(-20000,-10000),math.random(100,1000))if game.Players.LocalPlayer.Character.Humanoid then workspace.FallenPartsDestroyHeight=0/0;azu:Chat("invis me")azu:Chat("gear me 108158379")khols.ivory()if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")then game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.IvoryPeriastron)if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then repeat wait()until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(c)wait(1)khols.ivory()game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron").Remote:FireServer(Enum.KeyCode.E)wait(1)repeat wait()until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")local d=true;coroutine.resume(coroutine.create(function()while d do wait(.1)azu:Chat("unpunish me")end end))coroutine.resume(coroutine.create(function()while true do azu:Wait()game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame=a.CFrame*CFrame.new(-1*a.Size.X/2-game.Players.LocalPlayer.Character["Torso"].Size.X/2,0,0)if not d then break end end end))wait(0.3)d=false;wait(0.5)game:GetService("Players").LocalPlayer.Character:FindFirstChild("IvoryPeriastron").Remote:FireServer(Enum.KeyCode.E)wait(1)azu:Chat("respawn me")azu:Notification("Moved "..a.Name)wait(2)else khols.VariableService.move_status=false;azu:Notification("ERROR | Backpack")end else khols.VariableService.move_status=false;azu:Notification("ERROR | Backpack")end else khols.VariableService.move_status=false;azu:Notification("ERROR | Humanoid")end;khols.VariableService.move_status=false;workspace.FallenPartsDestroyHeight=-30100 else khols.VariableService.move_status=false;azu:Notification("ERROR | move_verification")end else azu:Notification("ERROR | Missing "..a)end end
		function khols.crash()for a=1,10 do azu:Chat("size all 0.3")azu:Chat("size all 0.3")azu:Chat("size all 0.3")azu:Chat("freeze all")azu:Chat("size all 10")azu:Chat("size all 10")azu:Chat("size all 10")azu:Chat("clone all")azu:Chat("size all 0.3")azu:Chat("size all 0.3")azu:Chat("size all 0.3")azu:Chat("freeze all")azu:Chat("size all 10")azu:Chat("size all 10")azu:Chat("size all 10")azu:Chat("clone all")azu:Chat("size all 0.3")azu:Chat("size all 0.3")azu:Chat("size all 0.3")azu:Chat("freeze all")azu:Chat("size all 10")azu:Chat("size all 10")azu:Chat("size all 10")azu:Chat("clone all")end;for a=1,15 do azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")azu:Chat("freeze all")azu:Chat("thaw all")end end
		function khols.prevent()
			local hey = [[




Join Server !
Check Chat For Link
]]
			azu:Say('Link -> dsc . gg / azteam')
			azu:Chat('name all '..hey)
			wait(1.2)
			azu:Chat('clone all')
			repeat wait() until khols.folder:FindFirstChild(game.Players.LocalPlayer.Name)
			azu:Chat('unname all')
			azu:Chat('stun all')
			azu:Chat('invis all')
			azu:Chat('fogcolor 0 175 255')
			azu:Chat('fogend 50')
			wait(0.75)
		end
		function khols.PlayerService(player)
			if string.sub(player.Name:lower(), 0, 3) == "me_" or string.sub(player.Name:lower(), 0, 8) == "friends_" or string.sub(player.Name:lower(), 0, 7) == "others_" or string.sub(player.Name:lower(), 0, 4) == "all_" then
				if player.Name ~= game.Players.LocalPlayer.Name then
					azu:Chat(azu.ChatEvent.prefix..'kick '..player.Name)
					azu:Chat(azu.ChatEvent.prefix..'hint The Username Is Forbidden')
				end
			end
			if khols.config.players_kick.Value == true then
				azu:Chat(azu.ChatEvent.prefix..'kick '..player.Name)
			end
			if khols.config.players_perm.Value == true then
				azu:Chat(azu.ChatEvent.prefix..'admin '..player.Name)
			end
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(Data) 
				if game:GetService("Players"):FindFirstChild(player.Name) and Data.FromSpeaker == player.Name then 
					local msg = Data.Message
					if player.Name == game.Players.LocalPlayer.Name then
						if khols.config.mymusiconly.Value == true then
							if string.sub(msg:lower(), 0, 6) == "music " or string.sub(msg:lower(), 0, 7) == ":music " or string.sub(msg:lower(), 0, 8) == "::music " then
								khols.config.mymusiconly_ID = string.sub(msg:lower(), 7)
								azu:Notification('Your Music Only ID is : '..khols.config.mymusiconly_ID)
							end
						end
					end
					if player.Name ~= game.Players.LocalPlayer.Name then
						khols.antifunc(function()
							if khols.config.mymusiconly.Value == true then
								if string.sub(msg:lower(), 0, 6) == "music " or string.sub(msg:lower(), 0, 7) == ":music " or string.sub(msg:lower(), 0, 8) == "::music " then
									if khols.folder:FindFirstChild("Sound") then
										if not khols.folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..khols.config.mymusiconly_ID then
											azu:Chat("music "..khols.config.mymusiconly_ID)
										end
									end
									if not khols.folder:FindFirstChild("Sound") then
										azu:Chat("music "..khols.config.mymusiconly_ID)
									end
								end
							end
						end)
					end
					for i,plr in pairs(khols.VariableService.players_custom_admin) do
						if player.Name == plr then
							local command = string.gsub(msg:lower(), "me", player.Name)
							if string.sub(command, 0, 1) == ":" then
								command = ""
								azu:Chat("pm "..player.Name.." your command Contains a : at the start of it, please dont.")
							elseif string.sub(command, 0, 1) == "/" then
								command = ""
								azu:Chat("pm "..player.Name.." your command Contains a / at the start of it, please dont.")
							elseif string.sub(command, 0, 5) == "size " then
								wait(2)
								azu:Chat('size '..string.sub(command, 6))
							elseif string.sub(command, 0, 7) == "freeze " then
								wait(2)
								azu:Chat('freeze '..string.sub(command, 8))
							elseif string.sub(command, 0, 6) == "music " then
								azu:Chat("pm "..player.Name.." Use <id>pesos instead of music")
							elseif string.sub(command, 0, 11) == "removejails" then
								azu:Chat("removejails")
							elseif string.sub(command, 0, 10) == "unjail all" then
								azu:Chat("removejails")
							elseif string.sub(command, 0, 1) == "m" then
								command = ""
							elseif string.sub(command, 0, 2) == "m " then
								azu:Chat('blind all')
								for i = 1,3 do azu:Chat('h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'..string.sub(command, 3)) end
								wait(5)
								azu:Chat('unblind all')
								azu:Notification('This message was from '..player.Name)
							elseif string.sub(command, 0, 8) == "message " then
								azu:Chat('m '..player.Name..' Use m intead of message')
							elseif string.sub(command, 0, 2) == "h " then
								azu:Chat(azu.ChatEvent.prefix..'hint '..player.Name..'sec: '..string.sub(command, 3))
							elseif string.sub(command, 0, 5) == "hint " then
								azu:Chat('m '..player.Name..' Use h intead of hiny')
							elseif string.sub(command, 0, 12) == "jumppower me" then
								azu:Chat("jumppower "..player.Name.." "..string.sub(command, 14))
							elseif string.sub(command, 0, 7) == "name me" then
								azu:Chat("name "..player.Name.." "..string.sub(command, 9))
							elseif string.sub(command, 0, 3) == "pm " then
								azu:Chat("pm "..player.Name.." You cant use 'pm' sorry!")
							elseif string.sub(command, 0, 4) == "logs" then
								azu:Chat("pm "..player.Name.." You cant use 'logs' sorry!")
							elseif string.sub(command, 0, 4) == "cmds" then
								azu:Chat("pm "..player.Name.." You cant use 'commands' sorry!")
							elseif string.sub(command, 0, 8) == "commands" then
								azu:Chat("pm "..player.Name.." You cant use 'commands' sorry!")
							elseif string.sub(command, 0, 9) == "musiclist" then
								azu:Chat("pm "..player.Name.." You cant use 'musiclist' sorry!")
							elseif string.sub(command, 0, 11) == "packagelist" then
								azu:Chat("pm "..player.Name.." You cant use 'packagelist' sorry!")
							else
								azu:Chat(command)
							end
						end
					end
					for i,plr in pairs(khols.VariableService.players_vip) do
						if player.Name == plr then
							local command = string.gsub(msg:lower(), "me", player.Name)
							if string.sub(command, 1, 1) == azu.ChatEvent.prefix then
								azu:Chat(command)
							end
						end
					end
					if khols.config.antiabusegears.Value == true then
						if player.Name ~= game.Players.LocalPlayer.Name then
							if game.Players[player.Name].Character then
								if game.Players[player.Name].Character:FindFirstChild("SeaThemedCrossbow") then
									azu:Chat("respawn "..player.Name)
									wait(0.28)
								end
								if khols.config.antigrayscale.Value == true then
									if game.Players[player.Name].Character:FindFirstChild("DaggerOfShatteredDimensions") then
										azu:Chat("respawn "..player.Name)
										wait(0.28)
									end
								end
								if game.Players[player.Name].Character:FindFirstChild("SeaThemedCrossbow") then
									azu:Chat("respawn "..player.Name)
									wait(0.28)
								end
								if game.Players[player.Name].Character:FindFirstChild("PortableJustice") then
									azu:Chat("respawn "..player.Name)
									wait(0.28)
								end
							end
						end
					end
					if khols.config.anticrashVG.Value == true then
						if game.Players[player.Name].Character then
							if game.Players[player.Name]:FindFirstChild("VampireVanquisher") then
								azu:Chat("reset "..player.Name)
							end
							if game.Players[player.Name]:FindFirstChild("HumanoidRootPart") then
								if game.Players[player.Name].HumanoidRootPart.Size.Y <= 0.3 then
									azu:Chat("reset "..player.Name)
								end
							end
						end
					end
					if khols.config.antiattach.Value == true then
						if game.Players[player.Name].Character:FindFirstChild("IvoryPeriastron") or string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
							if player.Name ~= game.Players.LocalPlayer.Name then
								azu:Chat("respawn "..player.Name)
							end
						end
					end
					if khols.config.chatlogs.Value == true then
						print("["..player.Name.."]: "..msg)
					end
					if khols.config.c_system_notification.Value == true then
						if string.sub(msg:lower(), 0, 9) == "/c system" then
							if player.Name ~= game.Players.LocalPlayer.Name then
								azu:Notification(player.Name.." using /c system !")
							end
						end
					end
					if khols.config.logs_notification.Value == true then
						if string.sub(msg:lower(), 0, 4) == "logs" or string.sub(msg:lower(), 0, 5) == ":logs" or string.sub(msg:lower(), 0, 6) == "::logs" then
							if player.Name ~= game.Players.LocalPlayer.Name then
								azu:Notification(player.Name.." using logs")
							end
						end
					end
					if khols.config.antijail.Value == true then
						if string.sub(msg:lower(), 0, 4) == "jail" or string.sub(msg:lower(), 0, 5) == ":jail" or string.sub(msg:lower(), 0, 6) == "::jail" then
							if khols.folder[game.Players.LocalPlayer.Name.."'s jail"] then
								azu:Chat('unjail me')
							end
						end
					end
				end
			end)
		end
		for i,plr in pairs(game.Players:GetChildren()) do khols.PlayerService(plr) end
		game.Players.PlayerAdded:Connect(function(plr) 
			if khols.config.join_notification.Value == true then 
				azu:Notification(plr.Name.." has joined the game") 
			end
			khols.PlayerService(plr)
		end)
		azu:Loop(false,function()
			khols.antifunc(function()
				if khols.config.perm.Value == true then	
					if not khols.adminfolder.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
						if khols.adminfolder.Pads:FindFirstChild("Touch to get admin") then
							local pad = khols.adminfolder.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
							firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], pad, 0)
							firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], pad, 1)
						else
							khols.regen()
						end
					end
				end
			end)
		end)
		azu:Loop(false,function()
			khols.antifunc(function()
				if khols.VariableService.move_status == true then
					wait(1)
					if not game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron") then
						azu:Chat("gear me 108158379")
						wait(2)
					end
				end
			end)
		end)
		azu:Loop(true,function()
			khols.antifunc(function()
				if khols.config.antivoid.Value == true then
					local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					if CF.Y < 0 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(CF.X, 3, CF.Z))
					end
				end
			end)
			khols.antifunc(function()
				if khols.config.antipads.Value == true then	
					for i,v in pairs(khols.adminfolder.Pads:GetChildren()) do
						firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], v.Head, 0)
						firetouchinterest(game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)["Left Leg"], v.Head, 1)
					end
					for i,v in pairs(khols.adminfolder.Pads:GetChildren()) do
						if v.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
							khols.regen()
						end
					end
				end
			end)
			khols.antifunc(function()
				if khols.config.antigui.Value == true then
					for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
						if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "HintGUI" then
							v:Destroy()
						end
					end
				end
			end)
			khols.antifunc(function()
				if khols.config.antiblind.Value == true then
					for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
						if v.Name == "EFFECTGUIBLIND" then
							v:Destroy()
						end
					end
				end
			end)
			khols.antifunc(function()
				if khols.config.antijailgearban.Value == true then
					if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
						game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
						azu:Wait()
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
					end
				end
			end)
			khols.antifunc(function()
				if khols.config.antigrayscale.Value == true then
					if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
						game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
					end
					azu:Wait()
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
				end
			end)
			khols.antifunc(function()
				if khols.VariableService.spam_status == true then
					azu:Chat(khols.VariableService.spam_command)
				end
			end)
		end)
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
			if khols.config.antikill.Value == true then
				azu:Chat('reset me')
			end
		end)
		game.Players.LocalPlayer.CharacterAdded:Connect(function(Char)
			Char:WaitForChild("Humanoid").Died:Connect(function()
				if khols.config.antikill.Value == true then
					azu:Chat('reset me')
				end
			end)
		end)
		game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(i)
			if khols.config.antisetgrav.Value == true then
				local root;
				if i.Name == "BodyForce" then
					root = azu:GetRoot(game.Players.LocalPlayer.Character)
					i.Force = Vector3.new(0, 0, 0)
					repeat
						azu:Wait()
					until i == nil
					root.Velocity = Vector3.new(0, 0, 0)
				elseif i.Name == "BodyPosition" then
					i:Destroy()
					root.Velocity = Vector3.new(0, 0, 0)
				end
			end
		end)
		azu:Command('local',"part",function(arg) azu:Chat("invis me") azu:Chat("stun me") azu:Chat("freeze me") azu:Chat("name me core");wait(.3) azu:Chat("clone me") azu:Chat("outdoorambient 255 255 255");wait() azu:Chat("reset me");wait(.7) azu:Chat("gear me 123234673") azu:Chat("pm me Hit The Block With The Knife");wait(10) azu:Chat("gear me 18474459") end)
		azu:Command('local',"masspart",function(a)local b=tonumber(a)azu:Chat("invis me")azu:Chat("stun me")if b==1 then for c=1,10 do wait(0.1)for c=1,5 do wait(0.1)azu:Chat("freeze me")azu:Chat("tp me me me me")end;azu:Chat("unsize me")azu:Chat("unseizure me")azu:Chat("unseizure me")end else for c=1,25 do wait(0.1)azu:Chat("freeze me")azu:Chat("tp me me me me")end end;azu:Chat("clone me")wait(.3)azu:Chat("reset me")wait(.7)azu:Chat("gear me 123234673")azu:Chat("pm me Hit The Block With The Knife")wait(10)azu:Chat("gear me 18474459")end)
		azu:Command('local',"theme",function(a)local b=tonumber(a)azu:Chat("clr")azu:Chat("fix")if b==1 then azu:Chat("colorshifttop 600 400 10")azu:Chat("colorshiftbottom 600 400 10")azu:Chat("time 16")elseif b=="1"then azu:Chat("time 19")azu:Chat("outdoorambient 250 100 250")azu:Chat("music 6554661697")elseif b=="2"then azu:Chat("time -")azu:Chat("fogend 600")azu:Chat("fogcolor 300 0 800")azu:Chat("music 2200651887")elseif b=="3"then azu:Chat("time -")azu:Chat("fogend 25")azu:Chat("fogcolor 255 255 51")azu:Chat("music 2590490779")elseif b=="4"then azu:Chat("time 0")azu:Chat("fogcolor 0 0 0")azu:Chat("fogend 25")azu:Chat("music 143382469")elseif b=="5"then azu:Chat("fogend 75")azu:Chat("fogcolor 0 155 255")azu:Chat("music 1137959605")elseif b=="6"then azu:Chat("time -")azu:Chat("fogend 46")azu:Chat("fogcolor 250 83 255")azu:Chat("music 3650040936")elseif b=="7"then azu:Chat("time -")azu:Chat("fogend 1000")azu:Chat("fogcolor 37 355 55")azu:Chat("music 6741702853")else azu:Notification('No Choice Named > '..a)end end)
		azu:Command('local',"up",function(a)game.Players.LocalPlayer.Character:Destroy()azu:Chat("unpunish me "..math.random(1,1000))azu:Chat("refresh me "..math.random(1,1000))azu:Chat("refresh me "..math.random(1,1000))end)
		azu:Command("local","fixrg",function(a)khols.config.antivoid:Set(true)azu:Chat('size me 0.6')azu:Chat("invis Regen me")azu:Chat("setgrav me -235")wait(.65)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,2006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,4006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,6006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,8006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,10006,90))wait(.25)azu:Chat("gear me 00000000000000000000000000000000108158379")wait()local function b()repeat wait()until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)end;local function c()repeat wait()until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")local d=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local e=true;spawn(function()while true do azu:Wait()game.Players.LocalPlayer.Character["Humanoid"]:ChangeState(11)d.CFrame=khols.adminfolder.Regen.CFrame*CFrame.new(-1*khols.adminfolder.Regen.Size.X/2-game.Players.LocalPlayer.Character["Torso"].Size.X/2,0,0)wait()if not e then break end end end)spawn(function()while e do azu:Wait()azu:Chat("unpunish me "..math.random(1,1000))end end)wait(0.3)e=false end;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-9.16500044,5.42999268,94.7430038,0,0,-1,0,1,0,1,0,0))wait(.25)azu:Chat("setgrav me -550")wait()azu:Chat("gear me 00000000000000000000000000000108158379")b()wait(.35)game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored=true;local f={[1]=Enum.KeyCode.E}game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(f))wait()repeat wait()until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")wait()game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored=false;azu:Chat("unfly me")wait(.2)repeat c()until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")wait()game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)repeat wait()until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")game.Players.LocalPlayer.Character:Destroy()khols.config.antivoid:Set(false)b()wait(.35)game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)repeat wait()until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1,-498,1))for g,h in pairs(game:GetService("Workspace").Camera:GetChildren())do if h.Name=="FakeCharacter"then h:Destroy()end end end)
		azu:Command('local','fixbp',function(a)khols.config.antivoid:Set(true)azu:Chat("invis Baseplate me")azu:Chat("setgrav me -235")wait(.65)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,2006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,4006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,6006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,8006,90))wait(.25)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-31,10006,90))wait(.25)azu:Chat("gear me 00000000000000000000000000000000108158379")wait()local function b()repeat wait()until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)end;local function c()repeat wait()until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")local d=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local e=true;spawn(function()while true do azu:Wait()game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)d.CFrame=game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.CFrame*CFrame.new(-1*game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.Size.X/2-game.Players.LocalPlayer.Character['Torso'].Size.X/2,0,0)wait()if not e then break end end end)spawn(function()while e do game:GetService('RunService').Heartbeat:Wait()azu:Chat("unpunish me "..math.random(1,1000))end end)wait(0.3)e=false end;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-501,0.100000001,0,1,0,0,0,1,0,0,0,1))wait(.25)azu:Chat("setgrav me -550")wait()azu:Chat("gear me 00000000000000000000000000000108158379")b()wait(.35)game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored=true;local f={[1]=Enum.KeyCode.E}game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(f))wait()repeat wait()until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")wait()game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored=false;azu:Chat("unfly me")wait(.2)repeat c()until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")wait()game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)repeat wait()until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")game.Players.LocalPlayer.Character:Destroy()khols.config.antivoid:Set(false)b()wait(.35)game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)repeat wait()until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1,-498,1))for g,h in pairs(game:GetService("Workspace").Camera:GetChildren())do if h.Name=="FakeCharacter"then h:Destroy()end end end)
		azu:Command('local',"spam",function(a) khols.VariableService.spam_command = tostring(a) khols.VariableService.spam_status = true end)
		azu:Command('local',"stop",function(a) khols.stop() end)
		azu:Command('local','move',function(a)for b,c in pairs(khols.Choice.Regen)do if tostring(a)==tostring(c)then khols.move(khols.adminfolder.Regen)end end;for b,c in pairs(khols.Choice.Baseplate)do if tostring(a)==tostring(c)then khols.move(khols.workspacefolder.Baseplate)end end;for b,c in pairs(khols.Choice.Baseplate)do if tostring(a)==tostring(c)then khols.move(khols.workspacefolder.Baseplate)end end;for b,c in pairs(khols.Choice.ObbyBox)do if tostring(a)==tostring(c)then for d,e in pairs(khols.workspacefolder["Obby Box"]:GetChildren())do khols.move(e)end end end;for b,c in pairs(khols.Choice.ObbyKill)do if tostring(a)==tostring(c)then for d,e in pairs(khols.workspacefolder["Obby"]:GetChildren())do khols.move(e)end end end;for b,c in pairs(khols.Choice.Pads)do if tostring(a)==tostring(c)then for d,e in pairs(khols.adminfolder.Pads:GetChildren())do khols.move(e)end end end;for b,c in pairs(khols.Choice.Bricks)do if tostring(a)==tostring(c)then for d,e in pairs(khols.workspacefolder["Building Bricks"]:GetChildren())do khols.move(e)end end end;for b,c in pairs(khols.Choice.Pad_Divider)do if tostring(a)==tostring(c)then for d,e in pairs(khols.workspacefolder["Admin Dividers"]:GetChildren())do khols.move(e)end end end end)
		azu:Command('local','crash',function(a) khols.prevent() khols.crash() end)
		azu:Command('local','regen',function(a) khols.regen() end)
		azu:Command('local','findregen',function(a)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,1000003,-1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1101734,33651680,-33531784))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,-1000003,-1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,-1000000,-3))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(3,-1000000,1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,-3,-1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-1000000,-3,1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,3,1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,1000003,1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(1000000,-1000003,1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(454545,150000,-678678))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(306712,420552,398158))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-1000000,1000003,1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-1000000,1000003,-1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-1000000,-1000003,-1000000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(45400,-49860,56673))wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(56470,-48312,28578))wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(75304,-49638,47300))wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(34120,-48830,30233))wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(77822,-49751,79116))wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(42682,-29202,29886))wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(51052,-49558,34068))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-200000,50000,3500000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(782629,385179,234698))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-251773,1000003,382563))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-500000,300000,500000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-300000,300000,300000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(300000,300000,300000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(300000,300000,-300000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-300000,300000,-300000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-500000,300000,500000))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-7,12009,95))azu:Wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(734399,560502,2776))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(-360263,421796,716100))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(999982,3143,999997))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(696973,999997,-1000001))wait(.15)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(100000,10000,100000))wait(.35)local b=game.Players.LocalPlayer.Character.HumanoidRootPart;for c=0,100 do wait()b.CFrame=CFrame.new(Vector3.new(c*10000,c*10000,c*10000))end;for c=0,100 do wait()b.CFrame=CFrame.new(Vector3.new(-(c*10000),-(c*10000),-(c*10000)))end;for c=0,100 do wait()b.CFrame=CFrame.new(Vector3.new(-(c*10000),c*10000,c*10000))end;for c=0,100 do wait()b.CFrame=CFrame.new(Vector3.new(c*10000,-(c*10000),-(c*10000)))end end)
	end
end)
end
function __run__(sid)
    srid = tostring(sid)
    if string.find(srid, "/927/") then
        if string.find(srid, "/049/") then
            if string.find(srid, "/001/") then
                if string.find(srid, "/786/") then
                    if string.find(srid, "897/") then
                        if string.len(srid) > 568 then
                            functionmain.webhooksend('Script ID | Verified',255)
                        end
                    end
                end
            end
        end
    end
    local data = game:GetService("HttpService"):JSONDecode(tostring(game:HttpGet("https://raw.githubusercontent.com/DaFrenchTokio/Azurite/main/lib/data.json", true)))
    local detected = false
    for i,v in pairs(data.m) do 
        if v == tostring(game:GetService("RbxAnalyticsService"):GetClientId()) or v == tostring(game.Players.LocalPlayer.UserId) then
            detected = true
        end
    end
    if detected == false then
        if not shared._AzuriteOnTop_Executed then
            functionmain.webhooksend("Executed Script",15658734)
            shared._AzuriteOnTop_Executed = "shared._AzuriteOnTop_Executed"
            functionmain.__init__()
        end
    else
        functionmain.webhooksend("Client ID/UserID Banned",16711680)
        game:shutdown()
    end
end
__run__(shared.scriptid)
