local replicatedFirst = game:GetService("ReplicatedFirst")
local contentProvider = game:GetService("ContentProvider")
local tweenService = game:GetService("TweenService")
local players = game:GetService("Players")

local player = players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local loadingScreen = script:WaitForChild("LoadingScreen")

replicatedFirst:RemoveDefaultLoadingScreen()
repeat task.wait() until game:IsLoaded()

local assets = game:GetDescendants()

local clonedLoadingScreen = loadingScreen:Clone()
clonedLoadingScreen.Parent = playerGui

for i = 1, #assets, 273 do
	local asset = assets[i]
	local percentage = math.round(i / #assets * 100)
	
	contentProvider:PreloadAsync({asset})
	
	clonedLoadingScreen.Background.DisplayPercentage.Text = percentage.."%"
	clonedLoadingScreen.Background.DisplayAssetsLoaded.Text = "Loading Assets: "..i.."/"..#assets
	
	tweenService:Create(clonedLoadingScreen.Background.BarBackground.Bar, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(percentage/100, 1)}):Play()
	
	if i % 1 == 0 then
		task.wait()
	end
	
	if i == #assets then
		task.wait(1)
	end
end

for i, v in pairs(clonedLoadingScreen:GetDescendants()) do
	if v:IsA("Frame") then
		tweenService:Create(v, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
	elseif v:IsA("TextLabel") then
		tweenService:Create(v, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
	end
end

game.ReplicatedStorage.LoadingScreenStuff.LoadingScreenLoadedEvent:FireServer()
