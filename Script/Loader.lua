caa = 0
tween = game:GetService("TweenService")
local TestMultplayer = true
if game:GetService("ReplicatedStorage"):FindFirstChild("a") then
    warn("Fuck")
    return true
end

local Test = Instance.new("Part")
Test.Name = "a"
Test.Parent = game:GetService("ReplicatedStorage")
Test = 1

-- Setting
local Distort = true
local Darkness = true
local Nightmare = true
local Smiler = true
local darkrooms = true
local Unknow = true
local Slice = true

-- Notification

function GitPNG(GithubImg, ImageName)
    local url = GithubImg
    if not isfile(ImageName .. ".png") then
        local success, response = pcall(function()
            return game:HttpGet(url)
        end)

        if success then
            writefile(ImageName .. ".png", response)
        else
            error(": " .. response)
        end
    end
    return (getcustomasset or getsynasset)(ImageName .. ".png")
end

function ReplaceAudGit(GithubSnd, SoundName)
	local url = GithubSnd
	if not isfile(SoundName .. ".mp3") then
		writefile(SoundName .. ".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName .. ".mp3")
end

function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
	local Url = GithubSoundPath

	if not isfile(AssetName..".mp3") then 
		writefile(AssetName..".mp3", game:HttpGet(Url)) 
	end

	local Sound = Instance.new("Sound")
	Sound.SoundId = (getcustomasset or getsynasset)(AssetName..".mp3")
	return Sound 
end

GitPNG("https://github.com/Script5039392/Png/blob/main/Asd.png?raw=true", "WhyYouSee")
GitPNG("https://github.com/Script5039392/Png/blob/main/OH_MAY_GODU.png?raw=true", "Slice")
GitPNG("https://github.com/Script5039392/Png/blob/main/Picsart_25-01-17_22-05-43-970.png?raw=true", "Distort")
GitPNG("https://github.com/Script5039392/Png/blob/main/Darkness.jpg?raw=true", "Darkness")
GitPNG("https://github.com/Script5039392/Png/blob/main/Nightmare.png?raw=true", "Nightmare")

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Notification",
	Text = "Doors Darkness Mode Has Execute!",
	Icon = GitPNG("https://github.com/Script5039392/Png/blob/main/2024_10_17_0dt_Kleki.png?raw=true", "horrorbalge")
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Notification",
	Text = "Wait 5-10s",
	Duration = 7,
	Icon = GitPNG("https://github.com/Script5039392/Png/blob/main/2024_10_17_0dt_Kleki.png?raw=true", "horrorbalge")
})

local Notification = Instance.new("Sound")
Notification.Parent = workspace
Notification.SoundId = "rbxassetid://6073491164"
Notification.Volume = 3
Notification:Play()

-- Loaded
local caption = game.Players.LocalPlayer:WaitForChild("PlayerGui").MainUI.MainFrame.Caption
caption.TextColor3 = Color3.fromRGB(255, 0, 0)
caption.Font = "TitilliumWeb"
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Darkness Mode V2 Has Activate",true)

local prefix = "[Notification]: "
local msg = "Darkness Mode V2 Has Activate"
local msg2 = "Script Made By Nowhywhats"
local msg3 = "Thank You For Use Script"
game.TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(`<font color='#ff0000'>{prefix..msg}</font>`)
game.TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(`<font color='#00ff00'>{prefix..msg2}</font>`)
game.TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(`<font color='#ffff00'>{prefix..msg3}</font>`)

---- Started
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

local C = game.Players.LocalPlayer.Character:WaitForChild("Collision")
C.Anchored = true
local caption = game.Players.LocalPlayer:WaitForChild("PlayerGui").MainUI.MainFrame.Caption
caption.TextColor3 = Color3.fromRGB(0, 255, 0)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Script Sync's Accordingly For Started Room",true)
wait(4)
caption.TextColor3 = Color3.fromRGB(255, 0, 0)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Goodluck",true)
C.Anchored = false
game.SoundService.AmbientReverb = "ConcertHall"

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

-- Intro
coroutine.wrap(function()

local shut = game.Players.LocalPlayer.PlayerGui.MainUI.MainFrame.IntroText
local intro = shut:Clone()
intro.Parent = game.Players.LocalPlayer.PlayerGui.MainUI
intro.Name = "intro"
intro.Visible = true
intro.Text = "The Darkness Mode"
intro.TextTransparency = 0
intro.TextColor3 = Color3.fromRGB(255, 0, 0)
intro.Font = "TitilliumWeb"
intro.Underline.ImageColor3 = Color3.fromRGB(255, 0, 0)
local underline = UDim2.new(1.1, 0, 0.015, 6)
game.TweenService:Create(intro.Underline, TweenInfo.new(3), {Size = underline}):Play()
wait(4)
game.TweenService:Create(intro.Underline, TweenInfo.new(1.3), {Size = UDim2.new(0.95, 0, 0.015, 6)}):Play()
wait(1)
game.TweenService:Create(intro.Underline, TweenInfo.new(2), {ImageTransparency = 1}):Play()
game.TweenService:Create(intro, TweenInfo.new(2), {TextTransparency = 1}):Play()
game.TweenService:Create(intro.Underline, TweenInfo.new(7), {Size = UDim2.new(0, 0, 0.015, 6)}):Play()
wait(1.5)
intro:Destroy()

end)()

-- Create the ScreenGui and Sprint Bar
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

local sprintBarBackground = Instance.new("Frame")
sprintBarBackground.Size = UDim2.new(0.2, 0, 0.03, 0)  -- Half of the screen width, small height
sprintBarBackground.Position = UDim2.new(0.8, 0, 0.51, 0)  -- Centered at top
sprintBarBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sprintBarBackground.Parent = screenGui

local sprintBar = Instance.new("Frame")
sprintBar.Size = UDim2.new(0, 0, 1, 0)  -- Width is dynamic, height fills the background
sprintBar.BackgroundColor3 = Color3.fromRGB(192, 192, 192)  -- Green for the sprint bar
sprintBar.Parent = sprintBarBackground

-- Sprint and Stamina Variables
local sprinting = false
local maxStamina = 100  -- Maximum stamina
local currentStamina = maxStamina  -- Starting stamina
local staminaRegenRate = 5  -- How fast stamina regenerates per second
local staminaDrainRate = 5  -- How fast stamina drains while sprinting
local sprintSpeed = 21     -- Sprinting speed
local walkSpeed = 15       -- Walking speed

-- Function to update the sprint bar
local function updateSprintBar()
    sprintBar.Size = UDim2.new(currentStamina / maxStamina, 0, 1, 0)
end

-- Mobile Button for Sprinting
local sprintButton = Instance.new("TextButton")
sprintButton.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Size of the button
sprintButton.Position = UDim2.new(0.8, 0, 0.4, 0)  -- Position at bottom-right corner
sprintButton.Text = "Sprint"
sprintButton.BackgroundColor3 = Color3.fromRGB(192, 192, 192)  -- Green button
sprintButton.Parent = screenGui

-- Toggle Sprint on Button Tap
sprintButton.MouseButton1Click:Connect(function()
    sprinting = not sprinting  -- Toggle sprinting state
    if sprinting and game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
        -- Change walk speed to sprint speed
        player.Character.Humanoid.WalkSpeed = sprintSpeed
    else
        -- Revert to walking speed
        player.Character.Humanoid.WalkSpeed = walkSpeed
    end
end)

-- Function to handle sprinting logic with Heartbeat to avoid infinite loop
local runService = game:GetService("RunService")
runService.Heartbeat:Connect(function()
    if sprinting then
        -- Drain stamina while sprinting
        if currentStamina > 0 then
            currentStamina = currentStamina - staminaDrainRate * runService.Heartbeat:Wait() -- Wait time per frame
        else
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Your Exhausted", true)
            sprinting = false  -- Stop sprinting if no stamina
            player.Character.Humanoid.WalkSpeed = walkSpeed -- Revert speed
        end
    else

        -- Regenerate stamina while not sprinting
        if currentStamina < maxStamina then
            currentStamina = currentStamina + staminaRegenRate * runService.Heartbeat:Wait() -- Wait time per frame
        end
    end

    -- Keep stamina within bounds
    currentStamina = math.clamp(currentStamina, 0, maxStamina)
    updateSprintBar()
end)

------ Functions 
-- Fog
coroutine.wrap(function()
while true do wait(0.005)

local Lighting = game:GetService("Lighting")
Lighting.Ambient = Color3.new(0, 0, 0)
Lighting.Brightness = 0.1
Lighting.FogEnd = 70
Lighting.FogStart = 1
Lighting.FogColor = Color3.new(0, 0, 0)

end
end)()

-- Doors Lightning
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

wait(1)
local a = Instance.new("PointLight")
a.Parent = game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Door.Door
a.Range = 10
a.Brightness = 1
a.Color = Color3.fromRGB(255, 0 ,0)
a.Enabled = true

if game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].SideroomDupe then
local b = Instance.new("PointLight")
b.Parent = game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].SideroomDupe.DoorFake.Door
b.Range = 10
b.Brightness = 1
b.Color = Color3.fromRGB(255, 0 ,0)
b.Enabled = true
end

end)
end)()

-- Delete Rug
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Hotel" then

workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)].Assets.Rug:Destroy()

end
end)
end)()

-- Destroy Light
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if darkrooms == true then
wait(0.005)

for i, v in ipairs(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets:GetDescendants()) do
    if v.Name == "Light_Fixtures" or v.Name == "Chandelier" or v.Name == "Fireplace_Logs" then
        v:Destroy()
    end
end

end
end)
end)()

-- Delete Sign Key
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Hotel" then
if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets.KeyObtain then
wait(0.005)

for i, v in ipairs(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets:GetDescendants()) do
    if v.Name == "KeyObtain" then
        v.Sign:Destroy()
    end
end

end
end
end)
end)()

-- Dark
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if darkrooms == true then
wait(0.0005)

local lastroom = game.ReplicatedStorage.GameData.LatestRoom
local lastrooms = game.Workspace.CurrentRooms:GetChildren()[#game.Workspace.CurrentRooms:GetChildren() - 1]

function light(tim,color0,color1)
	local tweenservice = game:GetService("TweenService")
	local info = TweenInfo.new(tim,Enum.EasingStyle.Linear)
	for _ , light in pairs(game.Workspace.CurrentRooms:GetDescendants()) do
		if light:IsA("Light") or light:IsA("SurfaceLight") or light:IsA("SpotLight") then
			local target = {Color = color1}
			local anim = tweenservice:Create(light,info,target)
			anim:Play()
		end
		if light:IsA("MeshPart") and light.Material == Enum.Material.Neon  and light.Name ~= "Skybox" then
			local target1 = {Color = color0}
			local anim2 = tweenservice:Create(light,info,target1)
			anim2:Play()
		end
	end
end

lastrooms:SetAttribute("Ambient",Color3.fromRGB(0,0,0))
light(1,Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))

end
end)
end)()

-- Delete
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

game.Workspace.Ambience_Dark:Destroy()
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.SpiderJumpscare:Destroy()

end)
end)()

-- Delete Sign Doors
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Door.Door.Sign:Destroy()

if game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].SideroomDupe then
game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].SideroomDupe.DoorFake.Sign:Destroy()
end

end)
end)()

-- Light
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
wait(1)

local light = Instance.new("PointLight")
light.Parent = game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Parts.Floor
light.Range = 12.5
light.Brightness = 1
light.Color = Color3.fromRGB(160, 192 ,255)
light.Enabled = true

end)
end)()

-- Sound Door
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed: Connect(function()

wait(1)
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Open.SoundId = "rbxassetid://320946744"
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Open.PlaybackSpeed = 0.75
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.SlamOpen.SoundId = "rbxassetid://320946744"
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.SlamOpen.PlaybackSpeed = 0.75
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.SlamOpen.TimePosition = 0.2
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Unlock.SoundId = "rbxassetid://6091973938"
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Bell.SoundId = "rbxassetid://166047422"
game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Bell.PlaybackSpeed = 1

end)
end)()

-- new sound's doors normally
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()

wait(1.4)
for _, v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:GetDescendants()) do
	if v.Name == "DoorNormal" then
		v:WaitForChild("Door"):WaitForChild("Open").SoundId = "rbxassetid://320946744"
		v:WaitForChild("Door"):WaitForChild("Open").PlaybackSpeed = 0.75
	end
end

end)
end)()

------ Entities

-- Distort
coroutine.wrap(function()
while Distort == true do
wait(math.random(40, 100))
if not game.Workspace:FindFirstChild("SeekMovingNewClone") or game.Workspace:FindFirstChild("SeekMoving") then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Script5039392/Entities/main/Distort.lua"))()

end
end
end)()

-- Darkness
coroutine.wrap(function()
while Darkness == true do
wait(100)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
if not game.Workspace:FindFirstChild("SeekMovingNewClone") or game.Workspace:FindFirstChild("SeekMoving") or game.ReplicatedStorage.GameData.LatestRoom.Value == 50 or game.ReplicatedStorage.GameData.LatestRoom.Value == 100 or workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:FindFirstChild("ShopProps") then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Script5039392/Entities/main/Darkness.lua"))()

end
end
end)()

-- Nightmare
coroutine.wrap(function()
while Nightmare == true do
wait(160)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
if not game.Workspace:FindFirstChild("SeekMovingNewClone") or game.Workspace:FindFirstChild("SeekMoving") or game.ReplicatedStorage.GameData.LatestRoom.Value == 50 or game.ReplicatedStorage.GameData.LatestRoom.Value == 100 or workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:FindFirstChild("ShopProps") then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Script5039392/Entities/main/Nightmare.lua"))()

end
end
end)()

-- Savage Smiler
coroutine.wrap(function()
while Smiler == true do
wait(250)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
if not game.Workspace:FindFirstChild("SeekMovingNewClone") or game.Workspace:FindFirstChild("SeekMoving") or game.ReplicatedStorage.GameData.LatestRoom.Value == 50 or game.ReplicatedStorage.GameData.LatestRoom.Value == 100 or workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:FindFirstChild("ShopProps") then

loadstring(game:HttpGet("https://raw.githubusercontent.com/Script5039392/Entities/main/Savage%20Smiler.lua"))()

end
end
end)()

-- Anti Combo
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if game.ReplicatedStorage.GameData.LatestRoom.Value == 49 or game.ReplicatedStorage.GameData.LatestRoom.Value == 50 or game.ReplicatedStorage.GameData.LatestRoom.Value == 51 or game.ReplicatedStorage.GameData.LatestRoom.Value == 950 then

Darkness = false
Nightmare = false
local Smiler = false
darkrooms = false
Unknow = false

end
end)
end)()

-- Return
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if game.ReplicatedStorage.GameData.LatestRoom.Value == 60 then

Darkness = true
Nightmare = true
local Smiler = true
darkrooms = true
Unknow = true

end
end)
end)()

-- Unknow
coroutine.wrap(function()
while Unknow == true do
wait(400)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

function GitPNG(GithubImg, ImageName)
    local url = GithubImg
    if not isfile(ImageName .. ".png") then
        local success, response = pcall(function()
            return game:HttpGet(url)
        end)

        if success then
            writefile(ImageName .. ".png", response)
        else
            error(": " .. response)
        end
    end
    return (getcustomasset or getsynasset)(ImageName .. ".png")
end

local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local cam = workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local Change = true
local Tp = true
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local Speed = 16

local S = game:GetObjects("rbxassetid://16834807322")[1]
S.Parent = workspace
local primary_part = S:FindFirstChildWhichIsA("BasePart") or S:FindFirstChildWhichIsA("Part")
S.PrimaryPart = primary_part

if not S.PrimaryPart then return end

S.PrimaryPart.CFrame = cam.CFrame * CFrame.new(0, 0, -10)
S.PrimaryPart.CanCollide = false
game.Workspace.Dread.Name = "Unknow"

task.spawn(function() -- Delete
local a = game.Workspace.Unknow.RushNew
a.Footsteps:Destroy()
a.PlaySound:Destroy()
a.Sounds:Destroy()
end)

task.spawn(function() -- Delete Face
 while Change == true do
  wait(0.05)
   for i, v in ipairs(game.Workspace.Unknow.RushNew:GetDescendants()) do
     if v.Name == "Attachment" then
        v.Black:Destroy()
        v.Face:Destroy()
        v.Idk:Destroy()
     end
   end
 end
end)

task.spawn(function() -- Sound
local Static = Instance.new("Sound")
Static.Parent = Workspace.Unknow.RushNew
Static.SoundId = "rbxassetid://4860560167"
Static.Volume = 2
Static.PlaybackSpeed = 0.75
Static.Looped = true
Static.MaxDistance = 30
Static:Play()
end)

task.spawn(function() -- Buglol
while true do
wait(0.9)
game.Workspace.Unknow.RushNew.Attachment.ParticleEmitter.Enabled = false
end
end)

task.spawn(function()
while Tp == true do
wait(1)
game.Workspace.Unknow.RushNew.CFrame = cam.CFrame * CFrame.new(0, 0, -10)
wait(1.5)
game.Workspace.Unknow.RushNew:PivotTo(game.Workspace.Unknow.RushNew.CFrame+Vector3.new(0,0,12))
end
end)

game.Workspace.Unknow.RushNew.Touched:Connect(function()
	chr.Humanoid:TakeDamage(100)
	game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position, game.Workspace.Unknow.RushNew.Position)
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Â¿{Unknow}?"
end)

game.Workspace.Unknow.RushNew.Attachment.BillboardGui.ImageLabel.Image = GitPNG("https://github.com/Script5039392/Png/blob/main/Asd.png?raw=true", "WhyYouSee")
wait(20)
game.Workspace.Unknow:Destroy()
Change = false
Tp = false

end
end)()

-- Slice
coroutine.wrap(function()
while Slice == true do
wait(410)
function GitPNG(GithubImg, ImageName)
    local url = GithubImg
    if not isfile(ImageName .. ".png") then
        local success, response = pcall(function()
            return game:HttpGet(url)
        end)

        if success then
            writefile(ImageName .. ".png", response)
        else
            error(": " .. response)
        end
    end
    return (getcustomasset or getsynasset)(ImageName .. ".png")
end

local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local cam = workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local damage = true

local A = game:GetObjects("rbxassetid://16834807322")[1]
A.Parent = workspace
local primary_part = A:FindFirstChildWhichIsA("BasePart") or A:FindFirstChildWhichIsA("Part")
A.PrimaryPart = primary_part

if not A.PrimaryPart then return end

A:SetPrimaryPartCFrame(chr.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15))
A.PrimaryPart.CanCollide = false

game.Workspace.Dread.Name = "Slice"
game.Workspace.Slice.RushNew.Attachment.BillboardGui.ImageLabel.Image = GitPNG("https://github.com/Script5039392/Png/blob/main/OH_MAY_GODU.png?raw=true", "Slice")

task.spawn(function() -- Delete
local a = game.Workspace.Slice.RushNew
a.Footsteps:Destroy()
a.PlaySound:Destroy()
a.Sounds:Destroy()
end)

task.spawn(function() -- Delete Face
 while true do
  wait(0.05)
   for i, v in ipairs(game.Workspace.Slice.RushNew:GetDescendants()) do
     if v.Name == "Attachment" then
        v.PointLight:Destroy()
        v.Black:Destroy()
        v.Face:Destroy()
        v.Idk:Destroy()
     end
   end
 end
end)

task.spawn(function() -- Sound
local Static = Instance.new("Sound")
Static.Parent = Workspace.Slice.RushNew
Static.SoundId = "rbxassetid://8028069841"
Static.Volume = 2
Static.PlaybackSpeed = 0.25
Static.Looped = true
Static.MaxDistance = 120
Static:Play()
end)

task.spawn(function() -- Color
while true do
wait(1)
local c = game.Workspace.Slice.RushNew.Attachment.PointLight
c.Range = 15
c.Brightness = 25
c.Color = Color3.fromRGB(0,0,255)
end
end)

task.spawn(function() -- Buglol
while true do
wait(0.9)
game.Workspace.Slice.RushNew.Attachment.ParticleEmitter.Enabled = false
end
end)

task.spawn(function() -- Check
while damage == true do wait(1)
  if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
	chr.Humanoid:TakeDamage(5)
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Slice"
  end
end
end)

wait(5)
game.Workspace.Slice:Destroy()
damage = false

end
end)

-- Random Rush
coroutine.wrap(function()
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Hotel" then
if not game.ReplicatedStorage.GameData.LatestRoom.Value == 50 or game.ReplicatedStorage.GameData.LatestRoom.Value > 90 or game.Workspace:FindFirstChild("SeekMovingNewClone") then

local Rush = math.random(1, 110)
if Rush == 50 then
---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
	Entity = {
		Name = "Rush",
		Asset = "https://github.com/RegularVynixu/Utilities/raw/main/Doors/Entity%20Spawner/Assets/Entities/Rush.rbxm",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 5
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 50,
		Values = {6.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 130,
		Delay = 3,
		Reversed = false
	},
	Rebounding = {
		Enabled = false,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 1,
		Delay = 2
	},
	Damage = {
		Enabled = true,
		Range = 100,
		Amount = 0.001
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = false
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"Death", "Hints", "Go", "Here"},
		Cause = ""
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: ".. room.Name.. " for the first time")
    else
        print("Entity has entered room: ".. room.Name.. " again")
    end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound == true then
        print("Entity has started rebounding")
	else
        print("Entity has finished rebounding")
	end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning")
    workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
    workspace.Rush:Destroy()
end)

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Entity has killed the player")
	else
		print("Entity has damaged the player")
		local main_game = require(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
require(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Jumpscares.Rush)(main_game)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 1000
game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Rush"
	end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Custom crucifixion callback")
end)

]]--

---====== Run entity ======---

entity:Run()

end
end
end
end)
end)()
