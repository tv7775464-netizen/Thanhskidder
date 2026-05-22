--// This file was created by XHider v1.2

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local TS = game:GetService("TweenService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

local CFG = {
	Title = "TDZ Script",
	Sub = "By real_TDZ",

	V1_NAME = "V1",
	V2_NAME = "Coming soon",

	V1_TAG = "MAIN V1",
	V2_TAG = "MAIN V2",

	V1_DESC = {"No-Key","Ui-Redz","Tiếng Việt"},
	V2_DESC = {"No-Key","Ui-Redz","English"},

	V1_IMG = "rbxassetid://137859155367423",
	V2_IMG = "rbxassetid://137859155367423",
	ANIME_IMG = "rbxassetid://85276513122834",

	V1_URL = "loadstring(game:HttpGet("https://raw.githubusercontent.com/tv7775464-netizen/Thanhskidder/refs/heads/main/tungtungacwy.luau"))()",
	V2_URL = "memaybeo",
}

local old = PG:FindFirstChild("TUAN_SelectUI")
if old then old:Destroy() end

local function c3(r,g,b)
	return Color3.fromRGB(r,g,b)
end

local function mk(cl,p)
	local i = Instance.new(cl)
	for k,v in pairs(p) do
		i[k]=v
	end
	return i
end

local function cr(p,r)
	local u=Instance.new("UICorner")
	u.CornerRadius=UDim.new(0,r or 10)
	u.Parent=p
	return u
end

-- BLUE STROKE
local function st(p,t,col,tr)
	local s=Instance.new("UIStroke")
	s.Thickness=t or 1
	s.Color=col or c3(70,150,255)
	s.Transparency=tr or 0
	s.Parent=p
	return s
end

local function gr(p,a,b,rot)
	local g=Instance.new("UIGradient")
	g.Color=ColorSequence.new(a,b)
	g.Rotation=rot or 0
	g.Parent=p
	return g
end

local function tw(o,t,props,es,ed)
	local x=TS:Create(o,TweenInfo.new(t,es or Enum.EasingStyle.Quad,ed or Enum.EasingDirection.Out),props)
	x:Play()
	return x
end

local FONT = Enum.Font.Arcade

local gui = mk("ScreenGui",{
	Name="TUAN_SelectUI",
	ResetOnSpawn=false,
	IgnoreGuiInset=true,
	ZIndexBehavior=Enum.ZIndexBehavior.Sibling,
	Parent=PG
})

local dim = mk("Frame",{
	BackgroundColor3=Color3.new(0,0,0),
	BackgroundTransparency=1,
	BorderSizePixel=0,
	Size=UDim2.fromScale(1,1),
	Parent=gui
})

local main = mk("Frame",{
	Name="Main",
	AnchorPoint=Vector2.new(.5,.5),
	Position=UDim2.fromScale(1.15,.12),
	Size=UDim2.new(0,560,0,310),
	BackgroundColor3=c3(10,10,14),
	BackgroundTransparency=.05,
	BorderSizePixel=0,
	Parent=gui
})

cr(main,16)
st(main,2,c3(70,150,255),.12)
gr(main,c3(18,18,28),c3(6,6,10),90)

local scale = mk("UIScale",{Scale=.9,Parent=main})

local top = mk("Frame",{
	BackgroundTransparency=1,
	Position=UDim2.new(0,14,0,12),
	Size=UDim2.new(1,-28,0,54),
	Parent=main
})

local av = mk("ImageLabel",{
	BackgroundColor3=c3(18,18,24),
	BorderSizePixel=0,
	Size=UDim2.new(0,42,0,42),
	Position=UDim2.new(0,0,0,6),
	Image=("rbxthumb://type=AvatarHeadShot&id=%d&w=150&h=150"):format(LP.UserId),
	Parent=top
})

cr(av,12)
st(av,1,c3(70,150,255),.35)

local ttl = mk("TextLabel",{
	BackgroundTransparency=1,
	Position=UDim2.new(0,54,0,2),
	Size=UDim2.new(1,-54,0,26),
	Font=FONT,
	TextSize=18,
	TextXAlignment=Enum.TextXAlignment.Left,
	TextColor3=c3(240,240,255),
	Text=CFG.Title:format(LP.Name),
	Parent=top
})

local sub = mk("TextLabel",{
	BackgroundTransparency=1,
	Position=UDim2.new(0,54,0,26),
	Size=UDim2.new(1,-54,0,22),
	Font=FONT,
	TextSize=12,
	TextXAlignment=Enum.TextXAlignment.Left,
	TextColor3=c3(170,170,190),
	Text=CFG.Sub:format(LP.Name,tostring(LP.UserId)),
	Parent=top
})

local anime = mk("ImageLabel",{
	Name="LoLi",
	BackgroundTransparency=1,
	BorderSizePixel=0,
	AnchorPoint=Vector2.new(1,0),
	Position=UDim2.new(1,-18,0,18),
	Size=UDim2.new(0,140,0,92),
	Image=CFG.ANIME_IMG,
	ScaleType=Enum.ScaleType.Fit,
	Parent=main
})

cr(anime,12)

local pick = mk("TextLabel",{
	BackgroundTransparency=1,
	Position=UDim2.new(0,14,0,70),
	Size=UDim2.new(1,-28,0,18),
	Font=FONT,
	TextSize=12,
	TextXAlignment=Enum.TextXAlignment.Left,
	TextColor3=c3(220,220,235),
	Text=">> CHỌN MENU",
	Parent=main
})

local cols = mk("Frame",{
	BackgroundTransparency=1,
	Position=UDim2.new(0,14,0,95),
	Size=UDim2.new(1,-28,0,150),
	Parent=main
})

-- CARD
local function makeCard(side,tagText,nameText,imgId,desc)

	local card = mk("Frame",{
		BackgroundColor3=c3(14,14,20),
		BorderSizePixel=0,
		Size=UDim2.new(.5,-6,1,0),
		Position=side=="V1" and UDim2.new(0,0,0,0) or UDim2.new(.5,6,0,0),
		Parent=cols
	})

	cr(card,14)

	local stroke=st(card,2,c3(100,170,255),.72)

	local tag = mk("TextLabel",{
		BackgroundColor3=side=="V1" and c3(60,140,255) or c3(90,170,255),
		BorderSizePixel=0,
		Position=UDim2.new(0,10,0,10),
		Size=UDim2.new(0,70,0,22),
		Font=FONT,
		TextSize=12,
		TextColor3=c3(255,255,255),
		Text=tagText,
		Parent=card
	})

	cr(tag,9)

	local img = mk("ImageLabel",{
		BackgroundColor3=c3(8,8,12),
		BorderSizePixel=0,
		Size=UDim2.new(0,54,0,54),
		Position=UDim2.new(1,-64,0,8),
		Image=imgId,
		ScaleType=Enum.ScaleType.Crop,
		Parent=card
	})

	cr(img,12)
	st(img,1,c3(70,150,255),.35)

	local name = mk("TextLabel",{
		BackgroundTransparency=1,
		Position=UDim2.new(0,10,0,36),
		Size=UDim2.new(1,-74,0,20),
		Font=FONT,
		TextSize=14,
		TextXAlignment=Enum.TextXAlignment.Left,
		TextColor3=c3(235,235,250),
		Text=nameText,
		Parent=card
	})

	local descLbl = mk("TextLabel",{
		BackgroundTransparency=1,
		Position=UDim2.new(0,10,0,58),
		Size=UDim2.new(1,-20,0,56),
		Font=FONT,
		TextSize=11,
		TextXAlignment=Enum.TextXAlignment.Left,
		TextYAlignment=Enum.TextYAlignment.Top,
		TextColor3=c3(170,170,190),
		TextWrapped=true,
		Text=table.concat(desc,"\n"),
		Parent=card
	})

	local btn = mk("TextButton",{
		BackgroundColor3=c3(18,18,26),
		BorderSizePixel=0,
		Position=UDim2.new(0,10,1,-36),
		Size=UDim2.new(1,-20,0,28),
		Font=FONT,
		TextSize=12,
		TextColor3=c3(240,240,255),
		Text="CHỌN "..side,
		AutoButtonColor=false,
		Parent=card
	})

	cr(btn,10)
	st(btn,1,c3(70,150,255),.7)

	return {
		Card=card,
		Stroke=stroke,
		Button=btn,
		Img=imgId,
		Name=nameText,
		Tag=tagText
	}

end

local C1 = makeCard("V1",CFG.V1_TAG,CFG.V1_NAME,CFG.V1_IMG,CFG.V1_DESC)
local C2 = makeCard("V2",CFG.V2_TAG,CFG.V2_NAME,CFG.V2_IMG,CFG.V2_DESC)

local start = mk("TextButton",{
	BackgroundColor3=c3(50,130,255),
	BorderSizePixel=0,
	AnchorPoint=Vector2.new(.5,1),
	Position=UDim2.new(.5,0,1,-14),
	Size=UDim2.new(1,-28,0,46),
	Font=FONT,
	TextSize=14,
	TextColor3=c3(255,255,255),
	Text="CHỌN SCRIPT ĐỂ DÙNG",
	AutoButtonColor=false,
	Parent=main
})

cr(start,14)

-- LOGIC
local selected=nil

local function setSel(which,C)

	selected=which

	for _,it in ipairs({C1,C2}) do

		local on = it==C

		tw(it.Stroke,.12,{Transparency=on and 0 or .72})

		tw(it.Card,.12,{
			BackgroundColor3=on and c3(16,16,24) or c3(14,14,20)
		})

	end

	start.Text=("BẮT ĐẦU: %s"):format(which)

end

C1.Button.MouseButton1Click:Connect(function()
	setSel("V1",C1)
end)

C2.Button.MouseButton1Click:Connect(function()
	setSel("V2",C2)
end)

local function RunV1()
    local ok,err = pcall(function()
        loadstring(game:HttpGet("https://pastefy.app/AM25eAps/raw"))()
     
    end)

    if not ok then
        warn("V1 LOAD ERROR:",err)
    end
end

local function RunV2()
    local ok,err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhDangNhoEm/TuanAnhIOS/refs/heads/main/koby"))()
    end)

    if not ok then
        warn("V2 LOAD ERROR:",err)
    end
end
local function openUI()

	tw(dim,.18,{BackgroundTransparency=.45})

	tw(scale,.28,{Scale=1})

	tw(main,.36,{
		Position=UDim2.fromScale(.5,.53)
	},Enum.EasingStyle.Back,Enum.EasingDirection.Out)

end

local function closeUI(cb)

	tw(dim,.18,{BackgroundTransparency=1})

	tw(scale,.2,{Scale=.92})

	tw(main,.3,{
		Position=UDim2.fromScale(-0.15,-0.1)
	})

	task.delay(.32,function()

		if gui then
			gui:Destroy()
		end

		if cb then
			cb()
		end

	end)

end

start.MouseButton1Click:Connect(function()

	if not selected then

		start.Text="CHỌN V1 / V2 TRƯỚC"

		task.delay(.7,function()

			if start and start.Parent then
				start.Text="CHỌN SCRIPT ĐỂ BẮT ĐẦU"
			end

		end)

		return
	end

	closeUI(function()

		if selected=="V1" then
			RunV1()
		else
			RunV2()
		end

	end)

end)

openUI()