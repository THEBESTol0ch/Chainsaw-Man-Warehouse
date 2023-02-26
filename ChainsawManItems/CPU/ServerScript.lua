wait(10)

-- Control
local Players = game:GetService("Players")
local Character = script.Parent.Parent.Parent.Parent.Parent
--

-- Items
local ChainBladeLeftArm = script.Parent.Parent.Parent.Parent.Parent.ChainBladeLeftArm
local ChainsawHead = script.Parent.Parent.Parent.Parent.Parent.ChainsawHead
local ChainBladeRightArm = script.Parent.Parent.Parent.Parent.Parent.ChainBladeRightArm
local WireConnector = script.Parent.Parent.Parent.Parent.Parent.WireConnector
local StarterConnector1 = script.Parent.Parent.Parent.Parent.Parent.StarterConnector1
local StarterConnector2 = script.Parent.Parent.Parent.Parent.Parent.StarterConnector2
local Starter = script.Parent.Parent.Parent.Parent.Parent.Starter

local SmokeEmitter = ChainsawHead.Head.SFXEmitter.Smoke

local MultiJump = Character.MultiJump
--

-- Sounds
local ChainsawStartSound = ChainsawHead.Head.SFXEmitter.ChainsawStartSound
local ChainsawIdleSound = ChainsawHead.Head.SFXEmitter.ChainsawIdleSound
local ChainsawStopSound = ChainsawHead.Head.SFXEmitter.ChainsawStopSound
local ChainsawStarterRopeSound = ChainsawHead.Head.SFXEmitter.ChainsawStarterRopeSound
local ChainsawStarterSound = ChainsawHead.Head.SFXEmitter.ChainsawStarterSound
local ChainsawAccelerationStartSound = ChainsawHead.Head.SFXEmitter.ChainsawAccelerationStartSound
local ChainsawAccelerationLoopSound = ChainsawHead.Head.SFXEmitter.ChainsawAccelerationLoopSound
local ChainsawAccelerationStopSound = ChainsawHead.Head.SFXEmitter.ChainsawAccelerationStopSound

local ChainsawAttack1BladeSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack1BladeSound
local ChainsawAttack2BladeSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack2BladeSound
local ChainsawAttack3BladeSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack3BladeSound

local ChainsawAttack1EngineSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack1EngineSound
local ChainsawAttack2EngineSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack2EngineSound
local ChainsawAttack3EngineSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack3EngineSound
local ChainsawAttack4EngineSound = ChainsawHead.Head.SFXEmitter.ChainsawAttack4EngineSound

local ChainsawAccelerationSound = ChainsawHead.Head.SFXEmitter.ChainsawAccelerationSound
local ChainsawFreshLoopSound = ChainsawHead.Head.SFXEmitter.ChainsawFreshLoopSound
--

-- Values
local ChainsawStatusValue = ChainsawHead.Head.CPU.Values.ChainsawStatusValue
local ChainsawEquipStatusValue = ChainsawHead.Head.CPU.Values.ChainsawEquipStatusValue
local MouseButton1StatusValue = ChainsawHead.Head.CPU.Values.MouseButton1StatusValue
local ChainsSpeedModeValue = ChainsawHead.Head.CPU.Values.ChainsSpeedModeValue
local BloodCapacityValue = ChainsawHead.Head.CPU.Values.BloodCapacityValue
local AccelerationValue = ChainsawHead.Head.CPU.Values.AccelerationValue
local ChainsawAttackStatusValue = ChainsawHead.Head.CPU.Values.ChainsawAttackStatusValue

local ShiftValue = ChainsawHead.Head.CPU.Values.KeyValues.ShiftValue
local SpaceValue = ChainsawHead.Head.CPU.Values.KeyValues.SpaceValue
local WValue = ChainsawHead.Head.CPU.Values.KeyValues.WValue
--

-- Animations
local CMStarterAnimation = script.Parent.Parent.Animations.CMStarterAnimation
local CMStarterAnimationTrack = Character.Humanoid:LoadAnimation(CMStarterAnimation)

local CMAttack1LeftAnimation = script.Parent.Parent.Animations.CMAttack1LeftAnimation
local CMAttack1LeftAnimationTrack = Character.Humanoid:LoadAnimation(CMAttack1LeftAnimation)
local CMAttack1RightAnimation = script.Parent.Parent.Animations.CMAttack1RightAnimation
local CMAttack1RightAnimationTrack = Character.Humanoid:LoadAnimation(CMAttack1RightAnimation)

local CMAttack2LeftAnimation = script.Parent.Parent.Animations.CMAttack2LeftAnimation
local CMAttack2LeftAnimationTrack = Character.Humanoid:LoadAnimation(CMAttack2LeftAnimation)
local CMAttack2RightAnimation = script.Parent.Parent.Animations.CMAttack2RightAnimation
local CMAttack2RightAnimationTrack = Character.Humanoid:LoadAnimation(CMAttack2RightAnimation)

local CMAttack3LeftAnimation = script.Parent.Parent.Animations.CMAttack3LeftAnimation
local CMAttack3LeftAnimationTrack = Character.Humanoid:LoadAnimation(CMAttack3LeftAnimation)
local CMAttack3RightAnimation = script.Parent.Parent.Animations.CMAttack3RightAnimation
local CMAttack3RightAnimationTrack = Character.Humanoid:LoadAnimation(CMAttack3RightAnimation)

local CMAttack4Animation = script.Parent.Parent.Animations.CMAttack4Animation
local CMAttack4AnimationTrack = Character.Humanoid:LoadAnimation(CMAttack4Animation)

local CMAccelerationAnimation = script.Parent.Parent.Animations.CMAccelerationAnimation
local CMAccelerationAnimationTrack = Character.Humanoid:LoadAnimation(CMAccelerationAnimation)

local CMAJumpPrepareAnimation = script.Parent.Parent.Animations.CMAJumpPrepareAnimation
local CMAJumpPrepareAnimationTrack = Character.Humanoid:LoadAnimation(CMAJumpPrepareAnimation)
local CMAJumpPrepareLoopAnimation = script.Parent.Parent.Animations.CMAJumpPrepareLoopAnimation
local CMAJumpPrepareLoopAnimationTrack = Character.Humanoid:LoadAnimation(CMAJumpPrepareLoopAnimation)
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

-- Logic
local BloodBarMaxValue = -10.1
local BloodBarMinValue = -16.1
local AccelerationBarMaxValue = 1.1
local AccelerationBarMinValue = 7.1
local CanAttack = true
local CanStart = true
local CanDrop = false
local CanKill = false
local CanChangeHumanoidProperties = false
local JumpSequenceActive = false
local CanPlayJumpPrepare = false
--

-- Functions
function ShowChainBladeLeftArm()
	ChainBladeLeftArm.MainFrame.Transparency = 0
	ChainBladeLeftArm.Chain.ChainFrame.Transparency = 0
	ChainBladeLeftArm.Chain.Chain1.Transparency = 0
	ChainBladeLeftArm.Blood1.Transparency = 0
end
function HideChainBladeLeftArm()
	ChainBladeLeftArm.MainFrame.Transparency = 1
	ChainBladeLeftArm.Chain.ChainFrame.Transparency = 1
	ChainBladeLeftArm.Chain.Chain1.Transparency = 1
	ChainBladeLeftArm.Chain.Chain2.Transparency = 1
	ChainBladeLeftArm.Chain.Chain3.Transparency = 1
	ChainBladeLeftArm.Blood1.Transparency = 1
	ChainBladeLeftArm.Blood2.Transparency = 1
end

function ShowChainsawHead()
	for _, Object in pairs(Character:GetChildren()) do
		if Object:IsA("Accessory") then
			Object.Handle.Transparency = 1
		end
	end

	Character.Head.Transparency = 1
	Character.Head.face.Transparency = 1

	ChainsawHead.ChainBlade.MainFrame.Transparency = 0
	ChainsawHead.ChainBlade.Chain.ChainFrame.Transparency = 0
	ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 0
	ChainsawHead.ChainBlade.Blood1.Transparency = 0

	ChainsawHead.Head.LeftCooler.Frame.Transparency = 0
	ChainsawHead.Head.LeftCooler.Grid.Transparency = 0
	ChainsawHead.Head.LeftCooler.Grid.Texture.Transparency = 0
	ChainsawHead.Head.RightCooler.Frame.Transparency = 0
	ChainsawHead.Head.RightCooler.Grid.Transparency = 0
	ChainsawHead.Head.RightCooler.Grid.Texture.Transparency = 0

	for _, Object in pairs(ChainsawHead.Head.Parts:GetChildren()) do
		Object.Transparency = 0
	end
	for _, Object in pairs(ChainsawHead.Connector.Wires:GetChildren()) do
		Object.Visible = true
	end
end
function HideChainsawHead()
	for _, Object in pairs(Character:GetChildren()) do
		if Object:IsA("Accessory") then
			Object.Handle.Transparency = 0
		end
	end

	Character.Head.Transparency = 0
	Character.Head.face.Transparency = 0

	ChainsawHead.ChainBlade.MainFrame.Transparency = 1
	ChainsawHead.ChainBlade.Chain.ChainFrame.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain2.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain3.Transparency = 1
	ChainsawHead.ChainBlade.Blood1.Transparency = 1
	ChainsawHead.ChainBlade.Blood2.Transparency = 1

	ChainsawHead.Head.LeftCooler.Frame.Transparency = 1
	ChainsawHead.Head.LeftCooler.Grid.Transparency = 1
	ChainsawHead.Head.LeftCooler.Grid.Texture.Transparency = 1
	ChainsawHead.Head.RightCooler.Frame.Transparency = 1
	ChainsawHead.Head.RightCooler.Grid.Transparency = 1
	ChainsawHead.Head.RightCooler.Grid.Texture.Transparency = 1

	for _, Object in pairs(ChainsawHead.Head.Parts:GetChildren()) do
		Object.Transparency = 1
	end
	for _, Object in pairs(ChainsawHead.Connector.Wires:GetChildren()) do
		Object.Visible = false
	end
end

function ShowChainBladeRightArm()
	ChainBladeRightArm.MainFrame.Transparency = 0
	ChainBladeRightArm.Chain.ChainFrame.Transparency = 0
	ChainBladeRightArm.Chain.Chain1.Transparency = 0
	ChainBladeRightArm.Blood1.Transparency = 0
end
function HideChainBladeRightArm()
	ChainBladeRightArm.MainFrame.Transparency = 1
	ChainBladeRightArm.Chain.ChainFrame.Transparency = 1
	ChainBladeRightArm.Chain.Chain1.Transparency = 1
	ChainBladeRightArm.Chain.Chain2.Transparency = 1
	ChainBladeRightArm.Chain.Chain3.Transparency = 1
	ChainBladeRightArm.Blood1.Transparency = 1
	ChainBladeRightArm.Blood2.Transparency = 1
end

function TurnOnChainsSpeedEffect()
	ChainBladeLeftArm.Chain.ChainMotionEffect.Transparency = 0.7
	ChainsawHead.ChainBlade.Chain.ChainMotionEffect.Transparency = 0.7
	ChainBladeRightArm.Chain.ChainMotionEffect.Transparency = 0.7
end
function TurnOffChainsSpeedEffect()
	ChainBladeLeftArm.Chain.ChainMotionEffect.Transparency = 1
	ChainsawHead.ChainBlade.Chain.ChainMotionEffect.Transparency = 1
	ChainBladeRightArm.Chain.ChainMotionEffect.Transparency = 1
end

function ShowLeftChain1()
	ChainBladeLeftArm.Chain.Chain1.Transparency = 0
	ChainBladeLeftArm.Chain.Chain2.Transparency = 1
	ChainBladeLeftArm.Chain.Chain3.Transparency = 1
end
function ShowLeftChain2()
	ChainBladeLeftArm.Chain.Chain1.Transparency = 1
	ChainBladeLeftArm.Chain.Chain2.Transparency = 0
	ChainBladeLeftArm.Chain.Chain3.Transparency = 1
end
function ShowLeftChain3()
	ChainBladeLeftArm.Chain.Chain1.Transparency = 1
	ChainBladeLeftArm.Chain.Chain2.Transparency = 1
	ChainBladeLeftArm.Chain.Chain3.Transparency = 0
end

function ShowHeadChain1()
	ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 0
	ChainsawHead.ChainBlade.Chain.Chain2.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain3.Transparency = 1
end
function ShowHeadChain2()
	ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain2.Transparency = 0
	ChainsawHead.ChainBlade.Chain.Chain3.Transparency = 1
end
function ShowHeadChain3()
	ChainsawHead.ChainBlade.Chain.Chain1.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain2.Transparency = 1
	ChainsawHead.ChainBlade.Chain.Chain3.Transparency = 0
end

function ShowRightChain1()
	ChainBladeRightArm.Chain.Chain1.Transparency = 0
	ChainBladeRightArm.Chain.Chain2.Transparency = 1
	ChainBladeRightArm.Chain.Chain3.Transparency = 1
end
function ShowRightChain2()
	ChainBladeRightArm.Chain.Chain1.Transparency = 1
	ChainBladeRightArm.Chain.Chain2.Transparency = 0
	ChainBladeRightArm.Chain.Chain3.Transparency = 1
end
function ShowRightChain3()
	ChainBladeRightArm.Chain.Chain1.Transparency = 1
	ChainBladeRightArm.Chain.Chain2.Transparency = 1
	ChainBladeRightArm.Chain.Chain3.Transparency = 0
end

function ShowStarter()
	Starter.Transparency = 0
	StarterConnector1.RopeConstraint.Visible = false
end
function HideStarter()
	Starter.Transparency = 1
	StarterConnector1.RopeConstraint.Visible = true
end

function PullStarter()
	CMStarterAnimationTrack:Play()
	wait(0.29)
	HideStarter()
	ChainsawStarterRopeSound:Play()
	wait(0.30)
	if ChainsawEquipStatusValue.Value == "UNEQUIPPED" or ChainsawStatusValue.Value == "OFF" then
		if BloodCapacityValue.Value > -15.1 then
			ChainsawStartSound:Play()
		end
	end
	if ChainsawStatusValue.Value == "ON" and BloodCapacityValue.Value > -13.1 then
		ChainsawStarterSound:Play()
		BloodCapacityValue.Value = BloodCapacityValue.Value - 2
		RiseAcceleration(2)
	end
	wait(0.20)
	ShowStarter()
end

function StartChainsaw()
	PullStarter()
	if ChainsawEquipStatusValue.Value == "UNEQUIPPED" or ChainsawStatusValue.Value == "OFF" then
		if BloodCapacityValue.Value > -15.1 then
			if ChainsawEquipStatusValue.Value == "UNEQUIPPED" then
				ShowChainBladeLeftArm()
				ShowChainsawHead()
				ShowChainBladeRightArm()
				ChainsawEquipStatusValue.Value = "EQUIPPED"
			end
			ChainsSpeedModeValue.Value = "LOW"
			Character.Humanoid.MaxHealth = 200
			Character.Humanoid.Health = 200
			Character.Humanoid.JumpPower = 70
			if Character.CMAnimations.Enabled == false then
				Character.CMAnimations.Enabled = true
			end
			wait(2.3)
			ChainsawIdleSound:Play()
			ChainsawStatusValue.Value = "ON"
			wait(3)
			CanDrop = true
		end
	end
end
function StopChainsaw()
	if ChainsawStatusValue.Value == "ON" then
		ChainsawIdleSound:Stop()
		ChainsawStopSound:Play()
		ChainsSpeedModeValue.Value = "OFF"
		ChainsawStatusValue.Value = "OFF"
	end
end

function TurnOnLeftBladeBloodEffect()
	ChainBladeLeftArm.BloodEmitter.BloodEffect1.Enabled = true
	ChainBladeLeftArm.BloodEmitter.BloodEffect2.Enabled = true
end
function TurnOffLeftBladeBloodEffect()
	ChainBladeLeftArm.BloodEmitter.BloodEffect1.Enabled = false
	ChainBladeLeftArm.BloodEmitter.BloodEffect2.Enabled = false
end

function IncreaseBladesBloodEffect()
	ChainBladeLeftArm.BloodEmitter.BloodEffect1.Speed = NumberRange.new(45, 45)
	ChainBladeLeftArm.BloodEmitter.BloodEffect2.Speed = NumberRange.new(45, 45)
	ChainBladeLeftArm.BloodEmitter.BloodEffect2.Rate = 500
	
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect1.Speed = NumberRange.new(45, 45)
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect2.Speed = NumberRange.new(45, 45)
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect2.Rate = 500
	
	ChainBladeRightArm.BloodEmitter.BloodEffect1.Speed = NumberRange.new(45, 45)
	ChainBladeRightArm.BloodEmitter.BloodEffect2.Speed = NumberRange.new(45, 45)
	ChainBladeRightArm.BloodEmitter.BloodEffect2.Rate = 500
end
function DecreaseBladesBloodEffect()
	ChainBladeLeftArm.BloodEmitter.BloodEffect1.Speed = NumberRange.new(27, 27)
	ChainBladeLeftArm.BloodEmitter.BloodEffect2.Speed = NumberRange.new(27, 27)
	ChainBladeLeftArm.BloodEmitter.BloodEffect2.Rate = 100

	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect1.Speed = NumberRange.new(27, 27)
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect2.Speed = NumberRange.new(27, 27)
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect2.Rate = 100

	ChainBladeRightArm.BloodEmitter.BloodEffect1.Speed = NumberRange.new(27, 27)
	ChainBladeRightArm.BloodEmitter.BloodEffect2.Speed = NumberRange.new(27, 27)
	ChainBladeRightArm.BloodEmitter.BloodEffect2.Rate = 100
end

function TurnOnHeadBladeBloodEffect()
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect1.Enabled = true
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect2.Enabled = true
end
function TurnOffHeadBladeBloodEffect()
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect1.Enabled = false
	ChainsawHead.ChainBlade.BloodEmitter.BloodEffect2.Enabled = false
end

function TurnOnRightBladeBloodEffect()
	ChainBladeRightArm.BloodEmitter.BloodEffect1.Enabled = true
	ChainBladeRightArm.BloodEmitter.BloodEffect2.Enabled = true
end
function TurnOffRightBladeBloodEffect()
	ChainBladeRightArm.BloodEmitter.BloodEffect1.Enabled = false
	ChainBladeRightArm.BloodEmitter.BloodEffect2.Enabled = false
end

function PlayRandomChainsawAttackBladeSound()
	local RandomIndex = 0
	RandomIndex = math.random(1, 3)
	if RandomIndex == 1 then
		ChainsawAttack1BladeSound:Play()
	end
	if RandomIndex == 2 then
		ChainsawAttack2BladeSound:Play()
	end
	if RandomIndex == 3 then
		ChainsawAttack3BladeSound:Play()
	end
end

function PlayRandomChainsawAttackEngineSound()
	local RandomIndex = 0
	RandomIndex = math.random(1, 4)
	if RandomIndex == 1 then
		ChainsawAttack1EngineSound:Play()
	end
	if RandomIndex == 2 then
		ChainsawAttack2EngineSound:Play()
	end
	if RandomIndex == 3 then
		ChainsawAttack3EngineSound:Play()
	end
	if RandomIndex == 4 then
		ChainsawAttack4EngineSound:Play()
	end
end

function RiseAcceleration(Number)
	local FutureSum = AccelerationValue.Value - Number
	if FutureSum < AccelerationBarMaxValue then
		local NeedToFill = AccelerationValue.Value - AccelerationBarMaxValue
		AccelerationValue.Value = AccelerationValue.Value - NeedToFill
	end
	if FutureSum > AccelerationBarMaxValue then
		AccelerationValue.Value = AccelerationValue.Value - Number
	end
end
--

ChainsawStartEvent.OnServerEvent:Connect(function()
	if CanStart == true then
		CanStart = false
		StartChainsaw()
		wait(5)
		CanStart = true
	end
end)

ChainsawStopEvent.OnServerEvent:Connect(function()
	if ChainsawStatusValue.Value == "ON" then
		StopChainsaw()
	end
end)

ChainsawAccelerationEvent.OnServerEvent:Connect(function()
	if ChainsawStatusValue.Value == "ON" and AccelerationValue.Value < 1.5 and CanAttack == true then
		CanAttack = false
		CanDrop = false
		CanChangeHumanoidProperties = false
		ChainsawAttackStatusValue.Value = "ACCELERATION"
		ChainsSpeedModeValue.Value = "HIGH"
		
		ChainsawAccelerationSound:Play()
		CMAccelerationAnimationTrack:Play()
		Character.Humanoid.WalkSpeed = 0
		Character.Humanoid.JumpPower = 0
		wait(5)
		AccelerationValue.Value = AccelerationBarMinValue
		IncreaseBladesBloodEffect()
		wait(4)
		CanKill = true
		CanChangeHumanoidProperties = true
		Character.Humanoid.WalkSpeed = 16
		Character.Humanoid.JumpPower = 70
		wait(3.5)
		DecreaseBladesBloodEffect()
		
		CanAttack = true
		CanDrop = true
		CanKill = false
		ChainsawAttackStatusValue.Value = "ATTACKED"
		ChainsSpeedModeValue.Value = "LOW"
		
		for Count = 0, 5, 1 do
			SmokeEmitter.Enabled = true
			wait(2)
			SmokeEmitter.Enabled = false
			wait(2)
		end
	end
end)

ShiftStartEvent.OnServerEvent:Connect(function()
	ShiftValue.Value = true
end)
ShiftStopEvent.OnServerEvent:Connect(function()
	ShiftValue.Value = false
end)

SpaceStartEvent.OnServerEvent:Connect(function()
	SpaceValue.Value = true
end)
SpaceStopEvent.OnServerEvent:Connect(function()
	SpaceValue.Value = false
end)

WStartEvent.OnServerEvent:Connect(function()
	WValue.Value = true
end)
WStopEvent.OnServerEvent:Connect(function()
	WValue.Value = false
end)

--ChainsawStatusValue.Changed:Connect(function()
--	if ChainsawStatusValue.Value == "OFF" then
--		wait(60)
--		if ChainsawStatusValue.Value == "OFF" and ChainsawEquipStatusValue.Value == "EQUIPPED" then
--			ChainsawEquipStatusValue.Value = "UNEQUIPPED"
--			HideChainBladeLeftArm()
--			HideChainsawHead()
--			HideChainBladeRightArm()
--			Character.CMAnimations.Enabled = false
--			Character.Humanoid.MaxHealth = 100
--			Character.Humanoid.Health = 100
--			Character.Humanoid.JumpPower = 50
--		end
--	end
--end)

ChainsawEquipStatusValue.Changed:Connect(function()
	if ChainsawEquipStatusValue.Value == "EQUIPPED" then
		CanChangeHumanoidProperties = true
	end
	if ChainsawEquipStatusValue.Value == "UNEQUIPPED" then
		CanChangeHumanoidProperties = false
	end
end)

ChainsSpeedModeValue.Changed:Connect(function()
	if ChainsSpeedModeValue.Value == "LOW" then
		TurnOffChainsSpeedEffect()
		repeat
			ShowLeftChain1()
			ShowHeadChain1()
			ShowRightChain1()
			wait(0.05)
			ShowLeftChain2()
			ShowHeadChain2()
			ShowRightChain2()
			wait(0.05)
			ShowLeftChain3()
			ShowHeadChain3()
			ShowRightChain3()
			wait(0.05)
		until ChainsSpeedModeValue.Value == "OFF" or ChainsSpeedModeValue.Value == "HIGH"
	end
	if ChainsSpeedModeValue.Value == "HIGH" then
		TurnOnChainsSpeedEffect()
		repeat
			ShowLeftChain1()
			ShowHeadChain1()
			ShowRightChain1()
			wait(0.01)
			ShowLeftChain2()
			ShowHeadChain2()
			ShowRightChain2()
			wait(0.01)
		until ChainsSpeedModeValue.Value == "OFF" or ChainsSpeedModeValue.Value == "LOW"
	end
	TurnOffChainsSpeedEffect()
end)

-- ATTACK_1_LEFT
ChainsawAttack1LeftEvent.OnServerEvent:Connect(function()
	if ChainsawEquipStatusValue.Value == "EQUIPPED" and CanAttack == true then
		CanAttack = false
		CMAttack1LeftAnimationTrack:Play()
		wait(0.07)
		ChainsawAttackStatusValue.Value = "ATTACK_1_LEFT"
		if ChainsawStatusValue.Value == "ON" then
			PlayRandomChainsawAttackEngineSound()
			ChainsSpeedModeValue.Value = "HIGH"
		end
		wait(0.10)
		ChainsawAttackStatusValue.Value = "ATTACKED"
		wait(0.2)
		if ChainsawStatusValue.Value == "ON" then
			ChainsSpeedModeValue.Value = "LOW"	
		end
		CanAttack = true
	end
end)
ChainBladeLeftArm.MainFrame.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("ZombieHumanoid") and Hit.Parent.ZombieHumanoid.Health > 0 and ChainsawAttackStatusValue.Value == "ATTACK_1_LEFT" then
		ChainBladeLeftArm.Blood2.Transparency = 0
		Hit.Parent.ZombieHumanoid:TakeDamage(100)
		PlayRandomChainsawAttackBladeSound()
		if ChainsawStatusValue.Value == "ON" then
			TurnOnLeftBladeBloodEffect()
			RiseAcceleration(0.2)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		if ChainsawStatusValue.Value == "OFF" then
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		TurnOffLeftBladeBloodEffect()
	end
end)
--

-- ATTACK_1_RIGHT
ChainsawAttack1RightEvent.OnServerEvent:Connect(function()
	if ChainsawEquipStatusValue.Value == "EQUIPPED" and CanAttack == true then
		CanAttack = false
		ChainsawAttackStatusValue.Value = "ATTACK_1_RIGHT"
		CMAttack1RightAnimationTrack:Play()
		wait(0.07)
		if ChainsawStatusValue.Value == "ON" then
			PlayRandomChainsawAttackEngineSound()
			ChainsSpeedModeValue.Value = "HIGH"
		end
		wait(0.10)
		wait(0.2)
		if ChainsawStatusValue.Value == "ON" then
			ChainsSpeedModeValue.Value = "LOW"	
		end
		ChainsawAttackStatusValue.Value = "ATTACKED"
		CanAttack = true
	end
end)
ChainBladeRightArm.MainFrame.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("ZombieHumanoid") and Hit.Parent.ZombieHumanoid.Health > 0 and ChainsawAttackStatusValue.Value == "ATTACK_1_RIGHT" then
		ChainBladeRightArm.Blood2.Transparency = 0
		Hit.Parent.ZombieHumanoid:TakeDamage(100)
		PlayRandomChainsawAttackBladeSound()
		if ChainsawStatusValue.Value == "ON" then
			TurnOnRightBladeBloodEffect()
			RiseAcceleration(0.2)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		if ChainsawStatusValue.Value == "OFF" then
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		TurnOffRightBladeBloodEffect()
	end
end)
--

-- ATTACK_1_LEFT
ChainsawAttack2LeftEvent.OnServerEvent:Connect(function()
	if ChainsawEquipStatusValue.Value == "EQUIPPED" and CanAttack == true then
		CanAttack = false
		ChainsawAttackStatusValue.Value = "ATTACK_2_LEFT"
		CMAttack2LeftAnimationTrack:Play()
		wait(0.07)
		if ChainsawStatusValue.Value == "ON" then
			PlayRandomChainsawAttackEngineSound()
			ChainsSpeedModeValue.Value = "HIGH"
		end
		wait(0.10)
		wait(0.2)
		if ChainsawStatusValue.Value == "ON" then
			ChainsSpeedModeValue.Value = "LOW"	
		end
		ChainsawAttackStatusValue.Value = "ATTACKED"
		CanAttack = true
	end
end)
ChainBladeLeftArm.MainFrame.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("ZombieHumanoid") and Hit.Parent.ZombieHumanoid.Health > 0 and ChainsawAttackStatusValue.Value == "ATTACK_2_LEFT" then
		ChainBladeLeftArm.Blood2.Transparency = 0
		Hit.Parent.ZombieHumanoid:TakeDamage(100)
		PlayRandomChainsawAttackBladeSound()
		if ChainsawStatusValue.Value == "ON" then
			TurnOnLeftBladeBloodEffect()
			RiseAcceleration(0.2)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		if ChainsawStatusValue.Value == "OFF" then
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		TurnOffLeftBladeBloodEffect()
	end
end)
--

-- ATTACK_2_RIGHT
ChainsawAttack2RightEvent.OnServerEvent:Connect(function()
	if ChainsawEquipStatusValue.Value == "EQUIPPED" and CanAttack == true then
		CanAttack = false
		CMAttack2RightAnimationTrack:Play()
		wait(0.07)
		ChainsawAttackStatusValue.Value = "ATTACK_2_RIGHT"
		if ChainsawStatusValue.Value == "ON" then
			PlayRandomChainsawAttackEngineSound()
			ChainsSpeedModeValue.Value = "HIGH"
		end
		wait(0.10)
		ChainsawAttackStatusValue.Value = "ATTACKED"
		wait(0.2)
		if ChainsawStatusValue.Value == "ON" then
			ChainsSpeedModeValue.Value = "LOW"	
		end
		CanAttack = true
	end
end)
ChainBladeRightArm.MainFrame.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("ZombieHumanoid") and Hit.Parent.ZombieHumanoid.Health > 0 and ChainsawAttackStatusValue.Value == "ATTACK_2_RIGHT" then
		ChainBladeRightArm.Blood2.Transparency = 0
		Hit.Parent.ZombieHumanoid:TakeDamage(100)
		PlayRandomChainsawAttackBladeSound()
		if ChainsawStatusValue.Value == "ON" then
			TurnOnRightBladeBloodEffect()
			RiseAcceleration(0.2)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		if ChainsawStatusValue.Value == "OFF" then
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
			wait(1)
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
			Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		end
		TurnOffRightBladeBloodEffect()
	end
end)
--

-- ACCELERATION
ChainsawHead.ChainBlade.MainFrame.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("ZombieHumanoid") and ChainsawAttackStatusValue.Value == "ACCELERATION" then
		ChainsSpeedModeValue.Value = "HIGH"
		ChainBladeLeftArm.Blood2.Transparency = 0
		ChainsawHead.ChainBlade.Blood2.Transparency = 0
		ChainBladeRightArm.Blood2.Transparency = 0
		TurnOnLeftBladeBloodEffect()
		TurnOnHeadBladeBloodEffect()
		TurnOnRightBladeBloodEffect()
		Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = true
		Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = true
		ChainsawFreshLoopSound:Play()
		if CanKill == true then
			Hit.Parent.ZombieHumanoid:TakeDamage(100)
			PlayRandomChainsawAttackBladeSound()
		end
		wait(1)
		TurnOffLeftBladeBloodEffect()
		TurnOffHeadBladeBloodEffect()
		TurnOffRightBladeBloodEffect()
		Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect1.Enabled = false
		Hit.Parent.UpperTorso.BloodEmitter4.BloodEffect2.Enabled = false
		ChainsawFreshLoopSound:Pause()
		MultiJump.Enabled = false
	end
end)
--

--ChainsawStartAccelerationEvent.OnServerEvent:Connect(function()
--	MouseButton1StatusValue.Value = "HOLDING"
--	ChainsSpeedModeValue.Value = "HIGH"
--	ChainsawAccelerationStartSound:Play()
--	wait(1.2)
--	if MouseButton1StatusValue.Value == "HOLDING" then
--		ChainsawAccelerationLoopSound:Play()
--	end
--end)

--ChainsawStopAccelerationEvent.OnServerEvent:Connect(function()
--	MouseButton1StatusValue.Value = "FREE"
--	ChainsSpeedModeValue.Value = "LOW"
--	ChainsawAccelerationStartSound:Stop()
--	ChainsawAccelerationLoopSound:Stop()
--	ChainsawAccelerationStopSound:Play()
--end)

--MouseButton1StatusValue.Changed:Connect(function()
--	if MouseButton1StatusValue.Value == "FREE" then
--		ChainsawAccelerationLoopSound:Stop()
--	end
--end)

--ChainBladeLeftArm.MainFrame.Touched:Connect(function(Hit)
--	if Hit.Parent:FindFirstChild("ZombieHumanoid") and CanEvent == true then
--		if Hit.Parent.ZombieHumanoid.Health > 0 then
--			CanEvent = false
--			ChainBladeLeftArm.BloodEmitter.BloodEffect1.Enabled = true
--			ChainBladeLeftArm.BloodEmitter.BloodEffect2.Enabled = true
--			Hit.Parent.HumanoidRootPart.Connector.Weld.Part1 = ChainBladeLeftArm.MainFrame
--			wait(2)
--			ChainBladeLeftArm.BloodEmitter.BloodEffect1.Enabled = false
--			ChainBladeLeftArm.BloodEmitter.BloodEffect2.Enabled = false
--			Hit.Parent.HumanoidRootPart.Connector.Weld:Destroy()
--			Hit.Parent.ZombieHumanoid:TakeDamage(100)
--			wait(1)
--			CanEvent = true
--		end
--	end
--end)

while true do
	if ChainsawStatusValue.Value == "ON" and BloodCapacityValue.Value >= BloodBarMinValue and CanDrop == true then
		BloodCapacityValue.Value = BloodCapacityValue.Value - 0.01
	end
	if AccelerationValue.Value < AccelerationBarMinValue then
		AccelerationValue.Value = AccelerationValue.Value + 0.01
	end
	if ChainsawStatusValue.Value == "ON" and BloodCapacityValue.Value <= BloodBarMinValue and AccelerationValue.Value >= AccelerationBarMinValue then
		StopChainsaw()
	end

	if BloodCapacityValue.Value < BloodBarMinValue then
		BloodCapacityValue.Value = BloodBarMinValue
	end
	if BloodCapacityValue.Value > BloodBarMaxValue then
		BloodCapacityValue.Value = BloodBarMaxValue
	end
	if AccelerationValue.Value > AccelerationBarMinValue then
		AccelerationValue.Value = AccelerationBarMinValue
	end
	if AccelerationValue.Value < AccelerationBarMaxValue then
		AccelerationValue.Value = AccelerationBarMaxValue
	end
	
	if AccelerationValue.Value > 6.1 and AccelerationValue.Value <= 7.1 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 200
		Character.Humanoid.Health = 200
		Character.Humanoid.WalkSpeed = 16
		Character.Humanoid.JumpPower = 70
	end
	if AccelerationValue.Value > 5.1 and AccelerationValue.Value < 6.1 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 300
		Character.Humanoid.Health = 300
		Character.Humanoid.WalkSpeed = 17
		Character.Humanoid.JumpPower = 75
	end
	if AccelerationValue.Value > 4.1 and AccelerationValue.Value < 5.1 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 400
		Character.Humanoid.Health = 400
		Character.Humanoid.WalkSpeed = 18
		Character.Humanoid.JumpPower = 76
		MultiJump.Enabled = false
	end
	if AccelerationValue.Value > 3.1 and AccelerationValue.Value < 4.1 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 500
		Character.Humanoid.Health = 500
		Character.Humanoid.WalkSpeed = 19
		Character.Humanoid.JumpPower = 77
		MultiJump.Enabled = true
	end
	if AccelerationValue.Value > 2.1 and AccelerationValue.Value < 3.1 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 600
		Character.Humanoid.Health = 600
		Character.Humanoid.WalkSpeed = 20
		Character.Humanoid.JumpPower = 78
	end
	if AccelerationValue.Value > 1.1 and AccelerationValue.Value < 2.1 and CanChangeHumanoidProperties == true then
		Character.Humanoid.MaxHealth = 700
		Character.Humanoid.Health = 700
		Character.Humanoid.WalkSpeed = 21
		Character.Humanoid.JumpPower = 79
	end
	wait(0.1)
end
