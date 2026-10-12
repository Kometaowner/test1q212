-- LocalScript
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local TS = game:GetService("TweenService")
local SS = game:GetService("SoundService")
local TextService = game:GetService("TextService")
local player = Players.LocalPlayer
local pg = player:WaitForChild("PlayerGui")

local BG = Color3.fromRGB(22, 22, 26)
local HDRBG = Color3.fromRGB(14, 14, 18)
local BRD = Color3.fromRGB(50, 50, 60)
local BRDS = Color3.fromRGB(40, 40, 48)
local TXT = Color3.fromRGB(230, 230, 240)
local TXTD = Color3.fromRGB(150, 150, 165)
local GRN = Color3.fromRGB(165, 205, 57)
local BLU = Color3.fromRGB(94, 150, 255)
local RED = Color3.fromRGB(255, 100, 110)
local BTN_BG = Color3.fromRGB(28, 28, 34)
local BTN_HOVER = Color3.fromRGB(40, 40, 48)

local function click()
	local s = Instance.new("Sound", SS)
	s.SoundId = "rbxassetid://9113884008"
	s.Volume = 2
	s:Play()
	s.Ended:Connect(function() s:Destroy() end)
end

local old = pg:FindFirstChild("SvinyaMenu")
if old then old:Destroy() end

local sg = Instance.new("ScreenGui")
sg.Name = "SvinyaMenu"
sg.ResetOnSpawn = false
sg.Parent = pg

local codeFont = Enum.Font.Code
local titleSize = 14
local svinyaW = TextService:GetTextSize("svinya.", titleSize, codeFont, Vector2.new(500, 50)).X

---------------------------------------------------------
-- ПАРОЛЬ
---------------------------------------------------------
local passWin = Instance.new("Frame", sg)
passWin.Name = "Password"
passWin.Size = UDim2.new(0, 320, 0, 180)
passWin.Position = UDim2.new(0.5, -160, 0.5, -120)
passWin.BackgroundColor3 = BG
passWin.BorderColor3 = BRD
passWin.BorderSizePixel = 1
passWin.Active = true

local pCorner = Instance.new("UICorner", passWin)
pCorner.CornerRadius = UDim.new(0, 6)

local ptop = Instance.new("Frame", passWin)
ptop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ptop.BorderSizePixel = 0
ptop.Size = UDim2.new(1, 0, 0, 2)
local pgrad = Instance.new("UIGradient", ptop)
pgrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(94, 150, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 94, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 150))
})

local phdr = Instance.new("Frame", passWin)
phdr.Size = UDim2.new(1, 0, 0, 30)
phdr.Position = UDim2.new(0, 0, 0, 2)
phdr.BackgroundColor3 = HDRBG
phdr.BorderSizePixel = 0

local phdrCorner = Instance.new("UICorner", phdr)
phdrCorner.CornerRadius = UDim.new(0, 6)

local phdrFix = Instance.new("Frame", phdr)
phdrFix.Size = UDim2.new(1, 0, 0, 10)
phdrFix.Position = UDim2.new(0, 0, 1, -10)
phdrFix.BackgroundColor3 = HDRBG
phdrFix.BorderSizePixel = 0

local ph1 = Instance.new("TextLabel", phdr)
ph1.BackgroundTransparency = 1
ph1.Position = UDim2.new(0, 12, 0, 0)
ph1.Size = UDim2.new(0, svinyaW + 2, 1, 0)
ph1.Font = codeFont
ph1.Text = "svinya."
ph1.TextColor3 = Color3.fromRGB(240, 240, 245)
ph1.TextSize = titleSize
ph1.TextXAlignment = Enum.TextXAlignment.Left

local ph2 = Instance.new("TextLabel", phdr)
ph2.BackgroundTransparency = 1
ph2.Position = UDim2.new(0, 12 + svinyaW, 0, 0)
ph2.Size = UDim2.new(0, 30, 1, 0)
ph2.Font = codeFont
ph2.Text = "cc"
ph2.TextColor3 = GRN
ph2.TextSize = titleSize
ph2.TextXAlignment = Enum.TextXAlignment.Left

local ph3 = Instance.new("TextLabel", phdr)
ph3.BackgroundTransparency = 1
ph3.Position = UDim2.new(0, 12 + svinyaW + 20, 0, 0)
ph3.Size = UDim2.new(1, -50, 1, 0)
ph3.Font = codeFont
ph3.Text = " | auth"
ph3.TextColor3 = Color3.fromRGB(240, 240, 245)
ph3.TextSize = titleSize
ph3.TextXAlignment = Enum.TextXAlignment.Left

local pdiv = Instance.new("Frame", passWin)
pdiv.BackgroundColor3 = BRDS
pdiv.BorderSizePixel = 0
pdiv.Position = UDim2.new(0, 0, 0, 32)
pdiv.Size = UDim2.new(1, 0, 0, 1)

local pLabel = Instance.new("TextLabel", passWin)
pLabel.BackgroundTransparency = 1
pLabel.Position = UDim2.new(0, 16, 0, 46)
pLabel.Size = UDim2.new(1, -32, 0, 16)
pLabel.Font = codeFont
pLabel.Text = "введите пароль для доступа"
pLabel.TextColor3 = TXTD
pLabel.TextSize = 11
pLabel.TextXAlignment = Enum.TextXAlignment.Left

local passBox = Instance.new("TextBox", passWin)
passBox.BackgroundColor3 = BTN_BG
passBox.BorderColor3 = BRD
passBox.BorderSizePixel = 0
passBox.Position = UDim2.new(0, 16, 0, 68)
passBox.Size = UDim2.new(1, -32, 0, 38)
passBox.Font = codeFont
passBox.Text = ""
passBox.PlaceholderText = ""
passBox.PlaceholderColor3 = TXTD
passBox.TextColor3 = TXT
passBox.TextSize = 14
passBox.ClearTextOnFocus = false

local pBoxCorner = Instance.new("UICorner", passBox)
pBoxCorner.CornerRadius = UDim.new(0, 4)

local pBoxStroke = Instance.new("UIStroke", passBox)
pBoxStroke.Color = BRD
pBoxStroke.Thickness = 1
pBoxStroke.Transparency = 0.5

local passStatus = Instance.new("TextLabel", passWin)
passStatus.BackgroundTransparency = 1
passStatus.Position = UDim2.new(0, 16, 0, 110)
passStatus.Size = UDim2.new(1, -32, 0, 14)
passStatus.Font = codeFont
passStatus.Text = ""
passStatus.TextColor3 = RED
passStatus.TextSize = 10
passStatus.TextXAlignment = Enum.TextXAlignment.Left

local passBtn = Instance.new("TextButton", passWin)
passBtn.BackgroundColor3 = BTN_BG
passBtn.BorderSizePixel = 0
passBtn.Position = UDim2.new(0, 16, 1, -44)
passBtn.Size = UDim2.new(1, -32, 0, 30)
passBtn.Font = codeFont
passBtn.Text = "войти"
passBtn.TextColor3 = TXT
passBtn.TextSize = 13
passBtn.AutoButtonColor = false

local pBtnCorner = Instance.new("UICorner", passBtn)
pBtnCorner.CornerRadius = UDim.new(0, 4)

local pBtnStroke = Instance.new("UIStroke", passBtn)
pBtnStroke.Color = BRD
pBtnStroke.Thickness = 1
pBtnStroke.Transparency = 0.5

passBtn.MouseEnter:Connect(function()
	TS:Create(passBtn, TweenInfo.new(0.12), {BackgroundColor3 = BTN_HOVER}):Play()
	TS:Create(pBtnStroke, TweenInfo.new(0.12), {Transparency = 0}):Play()
end)
passBtn.MouseLeave:Connect(function()
	TS:Create(passBtn, TweenInfo.new(0.12), {BackgroundColor3 = BTN_BG}):Play()
	TS:Create(pBtnStroke, TweenInfo.new(0.12), {Transparency = 0.5}):Play()
end)

passWin.Position = UDim2.new(0.5, -160, 0.5, -90)
passWin.BackgroundTransparency = 1
phdr.BackgroundTransparency = 1
passBox.TextTransparency = 1
passBtn.TextTransparency = 1
pLabel.TextTransparency = 1

TS:Create(passWin, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
	Position = UDim2.new(0.5, -160, 0.5, -120),
	BackgroundTransparency = 0
}):Play()
TS:Create(phdr, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
TS:Create(pLabel, TweenInfo.new(0.4), {TextTransparency = 0}):Play()
TS:Create(passBox, TweenInfo.new(0.4), {TextTransparency = 0}):Play()
task.wait(0.15)
TS:Create(passBtn, TweenInfo.new(0.4), {TextTransparency = 0}):Play()

---------------------------------------------------------
-- WELCOME
---------------------------------------------------------
local wLines = {
	"Добро пожаловать это краткий туториал на",
	"использование скрипта svinya.cc представляет",
	"собой скрипт который дает с помощью бага",
	"красть любого вида яйца в игре для",
	"использования нужно стоять на спавне и нажать",
	"кнопку save потом нужно подойтие к яйцу взять",
	"яйцо и быстро зажать кнопку на 0.5-0.7 секунд",
	"после чего отжать и идти на спавн со своей",
	"добычей удачного использования"
}

local sizeY = 280

local welcome = Instance.new("Frame", sg)
welcome.Name = "Welcome"
welcome.Size = UDim2.new(0, 460, 0, sizeY)
welcome.Position = UDim2.new(0.5, -230, 0.5, -(sizeY / 2) - 30)
welcome.BackgroundColor3 = BG
welcome.BorderColor3 = BRD
welcome.BorderSizePixel = 1
welcome.Active = true
welcome.Visible = false

local wCorner = Instance.new("UICorner", welcome)
wCorner.CornerRadius = UDim.new(0, 6)

local wtop = Instance.new("Frame", welcome)
wtop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wtop.BorderSizePixel = 0
wtop.Size = UDim2.new(1, 0, 0, 2)
local wgrad = Instance.new("UIGradient", wtop)
wgrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(94, 150, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 94, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 150))
})

local whdr = Instance.new("Frame", welcome)
whdr.Size = UDim2.new(1, 0, 0, 30)
whdr.Position = UDim2.new(0, 0, 0, 2)
whdr.BackgroundColor3 = HDRBG
whdr.BorderSizePixel = 0

local whdrCorner = Instance.new("UICorner", whdr)
whdrCorner.CornerRadius = UDim.new(0, 6)

local whdrFix = Instance.new("Frame", whdr)
whdrFix.Size = UDim2.new(1, 0, 0, 10)
whdrFix.Position = UDim2.new(0, 0, 1, -10)
whdrFix.BackgroundColor3 = HDRBG
whdrFix.BorderSizePixel = 0

local wh1 = Instance.new("TextLabel", whdr)
wh1.BackgroundTransparency = 1
wh1.Position = UDim2.new(0, 12, 0, 0)
wh1.Size = UDim2.new(0, svinyaW + 2, 1, 0)
wh1.Font = codeFont
wh1.Text = "svinya."
wh1.TextColor3 = Color3.fromRGB(240, 240, 245)
wh1.TextSize = titleSize
wh1.TextXAlignment = Enum.TextXAlignment.Left

local wh2 = Instance.new("TextLabel", whdr)
wh2.BackgroundTransparency = 1
wh2.Position = UDim2.new(0, 12 + svinyaW, 0, 0)
wh2.Size = UDim2.new(0, 30, 1, 0)
wh2.Font = codeFont
wh2.Text = "cc"
wh2.TextColor3 = GRN
wh2.TextSize = titleSize
wh2.TextXAlignment = Enum.TextXAlignment.Left

local wh3 = Instance.new("TextLabel", whdr)
wh3.BackgroundTransparency = 1
wh3.Position = UDim2.new(0, 12 + svinyaW + 20, 0, 0)
wh3.Size = UDim2.new(1, -50, 1, 0)
wh3.Font = codeFont
wh3.Text = " | welcome"
wh3.TextColor3 = Color3.fromRGB(240, 240, 245)
wh3.TextSize = titleSize
wh3.TextXAlignment = Enum.TextXAlignment.Left

local wdiv = Instance.new("Frame", welcome)
wdiv.BackgroundColor3 = BRDS
wdiv.BorderSizePixel = 0
wdiv.Position = UDim2.new(0, 0, 0, 32)
wdiv.Size = UDim2.new(1, 0, 0, 1)

local wLabels = {}
local wy = 46
for idx = 1, #wLines do
	local lbl = Instance.new("TextLabel", welcome)
	lbl.BackgroundTransparency = 1
	lbl.Position = UDim2.new(0, 18, 0, wy)
	lbl.Size = UDim2.new(1, -36, 0, 18)
	lbl.Font = codeFont
	lbl.Text = wLines[idx]
	lbl.TextColor3 = TXT
	lbl.TextSize = 12
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.TextYAlignment = Enum.TextYAlignment.Top
	table.insert(wLabels, lbl)
	wy = wy + 18
end

local wdiv2 = Instance.new("Frame", welcome)
wdiv2.BackgroundColor3 = BRDS
wdiv2.BorderSizePixel = 0
wdiv2.Position = UDim2.new(0, 0, 1, -50)
wdiv2.Size = UDim2.new(1, 0, 0, 1)

local accept = Instance.new("TextButton", welcome)
accept.BackgroundColor3 = BTN_BG
accept.BorderColor3 = BRD
accept.BorderSizePixel = 0
accept.Position = UDim2.new(0, 18, 1, -40)
accept.Size = UDim2.new(1, -36, 0, 30)
accept.Font = codeFont
accept.Text = "[ ]  понятно, приступим"
accept.TextColor3 = TXTD
accept.TextSize = 12
accept.AutoButtonColor = false

local acceptCorner = Instance.new("UICorner", accept)
acceptCorner.CornerRadius = UDim.new(0, 4)

local acceptStroke = Instance.new("UIStroke", accept)
acceptStroke.Color = BRD
acceptStroke.Thickness = 1
acceptStroke.Transparency = 0.5

accept.MouseEnter:Connect(function()
	TS:Create(accept, TweenInfo.new(0.12), {BackgroundColor3 = BTN_HOVER}):Play()
	TS:Create(acceptStroke, TweenInfo.new(0.12), {Transparency = 0}):Play()
end)
accept.MouseLeave:Connect(function()
	TS:Create(accept, TweenInfo.new(0.12), {BackgroundColor3 = BTN_BG}):Play()
	TS:Create(acceptStroke, TweenInfo.new(0.12), {Transparency = 0.5}):Play()
end)

---------------------------------------------------------
-- MAIN (прямоугольное меню в стиле skeet)
---------------------------------------------------------
local menuGroup = Instance.new("CanvasGroup", sg)
menuGroup.Name = "MenuGroup"
menuGroup.Size = UDim2.new(0, 300, 0, 160)
menuGroup.Position = UDim2.new(0, 40, 0, 40)
menuGroup.BackgroundTransparency = 1
menuGroup.GroupTransparency = 1
menuGroup.Visible = false

local m = Instance.new("Frame", menuGroup)
m.Name = "Main"
m.Size = UDim2.new(1, 0, 1, 0)
m.Position = UDim2.new(0, 0, 0, 0)
m.BackgroundColor3 = BG
m.BorderColor3 = BRD
m.BorderSizePixel = 1
m.Active = true

local mCorner = Instance.new("UICorner", m)
mCorner.CornerRadius = UDim.new(0, 6)

local mt = Instance.new("Frame", m)
mt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mt.BorderSizePixel = 0
mt.Size = UDim2.new(1, 0, 0, 2)
local mg = Instance.new("UIGradient", mt)
mg.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(94, 150, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 94, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 150))
})

local mh = Instance.new("Frame", m)
mh.Name = "Header"
mh.Size = UDim2.new(1, 0, 0, 30)
mh.Position = UDim2.new(0, 0, 0, 2)
mh.BackgroundColor3 = HDRBG
mh.BorderSizePixel = 0

local mhCorner = Instance.new("UICorner", mh)
mhCorner.CornerRadius = UDim.new(0, 6)

local mhFix = Instance.new("Frame", mh)
mhFix.Size = UDim2.new(1, 0, 0, 10)
mhFix.Position = UDim2.new(0, 0, 1, -10)
mhFix.BackgroundColor3 = HDRBG
mhFix.BorderSizePixel = 0

local mh1 = Instance.new("TextLabel", mh)
mh1.BackgroundTransparency = 1
mh1.Position = UDim2.new(0, 12, 0, 0)
mh1.Size = UDim2.new(0, svinyaW + 2, 1, 0)
mh1.Font = codeFont
mh1.Text = "svinya."
mh1.TextColor3 = Color3.fromRGB(240, 240, 245)
mh1.TextSize = titleSize
mh1.TextXAlignment = Enum.TextXAlignment.Left

local mh2 = Instance.new("TextLabel", mh)
mh2.BackgroundTransparency = 1
mh2.Position = UDim2.new(0, 12 + svinyaW, 0, 0)
mh2.Size = UDim2.new(0, 30, 1, 0)
mh2.Font = codeFont
mh2.Text = "cc"
mh2.TextColor3 = GRN
mh2.TextSize = titleSize
mh2.TextXAlignment = Enum.TextXAlignment.Left

local closeBtn = Instance.new("TextButton", mh)
closeBtn.BackgroundTransparency = 1
closeBtn.Position = UDim2.new(1, -22, 0, 0)
closeBtn.Size = UDim2.new(0, 22, 1, 0)
closeBtn.Font = codeFont
closeBtn.Text = "x"
closeBtn.TextColor3 = TXTD
closeBtn.TextSize = 13
closeBtn.AutoButtonColor = false
closeBtn.MouseEnter:Connect(function() closeBtn.TextColor3 = RED end)
closeBtn.MouseLeave:Connect(function() closeBtn.TextColor3 = TXTD end)

local mdiv = Instance.new("Frame", m)
mdiv.BackgroundColor3 = BRDS
mdiv.BorderSizePixel = 0
mdiv.Position = UDim2.new(0, 0, 0, 32)
mdiv.Size = UDim2.new(1, 0, 0, 1)

local bh = Instance.new("Frame", m)
bh.BackgroundTransparency = 1
bh.Position = UDim2.new(0, 12, 0, 42)
bh.Size = UDim2.new(1, -24, 1, -54)

local drag = false
local ds, sp = nil, nil

mh.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		drag = true
		ds = input.Position
		sp = menuGroup.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				drag = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if drag and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local d = input.Position - ds
		menuGroup.Position = UDim2.new(sp.X.Scale, sp.X.Offset + d.X, sp.Y.Scale, sp.Y.Offset + d.Y)
	end
end)

local function mkbtn(t, y)
	local b = Instance.new("TextButton", bh)
	b.BackgroundColor3 = BTN_BG
	b.BorderSizePixel = 0
	b.Position = UDim2.new(0, 0, 0, y)
	b.Size = UDim2.new(1, 0, 0, 32)
	b.Font = codeFont
	b.Text = t
	b.TextColor3 = TXT
	b.TextSize = 13
	b.AutoButtonColor = false

	local c = Instance.new("UICorner", b)
	c.CornerRadius = UDim.new(0, 4)

	local s = Instance.new("UIStroke", b)
	s.Color = BRD
	s.Thickness = 1
	s.Transparency = 0.5

	b.MouseEnter:Connect(function()
		TS:Create(b, TweenInfo.new(0.12), {BackgroundColor3 = BTN_HOVER}):Play()
		TS:Create(s, TweenInfo.new(0.12), {Transparency = 0}):Play()
	end)
	b.MouseLeave:Connect(function()
		TS:Create(b, TweenInfo.new(0.12), {BackgroundColor3 = BTN_BG}):Play()
		TS:Create(s, TweenInfo.new(0.12), {Transparency = 0.5}):Play()
	end)
	return b
end

local saveBtn = mkbtn("save", 0)
local buggBtn = mkbtn("bugg", 38)
local espBtn = mkbtn("esp off", 76)

local savedPos = nil
local zeroVec = Vector3.zero
local holding = false
local conns = {}
local oWS, oJP, oJH

local function setBC(b, c)
	TS:Create(b, TweenInfo.new(0.12), {BackgroundColor3 = c}):Play()
end

saveBtn.MouseButton1Click:Connect(function()
	click()
	local ch = player.Character
	if not ch then return end
	local hrp = ch:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	savedPos = hrp.CFrame
	setBC(saveBtn, GRN)
	saveBtn.Text = "saved!"
	task.wait(0.6)
	setBC(saveBtn, BTN_BG)
	saveBtn.Text = "save"
end)

local function stopLock()
	if not holding then return end
	holding = false
	local ci = 1
	while ci <= #conns do
		pcall(function() conns[ci]:Disconnect() end)
		ci = ci + 1
	end
	conns = {}
	local ch = player.Character
	if ch then
		local hum = ch:FindFirstChildOfClass("Humanoid")
		if hum then
			if oWS then hum.WalkSpeed = oWS end
			if oJP then hum.JumpPower = oJP end
			if oJH then hum.JumpHeight = oJH end
			hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
			hum:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
			hum:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
			hum:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
			hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
			hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
			hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
		end
	end
	setBC(buggBtn, BTN_BG)
	buggBtn.Text = "bugg"
end

local function startLock()
	if holding then return end
	if not savedPos then
		setBC(buggBtn, Color3.fromRGB(80, 26, 26))
		buggBtn.Text = "no save!"
		task.wait(0.8)
		setBC(buggBtn, BTN_BG)
		buggBtn.Text = "bugg"
		return
	end
	local ch = player.Character
	if not ch then return end
	local hum = ch:FindFirstChildOfClass("Humanoid")
	local hrp = ch:FindFirstChild("HumanoidRootPart")
	if not hum or not hrp then return end
	holding = true
	setBC(buggBtn, BLU)
	buggBtn.Text = "locked"
	oWS = hum.WalkSpeed
	oJP = hum.JumpPower
	oJH = hum.JumpHeight
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	hum.JumpHeight = 0
	hum.UseJumpPower = false
	hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
	hum:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
	hum:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
	hum:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
	hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
	hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
	hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
	local function enf()
		if not holding then return end
		local c = player.Character
		if not c then return end
		local r = c:FindFirstChild("HumanoidRootPart")
		if not r then return end
		r.CFrame = savedPos
		r.Position = savedPos.Position
		r.AssemblyLinearVelocity = zeroVec
		r.AssemblyAngularVelocity = zeroVec
		r.Velocity = zeroVec
		r.RotVelocity = zeroVec
	end
	table.insert(conns, RS.PreSimulation:Connect(enf))
	table.insert(conns, RS.Stepped:Connect(enf))
	table.insert(conns, RS.RenderStepped:Connect(enf))
	table.insert(conns, RS.Heartbeat:Connect(enf))
	table.insert(conns, hrp:GetPropertyChangedSignal("CFrame"):Connect(function()
		if holding then
			hrp.CFrame = savedPos
			hrp.AssemblyLinearVelocity = zeroVec
			hrp.AssemblyAngularVelocity = zeroVec
		end
	end))
end

buggBtn.MouseButton1Down:Connect(startLock)
buggBtn.MouseButton1Up:Connect(stopLock)
buggBtn.MouseLeave:Connect(stopLock)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		if holding then stopLock() end
	end
end)

player.CharacterAdded:Connect(function()
	if holding then stopLock() end
end)

---------------------------------------------------------
-- ESP
---------------------------------------------------------
local espEnabled = false
local espHighlights = {}
local espNametags = {}

local function isValidCharacter(ch)
	if not ch then return false end
	if not ch:IsA("Model") then return false end
	if not ch.Parent then return false end
	local hum = ch:FindFirstChildOfClass("Humanoid")
	if not hum then return false end
	if hum.Health <= 0 then return false end
	return true
end

local function removeESPForPlayer(plr)
	local h = espHighlights[plr]
	if h then
		pcall(function() h:Destroy() end)
		espHighlights[plr] = nil
	end
	local n = espNametags[plr]
	if n then
		pcall(function() n:Destroy() end)
		espNametags[plr] = nil
	end
end

local function removeESP()
	for plr, h in pairs(espHighlights) do
		pcall(function() h:Destroy() end)
	end
	for plr, n in pairs(espNametags) do
		pcall(function() n:Destroy() end)
	end
	espHighlights = {}
	espNametags = {}
end

local function addESPForPlayer(plr)
	if plr == player then return end

	if espHighlights[plr] then
		local h = espHighlights[plr]
		if not h or not h.Parent or not h.Adornee or not h.Adornee.Parent then
			pcall(function() h:Destroy() end)
			espHighlights[plr] = nil
		end
	end
	if not espHighlights[plr] then
		local ch = plr.Character
		if isValidCharacter(ch) then
			local hl = Instance.new("Highlight")
			hl.Name = "SvinyaESP"
			hl.Adornee = ch
			hl.FillColor = Color3.fromRGB(80, 255, 80)
			hl.FillTransparency = 0.65
			hl.OutlineColor = Color3.fromRGB(120, 255, 120)
			hl.OutlineTransparency = 0
			hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			hl.Parent = sg
			espHighlights[plr] = hl
		end
	end

	if espNametags[plr] then
		local n = espNametags[plr]
		if not n or not n.Parent or not n.Adornee or not n.Adornee.Parent then
			pcall(function() n:Destroy() end)
			espNametags[plr] = nil
		end
	end
	if not espNametags[plr] then
		local ch = plr.Character
		if isValidCharacter(ch) then
			local head = ch:FindFirstChild("Head")
			if head then
				local bill = Instance.new("BillboardGui")
				bill.Name = "SvinyaNametag"
				bill.Adornee = head
				bill.Size = UDim2.new(0, 200, 0, 24)
				bill.StudsOffset = Vector3.new(0, 2.6, 0)
				bill.AlwaysOnTop = true
				bill.LightInfluence = 0
				bill.MaxDistance = 500
				bill.Parent = sg

				local bg = Instance.new("Frame", bill)
				bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				bg.BackgroundTransparency = 0.4
				bg.BorderSizePixel = 0
				bg.Size = UDim2.new(1, 0, 1, 0)

				local corner = Instance.new("UICorner", bg)
				corner.CornerRadius = UDim.new(0, 4)

				local stroke = Instance.new("UIStroke", bg)
				stroke.Color = GRN
				stroke.Thickness = 1
				stroke.Transparency = 0.2

				local txt = Instance.new("TextLabel", bg)
				txt.BackgroundTransparency = 1
				txt.Size = UDim2.new(1, -6, 1, 0)
				txt.Position = UDim2.new(0, 3, 0, 0)
				txt.Font = codeFont
				txt.Text = plr.Name
				txt.TextColor3 = Color3.fromRGB(230, 255, 230)
				txt.TextSize = 13
				txt.TextStrokeTransparency = 0.4
				txt.TextStrokeColor3 = Color3.fromRGB(0, 40, 0)
				txt.TextXAlignment = Enum.TextXAlignment.Center
				txt.TextYAlignment = Enum.TextYAlignment.Center

				espNametags[plr] = bill
			end
		end
	end
end

local function bindPlayer(plr)
	if plr == player then return end
	if plr.Character then
		if espEnabled then addESPForPlayer(plr) end
	end
	plr.CharacterAdded:Connect(function(ch)
		if espEnabled then
			ch:WaitForChild("Humanoid", 3)
			ch:WaitForChild("Head", 3)
			task.wait(0.15)
			addESPForPlayer(plr)
		end
	end)
	plr.CharacterRemoving:Connect(function()
		removeESPForPlayer(plr)
	end)
end

for _, plr in ipairs(Players:GetPlayers()) do
	if plr ~= player then bindPlayer(plr) end
end

Players.PlayerAdded:Connect(bindPlayer)
Players.PlayerRemoving:Connect(function(plr)
	removeESPForPlayer(plr)
end)

local espTimer = 0
RS.RenderStepped:Connect(function(dt)
	if not espEnabled then return end
	espTimer = espTimer + dt
	if espTimer >= 0.7 then
		espTimer = 0
		for _, plr in ipairs(Players:GetPlayers()) do
			if plr ~= player then
				local ch = plr.Character
				if not isValidCharacter(ch) then
					removeESPForPlayer(plr)
				else
					addESPForPlayer(plr)
				end
			end
		end
	end
	local t = tick()
	local pulse = (math.sin(t * 3) + 1) * 0.5
	local fillT = 0.5 + pulse * 0.25
	local outlT = 0.05 + pulse * 0.15
	local fc = Color3.fromRGB(60 + pulse * 40, 255, 60 + pulse * 40)
	local oc = Color3.fromRGB(100 + pulse * 100, 255, 100 + pulse * 100)
	for plr, h in pairs(espHighlights) do
		if h and h.Parent then
			h.FillColor = fc
			h.FillTransparency = fillT
			h.OutlineColor = oc
			h.OutlineTransparency = outlT
		end
	end
end)

espBtn.MouseButton1Click:Connect(function()
	click()
	espEnabled = not espEnabled
	if espEnabled then
		espBtn.Text = "esp on"
		setBC(espBtn, GRN)
		for _, plr in ipairs(Players:GetPlayers()) do
			if plr ~= player then addESPForPlayer(plr) end
		end
	else
		espBtn.Text = "esp off"
		setBC(espBtn, BTN_BG)
		removeESP()
	end
end)

---------------------------------------------------------
-- ПАРОЛЬ -> WELCOME -> МЕНЮ
---------------------------------------------------------
local passOK = false
local accepted = false

local function wrongPass()
	click()
	passStatus.Text = "неверный пароль"
	passStatus.TextColor3 = RED
	TS:Create(passBox, TweenInfo.new(0.08, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 12, 0, 68)}):Play()
	task.wait(0.06)
	TS:Create(passBox, TweenInfo.new(0.08, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 20, 0, 68)}):Play()
	task.wait(0.06)
	TS:Create(passBox, TweenInfo.new(0.08, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 16, 0, 68)}):Play()
	passBox.Text = ""
end

local function tryPass()
	if passOK then return end
	if passBox.Text == "0x0x0" then
		passOK = true
		click()
		passStatus.Text = "доступ разрешён"
		passStatus.TextColor3 = GRN
		TS:Create(passBox, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(36, 50, 36)}):Play()

		task.wait(0.35)

		TS:Create(passWin, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
			Position = UDim2.new(0.5, -160, 0.5, -90),
			BackgroundTransparency = 1
		}):Play()
		TS:Create(phdr, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
		TS:Create(passBox, TweenInfo.new(0.2), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
		TS:Create(passBtn, TweenInfo.new(0.2), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
		TS:Create(pLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
		TS:Create(passStatus, TweenInfo.new(0.2), {TextTransparency = 1}):Play()

		task.wait(0.32)
		passWin:Destroy()

		welcome.Visible = true
		welcome.Position = UDim2.new(0.5, -230, 0.5, -(sizeY / 2))
		welcome.BackgroundTransparency = 1
		whdr.BackgroundTransparency = 1
		for _, l in ipairs(wLabels) do l.TextTransparency = 1 end
		accept.TextTransparency = 1
		accept.BackgroundTransparency = 0

		TS:Create(welcome, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
			Position = UDim2.new(0.5, -230, 0.5, -(sizeY / 2) - 30),
			BackgroundTransparency = 0
		}):Play()
		TS:Create(whdr, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
		for _, l in ipairs(wLabels) do
			TS:Create(l, TweenInfo.new(0.4), {TextTransparency = 0}):Play()
		end
		task.wait(0.15)
		TS:Create(accept, TweenInfo.new(0.4), {TextTransparency = 0}):Play()
	else
		wrongPass()
	end
end

passBtn.MouseButton1Click:Connect(tryPass)
passBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then tryPass() end
end)

accept.MouseButton1Click:Connect(function()
	if accepted then return end
	accepted = true
	click()
	accept.Text = "[x]  принято"
	accept.TextColor3 = GRN
	TS:Create(accept, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(36, 50, 36)}):Play()
	task.wait(0.25)

	TS:Create(welcome, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		Position = UDim2.new(0.5, -230, 0.5, -(sizeY / 2)),
		BackgroundTransparency = 1
	}):Play()
	TS:Create(whdr, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
	for _, l in ipairs(wLabels) do
		TS:Create(l, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
	end
	TS:Create(accept, TweenInfo.new(0.2), {TextTransparency = 1, BackgroundTransparency = 1}):Play()

	task.wait(0.32)
	welcome:Destroy()

	menuGroup.Visible = true
	menuGroup.GroupTransparency = 1
	menuGroup.Size = UDim2.new(0, 280, 0, 148)
	menuGroup.Position = UDim2.new(0, 40, 0, 40)
	TS:Create(menuGroup, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		GroupTransparency = 0,
		Size = UDim2.new(0, 300, 0, 160)
	}):Play()
end)

---------------------------------------------------------
-- INSERT
---------------------------------------------------------
local menuOpen = true
local animating = false

local function closeMenu()
	if animating or not menuOpen then return end
	animating = true
	click()
	local bp = menuGroup.Position

	local tw = TS:Create(menuGroup, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = UDim2.new(bp.X.Scale, bp.X.Offset, bp.Y.Scale, bp.Y.Offset + 40),
		Size = UDim2.new(0, 280, 0, 148),
		GroupTransparency = 1,
	})
	tw:Play()
	tw.Completed:Wait()

	menuGroup.Visible = false
	menuGroup.Position = bp
	menuGroup.Size = UDim2.new(0, 300, 0, 160)
	menuGroup.GroupTransparency = 0
	menuOpen = false
	animating = false
end

local function openMenu()
	if animating or menuOpen then return end
	animating = true
	click()
	local bp = menuGroup.Position

	menuGroup.Visible = true
	menuGroup.Position = UDim2.new(bp.X.Scale, bp.X.Offset, bp.Y.Scale, bp.Y.Offset + 40)
	menuGroup.Size = UDim2.new(0, 280, 0, 148)
	menuGroup.GroupTransparency = 1

	TS:Create(menuGroup, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Position = bp,
		Size = UDim2.new(0, 300, 0, 160),
		GroupTransparency = 0,
	}):Play()

	task.wait(0.42)
	menuOpen = true
	animating = false
end

closeBtn.MouseButton1Click:Connect(function()
	closeMenu()
end)

UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.Insert then
		if not accepted then return end
		if menuOpen then
			closeMenu()
		else
			openMenu()
		end
	end
end)