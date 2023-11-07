-- Items
local Zombies = game.Workspace.Zombies
local ZombieHumanoids = game.ReplicatedStorage.ZombieHumanoids
--

-- Values
local SpawnZombieValue = game.ServerScriptService.Values.SpawnZombieValue
--

local Pants = {
	ZombieM = {
		"http://www.roblox.com/asset/?id=398633811", -- Black Jeans with White Shoes
		"http://www.roblox.com/asset/?id=144076759", -- Dark Green Jeans
		"http://www.roblox.com/asset/?id=144076511", -- Pink Jeans
		"http://www.roblox.com/asset/?id=129459076", -- Black Slacks
		"http://www.roblox.com/asset/?id=382538502", -- Black Jeans with Sneakers
		"http://www.roblox.com/asset/?id=129458425", -- Jeans
		"http://www.roblox.com/asset/?id=382537568", -- Black Jeans
		"http://www.roblox.com/asset/?id=5681128186", -- Karen Pants - Field Trip Z
		"http://www.roblox.com/asset/?id=8570823102", -- Nerdy nathan field trip Z pants
		"http://www.roblox.com/asset/?id=6075634972", -- Blue Jeans X Blazing Sneakers
	},
	ZombieW = {
		"http://www.roblox.com/asset/?id=398633811", -- Black Jeans with White Shoes
		"http://www.roblox.com/asset/?id=144076759", -- Dark Green Jeans
		"http://www.roblox.com/asset/?id=144076511", -- Pink Jeans
		"http://www.roblox.com/asset/?id=129459076", -- Black Slacks
		"http://www.roblox.com/asset/?id=382538502", -- Black Jeans with Sneakers
		"http://www.roblox.com/asset/?id=129458425", -- Jeans
		"http://www.roblox.com/asset/?id=382537568", -- Black Jeans
		"http://www.roblox.com/asset/?id=5681128186", -- Karen Pants - Field Trip Z
		"http://www.roblox.com/asset/?id=8570823102", -- Nerdy nathan field trip Z pants
		"http://www.roblox.com/asset/?id=6075634972", -- Blue Jeans X Blazing Sneakers
	},
}

local Shirts = {
	ZombieM = {
		"http://www.roblox.com/asset/?id=144076357", -- Blue and Black Motorcycle Shirt
		"http://www.roblox.com/asset/?id=382538294", -- Guitar Tee with Black Jacket
		"http://www.roblox.com/asset/?id=6554200348", -- Grey Suit w/ Black Vest [+]
		"http://www.roblox.com/asset/?id=5134719718", -- black flannel aesthetic y2k soft vintage vamp emo
		"http://www.roblox.com/asset/?id=1821393", -- Black T-Shirt
		"http://www.roblox.com/asset/?id=8118734143", -- VLONE-Polo
		"http://www.roblox.com/asset/?id=9896897337", -- nik-e tech
		"http://www.roblox.com/asset/?id=398633582", -- Denim Jacket with White Hoodie
		"http://www.roblox.com/asset/?id=1001566382", -- *NEW!* RED FLANNEL| HighSchool Clothing
		"http://www.roblox.com/asset/?id=7021249539", -- Black and White Hoodie Champion Sweater
	},
	ZombieW = {
		"http://www.roblox.com/asset/?id=144076435", -- Grey Striped Shirt with Denim Jacket
		"http://www.roblox.com/asset/?id=398633582", -- Denim Jacket with White Hoodie
		"http://www.roblox.com/asset/?id=144076357", -- Blue and Black Motorcycle Shirt
		"http://www.roblox.com/asset/?id=382538294", -- Guitar Tee with Black Jacket
		"http://www.roblox.com/asset/?id=1821393", -- Black T-Shirt
		"http://www.roblox.com/asset/?id=8118734143", -- VLONE-Polo
		"http://www.roblox.com/asset/?id=9896897337", -- nik-e tech
		"http://www.roblox.com/asset/?id=1001566382", -- *NEW!* RED FLANNEL| HighSchool Clothing
		"http://www.roblox.com/asset/?id=7021249539", -- Black and White Hoodie Champion Sweater
		"http://www.roblox.com/asset/?id=7919545660", -- Emo y2k black shirt aesthetic Christmas boy trendy
	},
}

local Hairs = {
	ZombieM = {
		{
			"http://www.roblox.com/asset/?id=74878559", -- StandardHair
			"http://www.roblox.com/asset/?id=382682502",
			Vector3.new(0, 0, 0),
		},
		{
			"rbxassetid://7259065617", -- MessyHairstyle
			"rbxassetid://7104179851",
			Vector3.new(0, 0, 0),
		},
		{
			"rbxassetid://4723908785", -- Brown Floof Hair
			"http://www.roblox.com/asset/?id=4723909875",
			Vector3.new(0.1, -0.1, 0.05),
		},
		{
			"http://www.roblox.com/asset/?id=16627529", -- Ultra-Fabulous Hair
			"http://www.roblox.com/asset/?id=16627494",
			Vector3.new(0, 0, 0.05),
		},
		{
			"http://www.roblox.com/asset/?id=83293901", -- BaconHair
			"rbxassetid://83284747",
			Vector3.new(0, -0.2, -0.2),
		},
		{
			"rbxassetid://4681387219", -- BlackFluffedHair
			"rbxassetid://4663274026",
			Vector3.new(0.02, 0, 0.1),
		},
		{
			"http://www.roblox.com/asset?id=375815502", -- Anime Hair
			"http://www.roblox.com/asset/?id=377072199",
			Vector3.new(-0.02, 0, 0.2),
		},
		{
			"http://www.roblox.com/asset/?id=16627529", -- Ultra-Fabulous Hair
			"rbxassetid://83284747",
			Vector3.new(0, 0, 0.05),
		},
		{
			"rbxassetid://4723908785", -- Brown Floof Hair
			"rbxassetid://4663274026",
			Vector3.new(0.1, -0.1, 0.05),
		},
		{
			"rbxassetid://4723908785", -- Brown Floof Hair
			"http://www.roblox.com/asset/?id=382682502",
			Vector3.new(0.1, -0.1, 0.05),
		},
	},
	ZombieW = {
		{
			"rbxassetid://4660065409", -- Silk Black Hair
			"rbxassetid://4659768639",
			Vector3.new(0, 0, 0),
		},
		{
			"rbxassetid://5878293268", -- Hair
			"rbxassetid://5594653139",
			Vector3.new(0, 0.2, -0.1),
		},
		{
			"rbxassetid://4684976066", -- Mermaid Princess Platinum Hair
			"http://www.roblox.com/asset/?id=4602946959",
			Vector3.new(0, 0.05, -0.1),
		},
		{
			"rbxassetid://5912145651", -- Meshes/femaleanimehair_NurbsPath.040Accessory
			"rbxassetid://4659768639",
			Vector3.new(0, 0.1, 0.1),
		},
		{
			"rbxassetid://4821326889", -- Hair
			"rbxassetid://4659768639",
			Vector3.new(0, 0, -0.1),
		},
	},
}

-- Functions
function SpawnZombie(Type, Position, Radius)
	local Zombie = ZombieHumanoids[Type]:Clone()
	local Angle = math.rad(math.random(1, 10) * (360 / 10))
	local X = Position.X + Radius * math.cos(Angle)
	local Y = 208.74
	local Z = Position.Z + Radius * math.sin(Angle)
	Zombie.Parent = Zombies
	Zombie.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)

	Zombie.Pants.PantsTemplate = Pants[Type][math.random(1, #Pants[Type])]

	Zombie.Shirt.ShirtTemplate = Shirts[Type][math.random(1, #Shirts[Type])]

	local Hair = Hairs[Type][math.random(1, #Hairs[Type])]
	Zombie.Hair.SpecialMesh.MeshId = Hair[1]
	Zombie.Hair.SpecialMesh.TextureId = Hair[2]
	Zombie.Hair.SpecialMesh.Offset = Hair[3]

	Zombie.Humanoid.WalkSpeed = math.random(8, 16)
end
--

Zombies.ChildAdded:Connect(function(Child)
	wait(25)
	Child:Destroy()
end)

while true do
	wait(math.random(1, 8) / 10)
	if SpawnZombieValue.Value == true then
		for _, Player in pairs(game.Players:GetPlayers()) do
			local Character = Player.Character
			if Character then
				if Character:FindFirstChild("HumanoidRootPart") then
					SpawnZombie(math.random(1, 2) == 1 and "ZombieM" or "ZombieW", Player.Character.HumanoidRootPart.Position, 50)
				end
			end
		end
	end
end