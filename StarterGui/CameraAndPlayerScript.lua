local Player = game.Players.LocalPlayer
local Character = Player.Character
local Camera = workspace.CurrentCamera
local CanEquipChainsawValue = workspace.CanEquipChainsawValue

repeat wait()
	Camera.CameraType = Enum.CameraType.Scriptable
	Camera.FieldOfView = 22.16
	Character.Humanoid.WalkSpeed = 0
	Character.Humanoid.JumpPower = 0
until Camera.CameraType == Enum.CameraType.Scriptable
Camera.CFrame = workspace.Cutscenes.GameStart.Cameras["1"].CFrame

CanEquipChainsawValue.Changed:Connect(function()
	if CanEquipChainsawValue.Value == true then
		Character.Humanoid.WalkSpeed = 16
		Character.Humanoid.JumpPower = 50
	end
end)
