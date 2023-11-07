local myHuman = script.Parent:WaitForChild("Humanoid")
local myRoot = script.Parent:WaitForChild("HumanoidRootPart")
local head = script.Parent:WaitForChild("Head")
local lowerTorso = script.Parent:WaitForChild("LowerTorso")

function walkRandomly()
	local xRand = math.random(-50,50)
	local zRand = math.random(-50,50)
	local goal = myRoot.Position + Vector3.new(xRand,0,zRand)

	local path = game:GetService("PathfindingService"):CreatePath()
	path:ComputeAsync(myRoot.Position, goal)
	local waypoints = path:GetWaypoints()

	if path.Status == Enum.PathStatus.Success then
		for _, waypoint in ipairs(waypoints) do
			if waypoint.Action == Enum.PathWaypointAction.Jump then
				myHuman.Jump = true
			end
			myHuman:MoveTo(waypoint.Position)
			local timeOut = myHuman.MoveToFinished:Wait(1)
			if not timeOut then
				myHuman.Jump = true
				walkRandomly()
			end
		end
	else
		wait(1)
		walkRandomly()
	end
end

function findPath(target)
	local path = game:GetService("PathfindingService"):CreatePath()
	path:ComputeAsync(myRoot.Position,target.Position)
	local waypoints = path:GetWaypoints()

	if path.Status == Enum.PathStatus.Success then
		for _, waypoint in ipairs(waypoints) do
			if waypoint.Action == Enum.PathWaypointAction.Jump then
				myHuman.Jump = true
			end
			myHuman:MoveTo(waypoint.Position)
			local timeOut = myHuman.MoveToFinished:Wait(1)
			if not timeOut then
				myHuman.Jump = true
				findPath(target)
				break
			end
			if checkSight(target) then
				repeat
					myHuman:MoveTo(target.Position)
					wait(0.1)
					if target == nil then
						break
					elseif target.Parent == nil then
						break
					end
				until checkSight(target) == false or myHuman.Health < 1 or target.Parent.Humanoid.Health < 1
				break
			end
			if (myRoot.Position - waypoints[1].Position).magnitude > 20 then
				findPath(target)
				break
			end
		end
	end
end

function checkSight(target)
	local ray = Ray.new(myRoot.Position, (target.Position - myRoot.Position).Unit * 40)
	local hit,position = workspace:FindPartOnRayWithIgnoreList(ray, {script.Parent})
	if hit then
		if hit:IsDescendantOf(target.Parent) and math.abs(hit.Position.Y - myRoot.Position.Y) < 3 then
			return true
		end
	end
	return false
end

function findTarget()
	local dist = 50
	local target = nil
	local potentialTargets = {}
	local seeTargets = {}
	for i,v in ipairs(workspace:GetChildren()) do
		local human = v:FindFirstChild("Humanoid")
		local torso = v:FindFirstChild("Torso") or v:FindFirstChild("HumanoidRootPart")
		if human and torso and v.Name ~= script.Parent.Name and v.Name ~= "ZombieM" and v.Name ~= "ZombieW" then
			if (myRoot.Position - torso.Position).magnitude < dist and human.Health > 0 then
				table.insert(potentialTargets,torso)
			end
		end
	end
	if #potentialTargets > 0 then
		for i,v in ipairs(potentialTargets) do
			if checkSight(v) then
				table.insert(seeTargets, v)
			elseif #seeTargets == 0 and (myRoot.Position - v.Position).magnitude < dist then
				target = v
				dist = (myRoot.Position - v.Position).magnitude
			end
		end
	end
	if #seeTargets > 0 then
		dist = 200
		for i,v in ipairs(seeTargets) do
			if (myRoot.Position - v.Position).magnitude < dist then
				target = v
				dist = (myRoot.Position - v.Position).magnitude
			end
		end
	end
	return target
end

lowerTorso.Touched:Connect(function(obj)
	if not obj.Parent:FindFirstChild("Humanoid") then
		myHuman.Jump = true
	end
end)

function main()
	local target = findTarget()
	if target then
		findPath(target)
	else
		walkRandomly()
	end
end

while wait(0.1) do
	if myHuman.Health < 1 then
		break
	end
	main()
end