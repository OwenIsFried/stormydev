local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local normalSize = UDim2.new(0, 650, 0, 500)

local player = Players.LocalPlayer

-------------------------------------------------
-- GUI
-------------------------------------------------

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

-------------------------------------------------
-- MAIN FRAME
-------------------------------------------------

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = normalSize
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 18)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(40,40,40)
stroke.Thickness = 2
stroke.Parent = frame

-------------------------------------------------
-- TOP BAR
-------------------------------------------------

local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1,0,0,42)
topBar.BackgroundTransparency = 1
topBar.Parent = frame

local title = Instance.new("TextLabel")
title.BackgroundTransparency = 1
title.Size = UDim2.new(1,-50,1,0)
title.Position = UDim2.new(0,15,0,10)
title.Font = Enum.Font.GothamBold
title.Text = "(ﾐ˃ᆺ˂ﾐ) Stormy"
title.TextSize = 30
title.TextColor3 = Color3.new(1,1,1)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = topBar

-------------------------------------------------
-- MINIMIZE BUTTON
-------------------------------------------------

local minimize = Instance.new("TextButton")
minimize.Size = UDim2.new(0,30,0,30)
minimize.Position = UDim2.new(1,-74,0,6)
minimize.BackgroundColor3 = Color3.fromRGB(35,35,35)
minimize.Text = "-"
minimize.Font = Enum.Font.GothamBold
minimize.TextSize = 24
minimize.TextColor3 = Color3.new(1,1,1)
minimize.BorderSizePixel = 0
minimize.Parent = topBar

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(1,0)
minCorner.Parent = minimize

-------------------------------------------------
-- CLOSE BUTTON
-------------------------------------------------

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0,30,0,30)
closeButton.Position = UDim2.new(1,-38,0,6)
closeButton.BackgroundColor3 = Color3.fromRGB(170, 50, 50)
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 18
closeButton.TextColor3 = Color3.new(1,1,1)
closeButton.BorderSizePixel = 0
closeButton.Parent = topBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1,0)
closeCorner.Parent = closeButton









-------------------------------------------------
-- CONTENT
-------------------------------------------------

local content = Instance.new("ScrollingFrame")
content.BackgroundTransparency = 1
content.Position = UDim2.new(0,0,0,42)
content.Size = UDim2.new(1,0,1,-42)

-- scrolling
content.CanvasSize = UDim2.new(0,0,0,1000)

content.ScrollBarThickness = 6
content.ScrollBarImageColor3 = Color3.fromRGB(80,80,80)

content.BorderSizePixel = 0
content.ScrollingDirection = Enum.ScrollingDirection.Y

content.Parent = frame

-------------------------------------------------
-- FLY TOGGLE UI
-------------------------------------------------

local flyText = Instance.new("TextLabel")
flyText.BackgroundTransparency = 1
flyText.Position = UDim2.new(0, 25, 0, 30)
flyText.Size = UDim2.new(0, 200, 0, 40)
flyText.Font = Enum.Font.GothamSemibold
flyText.Text = "Flight"
flyText.TextSize = 24
flyText.TextColor3 = Color3.fromRGB(255,255,255)
flyText.TextXAlignment = Enum.TextXAlignment.Left
flyText.Parent = content

local toggleBack = Instance.new("Frame")
toggleBack.Size = UDim2.new(0, 70, 0, 34)
toggleBack.Position = UDim2.new(1, -110, 0, 33)
toggleBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
toggleBack.BorderSizePixel = 0
toggleBack.Parent = content

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(1,0)
toggleCorner.Parent = toggleBack

local toggleCircle = Instance.new("Frame")
toggleCircle.Size = UDim2.new(0, 26, 0, 26)
toggleCircle.Position = UDim2.new(0, 4, 0.5, -13)
toggleCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
toggleCircle.BorderSizePixel = 0
toggleCircle.Parent = toggleBack

local circleCorner = Instance.new("UICorner")
circleCorner.CornerRadius = UDim.new(1,0)
circleCorner.Parent = toggleCircle

local toggleButton = Instance.new("TextButton")
toggleButton.BackgroundTransparency = 1
toggleButton.Size = UDim2.new(1,0,1,0)
toggleButton.Text = ""
toggleButton.Parent = toggleBack

-------------------------------------------------
-- NOCLIP TOGGLE UI
-------------------------------------------------

local noclipText = Instance.new("TextLabel")
noclipText.BackgroundTransparency = 1
noclipText.Position = UDim2.new(0, 25, 0, 90)
noclipText.Size = UDim2.new(0, 200, 0, 40)
noclipText.Font = Enum.Font.GothamSemibold
noclipText.Text = "No Clip"
noclipText.TextSize = 24
noclipText.TextColor3 = Color3.fromRGB(255,255,255)
noclipText.TextXAlignment = Enum.TextXAlignment.Left
noclipText.Parent = content

local noclipBack = Instance.new("Frame")
noclipBack.Size = UDim2.new(0, 70, 0, 34)
noclipBack.Position = UDim2.new(1, -110, 0, 93)
noclipBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
noclipBack.BorderSizePixel = 0
noclipBack.Parent = content

local noclipCorner = Instance.new("UICorner")
noclipCorner.CornerRadius = UDim.new(1,0)
noclipCorner.Parent = noclipBack

local noclipCircle = Instance.new("Frame")
noclipCircle.Size = UDim2.new(0, 26, 0, 26)
noclipCircle.Position = UDim2.new(0, 4, 0.5, -13)
noclipCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
noclipCircle.BorderSizePixel = 0
noclipCircle.Parent = noclipBack

local noclipCircleCorner = Instance.new("UICorner")
noclipCircleCorner.CornerRadius = UDim.new(1,0)
noclipCircleCorner.Parent = noclipCircle

local noclipButton = Instance.new("TextButton")
noclipButton.BackgroundTransparency = 1
noclipButton.Size = UDim2.new(1,0,1,0)
noclipButton.Text = ""
noclipButton.Parent = noclipBack

-------------------------------------------------
-- WALKSPEED UI
-------------------------------------------------

local speedText = Instance.new("TextLabel")
speedText.BackgroundTransparency = 1
speedText.Position = UDim2.new(0, 25, 0, 150)
speedText.Size = UDim2.new(0, 200, 0, 40)
speedText.Font = Enum.Font.GothamSemibold
speedText.Text = "Walk Speed"
speedText.TextSize = 24
speedText.TextColor3 = Color3.fromRGB(255,255,255)
speedText.TextXAlignment = Enum.TextXAlignment.Left
speedText.Parent = content

local speedBox = Instance.new("TextBox")
speedBox.Size = UDim2.new(0, 120, 0, 38)
speedBox.Position = UDim2.new(1, -240, 0, 152)
speedBox.BackgroundColor3 = Color3.fromRGB(35,35,35)
speedBox.TextColor3 = Color3.new(1,1,1)
speedBox.PlaceholderText = "16"
speedBox.Text = ""
speedBox.Font = Enum.Font.Gotham
speedBox.TextSize = 20
speedBox.ClearTextOnFocus = false
speedBox.BorderSizePixel = 0
speedBox.Parent = content

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0,10)
speedCorner.Parent = speedBox

local setSpeedButton = Instance.new("TextButton")
setSpeedButton.Size = UDim2.new(0, 90, 0, 38)
setSpeedButton.Position = UDim2.new(1, -110, 0, 152)
setSpeedButton.BackgroundColor3 = Color3.fromRGB(0,170,127)
setSpeedButton.Text = "Set"
setSpeedButton.Font = Enum.Font.GothamBold
setSpeedButton.TextSize = 20
setSpeedButton.TextColor3 = Color3.new(1,1,1)
setSpeedButton.BorderSizePixel = 0
setSpeedButton.Parent = content

local setCorner = Instance.new("UICorner")
setCorner.CornerRadius = UDim.new(0,10)
setCorner.Parent = setSpeedButton

local resetSpeedButton = Instance.new("TextButton")
resetSpeedButton.Size = UDim2.new(0, 220, 0, 38)
resetSpeedButton.Position = UDim2.new(1, -240, 0, 200)
resetSpeedButton.BackgroundColor3 = Color3.fromRGB(50,50,50)
resetSpeedButton.Text = "Reset To Default"
resetSpeedButton.Font = Enum.Font.GothamBold
resetSpeedButton.TextSize = 18
resetSpeedButton.TextColor3 = Color3.new(1,1,1)
resetSpeedButton.BorderSizePixel = 0
resetSpeedButton.Parent = content

local resetCorner = Instance.new("UICorner")
resetCorner.CornerRadius = UDim.new(0,10)
resetCorner.Parent = resetSpeedButton

-------------------------------------------------
-- TELEPORT PLAYER UI
-------------------------------------------------

local tpText = Instance.new("TextLabel")
tpText.BackgroundTransparency = 1
tpText.Position = UDim2.new(0, 25, 0, 260)
tpText.Size = UDim2.new(0, 200, 0, 40)
tpText.Font = Enum.Font.GothamSemibold
tpText.Text = "Teleport To Player"
tpText.TextSize = 24
tpText.TextColor3 = Color3.fromRGB(255,255,255)
tpText.TextXAlignment = Enum.TextXAlignment.Left
tpText.Parent = content

-------------------------------------------------
-- DROPDOWN FRAME
-------------------------------------------------

local selectedPlayer = nil
local dropdownOpen = false

local dropdown = Instance.new("Frame")
dropdown.Size = UDim2.new(0, 220, 0, 38)
dropdown.Position = UDim2.new(1, -240, 0, 262)
dropdown.BackgroundColor3 = Color3.fromRGB(35,35,35)
dropdown.BorderSizePixel = 0
dropdown.ClipsDescendants = false
dropdown.Parent = content
dropdown.ZIndex = 5


local dropdownCorner = Instance.new("UICorner")
dropdownCorner.CornerRadius = UDim.new(0,10)
dropdownCorner.Parent = dropdown

local dropdownButton = Instance.new("TextButton")
dropdownButton.Size = UDim2.new(1,0,0,38)
dropdownButton.BackgroundTransparency = 1
dropdownButton.Text = "Select Player"
dropdownButton.Font = Enum.Font.Gotham
dropdownButton.TextSize = 18
dropdownButton.TextColor3 = Color3.new(1,1,1)
dropdownButton.Parent = dropdown
dropdownButton.ZIndex = 6

local playerList = Instance.new("ScrollingFrame")
playerList.Position = UDim2.new(0,0,0,28)
playerList.Size = UDim2.new(1,0,0,120)
playerList.CanvasSize = UDim2.new(0,0,0,0)
playerList.ScrollBarThickness = 4
playerList.BackgroundTransparency = 1
playerList.BorderSizePixel = 0
playerList.Visible = false
playerList.Parent = dropdown
playerList.Active = false
playerList.ZIndex = 6

local layout = Instance.new("UIListLayout")
layout.Parent = playerList
layout.Padding = UDim.new(0,4)

-------------------------------------------------
-- TP BUTTON
-------------------------------------------------

local tpButton = Instance.new("TextButton")
tpButton.Size = UDim2.new(0, 90, 0, 38)
tpButton.Position = UDim2.new(1, -110, 0, 310)
tpButton.BackgroundColor3 = Color3.fromRGB(0,170,127)
tpButton.Text = "Teleport"
tpButton.Font = Enum.Font.GothamBold
tpButton.TextSize = 16
tpButton.TextColor3 = Color3.new(1,1,1)
tpButton.BorderSizePixel = 0
tpButton.Parent = content

local tpCorner = Instance.new("UICorner")
tpCorner.CornerRadius = UDim.new(0,10)
tpCorner.Parent = tpButton

-------------------------------------------------
-- PLAYER ESP UI
-------------------------------------------------

local espText = Instance.new("TextLabel")
espText.BackgroundTransparency = 1
espText.Position = UDim2.new(0, 25, 0, 380)
espText.Size = UDim2.new(0, 200, 0, 40)
espText.Font = Enum.Font.GothamSemibold
espText.Text = "Player ESP"
espText.TextSize = 24
espText.TextColor3 = Color3.fromRGB(255,255,255)
espText.TextXAlignment = Enum.TextXAlignment.Left
espText.Parent = content

local espBack = Instance.new("Frame")
espBack.Size = UDim2.new(0, 70, 0, 34)
espBack.Position = UDim2.new(1, -110, 0, 383)
espBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
espBack.BorderSizePixel = 0
espBack.Parent = content

local espCorner = Instance.new("UICorner")
espCorner.CornerRadius = UDim.new(1,0)
espCorner.Parent = espBack

local espCircle = Instance.new("Frame")
espCircle.Size = UDim2.new(0, 26, 0, 26)
espCircle.Position = UDim2.new(0, 4, 0.5, -13)
espCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
espCircle.BorderSizePixel = 0
espCircle.Parent = espBack

local espCircleCorner = Instance.new("UICorner")
espCircleCorner.CornerRadius = UDim.new(1,0)
espCircleCorner.Parent = espCircle

local espButton = Instance.new("TextButton")
espButton.BackgroundTransparency = 1
espButton.Size = UDim2.new(1,0,1,0)
espButton.Text = ""
espButton.Parent = espBack


-------------------------------------------------
-- FLING UI
-------------------------------------------------

local flingText = Instance.new("TextLabel")
flingText.BackgroundTransparency = 1
flingText.Position = UDim2.new(0, 25, 0, 440)
flingText.Size = UDim2.new(0, 200, 0, 40)
flingText.Font = Enum.Font.GothamSemibold
flingText.Text = "Fling"
flingText.TextSize = 24
flingText.TextColor3 = Color3.fromRGB(255,255,255)
flingText.TextXAlignment = Enum.TextXAlignment.Left
flingText.Parent = content

local flingBack = Instance.new("Frame")
flingBack.Size = UDim2.new(0, 70, 0, 34)
flingBack.Position = UDim2.new(1, -110, 0, 443)
flingBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
flingBack.BorderSizePixel = 0
flingBack.Parent = content

local flingCorner = Instance.new("UICorner")
flingCorner.CornerRadius = UDim.new(1,0)
flingCorner.Parent = flingBack

local flingCircle = Instance.new("Frame")
flingCircle.Size = UDim2.new(0, 26, 0, 26)
flingCircle.Position = UDim2.new(0, 4, 0.5, -13)
flingCircle.BackgroundColor3 = Color3.fromRGB(255,255,255)
flingCircle.BorderSizePixel = 0
flingCircle.Parent = flingBack

local flingCircleCorner = Instance.new("UICorner")
flingCircleCorner.CornerRadius = UDim.new(1,0)
flingCircleCorner.Parent = flingCircle

local flingButton = Instance.new("TextButton")
flingButton.BackgroundTransparency = 1
flingButton.Size = UDim2.new(1,0,1,0)
flingButton.Text = ""
flingButton.Parent = flingBack












-------------------------------------------------
-- DIVIDERS
-------------------------------------------------

local divider1 = Instance.new("Frame")
divider1.Size = UDim2.new(1, -50, 0, 2)
divider1.Position = UDim2.new(0, 25, 0, 250)
divider1.BackgroundColor3 = Color3.fromRGB(55,55,55)
divider1.BorderSizePixel = 0
divider1.Parent = content

local divider2 = Instance.new("Frame")
divider2.Size = UDim2.new(1, -50, 0, 2)
divider2.Position = UDim2.new(0, 25, 0, 80)
divider2.BackgroundColor3 = Color3.fromRGB(55,55,55)
divider2.BorderSizePixel = 0
divider2.Parent = content

local divider3 = Instance.new("Frame")
divider3.Size = UDim2.new(1, -50, 0, 2)
divider3.Position = UDim2.new(0, 25, 0, 140)
divider3.BackgroundColor3 = Color3.fromRGB(55,55,55)
divider3.BorderSizePixel = 0
divider3.Parent = content



-------------------------------------------------
-- DRAGGING
-------------------------------------------------

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart

	frame.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

topBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

topBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)

-------------------------------------------------
-- MINIMIZE SYSTEM
-------------------------------------------------

local minimized = false

local savedPosition = frame.Position
local savedAnchor = frame.AnchorPoint

local miniSize = UDim2.new(0, 88, 0, 42)

-- top-left position under Roblox button
local minimizedPosition = UDim2.new(0, 10, 0, 70)

minimize.MouseButton1Click:Connect(function()

	minimized = not minimized

	if minimized then

		-- save old position before minimizing
		savedPosition = frame.Position

		-- switch anchor for top-left positioning
		frame.AnchorPoint = Vector2.new(0,0)

		-- hide content
		content.Visible = false
		title.Visible = false

		-- animate size + position
		TweenService:Create(
			frame,
			TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{
				Size = miniSize,
				Position = minimizedPosition
			}
		):Play()

		-- rounded pill look
		corner.CornerRadius = UDim.new(1,0)

		-- reposition buttons
		minimize.Position = UDim2.new(0, 10, 0.5, -15)
		closeButton.Position = UDim2.new(0, 45, 0.5, -15)

		minimize.Text = "+"
		stroke.Color = Color3.fromRGB(55,55,55)

	else

		-- restore anchor
		frame.AnchorPoint = savedAnchor

		-- restore content
		content.Visible = true
		title.Visible = true

		-- animate back
		TweenService:Create(
			frame,
			TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{
				Size = normalSize,
				Position = savedPosition
			}
		):Play()

		-- restore corners
		corner.CornerRadius = UDim.new(0,18)

		-- restore buttons
		minimize.Position = UDim2.new(1,-74,0,6)
		closeButton.Position = UDim2.new(1,-38,0,6)

		minimize.Text = "-"
		stroke.Color = Color3.fromRGB(40,40,40)

	end
end)

-------------------------------------------------
-- CLOSE GUI
-------------------------------------------------

closeButton.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-------------------------------------------------
-- FLIGHT SYSTEM
-------------------------------------------------

local RunService = game:GetService("RunService")

local flying = false
local speed = 80

local bv
local bg
local flyConnection

local keys = {
	W = false,
	A = false,
	S = false,
	D = false,
	Space = false,
	Shift = false
}

UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end

	if input.KeyCode == Enum.KeyCode.W then keys.W = true end
	if input.KeyCode == Enum.KeyCode.A then keys.A = true end
	if input.KeyCode == Enum.KeyCode.S then keys.S = true end
	if input.KeyCode == Enum.KeyCode.D then keys.D = true end
	if input.KeyCode == Enum.KeyCode.Space then keys.Space = true end
	if input.KeyCode == Enum.KeyCode.LeftShift then keys.Shift = true end
end)

UIS.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then keys.W = false end
	if input.KeyCode == Enum.KeyCode.A then keys.A = false end
	if input.KeyCode == Enum.KeyCode.S then keys.S = false end
	if input.KeyCode == Enum.KeyCode.D then keys.D = false end
	if input.KeyCode == Enum.KeyCode.Space then keys.Space = false end
	if input.KeyCode == Enum.KeyCode.LeftShift then keys.Shift = false end
end)

local function startFly()

	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")
	local humanoid = character:WaitForChild("Humanoid")

	humanoid.PlatformStand = true

	bv = Instance.new("BodyVelocity")
	bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bv.Velocity = Vector3.zero
	bv.Parent = hrp

	bg = Instance.new("BodyGyro")
	bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
	bg.P = 10000
	bg.CFrame = hrp.CFrame
	bg.Parent = hrp

	flyConnection = RunService.RenderStepped:Connect(function()

		local camera = workspace.CurrentCamera
		local moveDir = Vector3.zero

		if keys.W then moveDir += camera.CFrame.LookVector end
		if keys.S then moveDir -= camera.CFrame.LookVector end
		if keys.A then moveDir -= camera.CFrame.RightVector end
		if keys.D then moveDir += camera.CFrame.RightVector end
		if keys.Space then moveDir += Vector3.new(0,1,0) end
		if keys.Shift then moveDir -= Vector3.new(0,1,0) end

		if moveDir.Magnitude > 0 then
			moveDir = moveDir.Unit
		end

		bv.Velocity = moveDir * speed
		bg.CFrame = camera.CFrame
	end)
end

local function stopFly()

	local character = player.Character

	if character then
		local humanoid = character:FindFirstChild("Humanoid")

		if humanoid then
			humanoid.PlatformStand = false
		end
	end

	if flyConnection then
		flyConnection:Disconnect()
	end

	if bv then
		bv:Destroy()
	end

	if bg then
		bg:Destroy()
	end
end

-------------------------------------------------
-- TOGGLE ANIMATION
-------------------------------------------------

local function setToggle(state)

	flying = state

	if state then

		toggleBack.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
		toggleCircle.Position = UDim2.new(1, -30, 0.5, -13)

		startFly()

	else

		toggleBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
		toggleCircle.Position = UDim2.new(0, 4, 0.5, -13)

		stopFly()

	end
end

toggleButton.MouseButton1Click:Connect(function()
	setToggle(not flying)
end)

-------------------------------------------------
-- NOCLIP SYSTEM
-------------------------------------------------

local noclip = false
local noclipConnection

local function startNoclip()

	noclipConnection = RunService.Stepped:Connect(function()

		local character = player.Character

		if character then

			for _, part in pairs(character:GetDescendants()) do

				if part:IsA("BasePart") then
					part.CanCollide = false
				end
			end
		end
	end)
end

local function stopNoclip()

	if noclipConnection then
		noclipConnection:Disconnect()
	end

	local character = player.Character

	if character then

		for _, part in pairs(character:GetDescendants()) do

			if part:IsA("BasePart") then
				part.CanCollide = true
			end
		end
	end
end

-------------------------------------------------
-- NOCLIP TOGGLE
-------------------------------------------------

local function setNoclip(state)

	noclip = state

	if state then

		noclipBack.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
		noclipCircle.Position = UDim2.new(1, -30, 0.5, -13)

		startNoclip()

	else

		noclipBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
		noclipCircle.Position = UDim2.new(0, 4, 0.5, -13)

		stopNoclip()

	end
end

noclipButton.MouseButton1Click:Connect(function()
	setNoclip(not noclip)
end)

-------------------------------------------------
-- WALKSPEED SYSTEM
-------------------------------------------------

local defaultSpeed = 16

local function getHumanoid()

	local character = player.Character
	if not character then return nil end

	return character:FindFirstChildOfClass("Humanoid")
end

setSpeedButton.MouseButton1Click:Connect(function()

	local humanoid = getHumanoid()
	if not humanoid then return end

	local number = tonumber(speedBox.Text)

	if number then
		humanoid.WalkSpeed = number
	end
end)

resetSpeedButton.MouseButton1Click:Connect(function()

	local humanoid = getHumanoid()
	if not humanoid then return end

	humanoid.WalkSpeed = defaultSpeed
	speedBox.Text = ""
end)

-------------------------------------------------
-- PLAYER DROPDOWN SYSTEM
-------------------------------------------------

local function refreshPlayers()

	-- remove old buttons only
	for _, child in pairs(playerList:GetChildren()) do
		if child:IsA("TextButton") then
			child:Destroy()
		end
	end

	local count = 0

	for _, plr in pairs(Players:GetPlayers()) do

		if plr ~= player then

			count += 1

			local button = Instance.new("TextButton")
			button.Size = UDim2.new(1, -8, 0, 32)
			button.BackgroundColor3 = Color3.fromRGB(45,45,45)
			button.Text = plr.Name
			button.Font = Enum.Font.Gotham
			button.TextSize = 16
			button.TextColor3 = Color3.new(1,1,1)
			button.BorderSizePixel = 0
			button.Parent = playerList
			button.ZIndex = 7

			local buttonCorner = Instance.new("UICorner")
			buttonCorner.CornerRadius = UDim.new(0,8)
			buttonCorner.Parent = button

			button.MouseButton1Click:Connect(function()

				selectedPlayer = plr
				dropdownButton.Text = plr.Name

				dropdownOpen = false

				TweenService:Create(
					dropdown,
					TweenInfo.new(0.2),
					{
						Size = UDim2.new(0,210,0,38)
					}
				):Play()

				task.wait(0.2)
				playerList.Visible = false
				playerList.Active = false

			end)
		end
	end

	playerList.CanvasSize = UDim2.new(0,0,0,count * 36)
end

refreshPlayers()

Players.PlayerAdded:Connect(refreshPlayers)
Players.PlayerRemoving:Connect(refreshPlayers)

dropdownButton.MouseButton1Click:Connect(function()

	dropdownOpen = not dropdownOpen

	if dropdownOpen then

		playerList.Visible = true
		playerList.Active = true

		TweenService:Create(
			dropdown,
			TweenInfo.new(0.2),
			{
				Size = UDim2.new(0,210,0,160)
			}
		):Play()

	else

		TweenService:Create(
			dropdown,
			TweenInfo.new(0.2),
			{
				Size = UDim2.new(0,210,0,38)
			}
		):Play()

		task.wait(0.2)

		playerList.Visible = false
		playerList.Active = false

	end
end)

-------------------------------------------------
-- TELEPORT SYSTEM
-------------------------------------------------

tpButton.MouseButton1Click:Connect(function()

	if not selectedPlayer then
		return
	end

	local character = player.Character
	local targetCharacter = selectedPlayer.Character

	if not character or not targetCharacter then
		return
	end

	local hrp = character:FindFirstChild("HumanoidRootPart")
	local targetHRP = targetCharacter:FindFirstChild("HumanoidRootPart")

	if hrp and targetHRP then
		hrp.CFrame = targetHRP.CFrame + Vector3.new(0,3,0)
	end
end)


-------------------------------------------------
-- PLAYER ESP SYSTEM
-------------------------------------------------

local espEnabled = false
local espObjects = {}

local function createESP(plr)

	if plr == player then
		return
	end

	local function addHighlight(character)

		if not character then
			return
		end

		-- remove old
		if espObjects[plr] then
			espObjects[plr]:Destroy()
		end

		local highlight = Instance.new("Highlight")
		highlight.Name = "StormyESP"
		highlight.FillColor = Color3.fromRGB(0,170,255)
		highlight.OutlineColor = Color3.fromRGB(255,255,255)
		highlight.FillTransparency = 0.5
		highlight.OutlineTransparency = 0
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.Parent = character

		espObjects[plr] = highlight
	end

	if plr.Character then
		addHighlight(plr.Character)
	end

	plr.CharacterAdded:Connect(function(character)

		if espEnabled then
			task.wait(1)
			addHighlight(character)
		end
	end)
end

local function enableESP()

	for _, plr in pairs(Players:GetPlayers()) do
		createESP(plr)
	end
end

local function disableESP()

	for _, esp in pairs(espObjects) do
		if esp then
			esp:Destroy()
		end
	end

	table.clear(espObjects)
end

Players.PlayerAdded:Connect(function(plr)

	if espEnabled then
		createESP(plr)
	end
end)

-------------------------------------------------
-- ESP TOGGLE
-------------------------------------------------

local function setESP(state)

	espEnabled = state

	if state then

		espBack.BackgroundColor3 = Color3.fromRGB(0,170,127)
		espCircle.Position = UDim2.new(1, -30, 0.5, -13)

		enableESP()

	else

		espBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
		espCircle.Position = UDim2.new(0, 4, 0.5, -13)

		disableESP()

	end
end

espButton.MouseButton1Click:Connect(function()
	setESP(not espEnabled)
end)

-------------------------------------------------
-- FLING SYSTEM
-------------------------------------------------

local flingEnabled = false
local flingSpin

local function startFling()

	local character = player.Character
	if not character then return end

	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	flingSpin = Instance.new("BodyAngularVelocity")
	flingSpin.Name = "StormyFling"

	flingSpin.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)

	flingSpin.AngularVelocity = Vector3.new(
		0,
		99999,
		0
	)

	flingSpin.P = 125000
	flingSpin.Parent = hrp
end

local function stopFling()

	local character = player.Character
	if not character then return end

	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	local spin = hrp:FindFirstChild("StormyFling")

	if spin then
		spin:Destroy()
	end
end

-------------------------------------------------
-- FLING TOGGLE
-------------------------------------------------

local function setFling(state)

	flingEnabled = state

	if state then

		flingBack.BackgroundColor3 = Color3.fromRGB(0,170,127)
		flingCircle.Position = UDim2.new(1, -30, 0.5, -13)

		startFling()

	else

		flingBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
		flingCircle.Position = UDim2.new(0, 4, 0.5, -13)

		stopFling()

	end
end

flingButton.MouseButton1Click:Connect(function()
	setFling(not flingEnabled)
end)
