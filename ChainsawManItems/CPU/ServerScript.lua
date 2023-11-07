-- Items
local Character = script.Parent.Parent.Parent.Parent.Parent
local ChainBladeLeftArm = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("ChainBladeLeftArm")
local ChainsawHead = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("ChainsawHead")
local ChainBladeRightArm = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("ChainBladeRightArm")
local Starter = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("Starter")
local StarterConnector1 = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("StarterConnector1")
local MultiJump = Character:WaitForChild("MultiJump")
local SFXEmitter = ChainsawHead.Head.SFXEmitter
local SmokeEmitter = SFXEmitter.Smoke
--

-- Values
local Values = ChainsawHead.Head.CPU.Values
local BloodCapacityValue = Values.BloodCapacityValue
local AccelerationValue = Values.AccelerationValue
local ChainsSpeedModeValue = Values.ChainsSpeedModeValue
local ChainsawEngineStatusValue = Values.ChainsawEngineStatusValue
local ShowGuiValue = Values.ShowGuiValue
local ChainsawEquippedValue = Values.ChainsawEquippedValue
local AddControlsValue = Values.AddControlsValue
--

-- Sounds
local ChainsawStarterRopeSound = SFXEmitter.ChainsawStarterRopeSound
local ChainsawStartSound = SFXEmitter.ChainsawStartSound
local ChainsawStopSound = SFXEmitter.ChainsawStopSound
local ChainsawStarterSound = SFXEmitter.ChainsawStarterSound
local ChainsawIdleSound = SFXEmitter.ChainsawIdleSound
local ChainsawAccelerationSound = SFXEmitter.ChainsawAccelerationSound
--

-- Animations
local CMStarterAnimation = script.Parent.Parent.Animations.CMStarterAnimation
local CMStarterAnimationTrack = Character.Humanoid:LoadAnimation(CMStarterAnimation)

local CMAccelerationAnimation = script.Parent.Parent.Animations.CMAccelerationAnimation
local CMAccelerationAnimationTrack = Character.Humanoid:LoadAnimation(CMAccelerationAnimation)

local CMAttack1LeftAnimation = script.Parent.Parent.Animations.CMAttack1LeftAnimation
local CMAttack1RightAnimation = script.Parent.Parent.Animations.CMAttack1RightAnimation

local CMAttack2LeftAnimation = script.Parent.Parent.Animations.CMAttack2LeftAnimation
local CMAttack2RightAnimation = script.Parent.Parent.Animations.CMAttack2RightAnimation

local Attack1Animations = {
	Character.Humanoid:LoadAnimation(CMAttack1LeftAnimation),
	Character.Humanoid:LoadAnimation(CMAttack1RightAnimation),
	Character.Humanoid:LoadAnimation(CMAttack2LeftAnimation),
	Character.Humanoid:LoadAnimation(CMAttack2RightAnimation),
}
--

-- Remote Events
local ChainsawManRemoteEvents = game.ReplicatedStorage.ChainsawManItems.RemoteEvents
local ChainsawStartEvent = ChainsawManRemoteEvents.ChainsawStartEvent
local ChainsawStopEvent = ChainsawManRemoteEvents.ChainsawStopEvent
local ChainsawAccelerationEvent = ChainsawManRemoteEvents.ChainsawAccelerationEvent
local ChainsawIncreaseStatsEvent = ChainsawManRemoteEvents.ChainsawIncreaseStatsEvent
local ChainsawHideEvent = ChainsawManRemoteEvents.ChainsawHideEvent
local ChainsawAttack1Event = ChainsawManRemoteEvents.ChainsawAttack1Event
--

-- Logic
local CanEvent = true
local CanChangeHumanoidProperties = false
local CanKill = true
local CanAttack = false

local MinBloodForStartValue = 20
local ExchangeValue = 40
--

-- Functions
function DoItem(ItemName, Key, Value)
	for _, Item in pairs(ChainsawHead.Parent:GetDescendants()) do
		if Item.Name == ItemName then
			Item[Key] = Value
		end
	end
end

function DoChainBlade(Mode, Type)
	if Mode == "SHOW" then
		if Type == "LEFT" then
			ChainBladeLeftArm.BladeMainFrame.Transparency = 0
			ChainBladeLeftArm.Chain.ChainFrame.Transparency = 0
			ChainBladeLeftArm.Chain.Chain1.Transparency = 0
			ChainBladeLeftArm.Blood1.Transparency = 0
		elseif Type == "HEAD" then
			for _, Object in pairs(Character:GetChildren()) do
				if Object:IsA("Accessory") then
					Object.Handle.Transparency = 1
				end
			end

			Character.Head.Transparency = 1
			Character.Head.face.Transparency = 1

			ChainsawHead.ChainBlade.BladeMainFrame.Transparency = 0
			ChainsawHead.ChainBlade.Chain.ChainFrame.Transparency = 0
			ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 0
			ChainsawHead.ChainBlade.Blood1.Transparency = 0

			for _, Object in pairs(ChainsawHead.Head.Parts:GetDescendants()) do
				if Object:IsA("UnionOperation") or Object:IsA("Texture") then
					Object.Transparency = 0
				end
			end
			for _, Object in pairs(ChainsawHead.Connector.Wires:GetChildren()) do
				Object.Visible = true
			end
		elseif Type == "RIGHT" then
			ChainBladeRightArm.BladeMainFrame.Transparency = 0
			ChainBladeRightArm.Chain.ChainFrame.Transparency = 0
			ChainBladeRightArm.Chain.Chain1.Transparency = 0
			ChainBladeRightArm.Blood1.Transparency = 0
		end
	elseif Mode ==  "HIDE" then
		if Type == "LEFT" then
			ChainBladeLeftArm.BladeMainFrame.Transparency = 1
			ChainBladeLeftArm.Chain.ChainFrame.Transparency = 1
			ChainBladeLeftArm.Chain.Chain1.Transparency = 1
			ChainBladeLeftArm.Chain.Chain2.Transparency = 1
			ChainBladeLeftArm.Chain.Chain3.Transparency = 1
			ChainBladeLeftArm.Blood1.Transparency = 1
			ChainBladeLeftArm.Blood2.Transparency = 1
		elseif Type == "HEAD" then
			for _, Object in pairs(Character:GetChildren()) do
				if Object:IsA("Accessory") then
					Object.Handle.Transparency = 0
				end
			end

			Character.Head.Transparency = 0
			Character.Head.face.Transparency = 0

			ChainsawHead.ChainBlade.BladeMainFrame.Transparency = 1
			ChainsawHead.ChainBlade.Chain.ChainFrame.Transparency = 1
			ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 1
			ChainsawHead.ChainBlade.Chain.Chain2.Transparency = 1
			ChainsawHead.ChainBlade.Chain.Chain3.Transparency = 1
			ChainsawHead.ChainBlade.Blood1.Transparency = 1
			ChainsawHead.ChainBlade.Blood2.Transparency = 1

			for _, Object in pairs(ChainsawHead.Head.Parts:GetDescendants()) do
				if Object:IsA("UnionOperation") or Object:IsA("Texture") then
					Object.Transparency = 1
				end
			end
			for _, Object in pairs(ChainsawHead.Connector.Wires:GetChildren()) do
				Object.Visible = false
			end
		elseif Type == "RIGHT" then
			ChainBladeRightArm.BladeMainFrame.Transparency = 1
			ChainBladeRightArm.Chain.ChainFrame.Transparency = 1
			ChainBladeRightArm.Chain.Chain1.Transparency = 1
			ChainBladeRightArm.Chain.Chain2.Transparency = 1
			ChainBladeRightArm.Chain.Chain3.Transparency = 1
			ChainBladeRightArm.Blood1.Transparency = 1
			ChainBladeRightArm.Blood2.Transparency = 1
		end
	end
end

function StopChainsaw()
	if ChainsawEngineStatusValue.Value == true and CanEvent == true then
		CanEvent = false
		ChainsawEngineStatusValue.Value = false
		ChainsawIdleSound:Stop()
		ChainsawStopSound:Play()
		ChainsSpeedModeValue.Value = "OFF"
		wait(ChainsawStopSound.TimeLength)
		CanEvent = true
	end
end

function HideChainsaw()
	if ChainsawEquippedValue.Value == true then
		ChainsawEquippedValue.Value = false
		CanChangeHumanoidProperties = false
		CanAttack = false
		DoChainBlade("HIDE", "LEFT")
		DoChainBlade("HIDE", "HEAD")
		DoChainBlade("HIDE", "RIGHT")
		Character.Humanoid.MaxHealth = 100
		Character.Humanoid.Health = 100
		Character.Humanoid.JumpPower = 50
		Character.CMAnimations.Enabled = false
		Character.Animate.Enabled = true
		ShowGuiValue.Value = false
	end
end

function BladeTouch(Hit)
	if CanKill == true then
		Hit.Parent.Humanoid:TakeDamage(100)
		SFXEmitter.AttackBladeSounds["ChainsawAttack"..math.random(1, #SFXEmitter.AttackBladeSounds:GetChildren()).."BladeSound"]:Play()
		if ChainsawEngineStatusValue.Value == true then
			if ChainsawAccelerationSound.IsPlaying == false then AccelerationValue.Value = AccelerationValue.Value + 5 end
			DoItem("BloodEffect1", "Enabled", true)
			DoItem("BloodEffect2", "Enabled", true)
			wait(1)
			DoItem("BloodEffect1", "Enabled", false)
			DoItem("BloodEffect2", "Enabled", false)
		end
	end
end
--

ChainsawStartEvent.OnServerEvent:Connect(function()
	if CanEvent == true then
		CanEvent = false
		CanAttack = true
		CMStarterAnimationTrack:Play()
		wait(0.29)
		Starter.Transparency = 1
		StarterConnector1.RopeConstraint.Visible = true
		ChainsawStarterRopeSound:Play()
		wait(0.30)
		if ChainsawEngineStatusValue.Value == false and BloodCapacityValue.Value >= MinBloodForStartValue then
			ChainsawEngineStatusValue.Value = true
			ChainsawStartSound:Play()
		elseif ChainsawEngineStatusValue.Value == true and BloodCapacityValue.Value >= ExchangeValue then
			ChainsawStarterSound:Play()
			BloodCapacityValue.Value = BloodCapacityValue.Value - ExchangeValue
			AccelerationValue.Value = AccelerationValue.Value + ExchangeValue
		end
		wait(0.20)
		Starter.Transparency = 0
		StarterConnector1.RopeConstraint.Visible = false
		if BloodCapacityValue.Value >= MinBloodForStartValue then
			DoChainBlade("SHOW", "LEFT")
			DoChainBlade("SHOW", "HEAD")
			DoChainBlade("SHOW", "RIGHT")
			ChainsSpeedModeValue.Value = "LOW"
			Character.Humanoid.MaxHealth = 200
			Character.Humanoid.Health = 200
			Character.Humanoid.JumpPower = 70
			Character.CMAnimations.Enabled = true
			Character.Animate.Enabled = false
			ShowGuiValue.Value = true
			ChainsawEquippedValue.Value = true
			CanChangeHumanoidProperties = true
			wait(2.3)
			ChainsawIdleSound:Play()
		end
		local Values = game.ServerScriptService:FindFirstChild("Values")
		if Values then
			local SpawnZombieValue = Values:FindFirstChild("SpawnZombieValue")
			if SpawnZombieValue then
				SpawnZombieValue.Value = true
			end
		end
		CanEvent = true
	end
end)

ChainsawStopEvent.OnServerEvent:Connect(function()
	StopChainsaw()
end)

ChainsawAccelerationEvent.OnServerEvent:Connect(function()
	if ChainsawEngineStatusValue.Value == true and AccelerationValue.Value >= 80 and CanEvent == true then
		CanEvent = false
		CanChangeHumanoidProperties = false
		CanKill = false
		CanAttack = false
		ChainsSpeedModeValue.Value = "HIGH"

		ChainsawAccelerationSound:Play()
		CMAccelerationAnimationTrack:Play()
		Character.Humanoid.WalkSpeed = 0
		Character.Humanoid.JumpPower = 0
		DoItem("BladeMainFrame", "CanTouch", true)
		wait(5)
		AccelerationValue.Value = 0
		DoItem("BloodEffect1", "Speed", NumberRange.new(45, 45))
		DoItem("BloodEffect2", "Speed", NumberRange.new(45, 45))
		DoItem("BloodEffect2", "Rate", 500)
		wait(4)
		CanChangeHumanoidProperties = true
		CanKill = true
		Character.Humanoid.WalkSpeed = 16
		Character.Humanoid.JumpPower = 70
		wait(3.5)
		DoItem("BladeMainFrame", "CanTouch", false)
		DoItem("BloodEffect1", "Speed", NumberRange.new(27, 27))
		DoItem("BloodEffect2", "Speed", NumberRange.new(27, 27))
		DoItem("BloodEffect2", "Rate", 100)

		CanEvent = true
		CanAttack = true
		ChainsSpeedModeValue.Value = "LOW"

		for Count = 1, 6, 1 do
			SmokeEmitter.Enabled = true
			wait(2)
			SmokeEmitter.Enabled = false
			wait(2)
		end
	end
end)

ChainsawIncreaseStatsEvent.OnServerEvent:Connect(function()
	if AddControlsValue.Value == true then
		SFXEmitter["BloodDrink"..math.random(1, 3).."Sound"]:Play()
		BloodCapacityValue.Value = BloodCapacityValue.Value + 10
		AccelerationValue.Value = AccelerationValue.Value + 10
	end
end)
ChainsawHideEvent.OnServerEvent:Connect(function()
	if AddControlsValue.Value == true and CanEvent == true then
		StopChainsaw()
		if ChainsawEquippedValue.Value == true then HideChainsaw() end
	end
end)
--ChainsawEngineStatusValue.Changed:Connect(function()
--	if AddControlsValue.Value == true and ChainsawEngineStatusValue.Value == false then
--		for Count = 1, 10, 1 do
--			if ChainsawEquippedValue.Value == true and ChainsawEngineStatusValue.Value == false then
--				print(Count)
--				wait(1)
--			end
--		end
--		if ChainsawEquippedValue.Value == true and ChainsawEngineStatusValue.Value == false then
--			HideChainsaw()
--		end
--	end
--end)

ChainsawAttack1Event.OnServerEvent:Connect(function()
	if ChainsawEquippedValue.Value == true and CanAttack == true then
		CanEvent = false
		CanAttack = false
		Attack1Animations[math.random(1, #Attack1Animations)]:Play()
		local Blade = script.Parent.Parent.Parent.Parent.Parent["ChainBlade"..(math.random(1, 2) == 1 and "Left" or "Right").."Arm"]
		Blade.BladeMainFrame.CanTouch = true
		wait(0.07)
		if ChainsawEngineStatusValue.Value == true then
			SFXEmitter.AttackEngineSounds["ChainsawAttack"..math.random(1, #SFXEmitter.AttackEngineSounds:GetChildren()).."EngineSound"]:Play()
			ChainsSpeedModeValue.Value = "HIGH"
		end
		wait(0.12)
		if ChainsawEngineStatusValue.Value == true then
			ChainsSpeedModeValue.Value = "LOW"
		end
		Blade.BladeMainFrame.CanTouch = false
		wait(0.2)
		CanAttack = true
		CanEvent = true
	end
end)

ChainBladeLeftArm.BladeMainFrame.Touched:Connect(function(Hit)
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid")
	if Humanoid and Humanoid.Parent.Name ~= ChainsawHead.Parent.Name then
		if ChainsawAccelerationSound.IsPlaying == false then ChainBladeLeftArm.BladeMainFrame.CanTouch = false end
		ChainBladeLeftArm.Blood2.Transparency = 0
		BladeTouch(Hit)
	end
end)
ChainsawHead.ChainBlade.BladeMainFrame.Touched:Connect(function(Hit)
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid")
	if Humanoid and Humanoid.Parent.Name ~= ChainsawHead.Parent.Name then
		ChainsawHead.ChainBlade.Blood2.Transparency = 0
	end
end)
ChainBladeRightArm.BladeMainFrame.Touched:Connect(function(Hit)
	local Humanoid = Hit.Parent:FindFirstChild("Humanoid")
	if Humanoid and Humanoid.Parent.Name ~= ChainsawHead.Parent.Name then
		if ChainsawAccelerationSound.IsPlaying == false then ChainBladeRightArm.BladeMainFrame.CanTouch = false end
		ChainBladeRightArm.Blood2.Transparency = 0
		BladeTouch(Hit)
	end
end)

ChainsSpeedModeValue.Changed:Connect(function()
	if ChainsSpeedModeValue.Value == "LOW" then
		repeat
			for Count = 1, 3, 1 do
				for Count = 1, 3, 1 do DoItem("Chain"..Count, "Transparency", 1) end
				DoItem("Chain"..Count, "Transparency", 0)
				wait(0.05)
			end
		until ChainsSpeedModeValue.Value == "OFF" or ChainsSpeedModeValue.Value == "HIGH"
	elseif ChainsSpeedModeValue.Value == "HIGH" then
		DoItem("ChainMotionEffect", "Transparency", 0.7)
		repeat
			for Count = 1, 2, 1 do
				for Count = 1, 3, 1 do DoItem("Chain"..Count, "Transparency", 1) end
				DoItem("Chain"..Count, "Transparency", 0)
				wait(0.01)
			end
		until ChainsSpeedModeValue.Value == "OFF" or ChainsSpeedModeValue.Value == "LOW"
		DoItem("ChainMotionEffect", "Transparency", 1)
	end
end)

while true do
	if BloodCapacityValue.Value > 0 and ChainsawEngineStatusValue.Value == true then BloodCapacityValue.Value = BloodCapacityValue.Value - 0.2 end
	if AccelerationValue.Value > 0 then AccelerationValue.Value = AccelerationValue.Value - 0.5 end
	if BloodCapacityValue.Value == 0 and AccelerationValue.Value == 0 and ChainsawAccelerationSound.IsPlaying == false then StopChainsaw() end
	if BloodCapacityValue.Value < 0 then BloodCapacityValue.Value = 0 end
	if BloodCapacityValue.Value > 100 then BloodCapacityValue.Value = 100 end
	if AccelerationValue.Value < 0 then AccelerationValue.Value = 0 end
	if AccelerationValue.Value > 100 then AccelerationValue.Value = 100 end

	if AccelerationValue.Value >= 40 and AccelerationValue.Value <= 50 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 200
		Character.Humanoid.Health = 200
		Character.Humanoid.WalkSpeed = 16
		Character.Humanoid.JumpPower = 70
		MultiJump.Enabled = false
	end
	if AccelerationValue.Value >= 50 and AccelerationValue.Value <= 60 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 300
		Character.Humanoid.Health = 300
		Character.Humanoid.WalkSpeed = 17
		Character.Humanoid.JumpPower = 75
		MultiJump.Enabled = false
	end
	if AccelerationValue.Value >= 60 and AccelerationValue.Value <= 70 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 400
		Character.Humanoid.Health = 400
		Character.Humanoid.WalkSpeed = 18
		Character.Humanoid.JumpPower = 76
		MultiJump.Enabled = false
	end
	if AccelerationValue.Value >= 70 and AccelerationValue.Value <= 80 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 500
		Character.Humanoid.Health = 500
		Character.Humanoid.WalkSpeed = 19
		Character.Humanoid.JumpPower = 77
		MultiJump.Enabled = true
	end
	if AccelerationValue.Value >= 80 and AccelerationValue.Value <= 90 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 600
		Character.Humanoid.Health = 600
		Character.Humanoid.WalkSpeed = 20
		Character.Humanoid.JumpPower = 78
		MultiJump.Enabled = true
	end
	if AccelerationValue.Value >= 90 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 700
		Character.Humanoid.Health = 700
		Character.Humanoid.WalkSpeed = 21
		Character.Humanoid.JumpPower = 79
		MultiJump.Enabled = true
	end
	wait(0.1)
end
