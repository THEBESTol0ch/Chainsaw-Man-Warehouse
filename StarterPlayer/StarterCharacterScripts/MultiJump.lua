-- This should be in StarterCharacterScripts
local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")

local MAX_JUMPS = 2
local TIME_BETWEEN_JUMPS = 0.2
local numJumps = 0
local canJumpAgain = false

local function onStateChanged(oldState, newState)
	if Enum.HumanoidStateType.Landed == newState then
		numJumps = 0
		canJumpAgain = false
	elseif Enum.HumanoidStateType.Freefall == newState then
		wait(TIME_BETWEEN_JUMPS)
		canJumpAgain = true
	elseif Enum.HumanoidStateType.Jumping == newState then
		canJumpAgain = false
		numJumps += 1
	end

end

local function onJumpRequest()
	if canJumpAgain and numJumps < MAX_JUMPS then
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end

humanoid.StateChanged:Connect(onStateChanged)
UserInputService.JumpRequest:Connect(onJumpRequest)
