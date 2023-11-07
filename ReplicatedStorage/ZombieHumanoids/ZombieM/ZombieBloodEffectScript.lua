-- Items
local Trigger = script.Parent.HumanoidRootPart
local UpperTorso = script.Parent.UpperTorso
local Humanoid = script.Parent.Humanoid
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

function DoItem(ItemName, Key, Value)
	for _, Item in pairs(script.Parent:GetDescendants()) do
		if Item.Name == ItemName then
			Item[Key] = Value
		end
	end
end
--

Trigger.Touched:Connect(function(Hit)
	local MainFrame = Hit.Parent:FindFirstChild("BladeMainFrame")
	if MainFrame and Humanoid.Health > 0 then
		UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
		UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
		wait(1)
		UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
		UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
	end
end)

Humanoid.HealthChanged:Connect(function()
	if Humanoid.Health == 0 and CanEvent == true then
		CanEvent = false
		DoItem("BloodEffect", "Enabled", true)
		UpperTorso["ChainsawFresh"..math.random(1, 3).."Sound"]:Play()
		wait(2)
		SpawnBloodPieces()
		wait(18)
		script.Parent:Destroy()
	end
end)