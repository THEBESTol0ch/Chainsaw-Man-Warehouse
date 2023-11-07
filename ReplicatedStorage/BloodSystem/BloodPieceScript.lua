-- Items
local BloodPiece = script.Parent
--

-- Values
local BloodPointValue = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.BloodPointValue
--

-- Logic
local CanEvent = true
--

BloodPiece.Touched:Connect(function(Hit)
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid")
	if Humanoid and Humanoid.Parent.Name ~= "ZombieM" and Humanoid.Parent.Name ~= "ZombieW" and CanEvent == true then
		CanEvent = false
		Humanoid.Parent.ChainsawHead.Head.CPU.Values.BloodCapacityValue.Value += BloodPointValue.Value
		BloodPiece.Transparency = 1
		BloodPiece["BloodDrink"..math.random(1, 3).."Sound"]:Play()
		wait(0.5)
		BloodPiece:Destroy()
	end
end)

BloodPiece.Changed:Connect(function()
	wait(30)
	BloodPiece:Destroy()
end)