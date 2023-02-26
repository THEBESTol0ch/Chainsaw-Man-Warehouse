-- Items
local Trigger = script.Parent.HumanoidRootPart
local UpperTorso = script.Parent.UpperTorso
--

-- Sounds
local ChainsawFresh1Sound = script.Parent.UpperTorso.ChainsawFresh1Sound
local ChainsawFresh2Sound = script.Parent.UpperTorso.ChainsawFresh2Sound
local ChainsawFresh3Sound = script.Parent.UpperTorso.ChainsawFresh3Sound
--

-- Logic
local CanEvent = true
--

-- Functions
function SpawnBloodPieces()
	local BloodPiecesCountValue = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.BloodPiecesCountValue
	local XValue = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.Positions.XValue
	local YValue = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.Positions.YValue
	local ZValue = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.Positions.ZValue

	local BloodPiecesCount = 0
	local RandomIndex = 0
	RandomIndex = math.random(1, 7)
	BloodPiecesCount = RandomIndex

	for Count = 0, BloodPiecesCount, 1 do
		local BloodPiece = game.ReplicatedStorage.BloodSystem.BloodPieceSystem.BloodPiece:Clone()
		BloodPiece.Parent = workspace

		XValue.Value = UpperTorso.Position.X
		YValue.Value = UpperTorso.Position.Y
		ZValue.Value = UpperTorso.Position.Z
		BloodPiece.Position = Vector3.new(XValue.Value, YValue.Value, ZValue.Value)

		RandomIndex = math.random(1, 4)
		if RandomIndex == 2 then
			RandomIndex = math.random(1, 6)
			XValue.Value = XValue.Value + RandomIndex
		end
		if RandomIndex == 3 then
			RandomIndex = math.random(1, 6)
			XValue.Value = XValue.Value - RandomIndex
		end

		RandomIndex = math.random(1, 6)
		YValue.Value = YValue.Value + RandomIndex

		RandomIndex = math.random(1, 4)
		if RandomIndex == 2 then
			RandomIndex = math.random(1, 6)
			ZValue.Value = ZValue.Value + RandomIndex
		end
		if RandomIndex == 3 then
			RandomIndex = math.random(1, 6)
			ZValue.Value = ZValue.Value - RandomIndex
		end

		BloodPiece.Position = Vector3.new(XValue.Value, YValue.Value, ZValue.Value)
	end
end

function PlayRandomChainsawFreshSound()
	local RandomIndex = 0
	RandomIndex = math.random(1, 3)
	if RandomIndex == 1 then
		ChainsawFresh1Sound:Play()
	end
	if RandomIndex == 2 then
		ChainsawFresh2Sound:Play()
	end
	if RandomIndex == 3 then
		ChainsawFresh3Sound:Play()
	end
end
--

--Trigger.Touched:Connect(function(Hit)
--	local MainFrame = Hit.Parent:FindFirstChild("MainFrame")
--	if MainFrame and script.Parent.ZombieHumanoid.Health > 0 then
--		script.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
--		script.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
--		wait(1)
--		script.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
--		script.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
--	end
--end)

script.Parent.ZombieHumanoid.HealthChanged:Connect(function()
	if script.Parent.ZombieHumanoid.Health == 0 and CanEvent == true then
		CanEvent = false
		script.Parent.Head.BloodEmitter.BloodEffect3.Enabled = true

		script.Parent.UpperTorso.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.UpperTorso.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.UpperTorso.BloodEmitter3.BloodEffect.Enabled = true
		script.Parent.LowerTorso.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.LowerTorso.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.LowerTorso.BloodEmitter3.BloodEffect.Enabled = true

		script.Parent.LeftUpperArm.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.LeftUpperArm.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.LeftLowerArm.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.LeftLowerArm.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.LeftHand.BloodEmitter.BloodEffect.Enabled = true

		script.Parent.RightUpperArm.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.RightUpperArm.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.RightLowerArm.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.RightLowerArm.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.RightHand.BloodEmitter.BloodEffect.Enabled = true

		script.Parent.LeftUpperLeg.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.LeftUpperLeg.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.LeftLowerLeg.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.LeftLowerLeg.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.LeftFoot.BloodEmitter.BloodEffect.Enabled = true

		script.Parent.RightUpperLeg.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.RightUpperLeg.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.RightLowerLeg.BloodEmitter1.BloodEffect.Enabled = true
		script.Parent.RightLowerLeg.BloodEmitter2.BloodEffect.Enabled = true
		script.Parent.RightFoot.BloodEmitter.BloodEffect.Enabled = true

		PlayRandomChainsawFreshSound()

		wait(2)
		SpawnBloodPieces()

		wait(18)

		script.Parent:Destroy()
	end
end)
