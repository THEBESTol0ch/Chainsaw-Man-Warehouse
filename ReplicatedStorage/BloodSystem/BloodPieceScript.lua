-- Items
local BloodPiece = script.Parent
--

-- Sounds
local BloodDrink1Sound = script.Parent.BloodDrink1Sound
local BloodDrink2Sound = script.Parent.BloodDrink2Sound
local BloodDrink3Sound = script.Parent.BloodDrink3Sound
--

-- Values
local BloodPointValue = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.BloodPointValue
--

-- Logic
local CanEvent = true
local BloodBarMaxValue = -10.1
--

BloodPiece.Touched:Connect(function(Hit)
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid")
	if Humanoid and CanEvent == true then
		CanEvent = false
		local BloodCapacityValue = Humanoid.Parent.ChainsawHead.Head.CPU.Values.BloodCapacityValue.Value
		local FutureSum = BloodCapacityValue + BloodPointValue.Value
		if FutureSum < BloodBarMaxValue then
			Humanoid.Parent.ChainsawHead.Head.CPU.Values.BloodCapacityValue.Value = BloodCapacityValue + BloodPointValue.Value
		end
		if FutureSum > BloodBarMaxValue then
			local NeedToFill = BloodBarMaxValue - BloodCapacityValue
			Humanoid.Parent.ChainsawHead.Head.CPU.Values.BloodCapacityValue.Value = BloodCapacityValue + NeedToFill
		end
		BloodPiece.Transparency = 1
		local RandomIndex = 0
		RandomIndex = math.random(1, 3)
		if RandomIndex == 1 then
			BloodDrink1Sound:Play()
		end
		if RandomIndex == 2 then
			BloodDrink2Sound:Play()
		end
		if RandomIndex == 3 then
			BloodDrink3Sound:Play()
		end
		wait(0.5)
		BloodPiece:Destroy()
	end
end)

BloodPiece.Changed:Connect(function()
	wait(30)
	BloodPiece:Destroy()
end)
