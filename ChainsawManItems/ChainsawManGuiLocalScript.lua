-- Control
local Player = game.Players.LocalPlayer
local Character = Player.Character
--

-- Items
local ChainsawManGui = script.Parent
--

-- Values
local BloodCapacityValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.BloodCapacityValue
local AccelerationValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.AccelerationValue
local ShowGuiValue = Character:WaitForChild("ChainsawHead").Head.CPU.Values.ShowGuiValue
--

-- Functions
function DoGui(Mode)
	if Mode == "SHOW" then
		ChainsawManGui.BloodBarBackground:TweenPosition(UDim2.new(0, 0, 1.16, 0), "Out", "Sine", 1, false)
		ChainsawManGui.AccelerationBarBackground:TweenPosition(UDim2.new(1, 0, 1.16, 0), "Out", "Sine", 1, false)
		ChainsawManGui.BloodBarBackground.BloodBar:TweenSize(UDim2.new(BloodCapacityValue.Value / 100, 0, 1, 0), "Out", "Sine", 2, false)
	elseif Mode == "HIDE" then
		ChainsawManGui.BloodBarBackground:TweenPosition(UDim2.new(-0.4, 4, 1.16, 0), "In", "Sine", 1, false)
		ChainsawManGui.AccelerationBarBackground:TweenPosition(UDim2.new(1.4, 0, 1.16, 0), "In", "Sine", 1, false)
	end
end
--

ShowGuiValue.Changed:Connect(function()
	if ShowGuiValue.Value == true then
		DoGui("SHOW")
	elseif ShowGuiValue.Value == false then
		DoGui("HIDE")
	end
end)

BloodCapacityValue.Changed:Connect(function()
	local Value = BloodCapacityValue.Value / 100
	if Value < 0 then
		Value = 0
	elseif Value > 1 then
		Value = 1
	end
	ChainsawManGui.BloodBarBackground.BloodBar.Size = UDim2.new(Value, 0, 1, 0)
end)

AccelerationValue.Changed:Connect(function()
	local Value = AccelerationValue.Value / 100
	if Value < 0 then
		Value = 0
	elseif Value > 1 then
		Value = 1
	end
	ChainsawManGui.AccelerationBarBackground.AccelerationBar.Size = UDim2.new(Value, 0, 1, 0)
end)