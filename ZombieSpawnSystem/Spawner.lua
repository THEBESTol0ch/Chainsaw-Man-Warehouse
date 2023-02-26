-- Items
local Spawners = script.Parent.Parent.Parent.Spawners
local Zombies = script.Parent.Parent.Parent.Parent.Warehouse1Zombies
--

-- Values
local MaxZombieCountValue = script.Parent.Parent.Parent.Parent.CPU.Values.MaxZombieCountValue
local ZombieCountValue = script.Parent.Parent.Values.ZombieCountValue
local ZombieSpawnerStatusValue = script.Parent.Parent.Parent.Parent.CPU.Values.ZombieSpawnerStatusValue

local PlayerInWarehouse1Value = script.Parent.Parent.Parent.Parent.CPU.Values.PlayerInWarehouse1Value
local PlayerInWarehouse2Value = script.Parent.Parent.Parent.Parent.CPU.Values.PlayerInWarehouse2Value
local PlayerInWarehouse3Value = script.Parent.Parent.Parent.Parent.CPU.Values.PlayerInWarehouse3Value
--

-- ZombieM Pants
local MPants1 = "http://www.roblox.com/asset/?id=398633811" -- Black Jeans with White Shoes
local MPants2 = "http://www.roblox.com/asset/?id=144076759" -- Dark Green Jeans
local MPants3 = "http://www.roblox.com/asset/?id=144076511" -- Pink Jeans
local MPants4 = "http://www.roblox.com/asset/?id=129459076" -- Black Slacks
local MPants5 = "http://www.roblox.com/asset/?id=382538502" -- Black Jeans with Sneakers
local MPants6 = "http://www.roblox.com/asset/?id=129458425" -- Jeans
local MPants7 = "http://www.roblox.com/asset/?id=382537568" -- Black Jeans
local MPants8 = "http://www.roblox.com/asset/?id=5681128186" -- Karen Pants - Field Trip Z
local MPants9 = "http://www.roblox.com/asset/?id=8570823102" -- Nerdy nathan field trip Z pants
local MPants10 = "http://www.roblox.com/asset/?id=6075634972" -- Blue Jeans X Blazing Sneakers
--

-- ZombieM Shirts
local MShirt1 = "http://www.roblox.com/asset/?id=144076357" -- Blue and Black Motorcycle Shirt
local MShirt2 = "http://www.roblox.com/asset/?id=382538294" -- Guitar Tee with Black Jacket
local MShirt3 = "http://www.roblox.com/asset/?id=6554200348" -- Grey Suit w/ Black Vest [+]
local MShirt4 = "http://www.roblox.com/asset/?id=5134719718" -- black flannel aesthetic y2k soft vintage vamp emo
local MShirt5 = "http://www.roblox.com/asset/?id=1821393" -- Black T-Shirt
local MShirt6 = "http://www.roblox.com/asset/?id=8118734143" -- VLONE-Polo
local MShirt7 = "http://www.roblox.com/asset/?id=9896897337" -- nik-e tech
local MShirt8 = "http://www.roblox.com/asset/?id=398633582" -- Denim Jacket with White Hoodie
local MShirt9 = "http://www.roblox.com/asset/?id=1001566382" -- *NEW!* RED FLANNEL| HighSchool Clothing
local MShirt10 = "http://www.roblox.com/asset/?id=7021249539" -- Black and White Hoodie Champion Sweater
--

-- ZombieM Hairs
local MHair1 = "http://www.roblox.com/asset/?id=74878559" -- StandardHair
local MHair1Texture = "http://www.roblox.com/asset/?id=382682502"
local MHair1XOffset = 0
local MHair1YOffset = 0
local MHair1ZOffset = 0

local MHair2 = "rbxassetid://7259065617" -- MessyHairstyle
local MHair2Texture = "rbxassetid://7104179851"
local MHair2XOffset = 0
local MHair2YOffset = 0
local MHair2ZOffset = 0

local MHair3 = "rbxassetid://4723908785" -- Brown Floof Hair
local MHair3Texture = "http://www.roblox.com/asset/?id=4723909875"
local MHair3XOffset = 0.1
local MHair3YOffset = -0.1
local MHair3ZOffset = 0.05

local MHair4 = "http://www.roblox.com/asset/?id=16627529" -- Ultra-Fabulous Hair
local MHair4Texture = "http://www.roblox.com/asset/?id=16627494"
local MHair4XOffset = 0
local MHair4YOffset = 0
local MHair4ZOffset = 0.05

local MHair5 = "http://www.roblox.com/asset/?id=83293901" -- BaconHair
local MHair5Texture = "rbxassetid://83284747"
local MHair5XOffset = 0
local MHair5YOffset = -0.2
local MHair5ZOffset = -0.2

local MHair6 = "rbxassetid://4681387219" -- BlackFluffedHair
local MHair6Texture = "rbxassetid://4663274026"
local MHair6XOffset = 0.02
local MHair6YOffset = 0
local MHair6ZOffset = 0.1

local MHair7 = "http://www.roblox.com/asset?id=375815502" -- Anime Hair
local MHair7Texture = "http://www.roblox.com/asset/?id=377072199"
local MHair7XOffset = -0.02
local MHair7YOffset = 0
local MHair7ZOffset = 0.2

local MHair8 = "http://www.roblox.com/asset/?id=16627529" -- Ultra-Fabulous Hair
local MHair8Texture = "rbxassetid://83284747"
local MHair8XOffset = 0
local MHair8YOffset = 0
local MHair8ZOffset = 0.05

local MHair9 = "rbxassetid://4723908785" -- Brown Floof Hair
local MHair9Texture = "rbxassetid://4663274026"
local MHair9XOffset = 0.1
local MHair9YOffset = -0.1
local MHair9ZOffset = 0.05

local MHair10 = "rbxassetid://4723908785" -- Brown Floof Hair
local MHair10Texture = "http://www.roblox.com/asset/?id=382682502"
local MHair10XOffset = 0.1
local MHair10YOffset = -0.1
local MHair10ZOffset = 0.05
--

-- ZombieW Pants
local WPants1 = "http://www.roblox.com/asset/?id=398633811" -- Black Jeans with White Shoes
local WPants2 = "http://www.roblox.com/asset/?id=144076759" -- Dark Green Jeans
local WPants3 = "http://www.roblox.com/asset/?id=144076511" -- Pink Jeans
local WPants4 = "http://www.roblox.com/asset/?id=129459076" -- Black Slacks
local WPants5 = "http://www.roblox.com/asset/?id=382538502" -- Black Jeans with Sneakers
local WPants6 = "http://www.roblox.com/asset/?id=129458425" -- Jeans
local WPants7 = "http://www.roblox.com/asset/?id=382537568" -- Black Jeans
local WPants8 = "http://www.roblox.com/asset/?id=5681128186" -- Karen Pants - Field Trip Z
local WPants9 = "http://www.roblox.com/asset/?id=8570823102" -- Nerdy nathan field trip Z pants
local WPants10 = "http://www.roblox.com/asset/?id=6075634972" -- Blue Jeans X Blazing Sneakers
--

-- ZombieW Shirts
local WShirt1 = "http://www.roblox.com/asset/?id=144076435" -- Grey Striped Shirt with Denim Jacket
local WShirt2 = "http://www.roblox.com/asset/?id=398633582" -- Denim Jacket with White Hoodie
local WShirt3 = "http://www.roblox.com/asset/?id=144076357" -- Blue and Black Motorcycle Shirt
local WShirt4 = "http://www.roblox.com/asset/?id=382538294" -- Guitar Tee with Black Jacket
local WShirt5 = "http://www.roblox.com/asset/?id=1821393" -- Black T-Shirt
local WShirt6 = "http://www.roblox.com/asset/?id=8118734143" -- VLONE-Polo
local WShirt7 = "http://www.roblox.com/asset/?id=9896897337" -- nik-e tech
local WShirt8 = "http://www.roblox.com/asset/?id=1001566382" -- *NEW!* RED FLANNEL| HighSchool Clothing
local WShirt9 = "http://www.roblox.com/asset/?id=7021249539" -- Black and White Hoodie Champion Sweater
local WShirt10 = "http://www.roblox.com/asset/?id=7919545660" -- Emo y2k black shirt aesthetic Christmas boy trendy
--

-- ZombieW Hairs
local WHair1 = "rbxassetid://4660065409" -- Silk Black Hair
local WHair1Texture = "rbxassetid://4659768639"
local WHair1XOffset = 0
local WHair1YOffset = 0
local WHair1ZOffset = 0

local WHair2 = "rbxassetid://5878293268" -- Hair
local WHair2Texture = "rbxassetid://5594653139"
local WHair2XOffset = 0
local WHair2YOffset = 0.2
local WHair2ZOffset = -0.1

local WHair3 = "rbxassetid://4684976066" -- Mermaid Princess Platinum Hair
local WHair3Texture = "http://www.roblox.com/asset/?id=4602946959"
local WHair3XOffset = 0
local WHair3YOffset = 0.05
local WHair3ZOffset = -0.1

local WHair4 = "rbxassetid://5912145651" -- Meshes/femaleanimehair_NurbsPath.040Accessory
local WHair4Texture = "rbxassetid://4659768639"
local WHair4XOffset = 0
local WHair4YOffset = 0.1
local WHair4ZOffset = 0.1

local WHair5 = "rbxassetid://4821326889" -- Hair
local WHair5Texture = "rbxassetid://4659768639"
local WHair5XOffset = 0
local WHair5YOffset = 0
local WHair5ZOffset = -0.1
--

-- Functions
function SpawnZombieM(Spawner)
	local ZombieM = game.ReplicatedStorage.ZombieHumanoids.ZombieM:Clone()
	ZombieM.Parent = Zombies
	ZombieM.HumanoidRootPart.CFrame = CFrame.new(Spawner.ZombieSpawn.Position)
	
	local RandomIndex = 0
	RandomIndex = math.random(1, 10)
	if RandomIndex == 1 then
		ZombieM.Pants.PantsTemplate = MPants1
	end
	if RandomIndex == 2 then
		ZombieM.Pants.PantsTemplate = MPants2
	end
	if RandomIndex == 3 then
		ZombieM.Pants.PantsTemplate = MPants3
	end
	if RandomIndex == 4 then
		ZombieM.Pants.PantsTemplate = MPants4
	end
	if RandomIndex == 5 then
		ZombieM.Pants.PantsTemplate = MPants5
	end
	if RandomIndex == 6 then
		ZombieM.Pants.PantsTemplate = MPants6
	end
	if RandomIndex == 7 then
		ZombieM.Pants.PantsTemplate = MPants7
	end
	if RandomIndex == 8 then
		ZombieM.Pants.PantsTemplate = MPants8
	end
	if RandomIndex == 9 then
		ZombieM.Pants.PantsTemplate = MPants9
	end
	if RandomIndex == 10 then
		ZombieM.Pants.PantsTemplate = MPants10
	end

	RandomIndex = math.random(1, 10)
	if RandomIndex == 1 then
		ZombieM.Shirt.ShirtTemplate = MShirt1
	end
	if RandomIndex == 2 then
		ZombieM.Shirt.ShirtTemplate = MShirt2
	end
	if RandomIndex == 3 then
		ZombieM.Shirt.ShirtTemplate = MShirt3
	end
	if RandomIndex == 4 then
		ZombieM.Shirt.ShirtTemplate = MShirt4
	end
	if RandomIndex == 5 then
		ZombieM.Shirt.ShirtTemplate = MShirt5
	end
	if RandomIndex == 6 then
		ZombieM.Shirt.ShirtTemplate = MShirt6
	end
	if RandomIndex == 7 then
		ZombieM.Shirt.ShirtTemplate = MShirt7
	end
	if RandomIndex == 8 then
		ZombieM.Shirt.ShirtTemplate = MShirt8
	end
	if RandomIndex == 9 then
		ZombieM.Shirt.ShirtTemplate = MShirt9
	end
	if RandomIndex == 10 then
		ZombieM.Shirt.ShirtTemplate = MShirt10
	end

	RandomIndex = math.random(1, 10)
	if RandomIndex == 1 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair1
		ZombieM.Hair.SpecialMesh.TextureId = MHair1Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair1XOffset, MHair1YOffset, MHair1ZOffset)
	end
	if RandomIndex == 2 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair2
		ZombieM.Hair.SpecialMesh.TextureId = MHair2Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair2XOffset, MHair2YOffset, MHair2ZOffset)
	end
	if RandomIndex == 3 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair3
		ZombieM.Hair.SpecialMesh.TextureId = MHair3Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair3XOffset, MHair3YOffset, MHair3ZOffset)
	end
	if RandomIndex == 4 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair4
		ZombieM.Hair.SpecialMesh.TextureId = MHair4Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair4XOffset, MHair4YOffset, MHair4ZOffset)
	end
	if RandomIndex == 5 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair5
		ZombieM.Hair.SpecialMesh.TextureId = MHair5Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair5XOffset, MHair5YOffset, MHair5ZOffset)
	end
	if RandomIndex == 6 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair6
		ZombieM.Hair.SpecialMesh.TextureId = MHair6Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair6XOffset, MHair6YOffset, MHair6ZOffset)
	end
	if RandomIndex == 7 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair7
		ZombieM.Hair.SpecialMesh.TextureId = MHair7Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair7XOffset, MHair7YOffset, MHair7ZOffset)
	end
	if RandomIndex == 8 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair8
		ZombieM.Hair.SpecialMesh.TextureId = MHair8Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair8XOffset, MHair8YOffset, MHair8ZOffset)
	end
	if RandomIndex == 9 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair9
		ZombieM.Hair.SpecialMesh.TextureId = MHair9Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair9XOffset, MHair9YOffset, MHair9ZOffset)
	end
	if RandomIndex == 10 then
		ZombieM.Hair.SpecialMesh.MeshId = MHair10
		ZombieM.Hair.SpecialMesh.TextureId = MHair10Texture
		ZombieM.Hair.SpecialMesh.Offset = Vector3.new(MHair10XOffset, MHair10YOffset, MHair10ZOffset)
	end
	
	RandomIndex = math.random(8, 16)
	ZombieM.ZombieHumanoid.WalkSpeed = RandomIndex
end

function SpawnZombieW(Spawner)
	local ZombieW = game.ReplicatedStorage.ZombieHumanoids.ZombieW:Clone()
	ZombieW.Parent = Zombies
	ZombieW.HumanoidRootPart.CFrame = CFrame.new(Spawner.ZombieSpawn.Position)
	
	local RandomIndex = 0
	RandomIndex = math.random(1, 10)
	if RandomIndex == 1 then
		ZombieW.Pants.PantsTemplate = WPants1
	end
	if RandomIndex == 2 then
		ZombieW.Pants.PantsTemplate = WPants2
	end
	if RandomIndex == 3 then
		ZombieW.Pants.PantsTemplate = WPants3
	end
	if RandomIndex == 4 then
		ZombieW.Pants.PantsTemplate = WPants4
	end
	if RandomIndex == 5 then
		ZombieW.Pants.PantsTemplate = WPants5
	end
	if RandomIndex == 6 then
		ZombieW.Pants.PantsTemplate = WPants6
	end
	if RandomIndex == 7 then
		ZombieW.Pants.PantsTemplate = WPants7
	end
	if RandomIndex == 8 then
		ZombieW.Pants.PantsTemplate = WPants8
	end
	if RandomIndex == 9 then
		ZombieW.Pants.PantsTemplate = WPants9
	end
	if RandomIndex == 10 then
		ZombieW.Pants.PantsTemplate = WPants10
	end

	RandomIndex = math.random(1, 10)
	if RandomIndex == 1 then
		ZombieW.Shirt.ShirtTemplate = WShirt1
	end
	if RandomIndex == 2 then
		ZombieW.Shirt.ShirtTemplate = WShirt2
	end
	if RandomIndex == 3 then
		ZombieW.Shirt.ShirtTemplate = WShirt3
	end
	if RandomIndex == 4 then
		ZombieW.Shirt.ShirtTemplate = WShirt4
	end
	if RandomIndex == 5 then
		ZombieW.Shirt.ShirtTemplate = WShirt5
	end
	if RandomIndex == 6 then
		ZombieW.Shirt.ShirtTemplate = WShirt6
	end
	if RandomIndex == 7 then
		ZombieW.Shirt.ShirtTemplate = WShirt7
	end
	if RandomIndex == 8 then
		ZombieW.Shirt.ShirtTemplate = WShirt8
	end
	if RandomIndex == 9 then
		ZombieW.Shirt.ShirtTemplate = WShirt9
	end
	if RandomIndex == 10 then
		ZombieW.Shirt.ShirtTemplate = WShirt10
	end

	RandomIndex = math.random(1, 5)
	if RandomIndex == 1 then
		ZombieW.Hair.SpecialMesh.MeshId = WHair1
		ZombieW.Hair.SpecialMesh.TextureId = WHair1Texture
		ZombieW.Hair.SpecialMesh.Offset = Vector3.new(WHair1XOffset, WHair1YOffset, WHair1ZOffset)
	end
	if RandomIndex == 2 then
		ZombieW.Hair.SpecialMesh.MeshId = WHair2
		ZombieW.Hair.SpecialMesh.TextureId = WHair2Texture
		ZombieW.Hair.SpecialMesh.Offset = Vector3.new(WHair2XOffset, WHair2YOffset, WHair2ZOffset)
	end
	if RandomIndex == 3 then
		ZombieW.Hair.SpecialMesh.MeshId = WHair3
		ZombieW.Hair.SpecialMesh.TextureId = WHair3Texture
		ZombieW.Hair.SpecialMesh.Offset = Vector3.new(WHair3XOffset, WHair3YOffset, WHair3ZOffset)
	end
	if RandomIndex == 4 then
		ZombieW.Hair.SpecialMesh.MeshId = WHair4
		ZombieW.Hair.SpecialMesh.TextureId = WHair4Texture
		ZombieW.Hair.SpecialMesh.Offset = Vector3.new(WHair4XOffset, WHair4YOffset, WHair4ZOffset)
	end
	if RandomIndex == 5 then
		ZombieW.Hair.SpecialMesh.MeshId = WHair5
		ZombieW.Hair.SpecialMesh.TextureId = WHair5Texture
		ZombieW.Hair.SpecialMesh.Offset = Vector3.new(WHair5XOffset, WHair5YOffset, WHair5ZOffset)
	end
	
	RandomIndex = math.random(8, 16)
	ZombieW.ZombieHumanoid.WalkSpeed = RandomIndex
end
--

Zombies.ChildAdded:Connect(function()
	ZombieCountValue.Value = ZombieCountValue.Value + 1
end)

Zombies.ChildRemoved:Connect(function()
	ZombieCountValue.Value = ZombieCountValue.Value - 1
end)

while true do
	if ZombieCountValue.Value < MaxZombieCountValue.Value and ZombieSpawnerStatusValue.Value == true and PlayerInWarehouse1Value.Value == true then
		for _, Spawner in pairs(Spawners:GetChildren()) do
			local RandomIndex = 0
			RandomIndex = math.random(1, 2)
			if RandomIndex == 1 then
				SpawnZombieM(Spawner)
			end
			if RandomIndex == 2 then
				SpawnZombieW(Spawner)
			end
		end
		wait(1)
	end
	wait(0.1)
end
