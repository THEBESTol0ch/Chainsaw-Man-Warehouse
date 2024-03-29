game.Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAdded:Connect(function(Character)
		local ChainBladeLeftArm = game.ReplicatedStorage.ChainsawManItems.ChainBladeLeftArm:Clone()
		local ChainsawHead = game.ReplicatedStorage.ChainsawManItems.ChainsawHead:Clone()
		local ChainBladeRightArm = game.ReplicatedStorage.ChainsawManItems.ChainBladeRightArm:Clone()
		local Starter = ChainsawHead.Starter
		local StarterConnector1 = ChainsawHead.StarterConnector1
		local StarterConnector2 = ChainsawHead.StarterConnector2
		local WireConnector = ChainsawHead.WireConnector
		local ChainsawManGui = ChainsawHead.ChainsawManGui
		local Weld = ChainsawHead.Weld
		
		wait(5)
		
		ChainBladeLeftArm.Parent = Character
		ChainBladeLeftArm.Connector.Weld.Part1 = Character:WaitForChild("LeftLowerArm")

		ChainsawHead.Parent = Character
		ChainsawHead.Connector.Weld.Part1 = Character:WaitForChild("Head")

		ChainBladeRightArm.Parent = Character
		ChainBladeRightArm.Connector.Weld.Part1 = Character:WaitForChild("RightLowerArm")

		WireConnector.Parent = Character
		WireConnector.Weld.Part1 = Character:WaitForChild("UpperTorso")
		
		Starter.Parent = Character
		
		StarterConnector1.Parent = Character
		StarterConnector2.Parent = Character
		StarterConnector1.Weld.Part1 = Character:WaitForChild("UpperTorso")
		StarterConnector2.Weld.Part1 = Character:WaitForChild("LeftHand")

		ChainsawManGui.Parent = Player.PlayerGui

		Weld.Parent = Character:WaitForChild("HumanoidRootPart")
		Weld.Part0 = Character:WaitForChild("HumanoidRootPart")

		Starter.Transparency = 0
		StarterConnector1.RopeConstraint.Visible = false
		
		ChainsawHead.Head.CPU.Scripts.CMAnimations.Parent = Character
	end)
end)