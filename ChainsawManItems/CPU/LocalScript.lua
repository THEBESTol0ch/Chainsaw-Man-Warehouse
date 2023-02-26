-- Control
local UserInputService = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Character = Player.Character
--

-- Items
local ChainsawHead = script.Parent.Parent.Parent.Parent.Parent.ChainsawHead
--

-- Values
local CanEquipChainsawValue = workspace.CanEquipChainsawValue
--

-- Remote Events
local ChainsawStartEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawStartEvent
local ChainsawStopEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawStopEvent
local ChainsawAttack1LeftEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack1LeftEvent
local ChainsawAttack1RightEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack1RightEvent
local ChainsawAttack2LeftEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack2LeftEvent
local ChainsawAttack2RightEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack2RightEvent
local ChainsawAttack3LeftEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack3LeftEvent
local ChainsawAttack3RightEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack3RightEvent
local ChainsawAttack4Event = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAttack4Event
local ChainsawAccelerationEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.ChainsawAccelerationEvent

local ShiftStartEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.KeysEvents.ShiftStartEvent
local ShiftStopEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.KeysEvents.ShiftStopEvent
local SpaceStartEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.KeysEvents.SpaceStartEvent
local SpaceStopEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.KeysEvents.SpaceStopEvent
local WStartEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.KeysEvents.WStartEvent
local WStopEvent = game.ReplicatedStorage.ChainsawManRemoteEvents.KeysEvents.WStopEvent
--

UserInputService.InputBegan:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.Keyboard then
		if Key.KeyCode == Enum.KeyCode.F and CanEquipChainsawValue.Value == true then
			ChainsawStartEvent:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.E then
			ChainsawStopEvent:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.Q then
			ChainsawAccelerationEvent:FireServer()
		end
	end
end)

UserInputService.InputBegan:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.MouseButton1 then
		local RandomIndex = 0
		RandomIndex = math.random(1, 4)
		if RandomIndex == 1 then
			ChainsawAttack1LeftEvent:FireServer()
		end
		if RandomIndex == 2 then
			ChainsawAttack1RightEvent:FireServer()
		end
		if RandomIndex == 3 then
			ChainsawAttack2LeftEvent:FireServer()
		end
		if RandomIndex == 4 then
			ChainsawAttack2RightEvent:FireServer()
		end
	end
end)



UserInputService.InputBegan:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.Keyboard then
		if Key.KeyCode == Enum.KeyCode.LeftShift then
			ShiftStartEvent:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.Space then
			SpaceStartEvent:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.W then
			WStartEvent:FireServer()
		end
	end
end)

UserInputService.InputEnded:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.Keyboard then
		if Key.KeyCode == Enum.KeyCode.LeftShift then
			ShiftStopEvent:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.Space then
			SpaceStopEvent:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.W then
			WStopEvent:FireServer()
		end
	end
end)
