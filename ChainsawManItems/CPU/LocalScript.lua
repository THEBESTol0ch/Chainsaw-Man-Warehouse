-- Control
local UserInputService = game:GetService("UserInputService")
--

-- Remote Events
local ChainsawManRemoteEvents = game.ReplicatedStorage.ChainsawManItems.RemoteEvents
--

-- Logic
local IsChatting = false
--

-- Functions
function OnTextBoxFocused()
	IsChatting = true
end

function OnTextBoxFocusReleased()
	IsChatting = false
end
--

UserInputService.InputBegan:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.Keyboard and IsChatting == false then
		if Key.KeyCode == Enum.KeyCode.F then
			ChainsawManRemoteEvents["ChainsawStartEvent"]:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.E then
			ChainsawManRemoteEvents["ChainsawStopEvent"]:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.Q then
			ChainsawManRemoteEvents["ChainsawAccelerationEvent"]:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.K then
			ChainsawManRemoteEvents["ChainsawIncreaseStatsEvent"]:FireServer()
		end
		if Key.KeyCode == Enum.KeyCode.L then
			ChainsawManRemoteEvents["ChainsawHideEvent"]:FireServer()
		end
	end
end)

UserInputService.InputBegan:Connect(function(Key)
	if Key.UserInputType == Enum.UserInputType.MouseButton1 then
		ChainsawManRemoteEvents.ChainsawAttack1Event:FireServer()
	end
end)

UserInputService.TextBoxFocused:Connect(OnTextBoxFocused)
UserInputService.TextBoxFocusReleased:Connect(OnTextBoxFocusReleased)