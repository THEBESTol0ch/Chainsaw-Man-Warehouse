-- Items
local Warehouse1Trigger = script.Parent.Parent.Triggers.Warehouse1Trigger
local Warehouse2Trigger = script.Parent.Parent.Triggers.Warehouse2Trigger
local Warehouse3Trigger = script.Parent.Parent.Triggers.Warehouse3Trigger

local Warehouse1Zombies = script.Parent.Parent.Parent.Warehouse1Zombies
local Warehouse2Zombies = script.Parent.Parent.Parent.Warehouse2Zombies
local Warehouse3Zombies = script.Parent.Parent.Parent.Warehouse3Zombies
--

-- Values
local PlayerInWarehouse1Value = script.Parent.Parent.Values.PlayerInWarehouse1Value
local PlayerInWarehouse2Value = script.Parent.Parent.Values.PlayerInWarehouse2Value
local PlayerInWarehouse3Value = script.Parent.Parent.Values.PlayerInWarehouse3Value
--

Warehouse1Trigger.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("Humanoid") then
		Warehouse1Trigger.CanTouch = false
		Warehouse2Trigger.CanTouch = true
		Warehouse3Trigger.CanTouch = true
		
		PlayerInWarehouse1Value.Value = true
		PlayerInWarehouse2Value.Value = false
		PlayerInWarehouse3Value.Value = false
	end
end)

Warehouse2Trigger.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("Humanoid") then
		Warehouse1Trigger.CanTouch = true
		Warehouse2Trigger.CanTouch = false
		Warehouse3Trigger.CanTouch = true
		
		PlayerInWarehouse1Value.Value = false
		PlayerInWarehouse2Value.Value = true
		PlayerInWarehouse3Value.Value = false
	end
end)

Warehouse3Trigger.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("Humanoid") then
		Warehouse1Trigger.CanTouch = true
		Warehouse2Trigger.CanTouch = true
		Warehouse3Trigger.CanTouch = false
		
		PlayerInWarehouse1Value.Value = false
		PlayerInWarehouse2Value.Value = false
		PlayerInWarehouse3Value.Value = true
	end
end)

PlayerInWarehouse1Value.Changed:Connect(function()
	if PlayerInWarehouse1Value.Value == true then
		for _, Object in pairs(Warehouse2Zombies:GetChildren()) do
			Object:Destroy()
		end
		for _, Object in pairs(Warehouse3Zombies:GetChildren()) do
			Object:Destroy()
		end
	end
end)

PlayerInWarehouse2Value.Changed:Connect(function()
	if PlayerInWarehouse2Value.Value == true then
		for _, Object in pairs(Warehouse1Zombies:GetChildren()) do
			Object:Destroy()
		end
		for _, Object in pairs(Warehouse3Zombies:GetChildren()) do
			Object:Destroy()
		end
	end
end)

PlayerInWarehouse3Value.Changed:Connect(function()
	if PlayerInWarehouse3Value.Value == true then
		for _, Object in pairs(Warehouse1Zombies:GetChildren()) do
			Object:Destroy()
		end
		for _, Object in pairs(Warehouse2Zombies:GetChildren()) do
			Object:Destroy()
		end
	end
end)
