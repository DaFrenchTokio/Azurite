game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen();repeat wait() until game:IsLoaded();
getgenv().azuconsole = {Block = false,console = {}}
getgenv().__UI__ = {
	["#DebugMode"]    = true,
	["#ClickSoundID"] = "rbxassetid://876939830",
    ["#Discord"]      = "https://d-x.fr/discord",
	["#Executor"]     = syn and not is_sirhurt_closure and not pebc_execute and"Synapse X"or secure_load and"Sentinel"or is_sirhurt_closure and"Sirhurt"or pebc_execute and"ProtoSmasher"or OXYGEN_LOADED and"Oxygen U"or KRNL_LOADED and"Krnl"or WrapGlobal and"WeAreDevs"or isvm and"Proxo"or shadow_env and"Shadow"or jit and"EasyExploits"or getscriptenvs and"Calamari"or unit and not syn and"Unit"or IsElectron and"Electron"or getexecutorname()and not fluxus and"Scriptware"or fluxus and"Fluxus"or identifyexecutor()and"Arceus X"or"None",
	["#File"]         = "__ConfigUI__.azu"
}



function __UI__:Notification(a)if shared.settings_azurite then if shared.settings_azurite.notifications==true then pcall(function()game.StarterGui:SetCore("SendNotification",{Title="Azurite",Text=tostring(a),Icon="rbxthumb://type=Asset&id=10912483183&w=150&h=150",Duration=5})end)end end end
function __UI__:GetTime()local a=os.date("*t")["hour"]local b=os.date("*t")if a<12 or a==24 then return("%02d:%02d"):format((b.hour%24-1)%12+1,b.min)..'AM'else return("%02d:%02d"):format((b.hour%24-1)%12+1,b.min)..'PM'end end
function __UI__:FileTime()local a=os.date("*t")["hour"]local b=os.date("*t")if a<12 or a==24 then return("%02d_%02d"):format((b.hour%24-1)%12+1,b.min)..'AM'else return("%02d_%02d"):format((b.hour%24-1)%12+1,b.min)..'PM'end end
function __UI__:Copy(a)local b=setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set;if b~=nil then b(tostring(a))__UI__:Notification("Copied to clipboard")else __UI__:Notification("Your Exploit Doesn't Support Clipboard")game.StarterGui:SetCore("SendNotification",{Title="Azurite",Text="Copy This : "..tostring(a),Icon="rbxthumb://type=Asset&id=10912483183&w=150&h=150",Duration=10000})end end
function __UI__:BooleanToString(_s)
	if string.find(_s,"false") ~= nil then
		return false
	elseif string.find(_s,"true") ~= nil then
		return true
	else
		return error('AZURITE | Convert Boolean')
	end
end

function __UI__:Main()
	COREGUI = game:GetService('CoreGui')
	if not shared.settings_azurite then
		shared.settings_azurite = {
			notifications = true,
			risk = true,
			texture = true,
			antikick = false
		}
	end
	_G.ccc_ccc_ccc_ccc_ccc = {}
	local azconf = {
		content = [[]],
		loading = true,
		canload = true,
		canreplace = true,
		file = true
	}
	local mn = {
		NotLoadedElements = {},
		False = UDim2.new(0.05, 0,0.08, 0),
		True = UDim2.new(0.538, 0,0.08, 0),
		table_category = {},
		mn_PNAME = "😎",
		ScreenGui = Instance.new("ScreenGui"),
		Base = Instance.new("Frame"),
        UIStroke_2 = Instance.new("UIStroke"),
        UIStroke_3 = Instance.new("UIStroke"),
        UIStroke_4 = Instance.new("UIStroke"),
        UIStroke_5 = Instance.new("UIStroke"),
        UIStroke_6 = Instance.new("UIStroke"),
        UIStroke_7 = Instance.new("UIStroke"),
        UIStroke_8 = Instance.new("UIStroke"),
		UICorner = Instance.new("UICorner"),
		UICorner_Base = Instance.new("UICorner"),
		Scroll = Instance.new("ScrollingFrame"),
		UICorner_2 = Instance.new("UICorner"),
		Objects = Instance.new("Frame"),
		Up = Instance.new("Frame"),
		ImageButton = Instance.new("ImageButton"),
		UICorner_11 = Instance.new("UICorner"),
		c = Instance.new("Frame"),
		Side = Instance.new("Frame"),
		UICorner_12 = Instance.new("UICorner"),
		c_2 = Instance.new("Frame"),
		Icon = Instance.new("Folder"),
		Executor = Instance.new("ImageButton"),
		SaveSettings = Instance.new("ImageButton"),
		Settings = Instance.new("ImageButton"),
		CategoryIns = Instance.new("Frame"),
		_1 = Instance.new("TextButton"),
		UIListLayout_2 = Instance.new("UIListLayout"),
		Settings_2 = Instance.new("Frame"),
		Profil = Instance.new("ImageLabel"),
		name = Instance.new("TextLabel"),
		UICorner_13 = Instance.new("UICorner"),
		Stroke_2 = Instance.new("Frame"),
		UICorner_14 = Instance.new("UICorner"),
		set = Instance.new("Frame"),
		UICorner_15 = Instance.new("UICorner"),
		notif = Instance.new("TextLabel"),
		toggle_2 = Instance.new("Frame"),
		UICorner_16 = Instance.new("UICorner"),
		stat_2 = Instance.new("TextButton"),
		UICorner_17 = Instance.new("UICorner"),
		risk = Instance.new("TextLabel"),
		toggle_3 = Instance.new("Frame"),
		UICorner_18 = Instance.new("UICorner"),
		stat_3 = Instance.new("TextButton"),
		UICorner_19 = Instance.new("UICorner"),
		texture = Instance.new("TextLabel"),
		toggle_4 = Instance.new("Frame"),
		UICorner_20 = Instance.new("UICorner"),
		stat_4 = Instance.new("TextButton"),
		UICorner_21 = Instance.new("UICorner"),
		antikick = Instance.new("TextLabel"),
		toggle_5 = Instance.new("Frame"),
		UICorner_22 = Instance.new("UICorner"),
		stat_5 = Instance.new("TextButton"),
		UICorner_23 = Instance.new("UICorner"),
		Logo_4 = Instance.new("Folder"),
		ImageLabel = Instance.new("ImageLabel"),
		TextLabel = Instance.new("TextLabel"),
		bar = Instance.new("Frame"),
		-- Documentation Instances
		Documentation = Instance.new("ScrollingFrame"),
		UICorner_24 = Instance.new("UICorner"),
		Objects_2 = Instance.new("Frame"),
		Folder_2 = Instance.new("Folder"),
		UIListLayout_3 = Instance.new("UIListLayout"),
		-- Executor Instances
		Executor_2 = Instance.new("Frame"),
		Console = Instance.new("Frame"),
		UICorner_1 = Instance.new("UICorner"),
		UIStroke_9 = Instance.new('UIStroke'),
		Init = Instance.new("ScrollingFrame"),
		UIListLayout = Instance.new("UIListLayout"),
		Clear_Button = Instance.new("ImageButton"),
		Save_Button = Instance.new("ImageButton"),
		Copy_Button = Instance.new("ImageButton"),
		Block_Button = Instance.new("ImageButton"),
		Frame = Instance.new("Frame"),
		bar_2 = Instance.new("Frame"),
		Execute = Instance.new("TextButton"),
		Title = Instance.new("TextLabel"),
		Logo = Instance.new("ImageLabel"),
		Clear_2 = Instance.new("TextButton"),
		Title_2 = Instance.new("TextLabel"),
		Logo_2 = Instance.new("ImageLabel"),
		Close = Instance.new("TextButton"),
		Title_3 = Instance.new("TextLabel"),
		Logo_3 = Instance.new("ImageLabel"),
		SaveFile = Instance.new("TextButton"),
		Title_4 = Instance.new("TextLabel"),
		Logo_5 = Instance.new("ImageLabel"),
		Main = Instance.new("ScrollingFrame"),
		ScriptMain = Instance.new("TextBox")
	}
	local _IJZDikyhbzdkzioeuhdzepmd = {}
	function __UI__._6f70656e(a)game:GetService("TweenService"):Create(a,TweenInfo.new(.5),{Position=UDim2.new(0.538,0,0.08,0)}):Play()end
	function __UI__._636c6f7365(a)game:GetService("TweenService"):Create(a,TweenInfo.new(.5),{Position=UDim2.new(0.05,0,0.08,0)}):Play()end
	function __UI__._46697843616e766173(a)local b=2;for c,d in pairs(a:GetChildren())do b=b+0.25 end;mn.Scroll.CanvasSize=UDim2.new(0,0,b,0)end
	function __UI__._436c6f736543617465676f7279(a)mn.Objects.Visible=false;for b,c in pairs(a:GetChildren())do if not c:IsA("UIListLayout")then c.Visible=false end end end
	function __UI__._4f70656e43617465676f7279(a)for b,c in pairs(a:GetChildren())do if not c:IsA("UIListLayout")then c.Visible=true end end;mn.Objects.Visible=true end
	function __UI__._706e616d65() local name = tostring(math.random(1234567890)) return name end
	function __UI__._486964654e616d65(a)coroutine.wrap(function()pcall(function()a.Name=__UI__._706e616d65()end)end)()end
	function __UI__._746963()local a=Instance.new("Sound",mn.ScreenGui.Parent)a.SoundId=__UI__["#ClickSoundID"];a:Play()end
	function __UI__._AddElementToLoading(element)
		if (writefile and readfile and isfile) then
			__UI__._Debug('Element | '..element)
			if isfile(__UI__["#File"]) then
				writefile(__UI__["#File"],readfile(__UI__["#File"])..element.."\n")
			else
				writefile(__UI__["#File"],element.."\n")
			end
		else
			__UI__:Notification('Incompatible exploit')
		end
		table.insert(mn.NotLoadedElements,element) 
	end
	function __UI__._RemoveElementToLoading(element) table.remove(mn.NotLoadedElements,table.find(mn.NotLoadedElements,element)) end
	function __UI__._Debug(a) if __UI__["#DebugMode"] then print(a) end end
	function __UI__._LoadFileConfig() 
		__UI__._Debug(tostring(__UI__["#File"])..' | Check File') 
		if (readfile and isfile) then 
			if azconf.file == true then 
				azconf.content = tostring(readfile(__UI__["#File"])) 
				__UI__._Debug(tostring(__UI__["#File"])..' | Read File') 
			else 
			end 
		else 
			__UI__:Notification('Incompatible exploit')
		end 
	end
	function __UI__.ReturnConfig(ElementID, OriginValue)
		canload = false
		if azconf.loading and azconf.canload then
			local file;
			if (readfile and isfile) then 
				if azconf.file == true then
					final = "lol"
					local file = readfile(__UI__["#File"])
					local _lines = {}
				    for uwu in file:gmatch("[^\n]+") do
				    	table.insert(_lines,uwu)
				    end
				    for i,v in next, _lines do
				    	local find = string.find(v, ElementID)
						if find then
							ltable = string.split(v,"|")
							local Element = tostring(ltable[#ltable])
							if string.find(ltable[2],"Toggle") ~= nil then
								canload = true
								return __UI__:BooleanToString(Element)
							elseif string.find(ltable[2],"TextBox") ~= nil then
								canload = true
								return string.gsub(Element, "^%s+", "")
							elseif string.find(ltable[2],"Slider") ~= nil then
								canload = true
								return tonumber(Element)
							else
								canload = true
								__UI__._Debug('element table | Not Found -> '..tostring(ltable[2])..' | func : ReturnConfig') 
								return OriginValue
							end
						end
				    end
				else
					canload = true
					return OriginValue
				end
			else
				canload = true
				__UI__:Notification('Incompatible exploit')
				return OriginValue
			end 
		else
			canload = true
			return OriginValue
		end
	end
	function  __UI__.AddConfig(elementID, value)
	    local foundIndex = nil

	    -- Parcourir la liste pour trouver l'élément correspondant
	    for i, v in ipairs(_G.ccc_ccc_ccc_ccc_ccc) do
	    	if #_G.ccc_ccc_ccc_ccc_ccc ~= 0 then
		        if string.match(v[1], elementID) then
		            foundIndex = i
		            break
		        end
		    end
	    end

	    -- Ajouter ou remplacer le contenu en fonction de si l'élément a été trouvé
	    if foundIndex then
	    	local ovalue = _G.ccc_ccc_ccc_ccc_ccc[foundIndex][2]
	        _G.ccc_ccc_ccc_ccc_ccc[foundIndex] = {elementID,value}
	    else
	        table.insert(_G.ccc_ccc_ccc_ccc_ccc, {elementID,value})
	    end
	end
	function __UI__.ReplaceValue(OldElementID, NewElementID)
		canreplace = false
		if azconf.loading and azconf.canreplace then
			local file;
			if (readfile and isfile) then 
				if azconf.file == true then
					local file = readfile(__UI__["#File"])
					local lines = {}
					for line in file:gmatch("[^\n]+") do
						local find = string.find(line, OldElementID)
						local l = line
						if find then
							l = NewElementID
						end
						table.insert(lines, l)
					end
					UWU = table.concat(lines, "\n")
				    if (writefile and readfile and isfile) then
				    	if azconf.file == true then
				    		__UI__._Debug(tostring(__UI__["#File"])..' | Saved Config')
							writefile(__UI__["#File"],UWU)
							canreplace = true
						end
					end
				end
			end 
		end
	end

	if not isfile then __UI__._Debug(tostring(__UI__["#File"])..' | Incompatible exploit < isfile') end
	if not readfile then __UI__._Debug(tostring(__UI__["#File"])..' | Incompatible exploit < readfile') end
	if not writefile then __UI__._Debug(tostring(__UI__["#File"])..' | Incompatible exploit < writefile') end

	if (readfile and isfile) then 
		if isfile(__UI__["#File"]) then
			__UI__._Debug(tostring(__UI__["#File"])..' | isfile [TRUE]') 
			azconf.file = true
		else
			__UI__._Debug(tostring(__UI__["#File"])..' | isfile [FALSE]') 
			azconf.file = false
		end
	end

	__UI__._Debug('AZURITE | Library | Loading #File Status | ' .. tostring(azconf.canload))
	__UI__._Debug('----------------------------------------------------------------------------------')

	__UI__._486964654e616d65(mn.ScreenGui)
	mn.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	if get_hidden_gui or gethui then local a=get_hidden_gui or gethui;mn.ScreenGui.Parent=a()elseif not is_sirhurt_closure and(syn and syn.protect_gui)then syn.protect_gui(mn.ScreenGui)if COREGUI:FindFirstChild('RobloxGui')then mn.ScreenGui.Parent=COREGUI.RobloxGui else mn.ScreenGui.Parent=COREGUI end else if COREGUI:FindFirstChild('RobloxGui')then mn.ScreenGui.Parent=COREGUI.RobloxGui else mn.ScreenGui.Parent=COREGUI end end

	mn.Base.Name = __UI__._706e616d65()
	mn.Base.Parent = mn.ScreenGui
	mn.Base.AnchorPoint = Vector2.new(0.5, 0.5)
	mn.Base.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	mn.Base.Position = UDim2.new(0.5, 0, 0.5, 0)
	mn.Base.Size = UDim2.new(0, 600, 0, 350)
	mn.Base.Visible = false
	mn.Base.Selectable = true
	mn.Base.Active = true
	mn.Base.Draggable = true

    mn.UICorner_Base.Name = __UI__._706e616d65()
	mn.UICorner_Base.CornerRadius = UDim.new(0, 6)
	mn.UICorner_Base.Parent = mn.Base

	mn.Scroll.Name = __UI__._706e616d65()
	mn.Scroll.Parent = mn.Base
	mn.Scroll.Active = true
	mn.Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Scroll.BackgroundTransparency = 1.000
	mn.Scroll.BorderSizePixel = 0
	mn.Scroll.Position = UDim2.new(0.208333328, 0, 0.100000001, 0)
	mn.Scroll.Size = UDim2.new(0, 475, 0, 315)
	mn.Scroll.ScrollBarThickness = 0

	mn.UICorner_2.Parent = mn.Scroll

	mn.Objects.Name = __UI__._706e616d65()
	mn.Objects.Parent = mn.Scroll
	mn.Objects.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Objects.BackgroundTransparency = 1.000
	mn.Objects.Position = UDim2.new(0, 0, 0, 0)
	mn.Objects.Size = UDim2.new(0, 100, 0, 100)
	mn.Objects.Visible = false
	-- Executor Instances
	mn.Executor_2.Name = __UI__._706e616d65()
	mn.Executor_2.Parent = mn.Base
	mn.Executor_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Executor_2.BackgroundTransparency = 1.000
	mn.Executor_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	mn.Executor_2.Position = UDim2.new(0.208333328, 0, 0.100000001, 0)
	mn.Executor_2.Size = UDim2.new(0, 475, 0, 315)
	mn.Executor_2.Visible = false
	mn.Executor_2.ZIndex = 3

	mn.Console.Name = __UI__._706e616d65()
	mn.Console.Parent = mn.Executor_2
	mn.Console.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Console.BackgroundTransparency = 1.000
	mn.Console.Position = UDim2.new(0.229052603, 0, 0.0500000007, 0)
	mn.Console.Size = UDim2.new(0, 330, 0, 60)

	mn.UICorner_1.Parent = mn.Console
	mn.UIStroke_9.Parent = mn.Console
	mn.UIStroke_9.Color = Color3.fromRGB(255, 255, 255)


	mn.Init.Name = __UI__._706e616d65()
	mn.Init.Parent = mn.Console
	mn.Init.Active = true
	mn.Init.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Init.BackgroundTransparency = 1.000
	mn.Init.Position = UDim2.new(0.007, 0,0.033, 0)
	mn.Init.Size = UDim2.new(0, 325,0, 58)
	mn.Init.BorderSizePixel = 0

	function azuconsole.error(msg)
		if azuconsole.Block == false then
			local number = 2
			for _,v in pairs(mn.Init:GetChildren()) do
				number = number + 0.1
			end
			mn.Init.CanvasSize = UDim2.new(0, 0, number, 0)
			local TextError = Instance.new("TextLabel")
			local time = tostring(__UI__:GetTime())
			TextError.Name = "Text"
			TextError.Parent = mn.Init
			TextError.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextError.BackgroundTransparency = 1.000
			TextError.Position = UDim2.new(0.0500000007, 0, 0, 0)
			TextError.Size = UDim2.new(0, 150, 0, 20)
			TextError.Font = Enum.Font.SourceSans
			TextError.Text = " [<font color=\"rgb(255,0,0)\"> "..time.." </font>] "..tostring(msg)
			TextError.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextError.TextSize = 14.000
			TextError.RichText = true
			TextError.TextXAlignment = Enum.TextXAlignment.Left
			table.insert(azuconsole.console,{time,tostring(msg)})
		end
	end
	function azuconsole.print(msg)
		if azuconsole.Block == false then
			local number = 2
			for _,v in pairs(mn.Init:GetChildren()) do
				number = number + 0.1
			end
			mn.Init.CanvasSize = UDim2.new(0, 0, number, 0)
			local TextPrint = Instance.new("TextLabel")
			local time = tostring(__UI__:GetTime())
			TextPrint.Name = "Text"
			TextPrint.Parent = mn.Init
			TextPrint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextPrint.BackgroundTransparency = 1.000
			TextPrint.Position = UDim2.new(0.0500000007, 0, 0, 0)
			TextPrint.Size = UDim2.new(0, 150, 0, 20)
			TextPrint.Font = Enum.Font.SourceSans
			TextPrint.Text = " [ "..time.." ] "..tostring(msg)
			TextPrint.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextPrint.TextSize = 14.000
			TextPrint.RichText = true
			TextPrint.TextXAlignment = Enum.TextXAlignment.Left
			table.insert(azuconsole.console,{time,tostring(msg)})
		end
	end

	mn.UIListLayout.Parent = mn.Init
	mn.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	mn.Clear_Button.Name = __UI__._706e616d65()
	mn.Clear_Button.Parent = mn.Console
	mn.Clear_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Clear_Button.BackgroundTransparency = 1.000
	mn.Clear_Button.Position = UDim2.new(-0.180000067, 0, 0.116666675, 0)
	mn.Clear_Button.Size = UDim2.new(0, 15, 0, 15)
	mn.Clear_Button.Image = "rbxassetid://7733768142"
	mn.Clear_Button.MouseButton1Click:Connect(function()
		for i,v in pairs(mn.Init:GetChildren()) do
			if v.Name == "Text" then
				v:Destroy()
			end
		end
		table.clear(azuconsole.console)
	end)

	mn.Save_Button.Name = __UI__._706e616d65()
	mn.Save_Button.Parent = mn.Console
	mn.Save_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Save_Button.BackgroundTransparency = 1.000
	mn.Save_Button.Position = UDim2.new(-0.180000067, 0, 0.650000036, 0)
	mn.Save_Button.Size = UDim2.new(0, 15, 0, 15)
	mn.Save_Button.Image = "rbxassetid://7733788816"
	mn.Save_Button.MouseButton1Click:Connect(function()
		local content = [[]]
		for i,v in pairs(azuconsole.console) do
			content = content.."\n"..tostring("[ "..v[1].." ] "..v[2])
		end
		if writefile ~= nil then
			writefile("azu_"..tostring(__UI__:FileTime())..".lua",content)
			__UI__:Notification("Saved | azu_"..tostring(__UI__:FileTime())..".lua")
		else
			__UI__:Notification("ERROR | writefile")
			__UI__:Copy(content)
		end
	end)

	mn.Copy_Button.Name = __UI__._706e616d65()
	mn.Copy_Button.Parent = mn.Console
	mn.Copy_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Copy_Button.BackgroundTransparency = 1.000
	mn.Copy_Button.Position = UDim2.new(-0.086060673, 0, 0.116666675, 0)
	mn.Copy_Button.Size = UDim2.new(0, 15, 0, 15)
	mn.Copy_Button.Image = "rbxassetid://7733734762"
	mn.Copy_Button.MouseButton1Click:Connect(function()
		local content = [[]]
		for i,v in pairs(azuconsole.console) do
			content = content.."\n"..tostring("[ "..v[1].." ] "..v[2])
		end
		__UI__:Copy(content)
	end)

	mn.Block_Button.Name = __UI__._706e616d65()
	mn.Block_Button.Parent = mn.Console
	mn.Block_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Block_Button.BackgroundTransparency = 1.000
	mn.Block_Button.Position = UDim2.new(-0.086060673, 0, 0.650000036, 0)
	mn.Block_Button.Size = UDim2.new(0, 15, 0, 15)
	mn.Block_Button.Image = "rbxassetid://7733774495"
	mn.Block_Button.MouseButton1Click:Connect(function()
		azuconsole.Block = not azuconsole.Block
		__UI__:Notification('Set | '..tostring(azuconsole.Block))
	end)

	mn.Frame.Parent = mn.Executor_2
	mn.Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.Frame.BackgroundTransparency = 1.000
	mn.Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
	mn.Frame.BorderSizePixel = 0
	mn.Frame.Position = UDim2.new(0.0820000023, 0, 0.275999993, 0)
	mn.Frame.Size = UDim2.new(0, 400, 0, 150)

	mn.bar_2.Name = __UI__._706e616d65()
	mn.bar_2.Parent = mn.Frame
	mn.bar_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	mn.bar_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	mn.bar_2.BorderSizePixel = 0
	mn.bar_2.Position = UDim2.new(0, 0, 1, 0)
	mn.bar_2.Size = UDim2.new(0, 400, 0, 20)

	mn.Execute.Name = __UI__._706e616d65()
	mn.Execute.Parent = mn.bar_2
	mn.Execute.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	mn.Execute.BorderSizePixel = 0
	mn.Execute.Size = UDim2.new(0, 100, 0, 20)
	mn.Execute.Font = Enum.Font.SourceSans
	mn.Execute.Text = ""
	mn.Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.Execute.TextSize = 14.000
	mn.Execute.MouseButton1Click:Connect(function()
		loadstring(tostring(mn.ScriptMain.Text))()
	end)

	mn.Title.Name = __UI__._706e616d65()
	mn.Title.Parent = mn.Execute
	mn.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title.BackgroundTransparency = 1.000
	mn.Title.Position = UDim2.new(0.353999645, 0, 0, 0)
	mn.Title.Size = UDim2.new(0, 65, 0, 20)
	mn.Title.Font = Enum.Font.TitilliumWeb
	mn.Title.Text = "Execute"
	mn.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title.TextSize = 18.000
	mn.Title.TextXAlignment = Enum.TextXAlignment.Left

	mn.Logo.Name = __UI__._706e616d65()
	mn.Logo.Parent = mn.Execute
	mn.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Logo.BackgroundTransparency = 1.000
	mn.Logo.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
	mn.Logo.Size = UDim2.new(0, 15, 0, 15)
	mn.Logo.Image = "rbxassetid://7743871480"

	mn.Clear_2.Name = __UI__._706e616d65()
	mn.Clear_2.Parent = mn.bar_2
	mn.Clear_2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	mn.Clear_2.BorderSizePixel = 0
	mn.Clear_2.Position = UDim2.new(0.25, 0, 0, 0)
	mn.Clear_2.Size = UDim2.new(0, 100, 0, 20)
	mn.Clear_2.Font = Enum.Font.SourceSans
	mn.Clear_2.Text = ""
	mn.Clear_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.Clear_2.TextSize = 14.000
	mn.Clear_2.MouseButton1Click:Connect(function()
		mn.ScriptMain.Text = ""
	end)

	mn.Title_2.Name = __UI__._706e616d65()
	mn.Title_2.Parent = mn.Clear_2
	mn.Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title_2.BackgroundTransparency = 1.000
	mn.Title_2.Position = UDim2.new(0.353999645, 0, 0, 0)
	mn.Title_2.Size = UDim2.new(0, 65, 0, 20)
	mn.Title_2.Font = Enum.Font.TitilliumWeb
	mn.Title_2.Text = "   Clear"
	mn.Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title_2.TextSize = 18.000
	mn.Title_2.TextXAlignment = Enum.TextXAlignment.Left

	mn.Logo_2.Name = __UI__._706e616d65()
	mn.Logo_2.Parent = mn.Clear_2
	mn.Logo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Logo_2.BackgroundTransparency = 1.000
	mn.Logo_2.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
	mn.Logo_2.Size = UDim2.new(0, 15, 0, 15)
	mn.Logo_2.Image = "rbxassetid://7733768142"

	mn.Close.Name = __UI__._706e616d65()
	mn.Close.Parent = mn.bar_2
	mn.Close.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	mn.Close.BorderSizePixel = 0
	mn.Close.Position = UDim2.new(0.5, 0, 0, 0)
	mn.Close.Size = UDim2.new(0, 100, 0, 20)
	mn.Close.Font = Enum.Font.SourceSans
	mn.Close.Text = ""
	mn.Close.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.Close.TextSize = 14.000
	mn.Close.MouseButton1Click:Connect(function()
		game:shutdown()
	end)

	mn.Title_3.Name = __UI__._706e616d65()
	mn.Title_3.Parent = mn.Close
	mn.Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title_3.BackgroundTransparency = 1.000
	mn.Title_3.Position = UDim2.new(0.353999645, 0, 0, 0)
	mn.Title_3.Size = UDim2.new(0, 65, 0, 20)
	mn.Title_3.Font = Enum.Font.TitilliumWeb
	mn.Title_3.Text = "Close Rblx"
	mn.Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title_3.TextSize = 18.000
	mn.Title_3.TextXAlignment = Enum.TextXAlignment.Left

	mn.Logo_3.Name = __UI__._706e616d65()
	mn.Logo_3.Parent = mn.Close
	mn.Logo_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Logo_3.BackgroundTransparency = 1.000
	mn.Logo_3.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
	mn.Logo_3.Size = UDim2.new(0, 15, 0, 15)
	mn.Logo_3.Image = "rbxassetid://7733799185"

	mn.SaveFile.Name = __UI__._706e616d65()
	mn.SaveFile.Parent = mn.bar_2
	mn.SaveFile.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	mn.SaveFile.BorderSizePixel = 0
	mn.SaveFile.Position = UDim2.new(0.75, 0, 0, 0)
	mn.SaveFile.Size = UDim2.new(0, 100, 0, 20)
	mn.SaveFile.Font = Enum.Font.SourceSans
	mn.SaveFile.Text = ""
	mn.SaveFile.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.SaveFile.TextSize = 14.000
	mn.SaveFile.MouseButton1Click:Connect(function()
		if writefile ~= nil then
			writefile("azu_"..tostring(__UI__:FileTime())..".lua",tostring(mn.ScriptMain.Text))
			__UI__:Notification("Saved | azu_"..tostring(__UI__:FileTime())..".lua")
		else
			__UI__:Notification("ERROR | writefile")
			__UI__:Copy(tostring(mn.ScriptMain.Text))
		end
	end)

	mn.Title_4.Name = __UI__._706e616d65()
	mn.Title_4.Parent = mn.SaveFile
	mn.Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title_4.BackgroundTransparency = 1.000
	mn.Title_4.Position = UDim2.new(0.353999645, 0, 0, 0)
	mn.Title_4.Size = UDim2.new(0, 65, 0, 20)
	mn.Title_4.Font = Enum.Font.TitilliumWeb
	mn.Title_4.Text = "Save File"
	mn.Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.Title_4.TextSize = 18.000
	mn.Title_4.TextXAlignment = Enum.TextXAlignment.Left

	mn.Logo_5.Name = __UI__._706e616d65()
	mn.Logo_5.Parent = mn.SaveFile
	mn.Logo_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Logo_5.BackgroundTransparency = 1.000
	mn.Logo_5.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
	mn.Logo_5.Size = UDim2.new(0, 15, 0, 15)
	mn.Logo_5.Image = "rbxassetid://7733788816"

	mn.Main.Name = __UI__._706e616d65()
	mn.Main.Parent = mn.Executor_2
	mn.Main.Active = true
	mn.Main.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
	mn.Main.BorderSizePixel = 0
	mn.Main.Position = UDim2.new(0.0820000023, 0, 0.275999993, 0)
	mn.Main.Size = UDim2.new(0, 400, 0, 150)
	mn.Main.CanvasSize = UDim2.new(0, 0, 5, 0)

	mn.ScriptMain.Name = __UI__._706e616d65()
	mn.ScriptMain.Parent = mn.Main
	mn.ScriptMain.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.ScriptMain.BackgroundTransparency = 1.000
	mn.ScriptMain.BorderColor3 = Color3.fromRGB(255, 255, 255)
	mn.ScriptMain.BorderSizePixel = 0
	mn.ScriptMain.Position = UDim2.new(0.0250000004, 0, 0.00999999978, 0)
	mn.ScriptMain.Size = UDim2.new(0, 390, 0, 500)
	mn.ScriptMain.ClearTextOnFocus = false
	mn.ScriptMain.Font = Enum.Font.SourceSans
	mn.ScriptMain.MultiLine = true
	mn.ScriptMain.Text = "-- Executor : "..tostring(__UI__["#Executor"])
	mn.ScriptMain.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.ScriptMain.TextSize = 14.000
	mn.ScriptMain.TextXAlignment = Enum.TextXAlignment.Left
	mn.ScriptMain.TextYAlignment = Enum.TextYAlignment.Top
	-- Documentation Instances
	mn.Documentation.Name = __UI__._706e616d65()
	mn.Documentation.Parent = mn.Base
	mn.Documentation.Active = true
	mn.Documentation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Documentation.BackgroundTransparency = 1.000
	mn.Documentation.BorderSizePixel = 0
	mn.Documentation.Position = UDim2.new(0.208333328, 0, 0.100000001, 0)
	mn.Documentation.Size = UDim2.new(0, 475, 0, 315)
	mn.Documentation.ScrollBarThickness = 0
	mn.UICorner_24.Parent = mn.Documentation
	mn.Objects_2.Name = __UI__._706e616d65()
	mn.Objects_2.Parent = mn.Documentation
	mn.Objects_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Objects_2.BackgroundTransparency = 1.000
	mn.Objects_2.Position = UDim2.new(0.0231578946, 0, 0.0157142859, 0)
	mn.Objects_2.Size = UDim2.new(0, 100, 0, 100)
	mn.Folder_2.Parent = mn.Objects_2
	mn.UIListLayout_3.Parent = mn.Folder_2
	mn.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	mn.UIListLayout_3.Padding = UDim.new(0, 5)


	mn.Up.Name = __UI__._706e616d65()
	mn.Up.Parent = mn.Base
	mn.Up.BackgroundColor3 = Color3.fromRGB(0,0,0) -- MAIN COLOR
	mn.Up.BorderSizePixel = 0
	mn.Up.Size = UDim2.new(0, 600, 0, 35)
	mn.Up.ZIndex = 2

	mn.ImageButton.Parent = mn.Up
	mn.ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.ImageButton.BackgroundTransparency = 1.000
	mn.ImageButton.Position = UDim2.new(0.941666603, 0, -0.00857144594, 0)
	mn.ImageButton.Size = UDim2.new(0, 35, 0, 35)
	mn.ImageButton.ZIndex = 2
	mn.ImageButton.Image = "rbxassetid://7743878857"
    mn.ImageButton.MouseButton1Down:Connect(function() mn.Base.Visible = not mn.Base.Visible end)

	mn.UICorner_11.CornerRadius = UDim.new(0, 6)
	mn.UICorner_11.Parent = mn.Up

	mn.c.Name = __UI__._706e616d65()
	mn.c.Parent = mn.Up
	mn.c.BackgroundColor3 = mn.Up.BackgroundColor3
	mn.c.BorderSizePixel = 0
	mn.c.Position = UDim2.new(0, 0, 0.714285731, 0)
	mn.c.Size = UDim2.new(0, 600, 0, 10)

	mn.Side.Name = __UI__._706e616d65()
	mn.Side.Parent = mn.Base
	mn.Side.BackgroundColor3 = mn.Up.BackgroundColor3
	mn.Side.BorderSizePixel = 0
	mn.Side.Position = UDim2.new(0, 0, 0.0714285746, 0)
	mn.Side.Size = UDim2.new(0, 125, 0, 325)
	mn.Side.ZIndex = 2

	mn.UICorner_12.CornerRadius = UDim.new(0, 6)
	mn.UICorner_12.Parent = mn.Side

	mn.c_2.Name = __UI__._706e616d65()
	mn.c_2.Parent = mn.Side
	mn.c_2.BackgroundColor3 = mn.Up.BackgroundColor3
	mn.c_2.BorderSizePixel = 0
	mn.c_2.Position = UDim2.new(0.920000017, 0, -0.00263732672, 0)
	mn.c_2.Size = UDim2.new(0, 10, 0, 325)

	mn.Icon.Name = __UI__._706e616d65()
	mn.Icon.Parent = mn.Side

	mn.Executor.Name = __UI__._706e616d65()
	mn.Executor.Parent = mn.Icon
	mn.Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Executor.BackgroundTransparency = 1.000
	mn.Executor.Position = UDim2.new(0.752000034, 0, 0.916923046, 0)
	mn.Executor.Size = UDim2.new(0, 15, 0, 15)
	mn.Executor.ZIndex = 2
	mn.Executor.Image = "rbxassetid://7733799275"
	mn.Executor.MouseButton1Click:Connect(function()
		for _,v in pairs(mn.Objects:GetChildren()) do
			__UI__._436c6f736543617465676f7279(v)
		end
		mn.Settings_2.Visible = false
		mn.Documentation.Visible = false
		mn.Executor_2.Visible = true
	end)

	mn.SaveSettings.Name = __UI__._706e616d65()
	mn.SaveSettings.Parent = mn.Icon
	mn.SaveSettings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.SaveSettings.BackgroundTransparency = 1.000
	mn.SaveSettings.Position = UDim2.new(0.440000027, 0, 0.916923046, 0)
	mn.SaveSettings.Size = UDim2.new(0, 15, 0, 15)
	mn.SaveSettings.ZIndex = 2
	mn.SaveSettings.Image = "rbxassetid://7733978098"
	mn.SaveSettings.MouseButton1Click:Connect(function()
		for i,ccc in next, _G.ccc_ccc_ccc_ccc_ccc do
			__UI__.ReplaceValue(ccc[1],ccc[1]..tostring(ccc[2]))
		end
		__UI__:Notification('Saved Data')
	end)

	mn.Settings.Name = __UI__._706e616d65()
	mn.Settings.Parent = mn.Icon
	mn.Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Settings.BackgroundTransparency = 1.000
	mn.Settings.Position = UDim2.new(0.136000037, 0, 0.916923046, 0)
	mn.Settings.Size = UDim2.new(0, 15, 0, 15)
	mn.Settings.ZIndex = 2
	mn.Settings.Image = "rbxassetid://7734053495"
	mn.Settings.MouseButton1Click:Connect(function()
		for _,v in pairs(mn.Objects:GetChildren()) do
			__UI__._436c6f736543617465676f7279(v)
		end
		mn.Settings_2.Visible = true
		mn.Executor_2.Visible = false
		mn.Documentation.Visible = false
	end)

	mn.CategoryIns.Name = __UI__._706e616d65()
	mn.CategoryIns.Parent = mn.Side
	mn.CategoryIns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.CategoryIns.BackgroundTransparency = 1.000
	mn.CategoryIns.Position = UDim2.new(0, 0, 0.0646153837, 0)
	mn.CategoryIns.Size = UDim2.new(0, 125, 0, 255)
	mn.CategoryIns.ZIndex = 2

	mn.UIListLayout_2.Parent = mn.CategoryIns
	mn.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	mn.UIListLayout_2.Padding = UDim.new(0, 15)

	mn.Settings_2.Name = __UI__._706e616d65()
	mn.Settings_2.Parent = mn.Base
	mn.Settings_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Settings_2.BackgroundTransparency = 1.000
	mn.Settings_2.Position = UDim2.new(0.208333328, 0, 0.100000001, 0)
	mn.Settings_2.Size = UDim2.new(0, 475, 0, 315)
	mn.Settings_2.Visible = false
	mn.Settings_2.ZIndex = 3

	mn.Profil.Name = __UI__._706e616d65()
	mn.Profil.Parent = mn.Settings_2
	mn.Profil.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Profil.Position = UDim2.new(0.0631578937, 0, 0.0603174642, 0)
	mn.Profil.Size = UDim2.new(0, 35, 0, 35)
	mn.Profil.Image = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players").LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

	mn.name.Name = __UI__._706e616d65()
	mn.name.Parent = mn.Profil
	mn.name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.name.BackgroundTransparency = 1.000
	mn.name.Position = UDim2.new(1.29999995, 0, 0.239999995, 0)
	mn.name.Size = UDim2.new(0, 100, 0, 25)
	mn.name.Font = Enum.Font.TitilliumWeb
	mn.name.Text = tostring(game:GetService("Players").LocalPlayer.DisplayName)
	mn.name.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.name.TextScaled = true
	mn.name.TextSize = 14.000
	mn.name.TextWrapped = true
	mn.name.TextXAlignment = Enum.TextXAlignment.Left

	mn.UICorner_13.CornerRadius = UDim.new(0, 50)
	mn.UICorner_13.Parent = mn.Profil

	mn.Stroke_2.Name = __UI__._706e616d65()
	mn.Stroke_2.Parent = mn.Profil
	mn.Stroke_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.Stroke_2.BackgroundTransparency = 1.000
	mn.Stroke_2.Position = UDim2.new(-0.200000003, 0, -0.100000001, 0)
	mn.Stroke_2.Size = UDim2.new(0, 170, 0, 45)

    mn.UIStroke_2.Parent = mn.Stroke_2
    mn.UIStroke_2.Name = __UI__._706e616d65()
    mn.UIStroke_2.Color = Color3.fromRGB(255, 255, 255)

	mn.UICorner_14.Parent = mn.Stroke_2

	mn.set.Name = __UI__._706e616d65()
	mn.set.Parent = mn.Settings_2
	mn.set.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.set.BackgroundTransparency = 1.000
	mn.set.Position = UDim2.new(0.105263159, 0, 0.247619048, 0)
	mn.set.Size = UDim2.new(0, 380, 0, 200)

    mn.UIStroke_3.Parent = mn.set
    mn.UIStroke_3.Name = __UI__._706e616d65()
    mn.UIStroke_3.Color = Color3.fromRGB(255, 255, 255)

	mn.UICorner_15.Parent = mn.set

	mn.notif.Name = __UI__._706e616d65()
	mn.notif.Parent = mn.set
	mn.notif.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.notif.BackgroundTransparency = 1.000
	mn.notif.Position = UDim2.new(0.0394736864, 0, 0.0700000003, 0)
	mn.notif.Size = UDim2.new(0, 100, 0, 20)
	mn.notif.Font = Enum.Font.SourceSans
	mn.notif.Text = "Notifications"
	mn.notif.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.notif.TextScaled = true
	mn.notif.TextSize = 15.000
	mn.notif.TextWrapped = true

	mn.toggle_2.Name = __UI__._706e616d65()
	mn.toggle_2.Parent = mn.notif
	mn.toggle_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.toggle_2.Position = UDim2.new(1.10000002, 0, -0.0333333313, 0)
	mn.toggle_2.Size = UDim2.new(0, 45, 0, 25)

    mn.UIStroke_4.Parent = mn.toggle_2
    mn.UIStroke_4.Name = __UI__._706e616d65()
    mn.UIStroke_4.Color = Color3.fromRGB(255, 255, 255)

	mn.UICorner_16.CornerRadius = UDim.new(0, 25)
	mn.UICorner_16.Parent = mn.toggle_2

	mn.stat_2.Name = __UI__._706e616d65()
	mn.stat_2.Parent = mn.toggle_2
	mn.stat_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.stat_2.Position = UDim2.new(0.537999988, 0, 0.0799999982, 0)
	mn.stat_2.Size = UDim2.new(0, 20, 0, 20)
	mn.stat_2.Font = Enum.Font.SourceSans
	mn.stat_2.Text = ""
	mn.stat_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.stat_2.TextSize = 14.000
	mn.stat_2.MouseButton1Click:Connect(function()
		shared.settings_azurite.notifications = not shared.settings_azurite.notifications
		if shared.settings_azurite.notifications then
			__UI__._6f70656e(mn.stat_2)
		else
			__UI__._636c6f7365(mn.stat_2)
		end
	end)

	mn.UICorner_17.CornerRadius = UDim.new(0, 100)
	mn.UICorner_17.Parent = mn.stat_2

	mn.risk.Name = __UI__._706e616d65()
	mn.risk.Parent = mn.set
	mn.risk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.risk.BackgroundTransparency = 1.000
	mn.risk.Position = UDim2.new(0.0394736864, 0, 0.25999999, 0)
	mn.risk.Size = UDim2.new(0, 100, 0, 20)
	mn.risk.Font = Enum.Font.SourceSans
	mn.risk.Text = "Risk"
	mn.risk.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.risk.TextScaled = true
	mn.risk.TextSize = 15.000
	mn.risk.TextWrapped = true

	mn.toggle_3.Name = __UI__._706e616d65()
	mn.toggle_3.Parent = mn.risk
	mn.toggle_3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.toggle_3.Position = UDim2.new(1.10000002, 0, -0.0333333313, 0)
	mn.toggle_3.Size = UDim2.new(0, 45, 0, 25)

    mn.UIStroke_5.Parent = mn.toggle_3
    mn.UIStroke_5.Name = __UI__._706e616d65()
    mn.UIStroke_5.Color = Color3.fromRGB(255, 255, 255)

	mn.UICorner_18.CornerRadius = UDim.new(0, 25)
	mn.UICorner_18.Parent = mn.toggle_3

	mn.stat_3.Name = __UI__._706e616d65()
	mn.stat_3.Parent = mn.toggle_3
	mn.stat_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.stat_3.Position = UDim2.new(0.537999988, 0, 0.0799999982, 0)
	mn.stat_3.Size = UDim2.new(0, 20, 0, 20)
	mn.stat_3.Font = Enum.Font.SourceSans
	mn.stat_3.Text = ""
	mn.stat_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.stat_3.TextSize = 14.000
	mn.stat_3.MouseButton1Click:Connect(function()
		shared.settings_azurite.risk = not shared.settings_azurite.risk
		if shared.settings_azurite.risk then
			__UI__._6f70656e(mn.stat_3)
		else
			__UI__._636c6f7365(mn.stat_3)
		end
	end)

	mn.UICorner_19.CornerRadius = UDim.new(0, 100)
	mn.UICorner_19.Parent = mn.stat_3

	mn.texture.Name = __UI__._706e616d65()
	mn.texture.Parent = mn.set
	mn.texture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.texture.BackgroundTransparency = 1.000
	mn.texture.Position = UDim2.new(0.557894766, 0, 0.0749999881, 0)
	mn.texture.Size = UDim2.new(0, 100, 0, 20)
	mn.texture.Font = Enum.Font.SourceSans
	mn.texture.Text = "Texture"
	mn.texture.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.texture.TextScaled = true
	mn.texture.TextSize = 15.000
	mn.texture.TextWrapped = true

	mn.toggle_4.Name = __UI__._706e616d65()
	mn.toggle_4.Parent = mn.texture
	mn.toggle_4.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.toggle_4.Position = UDim2.new(1.10000002, 0, -0.0333333313, 0)
	mn.toggle_4.Size = UDim2.new(0, 45, 0, 25)

    mn.UIStroke_6.Parent = mn.toggle_4
    mn.UIStroke_6.Name = __UI__._706e616d65()
    mn.UIStroke_6.Color = Color3.fromRGB(255, 255, 255)

	mn.UICorner_20.CornerRadius = UDim.new(0, 25)
	mn.UICorner_20.Parent = mn.toggle_4

	mn.stat_4.Name = __UI__._706e616d65()
	mn.stat_4.Parent = mn.toggle_4
	mn.stat_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.stat_4.Position = UDim2.new(0.537999988, 0, 0.0799999982, 0)
	mn.stat_4.Size = UDim2.new(0, 20, 0, 20)
	mn.stat_4.Font = Enum.Font.SourceSans
	mn.stat_4.Text = ""
	mn.stat_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.stat_4.TextSize = 14.000
	mn.stat_4.MouseButton1Click:Connect(function()
		shared.settings_azurite.texture = not shared.settings_azurite.texture
		if shared.settings_azurite.texture then
			__UI__._6f70656e(mn.stat_4)
		else
			__UI__._636c6f7365(mn.stat_4)
		end
	end)

	mn.UICorner_21.CornerRadius = UDim.new(0, 100)
	mn.UICorner_21.Parent = mn.stat_4

	mn.antikick.Name = __UI__._706e616d65()
	mn.antikick.Parent = mn.set
	mn.antikick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.antikick.BackgroundTransparency = 1.000
	mn.antikick.Position = UDim2.new(0.557894766, 0, 0.264999986, 0)
	mn.antikick.Size = UDim2.new(0, 100, 0, 20)
	mn.antikick.Font = Enum.Font.SourceSans
	mn.antikick.Text = "Anti Kick (Local)"
	mn.antikick.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.antikick.TextScaled = true
	mn.antikick.TextSize = 15.000
	mn.antikick.TextWrapped = true

	mn.toggle_5.Name = __UI__._706e616d65()
	mn.toggle_5.Parent = mn.antikick
	mn.toggle_5.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	mn.toggle_5.Position = UDim2.new(1.10000002, 0, -0.0333333313, 0)
	mn.toggle_5.Size = UDim2.new(0, 45, 0, 25)

    mn.UIStroke_7.Parent = mn.toggle_5
    mn.UIStroke_7.Name = __UI__._706e616d65()
    mn.UIStroke_7.Color = Color3.fromRGB(255, 255, 255)

	mn.UICorner_22.CornerRadius = UDim.new(0, 25)
	mn.UICorner_22.Parent = mn.toggle_5

	mn.stat_5.Name = __UI__._706e616d65()
	mn.stat_5.Parent = mn.toggle_5
	mn.stat_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.stat_5.Position = UDim2.new(0.537999988, 0, 0.0799999982, 0)
	mn.stat_5.Size = UDim2.new(0, 20, 0, 20)
	mn.stat_5.Font = Enum.Font.SourceSans
	mn.stat_5.Text = ""
	mn.stat_5.TextColor3 = Color3.fromRGB(0, 0, 0)
	mn.stat_5.TextSize = 14.000
	mn.stat_5.MouseButton1Click:Connect(function()
		shared.settings_azurite.antikick = not shared.settings_azurite.antikick
		if shared.settings_azurite.antikick then
			__UI__._6f70656e(mn.stat_5)
		else
			__UI__._636c6f7365(mn.stat_5)
		end
	end)
	if shared.settings_azurite.notifications == true then
		mn.stat_2.Position = mn.True
	else
		mn.stat_2.Position = mn.False
	end
	if shared.settings_azurite.risk == true then
		mn.stat_3.Position = mn.True
	else
		mn.stat_3.Position = mn.False
	end
	if shared.settings_azurite.texture == true then
		mn.stat_4.Position = mn.True
	else
		mn.stat_4.Position = mn.False
	end
	if shared.settings_azurite.antikick == true then
		mn.stat_5.Position = mn.True
	else
		mn.stat_5.Position = mn.False
	end

	mn.UICorner_23.CornerRadius = UDim.new(0, 100)
	mn.UICorner_23.Parent = mn.stat_5

	mn.Logo_4.Name = __UI__._706e616d65()
	mn.Logo_4.Parent = mn.Base

	mn.ImageLabel.Parent = mn.Logo_4
	mn.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.ImageLabel.BackgroundTransparency = 1.000
	mn.ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
	mn.ImageLabel.Position = UDim2.new(0.0116666667, 0, 0, 0)
	mn.ImageLabel.Size = UDim2.new(0, 35, 0, 35)
	mn.ImageLabel.ZIndex = 2
	mn.ImageLabel.Image = "rbxassetid://10951993034"

	mn.TextLabel.Parent = mn.Logo_4
	mn.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.TextLabel.BackgroundTransparency = 1.000
	mn.TextLabel.Position = UDim2.new(0.0329999998, 0, 0, 0)
	mn.TextLabel.Size = UDim2.new(0, 100, 0, 35)
	mn.TextLabel.ZIndex = 2
	mn.TextLabel.Font = Enum.Font.TitilliumWeb
	mn.TextLabel.Text = "Azurite"
	mn.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	mn.TextLabel.TextSize = 30.000
	mn.TextLabel.TextWrapped = true

	mn.bar.Name = __UI__._706e616d65()
	mn.bar.Parent = mn.Logo_4
	mn.bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mn.bar.BorderColor3 = Color3.fromRGB(255, 255, 255)
	mn.bar.BorderSizePixel = 0
	mn.bar.Position = UDim2.new(0.0199999996, 0, 0.100000001, 0)
	mn.bar.Size = UDim2.new(0, 100, 0, 0)
	mn.bar.ZIndex = 2

    mn.UIStroke_8.Parent = mn.bar
    mn.UIStroke_8.Name = __UI__._706e616d65()
    mn.UIStroke_8.Color = Color3.fromRGB(255, 255, 255)

	--
	function mn:BaseKey(keyname)
		local mod = {
			key = keyname
		}
		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
            if key:lower() == mod.key then
				mn.Base.Visible = not mn.Base.Visible
            end
        end)
		function mod:Set(v)
			mod.key = v
		end
		function mod:ChangeKey(k)
			mod.key = k
			mod:Set(k)
		end
		return mod
	end

	function mn:CreateDocumentation(Version,texts)
		local element = 'Loading | Docs     | '..tostring(Version)..' | '..tostring(texts)
		__UI__._AddElementToLoading(element)
		local docmn = {
			Base = Instance.new("Frame"),
			UICorner = Instance.new("UICorner"),
			Title = Instance.new("TextLabel"),
			ImageLabel = Instance.new("ImageLabel"),
			ImageLabel_1 = Instance.new("ImageLabel"),
			Stroke = Instance.new("Frame"),
			UICorner_1 = Instance.new("UICorner"),
			UIStroke = Instance.new('UIStroke'),
			Main = Instance.new("Frame"),
			UIListLayout = Instance.new("UIListLayout")
		}
		local number = 2
		for _,v in pairs(mn.Folder_2:GetChildren()) do
			number = number + 0.25
		end
		mn.Documentation.CanvasSize = UDim2.new(0, 0, number, 0)
		docmn.Base.Name = __UI__._706e616d65()
		docmn.Base.Parent = mn.Folder_2
		docmn.Base.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		docmn.Base.Position = UDim2.new(1.25999999, 0, 0.919999957, 0)
		docmn.Base.Size = UDim2.new(0, 450, 0, 250)
		docmn.Base.ZIndex = 2

		docmn.UICorner.Parent = docmn.Base

		docmn.Title.Name = __UI__._706e616d65()
		docmn.Title.Parent = docmn.Base
		docmn.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		docmn.Title.BackgroundTransparency = 1.000
		docmn.Title.Position = UDim2.new(0.371, 0,0.061, 0)
		docmn.Title.Size = UDim2.new(0, 115, 0, 30)
		docmn.Title.ZIndex = 2
		docmn.Title.Font = Enum.Font.TitilliumWeb
		docmn.Title.Text = tostring(Version)
		docmn.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		docmn.Title.TextScaled = true
		docmn.Title.TextSize = 14.000
		docmn.Title.TextWrapped = true

		docmn.ImageLabel.Parent = docmn.Title
		docmn.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		docmn.ImageLabel.BackgroundTransparency = 1.000
		docmn.ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
		docmn.ImageLabel.Position = UDim2.new(-0.247632802, 0, -0.358666658, 0)
		docmn.ImageLabel.Rotation = 20.000
		docmn.ImageLabel.Size = UDim2.new(0, 50, 0, 50)
		docmn.ImageLabel.ZIndex = 2
		docmn.ImageLabel.Image = "rbxassetid://10951993034"

		docmn.ImageLabel_1.Parent = docmn.Title
		docmn.ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		docmn.ImageLabel_1.BackgroundTransparency = 1.000
		docmn.ImageLabel_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
		docmn.ImageLabel_1.Position = UDim2.new(0.812367201, 0, -0.358666658, 0)
		docmn.ImageLabel_1.Rotation = -20.000
		docmn.ImageLabel_1.Size = UDim2.new(0, 50, 0, 50)
		docmn.ImageLabel_1.ZIndex = 2
		docmn.ImageLabel_1.Image = "rbxassetid://10951993034"

		docmn.Stroke.Name = __UI__._706e616d65()
		docmn.Stroke.Parent = docmn.Base
		docmn.Stroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		docmn.Stroke.BackgroundTransparency = 1.000
		docmn.Stroke.Position = UDim2.new(0.111, 0,0.239, 0)
		docmn.Stroke.Size = UDim2.new(0, 300, 0, 10)
		docmn.Stroke.ZIndex = 2

		docmn.UICorner_1.CornerRadius = UDim.new(0, 50)
		docmn.UICorner_1.Parent = docmn.Stroke

		docmn.UIStroke.Parent = docmn.Stroke
		docmn.UIStroke.Color = Color3.fromRGB(255, 255, 255)

		docmn.Main.Name = __UI__._706e616d65()
		docmn.Main.Parent = docmn.Base
		docmn.Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		docmn.Main.BackgroundTransparency = 1.000
		docmn.Main.Position = UDim2.new(0.193333328, 0, 0.320000023, 0)
		docmn.Main.Size = UDim2.new(0, 275, 0, 155)
		docmn.Main.ZIndex = 2

		docmn.UIListLayout.Parent = docmn.Main
		docmn.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		for i,v in pairs(texts) do
			local Text = Instance.new("TextLabel")
			Text.Parent = docmn.Main
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1.000
			Text.Size = UDim2.new(0, 300, 0, 15)
			Text.Font = Enum.Font.SourceSans
			Text.Text = "-> "..tostring(v)
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextSize = 14.000
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left
			Text.TextYAlignment = Enum.TextYAlignment.Top
		end
		__UI__._RemoveElementToLoading(element)
	end
	function mn:Category(c_title)
		local number = 0
		for _,v in pairs(mn.Objects:GetChildren()) do
			number = number + 1
		end
		if number < 8 then
			local _1 = Instance.new("TextButton")
			local UIListLayout = Instance.new("UIListLayout")
			local folder = Instance.new("Frame")
			local cmn = {}
			
			folder.Name = tostring(c_title)
			folder.Parent = mn.Objects
			folder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			folder.BackgroundTransparency = 1.000
			folder.Position = UDim2.new(0.11, 0,0.15, 0)
			folder.Size = UDim2.new(0, 100, 0, 100)
			folder.Visible = true

			UIListLayout.Parent = folder
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			_1.Name = __UI__._706e616d65()
			_1.Parent = mn.CategoryIns
			_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			_1.BackgroundTransparency = 1.000
			_1.BorderSizePixel = 0
			_1.Size = UDim2.new(0, 125, 0, 27)
			_1.ZIndex = 2
			_1.Font = Enum.Font.TitilliumWeb
			_1.TextColor3 = Color3.fromRGB(255, 255, 255)
			_1.TextScaled = true
			_1.Text = tostring(c_title)
			_1.TextSize = 14.000
			_1.TextWrapped = true
			_1.MouseButton1Click:Connect(function()
				mn.Settings_2.Visible = false
				mn.Executor_2.Visible = false
				mn.Documentation.Visible = false
				mn.Scroll.CanvasPosition = Vector2.new(0, 0)
				for _,v in pairs(mn.Objects:GetChildren()) do
					__UI__._436c6f736543617465676f7279(v)
				end
				for _,v in pairs(mn.Objects:GetChildren()) do
					if v.Name == tostring(c_title) then
						__UI__._46697843616e766173(v)
						__UI__._4f70656e43617465676f7279(v)
					end
				end
			end)
			table.insert(mn.table_category, _1.Name)
			
			function cmn:Label(c_title)
				local __element__ = 'Loading | Label    | '..tostring(_1.Text)..' | '..tostring(c_title)
				__UI__._AddElementToLoading(__element__)
				local cpar = {
					Value = c_title,
					Base = Instance.new("Frame"),
					UICorner_1 = Instance.new("UICorner"),
					Logo = Instance.new("ImageLabel"),
					Title = Instance.new("TextLabel")
				}

				function cpar:Set(Value)
					cpar.Value = Value
					cpar.Title.Text = cpar.Value
				end
				
				cpar.Base.Name = __UI__._706e616d65()
				cpar.Base.Parent = folder
				cpar.Base.BackgroundColor3 = mn.Up.BackgroundColor3
				cpar.Base.Size = UDim2.new(0, 450, 0, 35)
				cpar.Base.ZIndex = 2
				cpar.Base.Visible = false


				cpar.UICorner_1.Parent = cpar.Base

				cpar.Logo.Name = __UI__._706e616d65()
				cpar.Logo.Parent = cpar.Base
				cpar.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Logo.BackgroundTransparency = 1.000
				cpar.Logo.Position = UDim2.new(0.0600000024, 0, 0.117857151, 0)
				cpar.Logo.Size = UDim2.new(0, 25, 0, 25)
				cpar.Logo.ZIndex = 2
				cpar.Logo.Image = "rbxassetid://7743874740"

				cpar.Title.Name = __UI__._706e616d65()
				cpar.Title.Parent = cpar.Base
				cpar.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.BackgroundTransparency = 1.000
				cpar.Title.Position = UDim2.new(0.168888882, 0, 0.0607145093, 0)
				cpar.Title.Size = UDim2.new(0, 115, 0, 30)
				cpar.Title.ZIndex = 2
				cpar.Title.Font = Enum.Font.Gotham
				cpar.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.TextSize = 14
				cpar.Title.Text = cpar.Value
				cpar.Title.TextXAlignment = Enum.TextXAlignment.Left

				__UI__._RemoveElementToLoading(__element__)
				return cpar
			end
			function cmn:Button(c_title,caller)
				local __element__ = 'Loading | Button   | '..tostring(_1.Text)..' | '..tostring(c_title)..' | '..tostring(caller)
				__UI__._AddElementToLoading(__element__)
				local callback = caller or function() end
				local cpar = {
					Base = Instance.new("Frame"),
					UICorner = Instance.new("UICorner"),
					Logo = Instance.new("ImageLabel"),
					Title = Instance.new("TextLabel"),
					Call = Instance.new("TextButton")
				}
				cpar.Base.Name = __UI__._706e616d65()
				cpar.Base.Parent = folder
				cpar.Base.BackgroundColor3 = mn.Up.BackgroundColor3
				cpar.Base.Size = UDim2.new(0, 450, 0, 35)
				cpar.Base.ZIndex = 2
				cpar.Base.Visible = false

				cpar.UICorner.Parent = cpar.Base

				cpar.Logo.Name = __UI__._706e616d65()
				cpar.Logo.Parent = cpar.Base
				cpar.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Logo.BackgroundTransparency = 1.000
				cpar.Logo.Position = UDim2.new(0.0600000024, 0, 0.117857151, 0)
				cpar.Logo.Size = UDim2.new(0, 25, 0, 25)
				cpar.Logo.ZIndex = 2
				cpar.Logo.Image = "rbxassetid://7734010488"

				cpar.Title.Name = __UI__._706e616d65()
				cpar.Title.Parent = cpar.Base
				cpar.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.BackgroundTransparency = 1.000
				cpar.Title.Position = UDim2.new(0.168888882, 0, 0.0607145093, 0)
				cpar.Title.Size = UDim2.new(0, 115, 0, 30)
				cpar.Title.ZIndex = 2
				cpar.Title.Font = Enum.Font.Gotham
				cpar.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.TextSize = 14
				cpar.Title.TextXAlignment = Enum.TextXAlignment.Left
				cpar.Title.Text = tostring(c_title)

				cpar.Call.Name = __UI__._706e616d65()
				cpar.Call.Parent = cpar.Base
				cpar.Call.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Call.BackgroundTransparency = 1.000
				cpar.Call.Size = UDim2.new(0, 450, 0, 35)
				cpar.Call.ZIndex = 3
				cpar.Call.Font = Enum.Font.Gotham
				cpar.Call.Text = ""
				cpar.Call.TextColor3 = Color3.fromRGB(0, 0, 0)
				cpar.Call.TextSize = 14
				cpar.Call.MouseButton1Click:Connect(function() callback() end)

				__UI__._RemoveElementToLoading(__element__)
			end
			function cmn:Toggle(c_title,status,callfunc)

				local ElementID    = tostring(_1.Text)..' | '..tostring(c_title)
				local ElementValue = __UI__.ReturnConfig(ElementID,tostring(status))

				local __BaseNex__ = 'Loading | Toggle   | '..ElementID..' | '
				local __element__ = __BaseNex__..tostring(ElementValue)

				__UI__._AddElementToLoading(__element__)
				local cpar = {
					Value = ElementValue,
					callfunc = callfunc or function() end,
					open = "",
					close = "",
					Base = Instance.new("Frame"),
					UICorner_1 = Instance.new("UICorner"),
					Logo = Instance.new("ImageLabel"),
					Title = Instance.new("TextLabel"),
					toggle = Instance.new("Frame"),
					UICorner_2 = Instance.new("UICorner"),
					stat = Instance.new("TextButton"),
					UICorner_3 = Instance.new("UICorner"),
				}

				function cpar:Set(Value)
					cpar.Value = Value
					__element__ = __UI__.AddConfig(__BaseNex__, Value)
					if cpar.Value == "" then
						cpar.Value = "None"
					end
					if cpar.Value == true then
						__UI__._6f70656e(cpar.stat)
					else
						__UI__._636c6f7365(cpar.stat)
					end
					pcall(cpar.callfunc,cpar.Value)
				end
				function cpar:Reset()
					cpar.Value = status
					cpar:Set(cpar.Value)
				end
				function cpar:Toggle()
					cpar.Value = not cpar.Value
					cpar:Set(cpar.Value)
				end
				
				cpar.Base.Name = __UI__._706e616d65()
				cpar.Base.Parent = folder
				cpar.Base.BackgroundColor3 = mn.Up.BackgroundColor3
				cpar.Base.Size = UDim2.new(0, 450, 0, 35)
				cpar.Base.ZIndex = 2
				cpar.Base.Visible = false


				cpar.UICorner_1.Parent = cpar.Base

				cpar.Logo.Name = __UI__._706e616d65()
				cpar.Logo.Parent = cpar.Base
				cpar.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Logo.BackgroundTransparency = 1.000
				cpar.Logo.Position = UDim2.new(0.0600000024, 0, 0.117857151, 0)
				cpar.Logo.Size = UDim2.new(0, 25, 0, 25)
				cpar.Logo.ZIndex = 2
				cpar.Logo.Image = "rbxassetid://7733715400"

				cpar.Title.Name = __UI__._706e616d65()
				cpar.Title.Parent = cpar.Base
				cpar.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.BackgroundTransparency = 1.000
				cpar.Title.Position = UDim2.new(0.168888882, 0, 0.0607145093, 0)
				cpar.Title.Size = UDim2.new(0, 115, 0, 30)
				cpar.Title.ZIndex = 2
				cpar.Title.Font = Enum.Font.Gotham
				cpar.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.TextSize = 14
				cpar.Title.Text = tostring(c_title)
				cpar.Title.TextXAlignment = Enum.TextXAlignment.Left

				cpar.toggle.Position = UDim2.new(0.751, 0,0.138, 0)
				cpar.toggle.Name = __UI__._706e616d65()
				cpar.toggle.Parent = cpar.Base
				cpar.toggle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
				cpar.toggle.Size = UDim2.new(0, 45, 0, 25)
				cpar.toggle.ZIndex = 2

				cpar.UICorner_2.CornerRadius = UDim.new(0, 25)
				cpar.UICorner_2.Parent = cpar.toggle

				cpar.stat.Name = __UI__._706e616d65()
				cpar.stat.Parent = cpar.toggle
				cpar.stat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				if cpar.Value == true then
					cpar.stat.Position = UDim2.new(0.538, 0,0.08, 0)
				else
					cpar.stat.Position = UDim2.new(0.05, 0,0.08, 0)
				end
				cpar.stat.Size = UDim2.new(0, 20, 0, 20)
				cpar.stat.Font = Enum.Font.SourceSans
				cpar.stat.Text = ""
				cpar.stat.TextColor3 = Color3.fromRGB(0, 0, 0)
				cpar.stat.TextSize = 14.000
				cpar.stat.MouseButton1Click:Connect(cpar.Toggle)

				cpar.UICorner_3.CornerRadius = UDim.new(0, 100)
				cpar.UICorner_3.Parent = cpar.stat

				__UI__._RemoveElementToLoading(__element__)
				
				return cpar
			end
			function cmn:TextBox(c_title,StartText,ClearFocus,callfunc)

				local ElementID    = tostring(_1.Text)..' | '..tostring(c_title)..' | '..tostring(ClearFocus)
				local ElementValue = __UI__.ReturnConfig(ElementID,tostring(StartText))

				local __BaseNex__ = 'Loading | TextBox  | '..ElementID..' | '
				local __element__ = __BaseNex__..tostring(ElementValue)

				__UI__._AddElementToLoading(__element__)
				local cpar = {
					Value = ElementValue,
					callfunc = callfunc or function() end,
					Base = Instance.new("Frame"),
					UICorner_1 = Instance.new("UICorner"),
					Logo = Instance.new("ImageLabel"),
					Title = Instance.new("TextLabel"),
					TextBox = Instance.new("TextBox"),
					UICorner_2 = Instance.new("UICorner")
				}

				function cpar:Set(Value)
					cpar.Value = Value
					__element__ = __UI__.AddConfig(__BaseNex__, Value)
					if cpar.Value == "" then
						cpar.Value = "None"
					end
					pcall(cpar.callfunc,cpar.Value)
				end


				cpar.Base.Name = __UI__._706e616d65()
				cpar.Base.Parent = folder
				cpar.Base.BackgroundColor3 = mn.Up.BackgroundColor3
				cpar.Base.Size = UDim2.new(0, 450, 0, 35)
				cpar.Base.ZIndex = 2
				cpar.Base.Visible = false

				cpar.UICorner_1.Parent = cpar.Base

				cpar.Logo.Name = __UI__._706e616d65()
				cpar.Logo.Parent = cpar.Base
				cpar.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Logo.BackgroundTransparency = 1.000
				cpar.Logo.Position = UDim2.new(0.0600000024, 0, 0.117857151, 0)
				cpar.Logo.Size = UDim2.new(0, 25, 0, 25)
				cpar.Logo.ZIndex = 2
				cpar.Logo.Image = "rbxassetid://8997388094"

				cpar.Title.Name = __UI__._706e616d65()
				cpar.Title.Parent = cpar.Base
				cpar.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.BackgroundTransparency = 1.000
				cpar.Title.Position = UDim2.new(0.168888882, 0, 0.0607145093, 0)
				cpar.Title.Size = UDim2.new(0, 115, 0, 30)
				cpar.Title.ZIndex = 2
				cpar.Title.Font = Enum.Font.Gotham
				cpar.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.TextSize = 14
				cpar.Title.TextXAlignment = Enum.TextXAlignment.Left
				cpar.Title.Text = c_title

				cpar.TextBox.Name = __UI__._706e616d65()
				cpar.TextBox.Parent = cpar.Base
				cpar.TextBox.BackgroundColor3 = Color3.fromRGB(33,33,33)
				cpar.TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
				cpar.TextBox.BorderSizePixel = 0
				cpar.TextBox.Position = UDim2.new(0.624777794, 0, 0.174999997, 0)
				cpar.TextBox.Size = UDim2.new(0, 100, 0, 23)
				cpar.TextBox.ZIndex = 2
				cpar.TextBox.Font = Enum.Font.TitilliumWeb
				cpar.TextBox.Text = cpar.Value
				cpar.TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.TextBox.TextScaled = true
				cpar.TextBox.TextSize = 15.000
				cpar.TextBox.TextWrapped = true
				cpar.TextBox.ClearTextOnFocus = ClearFocus
				cpar.TextBox.FocusLost:Connect(function()
					cpar.Value = cpar.TextBox.Text
					cpar:Set(cpar.Value)
				end)
				cpar.UICorner_2.Parent = cpar.TextBox

				__UI__._RemoveElementToLoading(__element__)
				
				return cpar
			end
			function cmn:Slider(c_title,StartNum,min,max,caller)

				local ElementID    = tostring(_1.Text)..' | '..tostring(c_title)..' | '..tostring(min)..' | '..tostring(max)
				local ElementValue = __UI__.ReturnConfig(ElementID,tostring(StartNum))

				local __BaseNex__ = 'Loading | Slider  | '..ElementID..' | '
				local __element__ = __BaseNex__..tostring(ElementValue)

				__UI__._AddElementToLoading(__element__)
				local callback = caller or function() end
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				local Value
				local moveconnection
				local releaseconnection
				local cpar = {
					Value = ElementValue,
					Base = Instance.new("Frame"),
					UICorner_1 = Instance.new("UICorner"),
					Logo = Instance.new("ImageLabel"),
					Title = Instance.new("TextLabel"),
					Slider = Instance.new("TextButton"),
					UICorner_2 = Instance.new("UICorner"),
					Bar = Instance.new("Frame"),
					UICorner_3 = Instance.new("UICorner"),
					Stroke = Instance.new("Frame"),
					UICorner_4 = Instance.new("UICorner"),
					TextSlider = Instance.new("TextLabel")
				}

				function cpar:Set(Value)
					cpar.Value = Value
					__element__ = __UI__.AddConfig(__BaseNex__, Value)
					if cpar.Value == "" then
						cpar.Value = "None"
					end
					pcall(callback,cpar.Value)
				end
				
				cpar.Base.Name = __UI__._706e616d65()
				cpar.Base.Parent = folder
				cpar.Base.BackgroundColor3 = mn.Up.BackgroundColor3
				cpar.Base.Size = UDim2.new(0, 450, 0, 35)
				cpar.Base.ZIndex = 2
				cpar.Base.Visible = false

				cpar.UICorner_1.Parent = cpar.Base

				cpar.Logo.Name = __UI__._706e616d65()
				cpar.Logo.Parent = cpar.Base
				cpar.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Logo.BackgroundTransparency = 1.000
				cpar.Logo.Position = UDim2.new(0.0600000024, 0, 0.117857151, 0)
				cpar.Logo.Size = UDim2.new(0, 25, 0, 25)
				cpar.Logo.ZIndex = 2
				cpar.Logo.Image = "rbxassetid://7734058803"

				cpar.Title.Name = __UI__._706e616d65()
				cpar.Title.Parent = cpar.Base
				cpar.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.BackgroundTransparency = 1.000
				cpar.Title.Position = UDim2.new(0.168888882, 0, 0.0607145093, 0)
				cpar.Title.Size = UDim2.new(0, 115, 0, 30)
				cpar.Title.ZIndex = 2
				cpar.Title.Font = Enum.Font.Gotham
				cpar.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Title.TextSize = 14
				cpar.Title.TextXAlignment = Enum.TextXAlignment.Left
				cpar.Title.Text = tostring(c_title)

				cpar.Slider.Name = __UI__._706e616d65()
				cpar.Slider.Parent = cpar.Base
				cpar.Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Slider.BackgroundTransparency = 1.000
				cpar.Slider.Position = UDim2.new(0.513000011, 0, 0.342999995, 0)
				cpar.Slider.Size = UDim2.new(0, 150, 0, 10)
				cpar.Slider.ZIndex = 3
				cpar.Slider.Font = Enum.Font.SourceSans
				cpar.Slider.Text = ""
				cpar.Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
				cpar.Slider.TextSize = 14.000

				cpar.UICorner_2.CornerRadius = UDim.new(0, 50)
				cpar.UICorner_2.Parent = cpar.Slider

				cpar.Stroke.Name = __UI__._706e616d65()
				cpar.Stroke.Parent = cpar.Base
				cpar.Stroke.BackgroundColor3 = Color3.fromRGB(33,33,33)
				cpar.Stroke.Position = UDim2.new(0.513333321, 0, 0.342857152, 0)
				cpar.Stroke.Size = UDim2.new(0, 150, 0, 10)
				cpar.Stroke.ZIndex = 2

				cpar.Bar.Name = __UI__._706e616d65()
				cpar.Bar.Parent = cpar.Slider
				cpar.Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.Bar.Size = UDim2.new(0, ((150 / tonumber(max)) * StartNum), 0, 10)
				cpar.Bar.ZIndex = 2

				cpar.UICorner_3.CornerRadius = UDim.new(0, 50)
				cpar.UICorner_3.Parent = cpar.Bar

				cpar.UICorner_4.CornerRadius = UDim.new(0, 50)
				cpar.UICorner_4.Parent = cpar.Stroke

				cpar.TextSlider.Name = __UI__._706e616d65()
				cpar.TextSlider.Parent = cpar.Base
				cpar.TextSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cpar.TextSlider.BackgroundTransparency = 1.000
				cpar.TextSlider.Position = UDim2.new(0.851111114, 0, 0.171428576, 0)
				cpar.TextSlider.Size = UDim2.new(0, 60, 0, 20)
				cpar.TextSlider.ZIndex = 2
				cpar.TextSlider.Font = Enum.Font.TitilliumWeb
				cpar.TextSlider.Text = tostring(StartNum)
				cpar.TextSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
				cpar.TextSlider.TextScaled = true
				cpar.TextSlider.TextSize = 14.000
				cpar.TextSlider.TextWrapped = true

				cpar.Slider.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(max) - tonumber(min)) / 150) * cpar.Bar.AbsoluteSize.X) + tonumber(min)) or 0
					cpar:Set(Value)
					pcall(function()
						callback(Value)
					end)
					cpar.TextSlider.Text = Value
					cpar.Bar.Size = UDim2.new(0, math.clamp(mouse.X - cpar.Bar.AbsolutePosition.X, 0, 150), 0, 10)
					moveconnection = mouse.Move:Connect(function()
						Value = math.floor((((tonumber(max) - tonumber(min)) / 150) * cpar.Bar.AbsoluteSize.X) + tonumber(min))
						cpar:Set(Value)
						pcall(function()
							callback(Value)
						end)
						cpar.TextSlider.Text = Value
						cpar.Bar.Size = UDim2.new(0, math.clamp(mouse.X - cpar.Bar.AbsolutePosition.X, 0, 150), 0, 10)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(max) - tonumber(min)) / 150) * cpar.Bar.AbsoluteSize.X) + tonumber(min))
							cpar:Set(Value)
							pcall(function()
								callback(Value)
							end)
							cpar.TextSlider.Text = Value
							cpar.Bar.Size = UDim2.new(0, math.clamp(mouse.X - cpar.Bar.AbsolutePosition.X, 0, 150), 0, 10)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
			end
			return cmn
		end
		__UI__._RemoveElementToLoading(element)
	end
	repeat wait() until #mn.NotLoadedElements == 0
	mn.Base.Visible = true
	return mn
end

repeat wait() until __UI__