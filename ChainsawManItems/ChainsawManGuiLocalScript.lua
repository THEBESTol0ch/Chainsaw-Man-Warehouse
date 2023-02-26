-- Control
local UserInputService = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Character = Player.Character
--

-- Items
local ChainsawManGui = script.Parent
--

-- Values
local BloodCapacityValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.BloodCapacityValue
local AccelerationValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.AccelerationValue
local ChainsawStatusValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.ChainsawStatusValue
local ChainsawEquipStatusValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.ChainsawEquipStatusValue
local ChainsawAttackStatusValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.ChainsawAttackStatusValue

local CanEquipChainsawValue = workspace.CanEquipChainsawValue
--

-- Logic
local CanEvent = true
--

-- Functions
function ShowChainsawGui()
	ChainsawManGui.BloodBarFrame:TweenPosition(UDim2.new(0.31, 4,0.89, 0), "Out", "Sine", 1, false)
	ChainsawManGui.AccelerationBarFrame:TweenPosition(UDim2.new(0.635, 0,0.891, 0), "Out", "Sine", 1, false)
	ChainsawManGui.BloodBarFrame.BloodBar:TweenPosition(UDim2.new(BloodCapacityValue.Value, 0, 0.09, 0), "Out", "Sine", 5, false)
end

function HideChainsawGui()
	ChainsawManGui.BloodBarFrame:TweenPosition(UDim2.new(-0.052, 4,0.89, 0), "In", "Sine", 1, false)
	ChainsawManGui.AccelerationBarFrame:TweenPosition(UDim2.new(0.997, 0,0.891, 0), "In", "Sine", 1, false)
end
--

UserInputService.InputBegan:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.Keyboard then
		if Key.KeyCode == Enum.KeyCode.F and ChainsawEquipStatusValue.Value == "UNEQUIPPED" and CanEvent == true and BloodCapacityValue.Value > -15.1 and CanEquipChainsawValue.Value == true then
			CanEvent = false
			wait(1)
			ShowChainsawGui()
		end
	end
end)

ChainsawEquipStatusValue.Changed:Connect(function()
	if ChainsawEquipStatusValue.Value == "EQUIPPED" then
		CanEvent = true
	end
end)

BloodCapacityValue.Changed:Connect(function()
	ChainsawManGui.BloodBarFrame.BloodBar.Position = UDim2.new(BloodCapacityValue.Value, 0, 0.09, 0)
end)

AccelerationValue.Changed:Connect(function()
	ChainsawManGui.AccelerationBarFrame.AccelerationBar.Position = UDim2.new(AccelerationValue.Value, 0, 0.092, 0)
end)

--ChainsawStatusValue.Changed:Connect(function()
--	if ChainsawStatusValue.Value == "OFF" then
--		wait(61)
--		if ChainsawStatusValue.Value == "OFF" and ChainsawEquipStatusValue.Value == "UNEQUIPPED" then
--			HideChainsawGui()
--			Character.Animate.Enabled = true
--		end
--	end
--end)

ChainsawAttackStatusValue.Changed:Connect(function()
	if ChainsawAttackStatusValue.Value == "ACCELERATION" then
		ChainsawManGui.AccelerationBarFrame.AccelerationBar:TweenPosition(UDim2.new(7.1, 0,0.092, 0), "In", "Sine", 12.5, false)
	end
end)
