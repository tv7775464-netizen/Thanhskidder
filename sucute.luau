-- ts file was generated at discord.gg/25ms

print('Break')

function Notify(p1, p2, p3)
    local v4 = game.Players.LocalPlayer:WaitForChild('PlayerGui')
    local v5 = Instance.new('BlurEffect', game.Lighting)

    v5.Enabled = true
    v5.Size = 1000

    local v6 = Instance.new('ScreenGui', v4)
    local v7 = Instance.new('Frame', v6)
    local v8 = Instance.new('UICorner', v7)

    v7.BackgroundColor3 = Color3.new(0, 0, 0)
    v7.BackgroundTransparency = 0.5
    v7.Position = UDim2.new(0.5, -300, 0, 10)
    v7.Size = UDim2.new(0, 300, 0, 70)
    v7.AnchorPoint = Vector2.new(0.5, 0)
    v8.CornerRadius = UDim.new(0, 20)

    local v9 = Instance.new('ImageLabel', v7)

    v9.BackgroundTransparency = 1
    v9.Position = UDim2.new(0.5, -26, 0, -30)
    v9.Size = UDim2.new(0, 52, 0, 52)
    v9.Image = 'rbxassetid://9614132122'
    Instance.new('UICorner', v9).CornerRadius = UDim.new(0, 25)

    local function v19(p10, p11, p12, p13, p14, p15)
        local v16 = Instance.new('TextLabel', p10)

        v16.BackgroundTransparency = 1
        v16.Size = p12
        v16.Position = p11
        v16.AnchorPoint = Vector2.new(0.5, 0)
        v16.Font = p14
        v16.TextSize = p15
        v16.Text = p13

        local v17 = Color3.new(1, 1, 1)

        v16.TextWrapped = true
        v16.TextColor3 = v17

        local v18 = Enum.TextXAlignment.Center

        v16.TextYAlignment = Enum.TextYAlignment.Center
        v16.TextXAlignment = v18

        return v16
    end

    v19(v7, UDim2.new(0.5, 0, 0.1, 10), UDim2.new(0, 280, 0, 30), p1, Enum.Font.ArialBold, 25)
    v19(v7, UDim2.new(0.5, 0, 0.5, 13), UDim2.new(0, 280, 0, 20), p2, Enum.Font.SourceSans, 20)
    wait(0.1)
    v7:TweenPosition(UDim2.new(0.5, 0, 0, 10), 'Out', 'Sine', 0.5)
    wait(p3)
    v7:TweenPosition(UDim2.new(0.5, 0, 0, -150), 'Out', 'Sine', 0.5)
    wait(0.5)
    v5:Destroy()
    v6:Destroy()
end

Notify('Xeter Hub', 'Welcome to Xeter Hub', 3)
Notify('Xeter Hub', 'Everyone Goes to Discord to Communicate', 3)

getgenv().Team = getgenv().Team or 'Pirates'

repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild('DataLoaded')

if game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)') then
    repeat
        wait()
        game.ReplicatedStorage:WaitForChild('Remotes').CommF_:InvokeServer('SetTeam', getgenv().Team)
        task.wait(3)
    until not game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)')
end

repeat
    task.wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main')

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local vu20 = task

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

if not LPH_OBFUSCATED then
    function LPH_JIT_MAX(...)
        return ...
    end
    function LPH_NO_VIRTUALIZE(...)
        return ...
    end
    function LPH_NO_UPVALUES(...)
        return ...
    end
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/Levnoskider/Loader/refs/heads/main/why'))()

local v21, v22, v23 = pairs(getconnections(game:GetService('Players').LocalPlayer.Idled))

while true do
    local v24

    v23, v24 = v21(v22, v23)

    if v23 == nil then
        break
    end

    v24:Disable()
end

local v25 = loadstring(game:HttpGet('https://github.com/LuaCrack/Library/releases/download/Ui/FluentXeter.luau'))()

if game.PlaceId ~= 2753915549 then
    if game.PlaceId ~= 4442272183 then
        if game.PlaceId == 7449423635 then
            World3 = true
        end
    else
        World2 = true
    end
else
    World1 = true
end

Instance.new('Folder', workspace).Name = 'EnemySpawns'

local v26, v27, v28 = pairs(workspace._WorldOrigin.EnemySpawns:GetChildren())

while true do
    local v29, v30 = v26(v27, v28)

    if v29 == nil then
        break
    end

    v28 = v29

    if v30:IsA('Part') then
        local v31 = v30:Clone()
        local v32 = string.gsub(v30.Name, 'Lv. ', '')
        local v33 = string.gsub(v32, '[%[%]]', '')
        local v34 = string.gsub(v33, '%d+', '')

        v31.Name = string.gsub(v34, '%s+', '')
        v31.Parent = workspace.EnemySpawns
        v31.Anchored = true
    end
end

local v35, v36, v37 = pairs(game:GetService('Workspace').Enemies:GetChildren())

while true do
    local v38, v39 = v35(v36, v37)

    if v38 == nil then
        break
    end

    v37 = v38

    if v39:IsA('Model') and v39:FindFirstChild('HumanoidRootPart') then
        print(v39.HumanoidRootPart.Parent)

        local v40 = v39.HumanoidRootPart:Clone()
        local v41 = string.gsub(v39.Name, 'Lv. ', '')
        local v42 = string.gsub(v41, '[%[%]]', '')
        local v43 = string.gsub(v42, '%d+', '')
        local v44 = string.gsub(v43, '%s+', '')

        print(v44)

        v40.Name = v44
        v40.Parent = workspace.EnemySpawns
        v40.Anchored = true
    end
end

local v45, v46, v47 = pairs(game.ReplicatedStorage:GetChildren())

while true do
    local v48, v49 = v45(v46, v47)

    if v48 == nil then
        break
    end

    v47 = v48

    if v49:IsA('Model') and v49:FindFirstChild('HumanoidRootPart') then
        local v50 = v49.HumanoidRootPart:Clone()
        local v51 = string.gsub(v49.Name, 'Lv. ', '')
        local v52 = string.gsub(v51, '[%[%]]', '')
        local v53 = string.gsub(v52, '%d+', '')
        local v54 = string.gsub(v53, '%s+', '')

        print(v54)

        v50.Name = v54
        v50.Parent = workspace.EnemySpawns
        v50.Anchored = true
    end
end

local function vu106()
    local v55 = game:GetService('Players').LocalPlayer.Data.Level.Value

    if 1 <= v55 and v55 <= 9 then
        if tostring(game.Players.LocalPlayer.Team) ~= 'Marines' then
            if tostring(game.Players.LocalPlayer.Team) == 'Pirates' then
                MobName = 'Bandit'
                Mon = 'Bandit'
                QuestName = 'BanditQuest1'
                QuestLevel = 1
                NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-9, 0.297689587, 1.05190106e-8, 1, 9.22064114e-9, -0.297689587, 1.19340022e-8, -0.95466274)
            end
        else
            MobName = 'Trainee'
            QuestName = 'MarineQuest'
            QuestLevel = 1
            Mon = 'Trainee'
            NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-8, -0.667371571, 4.32403588e-8, 1, -1.07884304e-7, 0.667371571, -1.09201515e-7, -0.744724929)
        end

        return {
            QuestLevel,
            NPCPosition,
            MobName,
            QuestName,
            LevelRequire,
            Mon,
            MobCFrame,
        }
    end
    if 210 <= v55 and v55 <= 249 then
        MobName = 'Dangerous Prisoner'
        QuestName = 'PrisonerQuest'
        QuestLevel = 2
        Mon = 'Dangerous Prisoner'
        NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-9, -0.995993316, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712)

        local v56 = string.gsub(MobName, 'Lv. ', '')
        local v57 = string.gsub(v56, '[%[%]]', '')
        local v58 = string.gsub(v57, '%d+', '')
        local v59 = string.gsub(v58, '%s+', '')
        local v60, v61, v62 = pairs(game.workspace.EnemySpawns:GetChildren())
        local v63 = {}

        while true do
            local v64

            v62, v64 = v60(v61, v62)

            if v62 == nil then
                break
            end
            if v64.Name == v59 then
                table.insert(v63, v64.CFrame)
            end

            MobCFrame = v63
        end

        return {
            QuestLevel,
            NPCPosition,
            MobName,
            QuestName,
            LevelRequire,
            Mon,
            MobCFrame,
        }
    end

    local v65 = require(game:GetService('ReplicatedStorage').GuideModule)
    local v66 = require(game:GetService('ReplicatedStorage').Quests)
    local v67, v68, v69 = pairs(v65.Data.NPCList)

    while true do
        local v70

        v69, v70 = v67(v68, v69)

        if v69 == nil then
            break
        end

        local v71, v72, v73 = pairs(v70.Levels)
        local v74 = v69

        while true do
            local v75

            v73, v75 = v71(v72, v73)

            if v73 == nil then
                break
            end
            if v75 <= v55 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if LevelRequire < v75 then
                    NPCPosition = v74.CFrame
                    QuestLevel = v73
                    LevelRequire = v75
                end
                if #v70.Levels == 3 and QuestLevel == 3 then
                    NPCPosition = v74.CFrame
                    QuestLevel = 2
                    LevelRequire = v70.Levels[2]
                end
            end
        end
    end

    if 375 <= v55 and (v55 <= 399 and (_G.Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    if 400 <= v55 and (v55 <= 449 and (_G.Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end

    local v76, v77, v78 = pairs(v66)

    while true do
        local v79

        v78, v79 = v76(v77, v78)

        if v78 == nil then
            break
        end

        local v80, v81, v82 = pairs(v79)
        local v83 = v78

        while true do
            local v84

            v82, v84 = v80(v81, v82)

            if v82 == nil then
                break
            end
            if v84.LevelReq == LevelRequire and v83 ~= 'CitizenQuest' then
                QuestName = v83

                local v85, v86, v87 = pairs(v84.Task)

                while true do
                    local v88

                    v87, v88 = v85(v86, v87)

                    if v87 == nil then
                        break
                    end

                    MobName = v87
                    Mon = string.split(v87, ' [Lv. ' .. v84.LevelReq .. ']')[1]
                end
            end
        end
    end

    if QuestName ~= 'MarineQuest2' then
        if QuestName ~= 'ImpelQuest' then
            if QuestName ~= 'SkyExp1Quest' then
                if QuestName == 'Area2Quest' and QuestLevel == 2 then
                    QuestName = 'Area2Quest'
                    QuestLevel = 1
                    MobName = 'Swan Pirate'
                    Mon = 'Swan Pirate'
                    LevelRequire = 775
                end
            elseif QuestLevel ~= 1 then
                if QuestLevel == 2 then
                    NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                end
            else
                NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, 0.996191859)
            end
        else
            QuestName = 'PrisonerQuest'
            QuestLevel = 2
            MobName = 'Dangerous Prisoner'
            Mon = 'Dangerous Prisoner'
            LevelRequire = 210
            NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
        end
    else
        QuestName = 'MarineQuest2'
        QuestLevel = 1
        MobName = 'Chief Petty Officer'
        Mon = 'Chief Petty Officer'
        LevelRequire = 120
    end

    MobName = MobName:sub(1, #MobName)

    if not MobName:find('Lv') then
        local v89, v90, v91 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v92

            v91, v92 = v89(v90, v91)

            if v91 == nil then
                break
            end

            MonLV = string.match(v92.Name, '%d+')

            if v92.Name:find(MobName) and (#v92.Name > #MobName and tonumber(MonLV) <= v55 + 50) then
                MobName = v92.Name
            end
        end
    end
    if not MobName:find('Lv') then
        local v93, v94, v95 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

        while true do
            local v96

            v95, v96 = v93(v94, v95)

            if v95 == nil then
                break
            end

            MonLV = string.match(v96.Name, '%d+')

            if v96.Name:find(MobName) and (#v96.Name > #MobName and tonumber(MonLV) <= v55 + 50) then
                MobName = v96.Name
                Mon = a
            end
        end
    end

    local v97 = string.gsub(MobName, 'Lv. ', '')
    local v98 = string.gsub(v97, '[%[%]]', '')
    local v99 = string.gsub(v98, '%d+', '')
    local v100 = string.gsub(v99, '%s+', '')
    local v101, v102, v103 = pairs(game.workspace.EnemySpawns:GetChildren())
    local v104 = {}

    while true do
        local v105

        v103, v105 = v101(v102, v103)

        if v103 == nil then
            break
        end
        if v105.Name ~= v100 then
            table.insert(v104, nil)
        else
            table.insert(v104, v105.CFrame)
        end

        MobCFrame = v104
    end

    return {
        QuestLevel,
        NPCPosition,
        MobName,
        QuestName,
        LevelRequire,
        Mon,
        MobCFrame,
        MonQ,
        MobCFrameNuber,
    }
end

function Hop()
    local vu107 = game.PlaceId
    local vu108 = {}
    local vu109 = ''
    local vu110 = os.date('!*t').hour

    function TPReturner()
        local v111

        if vu109 ~= '' then
            v111 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. vu107 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. vu109))
        else
            v111 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. vu107 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v111.nextPageCursor and (v111.nextPageCursor ~= 'null' and v111.nextPageCursor ~= nil) then
            vu109 = v111.nextPageCursor
        end

        local v112, v113, v114 = pairs(v111.data)
        local v115 = 0

        while true do
            local v116

            v114, v116 = v112(v113, v114)

            if v114 == nil then
                break
            end

            local v117 = true
            local vu118 = tostring(v116.id)

            if tonumber(v116.maxPlayers) > tonumber(v116.playing) then
                local v119, v120, v121 = pairs(vu108)

                while true do
                    local v122

                    v121, v122 = v119(v120, v121)

                    if v121 == nil then
                        break
                    end
                    if v115 == 0 then
                        if tonumber(vu110) ~= tonumber(v122) then
                            pcall(function()
                                vu108 = {}

                                table.insert(vu108, vu110)
                            end)
                        end
                    elseif vu118 == tostring(v122) then
                        v117 = false
                    end

                    v115 = v115 + 1
                end

                if v117 == true then
                    table.insert(vu108, vu118)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(vu107, vu118, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()

                if vu109 ~= '' then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
end
function UpdateDevilChams()
    local v123, v124, v125 = pairs(game.Workspace:GetChildren())

    while true do
        local vu126

        v125, vu126 = v123(v124, v125)

        if v125 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if vu126:FindFirstChild('Handle') then
                    if vu126.Handle:FindFirstChild('NameEsp' .. Number) then
                        vu126.Handle['NameEsp' .. Number].TextLabel.Text = vu126.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - vu126.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local v127 = Instance.new('BillboardGui', vu126.Handle)

                        v127.Name = 'NameEsp' .. Number
                        v127.ExtentsOffset = Vector3.new(0, 1, 0)
                        v127.Size = UDim2.new(1, 200, 1, 30)
                        v127.Adornee = vu126.Handle
                        v127.AlwaysOnTop = true

                        local v128 = Instance.new('TextLabel', v127)

                        v128.Font = Enum.Font.GothamSemibold
                        v128.FontSize = 'Size14'
                        v128.TextWrapped = true
                        v128.Size = UDim2.new(1, 0, 1, 0)
                        v128.TextYAlignment = 'Top'
                        v128.BackgroundTransparency = 1
                        v128.TextStrokeTransparency = 0.5
                        v128.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v128.Text = vu126.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - vu126.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif vu126.Handle:FindFirstChild('NameEsp' .. Number) then
                vu126.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateBerriesESP()
    local v129, v130, v131 = pairs(game:GetService('CollectionService'):GetTagged('BerryBush'))

    while true do
        local vu132

        v131, vu132 = v129(v130, v131)

        if v131 == nil then
            break
        end

        pcall(function()
            local v133 = vu132
            local v134, v135, v136 = pairs(v133:GetAttributes())

            while true do
                local v137

                v136, v137 = v134(v135, v136)

                if v136 == nil then
                    break
                end
                if v137 then
                    if not vu132.Parent:FindFirstChild('BerryESP') then
                        local v138 = Instance.new('BillboardGui', vu132.Parent)

                        v138.Name = 'BerryESP'
                        v138.ExtentsOffset = Vector3.new(0, 2, 0)
                        v138.Size = UDim2.new(1, 200, 1, 30)
                        v138.Adornee = vu132.Parent
                        v138.AlwaysOnTop = true

                        local v139 = Instance.new('TextLabel', v138)

                        v139.Font = Enum.Font.GothamSemibold
                        v139.TextSize = 14
                        v139.TextWrapped = true
                        v139.Size = UDim2.new(1, 0, 1, 0)
                        v139.TextYAlignment = Enum.TextYAlignment.Top
                        v139.BackgroundTransparency = 1
                        v139.TextStrokeTransparency = 0.5
                        v139.TextColor3 = Color3.fromRGB(255, 255, 0)
                        v139.Text = v137
                    end
                    if vu132.Parent:FindFirstChild('BerryESP') and (game.Players.LocalPlayer and game.Players.LocalPlayer.Character) and game.Players.LocalPlayer.Character:FindFirstChild('Head') then
                        vu132.Parent.BerryESP.TextLabel.Text = v137 .. '\n' .. math.floor((vu132.Parent:GetPivot().Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude) .. 'm'
                    end
                elseif vu132.Parent:FindFirstChild('NameEsp') then
                    vu132.Parent:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(p140)
    return p140 == nil
end

local function vu142(p141)
    return math.floor(tonumber(p141) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v143, v144, v145 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local vu146

        v145, vu146 = v143(v144, v145)

        if v145 == nil then
            break
        end

        pcall(function()
            if not isnil(vu146.Character) then
                if ESPPlayer then
                    if isnil(vu146.Character.Head) or vu146.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        vu146.Character.Head['NameEsp' .. Number].TextLabel.Text = vu146.Name .. ' | ' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu146.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth: ' .. vu142(vu146.Character.Humanoid.Health * 100 / vu146.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local v147 = Instance.new('BillboardGui', vu146.Character.Head)

                        v147.Name = 'NameEsp' .. Number
                        v147.ExtentsOffset = Vector3.new(0, 1, 0)
                        v147.Size = UDim2.new(1, 200, 1, 30)
                        v147.Adornee = vu146.Character.Head
                        v147.AlwaysOnTop = true

                        local v148 = Instance.new('TextLabel', v147)

                        v148.Font = 'Code'
                        v148.FontSize = 'Size14'
                        v148.TextWrapped = true
                        v148.Text = vu146.Name .. ' \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu146.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        v148.Size = UDim2.new(1, 0, 1, 0)
                        v148.TextYAlignment = 'Top'
                        v148.BackgroundTransparency = 1
                        v148.TextStrokeTransparency = 0.5

                        if vu146.Team ~= game.Players.LocalPlayer.Team then
                            v148.TextColor3 = Color3.new(0, 134, 139)
                        else
                            v148.TextColor3 = Color3.new(0, 134, 139)
                        end
                    end
                elseif vu146.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    vu146.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateDevilChams()
    local v149, v150, v151 = pairs(game.Workspace:GetChildren())

    while true do
        local vu152

        v151, vu152 = v149(v150, v151)

        if v151 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if vu152:FindFirstChild('Handle') then
                    if vu152.Handle:FindFirstChild('NameEsp' .. Number) then
                        vu152.Handle['NameEsp' .. Number].TextLabel.Text = vu152.Name .. '   \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu152.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local v153 = Instance.new('BillboardGui', vu152.Handle)

                        v153.Name = 'NameEsp' .. Number
                        v153.ExtentsOffset = Vector3.new(0, 1, 0)
                        v153.Size = UDim2.new(1, 200, 1, 30)
                        v153.Adornee = vu152.Handle
                        v153.AlwaysOnTop = true

                        local v154 = Instance.new('TextLabel', v153)

                        v154.Font = Enum.Font.GothamSemibold
                        v154.FontSize = 'Size14'
                        v154.TextWrapped = true
                        v154.Size = UDim2.new(1, 0, 1, 0)
                        v154.TextYAlignment = 'Top'
                        v154.BackgroundTransparency = 1
                        v154.TextStrokeTransparency = 0.5
                        v154.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v154.Text = vu152.Name .. ' \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu152.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif vu152.Handle:FindFirstChild('NameEsp' .. Number) then
                vu152.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateIslandMirageESP()
    local v155, v156, v157 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local vu158

        v157, vu158 = v155(v156, v157)

        if v157 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if vu158.Name == 'Mirage Island' then
                    if vu158:FindFirstChild('NameEsp') then
                        vu158.NameEsp.TextLabel.Text = vu158.Name .. '   \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu158.Position).Magnitude / 3) .. ' M'
                    else
                        local v159 = Instance.new('BillboardGui', vu158)

                        v159.Name = 'NameEsp'
                        v159.ExtentsOffset = Vector3.new(0, 1, 0)
                        v159.Size = UDim2.new(1, 200, 1, 30)
                        v159.Adornee = vu158
                        v159.AlwaysOnTop = true

                        local v160 = Instance.new('TextLabel', v159)

                        v160.Font = 'Code'
                        v160.FontSize = 'Size14'
                        v160.TextWrapped = true
                        v160.Size = UDim2.new(1, 0, 1, 0)
                        v160.TextYAlignment = 'Top'
                        v160.BackgroundTransparency = 1
                        v160.TextStrokeTransparency = 0.5
                        v160.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
            elseif vu158:FindFirstChild('NameEsp') then
                vu158:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateIslandESPKitsune()
    local v161, v162, v163 = pairs(game:GetService('Workspace').Map.KitsuneIsland.ShrineActive:GetChildren())

    while true do
        local vu164

        v163, vu164 = v161(v162, v163)

        if v163 == nil then
            break
        end

        pcall(function()
            if IslandESP then
                if vu164.Name ~= 'NeonShrinePart' then
                    if vu164:FindFirstChild('IslandESP') then
                        vu164.IslandESP.TextLabel.Text = 'Kitsune Island'
                    else
                        local v165 = Instance.new('BillboardGui', vu164)

                        v165.Name = 'IslandESP'
                        v165.ExtentsOffset = Vector3.new(0, 1, 0)
                        v165.Size = UDim2.new(1, 200, 1, 30)
                        v165.Adornee = vu164
                        v165.AlwaysOnTop = true

                        local v166 = Instance.new('TextLabel', v165)

                        v166.Font = 'Code'
                        v166.FontSize = 'Size14'
                        v166.TextWrapped = true
                        v166.Size = UDim2.new(1, 0, 1, 0)
                        v166.TextYAlignment = 'Top'
                        v166.BackgroundTransparency = 1
                        v166.TextStrokeTransparency = 0.5
                        v166.TextColor3 = Color3.fromRGB(80, 245, 245)
                        v166.Text = 'Kitsune Island'
                    end
                end
            elseif vu164:FindFirstChild('IslandESP') then
                vu164:FindFirstChild('IslandESP'):Destroy()
            end
        end)
    end
end
function InfAb()
    if InfAbility then
        if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
            local v167 = Instance.new('ParticleEmitter')

            v167.Acceleration = Vector3.new(0, 0, 0)
            v167.Archivable = true
            v167.Drag = 20
            v167.EmissionDirection = Enum.NormalId.Top
            v167.Enabled = true
            v167.Lifetime = NumberRange.new(0, 0)
            v167.LightInfluence = 0
            v167.LockedToPart = true
            v167.Name = 'Agility'
            v167.Rate = 500

            local v168 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }

            v167.Size = NumberSequence.new(v168)
            v167.RotSpeed = NumberRange.new(9999, 99999)
            v167.Rotation = NumberRange.new(0, 0)
            v167.Speed = NumberRange.new(30, 30)
            v167.SpreadAngle = Vector2.new(0, 0, 0, 0)
            v167.Texture = ''
            v167.VelocityInheritance = 0
            v167.ZOffset = 2
            v167.Transparency = NumberSequence.new(0)
            v167.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            v167.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        end
    elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility'):Destroy()
    end
end

local vu169 = game:GetService('Players').LocalPlayer
local vu170 = vu169.Character.Energy.Value

function infinitestam()
    vu169.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            vu169.Character.Energy.Value = vu170
        end
    end)
end

spawn(function()
    pcall(function()
        while wait(0.1) do
            if InfiniteEnergy then
                wait(0.1)

                vu170 = vu169.Character.Energy.Value

                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        local v171 = next
        local v172, v173 = getgc()

        while true do
            local v174

            v173, v174 = v171(v172, v173)

            if v173 == nil then
                break
            end
            if game:GetService('Players').LocalPlayer.Character.Dodge and typeof(v174) == 'function' and getfenv(v174).script == game:GetService('Players').LocalPlayer.Character.Dodge then
                local v175 = next
                local v176, v177 = getupvalues(v174)

                while true do
                    local v178

                    v177, v178 = v175(v176, v177)

                    if v177 == nil then
                        break
                    end
                    if tostring(v178) == '0.1' then
                        local v179 = v177

                        repeat
                            wait(0.1)
                            setupvalue(v174, v177, 0)
                        until not nododgecool

                        v177 = v179
                    end
                end
            end
        end
    end
end

local vu180 = 'indq9pdnq0'
local vu181 = 'Fpjq90pdfhipqdm'
local vu182 = nil
local vu183 = nil

RunService = game:GetService('RunService')
speaker = game.Players.LocalPlayer
vehicleflyspeed = 5

function getRoot(p184)
    return p184:FindFirstChild('HumanoidRootPart') or (p184:FindFirstChild('Torso') or p184:FindFirstChild('UpperTorso'))
end

local function vu187(pu185)
    pcall(function()
        FLYING = false

        local v186 = getRoot(pu185.Character)

        v186:FindFirstChild(vu180):Destroy()
        v186:FindFirstChild(vu181):Destroy()

        pu185.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false

        vu182:Disconnect()
        vu183:Disconnect()
    end)
end
local function vu204(pu188, pu189)
    vu187(pu188)

    FLYING = true

    local vu190 = getRoot(pu188.Character)
    local vu191 = workspace.CurrentCamera
    local vu192 = Vector3.new()
    local vu193 = Vector3.new(0, 0, 0)
    local vu194 = Vector3.new(9000000000, 9000000000, 9000000000)
    local vu195 = require(pu188.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild('ControlModule'))
    local v196 = Instance.new('BodyVelocity')

    v196.Name = vu180
    v196.Parent = vu190
    v196.MaxForce = vu193
    v196.Velocity = vu193

    local v197 = Instance.new('BodyGyro')

    v197.Name = vu181
    v197.Parent = vu190
    v197.MaxTorque = vu194
    v197.P = 1000
    v197.D = 50
    vu182 = pu188.CharacterAdded:Connect(function()
        local v198 = Instance.new('BodyVelocity')

        v198.Name = vu180
        v198.Parent = vu190
        v198.MaxForce = vu193
        v198.Velocity = vu193

        local v199 = Instance.new('BodyGyro')

        v199.Name = vu181
        v199.Parent = vu190
        v199.MaxTorque = vu194
        v199.P = 1000
        v199.D = 50
    end)
    vu183 = RunService.RenderStepped:Connect(function()
        vu190 = getRoot(pu188.Character)
        vu191 = workspace.CurrentCamera

        if pu188.Character:FindFirstChildWhichIsA('Humanoid') and vu190 and (vu190:FindFirstChild(vu180) and vu190:FindFirstChild(vu181)) then
            local v200 = pu188.Character:FindFirstChildWhichIsA('Humanoid')
            local v201 = vu190:FindFirstChild(vu180)
            local v202 = vu190:FindFirstChild(vu181)

            v201.MaxForce = vu194
            v202.MaxTorque = vu194

            if not pu189 then
                v200.PlatformStand = true
            end

            v202.CFrame = vu191.CoordinateFrame
            v201.Velocity = vu192

            local v203 = vu195:GetMoveVector()

            if v203.X > 0 then
                v201.Velocity = v201.Velocity + vu191.CFrame.RightVector * (v203.X * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v203.X < 0 then
                v201.Velocity = v201.Velocity + vu191.CFrame.RightVector * (v203.X * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v203.Z > 0 then
                v201.Velocity = v201.Velocity - vu191.CFrame.LookVector * (v203.Z * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v203.Z < 0 then
                v201.Velocity = v201.Velocity - vu191.CFrame.LookVector * (v203.Z * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v201.Velocity.Magnitude > 350 then
                v201.Velocity = v201.Velocity.Unit * 350
            end
        end
    end)
end

function EquipWeapon(p205)
    if not Nill and game.Players.LocalPlayer.Backpack:FindFirstChild(p205) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(p205)

        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
function GetWeaponInventory(p206)
    local v207, v208, v209 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v210

        v209, v210 = v207(v208, v209)

        if v209 == nil then
            break
        end
        if type(v210) == 'table' and (v210.Type == 'Sword' and v210.Name == p206) then
            return true
        end
    end

    return false
end
function GetMaterial(p211)
    local v212, v213, v214 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v215

        v214, v215 = v212(v213, v214)

        if v214 == nil then
            break
        end
        if type(v215) == 'table' and (v215.Type == 'Material' and v215.Name == p211) then
            return v215.Count
        end
    end

    return 0
end

local vu216 = false

function WaitHRP(p217)
    if p217 then
        return p217.Character:WaitForChild('HumanoidRootPart', 9)
    end
end
function CheckNearestTeleporter(p218)
    local v219 = p218.Position
    local v220 = math.huge
    local v221 = nil
    local v222 = game.PlaceId
    local v223 = {}
    local v224

    if v222 == 2753915549 then
        v224 = {
            Sky3 = Vector3.new(-7894, 5547, -380),
            Sky3Exit = Vector3.new(-4607, 874, -1667),
            UnderWater = Vector3.new(61163, 11, 1819),
            UnderwaterExit = Vector3.new(4050, -1, -1814),
        }
    elseif v222 == 4442272183 then
        v224 = {
            ['Swan Mansion'] = Vector3.new(-390, 332, 673),
            ['Swan Room'] = Vector3.new(2285, 15, 905),
            ['Cursed Ship'] = Vector3.new(923, 126, 32852),
            ['Zombie Island'] = Vector3.new(-6509, 83, -133),
        }
    else
        v224 = v222 == 7449423635 and {
            ['Floating Turtle'] = Vector3.new(-12462, 375, -7552),
            ['Hydra Island'] = Vector3.new(5662, 1013, -335),
            Mansion = Vector3.new(-12462, 375, -7552),
            Castle = Vector3.new(-5036, 315, -3179),
            ['Beautiful Pirate'] = Vector3.new(5319, 23, -93),
            ['Beautiful Room'] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-8, -1.99111154e-13, -2.14762768e-8, 1, -3.0510602e-8, 1.98455903e-13, 3.0510602e-8, 1),
            ['Temple of Time'] = Vector3.new(28286, 14897, 103),
        } or v223
    end

    local v225, v226, v227 = pairs(v224)

    while true do
        local v228

        v227, v228 = v225(v226, v227)

        if v227 == nil then
            break
        end

        local v229 = (v228 - v219).Magnitude

        if v229 < v220 then
            v221 = v228
            v220 = v229
        end
    end

    if v220 <= (v219 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        return v221
    end
end
function requestEntrance(p230)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('requestEntrance', p230)

    local v231 = game.Players.LocalPlayer.Character.HumanoidRootPart

    v231.CFrame = v231.CFrame + Vector3.new(0, 50, 0)

    task.wait(0.5)
end
function topos(pu232)
    local vu233 = game.Players.LocalPlayer

    if vu233.Character and vu233.Character.Humanoid.Health > 0 and vu233.Character:FindFirstChild('HumanoidRootPart') then
        if not pu232 then
            return
        end

        local v234 = (pu232.Position - vu233.Character.HumanoidRootPart.Position).Magnitude
        local v235 = CheckNearestTeleporter(pu232)
        local _ = getgenv().TweenSpeed

        if v235 then
            requestEntrance(v235)
            task.wait(0.2)

            v234 = (pu232.Position - vu233.Character.HumanoidRootPart.Position).Magnitude
        end
        if not vu233.Character:FindFirstChild('PartTele') then
            local vu236 = Instance.new('Part', vu233.Character)

            vu236.Size = Vector3.new(10, 1, 10)
            vu236.Name = 'PartTele'
            vu236.Anchored = true
            vu236.Transparency = 1
            vu236.CanCollide = false
            vu236.CFrame = WaitHRP(vu233).CFrame

            local v237 = vu236

            vu236.GetPropertyChangedSignal(v237, 'CFrame'):Connect(function()
                if vu216 then
                    task.wait()

                    if vu233.Character and vu233.Character:FindFirstChild('HumanoidRootPart') then
                        local v238 = vu236.CFrame

                        WaitHRP(vu233).CFrame = CFrame.new(v238.Position.X, pu232.Position.Y, v238.Position.Z)
                    end
                end
            end)
        end

        vu216 = true

        local v239 = getgenv().TweenSpeed

        if v234 <= 300 then
            v239 = v239 * 4
        end

        CFrame.new(pu232.Position.X, pu232.Position.Y, pu232.Position.Z)

        local v240 = game:GetService('TweenService'):Create(vu233.Character.PartTele, TweenInfo.new(v234 / v239, Enum.EasingStyle.Linear), {CFrame = pu232})

        v240:Play()
        v240.Completed:Connect(function(p241)
            if p241 == Enum.PlaybackState.Completed then
                if vu233.Character:FindFirstChild('PartTele') then
                    vu233.Character.PartTele:Destroy()
                end

                vu216 = false
            end
        end)
    end
end

getgenv().TweenSpeed = 350

local vu242 = game.Players.LocalPlayer
local _ = vu242.Character.HumanoidRootPart

Players = game.Players
recentlySpawn = 0

function dist(p243, pu244, pu245)
    local vu246 = Vector3.new(p243.X, pu245 and 0 or (p243.Y or 0), p243.Z)
    local v248, v249 = pcall(function()
        if not pu244 then
            while true do
                local v247 = vu242.Character

                if v247 then
                    v247 = vu242.Character:FindFirstChild('HumanoidRootPart')
                end
                if v247 and v247.Position then
                    break
                end

                wait(0.5)
            end

            pu244 = v247.Position
        end

        return (vu246 - Vector3.new(pu244.X, not pu245 and pu244.Y or 0, pu244.Z)).magnitude
    end)

    if v248 then
        return v249
    end

    warn('Dist', v249)

    return nil
end
function InArea(p250, p251)
    local v252 = nil
    local v253 = 0

    if p251 and dist(p250, p251.Position, true) <= p251.Mesh.Scale.X / 2 + 500 then
        return p251
    end

    local v254, v255, v256 = pairs(workspace._WorldOrigin.Locations:GetChildren())

    while true do
        local v257

        v256, v257 = v254(v255, v256)

        if v256 == nil then
            break
        end
        if dist(p250, v257.Position, true) <= v257.Mesh.Scale.X / 2 + 500 and v253 < v257.Mesh.Scale.X then
            v253 = v257.Mesh.Scale.X
            v252 = v257
        end
    end

    return v252
end
function TP2(...)
    local vu259 = (function(p258)
        if typeof(p258) ~= 'Vector3' then
            if typeof(p258) ~= 'CFrame' then
                return nil
            else
                return p258
            end
        else
            return CFrame.new(p258)
        end
    end)(...)

    if vu242.Character:FindFirstChild('HumanoidRootPart') then
        if not tweenPause then
            local vu260 = nil
            local v275, v276 = pcall(function()
                local v261 = CheckNearestTeleporter(vu259)

                if v261 then
                    requestEntrance(v261)
                end
                if not tweenActive or (not lastTweenTarget or dist(vu259, lastTweenTarget) >= 10 and dist(lastTweenTarget) < 10) then
                    tweenid = (tweenid or 0) + 1
                    lastTweenTarget = vu259
                    vu260 = tweenid
                    Util = require(game:GetService('ReplicatedStorage').Util)

                    if Util.FPSTracker.FPS > 60 then
                        setfpscap(200)
                    end

                    task.spawn(pcall, function()
                        lastPos = {
                            tick(),
                            vu259,
                        }

                        local vu262 = dist(vu242.Character.HumanoidRootPart.Position, vu259, true)
                        local vu263 = vu262

                        vu242.Character.Humanoid:SetStateEnabled(13, false)

                        if getgenv().TweenPosY then
                            if vu262 > 60 then
                                vu242.Character.HumanoidRootPart.CFrame = CFrame.new(vu242.Character.HumanoidRootPart.Position.X, vu242.Character.HumanoidRootPart.Position.Y + _G.SelectPosYHight, vu242.Character.HumanoidRootPart.Position.Z)
                            else
                                vu242.Character.HumanoidRootPart.CFrame = CFrame.new(vu259.Position.X, vu259.Position.Y, vu259.Position.Z)
                            end
                        else
                            vu242.Character.HumanoidRootPart.CFrame = CFrame.new(vu242.Character.HumanoidRootPart.CFrame.X, vu259.Y, vu242.Character.HumanoidRootPart.CFrame.Z)
                        end

                        while vu242.Character:FindFirstChild('HumanoidRootPart') and (75 < vu262 and (vu260 == tweenid and vu242.Character.Humanoid.Health > 0)) do
                            local v264 = 58 / math.clamp(Util.FPSTracker.FPS, 0, 60)
                            local v265 = 5.5 * v264
                            local v266 = vu242.Character.HumanoidRootPart.Position
                            local v267 = Vector3.new(vu259.X, 0, vu259.Z) - Vector3.new(v266.X, 0, v266.Z)
                            local v268 = (v267.X < 0 and -1 or 1) * v265
                            local v269 = (v267.Z < 0 and -1 or 1) * v265

                            if math.abs(v267.X) < v268 then
                                v268 = v267.X or v268
                            end
                            if math.abs(v267.Z) < v269 then
                                v269 = v267.Z or v269
                            end

                            task.spawn(function()
                                vu262 = dist(vu242.Character.HumanoidRootPart.Position, vu259, true)

                                if vu262 > vu263 + 10 then
                                    tweenid = -1
                                    tweenPause = false
                                    vu242.Character.HumanoidRootPart.Anchored = true

                                    task.wait()

                                    tweenPause = false
                                    vu242.Character.HumanoidRootPart.Anchored = false
                                end

                                vu263 = vu262
                            end)

                            local v270 = vu242.Character.HumanoidRootPart
                            local v271 = vu242.Character.HumanoidRootPart.CFrame
                            local v272 = Vector3.new
                            local v273

                            if math.abs(v269) >= 5 * v264 or not v268 then
                                v273 = v268 / 1.5
                            else
                                v273 = v268
                            end

                            local v274 = 0

                            if math.abs(v268) >= 5 * v264 or not v269 then
                                v269 = v269 / 1.5
                            end

                            v270.CFrame = v271 + v272(v273, v274, v269)
                            tweenActive = true

                            task.wait()
                        end

                        vu242.Character.Humanoid:SetStateEnabled(13, true)

                        tweenActive = false

                        if vu262 <= 100 and vu260 == tweenid then
                            vu242.Character.HumanoidRootPart.CFrame = vu259
                        end
                    end)
                end
            end)

            if not v275 then
                warn('TP :', v276)
            end

            return vu260
        end
    end
end
function stopTeleport()
    vu216 = false

    local v277 = game.Players.LocalPlayer

    if v277.Character:FindFirstChild('PartTele') then
        v277.Character.PartTele:Destroy()
    end
end

spawn(function()
    while task.wait() do
        if not vu216 then
            stopTeleport()
        end
    end
end)
spawn(function()
    local vu278 = game.Players.LocalPlayer

    while task.wait() do
        pcall(function()
            if vu278.Character:FindFirstChild('PartTele') and (vu278.Character.HumanoidRootPart.Position - vu278.Character.PartTele.Position).Magnitude >= 100 then
                stopTeleport()
            end
        end)
    end
end)

local vu279 = game.Players.LocalPlayer

local function v281(p280)
    p280:WaitForChild('Humanoid').Died:Connect(function()
        stopTeleport()
    end)
end

vu279.CharacterAdded:Connect(v281)

if vu279.Character then
    v281(vu279.Character)
end

function TPB(p282, _)
    local v283 = {}
    local v284 = game:GetService('Workspace').Boats[_G.SelectedBoat]

    if v284 then
        v284 = v284.VehicleSeat
    end
    if v284 then
        if (v284.Position - p282.Position).Magnitude <= 25 then
            p282 = CFrame.new(p282.Position.X, 60, p282.Position.Z)
            v284.CFrame = p282

            if v284:FindFirstChild('Root') then
                v284.Root:Destroy()
                wait()
                TweenBoat(v284.CFrame)
                wait()
            end
        end
        if not v284:FindFirstChild('Root') then
            local v285 = Instance.new('Part', v284)

            v285.Size = Vector3.new(1, 0.5, 1)
            v285.Name = 'Root'
            v285.Anchored = true
            v285.Transparency = 1
            v285.CanCollide = false
            v285.CFrame = v284.CFrame
        end

        local vu286 = v284:FindFirstChild('Root')

        if vu286 then
            local v287 = (v284.Position - p282.Position).Magnitude
            local vu288 = game:GetService('TweenService'):Create(vu286, TweenInfo.new(v287 / getgenv().SpeedBoat, Enum.EasingStyle.Linear), {
                CFrame = CFrame.new(p282.Position.X, 60, p282.Position.Z),
            })
            local v289 = vu288

            vu288.Play(v289)

            function v283.Stop(_)
                if vu288 then
                    vu288:Cancel()
                end
                if vu286 then
                    vu286:Destroy()
                end
            end

            return v283
        end
    end
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            local v290 = game:GetService('Workspace').Boats[_G.SelectedBoat]

            if v290 then
                v290 = v290.VehicleSeat
            end
            if v290 then
                v290.CFrame = CFrame.new(v290.Root.CFrame.Position.X, getgenv().PosYBoat, v290.Root.CFrame.Position.Z)

                if (v290.Root.Position - v290.Position).Magnitude >= 1 then
                    v290.Root.CFrame = v290.CFrame
                end
            end
        end)
    end
end)

function fastpos(p291)
    local v292 = (p291.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

    game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(v292 / 1000, Enum.EasingStyle.Linear), {CFrame = p291}):Play()
end

Pos = CFrame.new(PosX, PosY, PosX)

spawn(function()
    while task.wait() do
        if _G.SpinPos then
            if Type ~= 1 then
                if Type ~= 2 then
                    if Type ~= 3 then
                        if Type == 4 then
                            Pos = CFrame.new(-19, PosY, 0)
                        end
                    else
                        Pos = CFrame.new(0, PosY, 19)
                    end
                else
                    Pos = CFrame.new(19, PosY, 0)
                end
            else
                Pos = CFrame.new(0, PosY, -19)
            end
        else
            Pos = CFrame.new(PosX, PosY, PosZ)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        Type = 1

        wait(0.2)

        Type = 2

        wait(0.2)

        Type = 3

        wait(0.2)

        Type = 4

        wait(0.2)
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if (_G.AdvanceDungeon or (_G.DoughKingRaid or (_G.DoughtBoss or (_G.TyrantSkies or (_G.KillBossTyrantSkies or (_G.FarmChest or (_G.Factory or (_G.FarmBossHallow or (_G.FarmSwanGlasses or (_G.LongSword or (_G.BlackSpikeycoat or (_G.ElectricClaw or (_G.FarmGunMastery or (_G.HolyTorch or (_G.LawRaid or (_G.FarmBoss or (_G.TwinHooks or (_G.OpenSwanDoor or (_G.Dragon_Trident or (_G.Saber or (_G.FarmFruitMastery or (_G.FarmGunMastery or (_G.TeleportIsland or (_G.EvoRace or (_G.FarmAllMsBypassType or (_G.Observationv2 or (_G.MusketeerHat or (_G.Ectoplasm or (_G.Rengoku or (_G.AutoDarkbeard or (_G.Rainbow_Haki or (_G.Observation or (_G.DarkDagger or (_G.Safe_Mode or (_G.MasteryFruit or (_G.BudySword or (_G.OderSword or (_G.AllBoss or (_G.Sharkman or (_G.Mastery_Fruit or (_G.Mastery_Gun or (_G.Dungeon or (_G.Cavender or (_G.Pole or (_G.Kill_Ply or (_G.Factory or (_G.SecondSea or (_G.TeleportPly or (_G.Bartilo or (_G.DarkBoss or (_G.GrabChest or (_G.Holy_Torch or (_G.Level or (_G.KillAfterTrials or (_G.Clip or (FarmBoss or (_G.Elitehunter or (_G.CollectBerry or (_G.ThirdSea or (_G.Bone or (_G.Train or (_G.heart or (_G.FarmMaterial or (_G.Guitar or (Auto_Quest_Soul_Guitar or (_G.Dragon_Trident or (_G.tushita or (_G.d or (_G.waden or (_G.Greybeard or (_G.pole or (_G.saw or (_G.FarmNearest or (_G.FarmChest or (_G.Carvender or (_G.TwinHook or (AutoMobAura or (_G.Tweenfruit or (_G.TeleportNPC or (_G.Leather or (_G.Wing or (_G.Umm or (_G.Makori_gay or (Radioactive or (Fish or (Gunpowder or (Dragon_Scale or (Cocoafarm or (Scrap or (MiniHee or (_G.FarmSeabaest or (Yama_Quest or (Get_Cursed or (Tushita_Quest or (_G.FarmMob or (_G.MysticIsland or (_G.FarmDungeon or (_G.RaidPirate or (_G.QuestRace or (_G.TweenMGear or (getgenv().AutoFarm or (_G.PlayerHunter or (_G.Factory or (Grab_Chest or (_G.Seabest or (_G.SeaBest or (_G.KillTial or (_G.Saber or (_G.Position_Spawn or (_G.Farmfast or (_G.Race or (_G.RaidPirate or (Open_Color_Haki or (_G.Terrorshark or (FarmShark or (_G.farmpiranya or (_G.QuestDragon or (_G.DefendVolcano or (_G.KillGolem or (_G.TpPrehistoric or (_G.TpSkullCore or (_G.Fish_Crew_Member or (_G.AppleAutoDriveBoat or (_G.bjirFishBoat or (_G.KillGhostShip or (_G.KillLeviathan or (_G.SegmentLeviathan or (_G.FrozenDimension or _G.FKitsune)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) and not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                local v293 = Instance.new('BodyVelocity')

                v293.Name = 'BodyClip'
                v293.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                v293.MaxForce = Vector3.new(100000, 100000, 100000)
                v293.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.AdvanceDungeon or (_G.DoughKingRaid or (_G.DoughtBoss or (_G.TyrantSkies or (_G.KillBossTyrantSkies or (_G.Factory or (_G.FarmBossHallow or (_G.FarmSwanGlasses or (_G.LongSword or (_G.BlackSpikeycoat or (_G.ElectricClaw or (_G.FarmGunMastery or (_G.HolyTorch or (_G.LawRaid or (_G.FarmBoss or (_G.TwinHooks or (_G.OpenSwanDoor or (_G.Dragon_Trident or (_G.Saber or (_G.NoClip or (_G.FarmFruitMastery or (_G.FarmGunMastery or (_G.TeleportIsland or (_G.EvoRace or (_G.FarmAllMsBypassType or (_G.Observationv2 or (_G.MusketeerHat or (_G.Ectoplasm or (_G.Rengoku or (_G.AutoDarkbeard or (_G.Rainbow_Haki or (_G.Observation or (_G.DarkDagger or (_G.Safe_Mode or (_G.MasteryFruit or (_G.BudySword or (_G.OderSword or (_G.AllBoss or (_G.Sharkman or (_G.Mastery_Fruit or (_G.Mastery_Gun or (_G.Dungeon or (_G.Cavender or (_G.Pole or (_G.Kill_Ply or (_G.Factory or (_G.SecondSea or (_G.TeleportPly or (_G.Bartilo or (_G.DarkBoss or (_G.GrabChest or (_G.Holy_Torch or (_G.Level or (_G.KillAfterTrials or (_G.Clip or (_G.Elitehunter or (_G.CollectBerry or (_G.ThirdSea or (_G.Bone or (_G.Train or (_G.heart or (_G.FarmMaterial or (_G.Guitar or (Auto_Quest_Soul_Guitar or (_G.Dragon_Trident or (_G.tushita or (_G.waden or (_G.pole or (_G.Greybeard or (_G.saw or (_G.FarmNearest or (_G.Carvender or (_G.TwinHook or (AutoMobAura or (_G.Tweenfruit or (_G.TeleportNPC or (_G.Kai or (_G.Leather or (_G.Wing or (_G.Umm or (_G.Makori_gay or (Radioactive or (Fish or (Gunpowder or (Dragon_Scale or (Cocoafarm or (Scrap or (MiniHee or (_G.FarmSeabaest or (Yama_Quest or (Get_Cursed or (Tushita_Quest or (_G.FarmMob or (_G.MysticIsland or (_G.FarmDungeon or (_G.RaidPirate or (_G.QuestRace or (_G.TweenMGear or (getgenv().AutoFarm or (_G.PlayerHunter or (_G.Factory or (_G.Seabest or (_G.SeaBest or (_G.KillTial or (_G.Saber or (_G.Position_Spawn or (_G.TPB or (_G.Farmfast or (_G.Race or (_G.RaidPirate or (Open_Color_Haki or (_G.Terrorshark or (_G.KillLeviathan or (_G.SegmentLeviathan or (_G.QuestDragon or (_G.DefendVolcano or (_G.KillGolem or (_G.TpPrehistoric or (_G.TpSkullCore or (FarmShark or (_G.farmpiranya or (_G.Fish_Crew_Member or (_G.AppleAutoDriveBoat or (_G.FrozenDimension or _G.FKitsune))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                local v294, v295, v296 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v297

                    v296, v297 = v294(v295, v296)

                    if v296 == nil then
                        break
                    end
                    if v297:IsA('BasePart') then
                        v297.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

function StopTween(p298)
    if not p298 then
        _G.StopTween = true

        wait()
        topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()

        if game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
        end

        _G.StopTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end

spawn(function()
    pcall(function()
        while task.wait() do
            local v299, v300, v301 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

            while true do
                local v302

                v301, v302 = v299(v300, v301)

                if v301 == nil then
                    break
                end
                if v302:IsA('Tool') and v302:FindFirstChild('RemoteFunctionShoot') then
                    SelectWeaponGun = v302.Name
                end
            end
        end
    end)
end)

local vu303 = v25:CreateWindow({
    Title = 'Dark Hub',
    SubTitle = 'im 2k36',
    TabWidth = 140,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false,
    Theme = 'Xeter',
    MinimizeKey = Enum.KeyCode.End,
})
local v304 = vu303
local v305 = vu303.T(v304, {
    Title = 'Tab Status',
    Icon = 'rbxassetid://10734984606',
})
local v306 = vu303
local v307 = vu303.T(v306, {
    Title = 'Tab General',
    Icon = 'rbxassetid://10723407389',
})
local v308 = vu303
local v309 = vu303.T(v308, {
    Title = 'Tab Setting Other',
    Icon = 'rbxassetid://10734950309',
})
local v310 = vu303
local v311 = vu303.T(v310, {
    Title = 'Tab Quest & Item',
    Icon = 'rbxassetid://10734975692',
})
local v312 = vu303
local v313 = vu303.T(v312, {
    Title = 'Tab Race & Mirage',
    Icon = 'rbxassetid://10747372167',
})
local v314 = vu303
local v315 = vu303.T(v314, {
    Title = 'Tab Sea Event',
    Icon = 'rbxassetid://10709761530',
})
local v316 = vu303
local v317 = vu303.T(v316, {
    Title = 'Tab Volcano Event',
    Icon = 'rbxassetid://10709783577',
})
local v318 = vu303
local v319 = vu303.T(v318, {
    Title = 'Tab local Player',
    Icon = 'rbxassetid://10747373176',
})
local v320 = vu303
local v321 = vu303.T(v320, {
    Title = 'Tab Visual',
    Icon = 'rbxassetid://10723346959',
})
local v322 = vu303
local v323 = vu303.T(v322, {
    Title = 'Tab Raid',
    Icon = 'rbxassetid://10723345749',
})
local v324 = vu303
local v325 = vu303.T(v324, {
    Title = 'Tab Teleport',
    Icon = 'rbxassetid://10723434557',
})
local v326 = vu303
local v327 = vu303.T(v326, {
    Title = 'Tab Shop',
    Icon = 'rbxassetid://10734952479',
})
local v328 = vu303
local v329 = vu303.T(v328, {
    Title = 'Tab Devil Fruit',
    Icon = 'rbxassetid://10709761889',
})
local v330 = vu303
local v331 = vu303.T(v330, {
    Title = 'Tab Miscellaneous',
    Icon = 'rbxassetid://10709782582',
})
local v332 = Instance.new('ScreenGui')

ToggleUIButton = Instance.new('TextButton')

local v333 = Instance.new('UICorner')

Instance.new('Frame')

v332.Name = 'Xeter'
v332.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
v332.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ToggleUIButton.Name = 'ToggleUIButton'
ToggleUIButton.Parent = v332
ToggleUIButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleUIButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ToggleUIButton.Size = UDim2.new(0, 53, 0, 53)
ToggleUIButton.Font = Enum.Font.SourceSansBold
ToggleUIButton.Text = 'OFF'
ToggleUIButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleUIButton.TextSize = 21
ToggleUIButton.TextWrapped = true
ToggleUIButton.Visible = true
ToggleUIButton.Draggable = true
v333.Parent = ToggleUIButton
ToggleState = true

ToggleUIButton.MouseButton1Click:Connect(function()
    toggleState = not toggleState
    ToggleUIButton.Text = toggleState and 'ON' or 'OFF'

    vu303:Minimize()
end)
v305:AddSection('Join Discord')
v305:AddButton({
    Title = 'Discord | Dark Hub',
    Description = 'Copy Link Discord',
    Callback = function()
        setclipboard('https://discord.gg/Dark hub')
    end,
})
v305:AddSection('Status Player')

local vu334 = v305:AddParagraph({
    Title = 'Executer Time',
    Content = '',
})

function UpdateTime()
    local v335 = math.floor(workspace.DistributedGameTime + 0.5)

    vu334:SetDesc('[Server Time]: Hours: ' .. math.floor(v335 / 3600) % 24 .. ' Min: ' .. math.floor(v335 / 60) % 60 .. ' Sec: ' .. math.floor(v335 / 1) % 60)
end

spawn(function()
    while task.wait() do
        pcall(function()
            UpdateTime()
        end)
    end
end)

local vu336 = v305:AddParagraph({
    Title = 'Race',
    Content = '',
})
local vu337 = v305:AddParagraph({
    Title = 'Beli',
    Content = '',
})
local vu338 = v305:AddParagraph({
    Title = 'Fragments',
    Content = '',
})
local vu339 = v305:AddParagraph({
    Title = 'Bounty',
    Content = '',
})

spawn(function()
    while task.wait(1) do
        pcall(function()
            vu336:SetDesc('Race: ' .. game:GetService('Players').LocalPlayer.Data.Race.Value)
            vu337:SetDesc('Beli: ' .. game:GetService('Players').LocalPlayer.Data.Beli.Value)
            vu339:SetDesc('Bounty / Honor: ' .. game:GetService('Players').LocalPlayer.leaderstats['Bounty/Honor'].Value)
            vu338:SetDesc('Fragments: ' .. game:GetService('Players').LocalPlayer.Data.Fragments.Value)
        end)
    end
end)

local vu340 = v305:AddParagraph({
    Title = 'Devil Fruit',
    Content = '',
})

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                vu340:SetDesc('Devil Fruit: ' .. game:GetService('Players').LocalPlayer.Data.DevilFruit.Value)
            else
                vu340:SetDesc('Not Have Devil Fruit')
            end
        end)
    end
end)
v307:AddSection('Farm Mode')

_G.SelectWeapon = 'Melee'
Dropdown = v307:AddDropdown('Dropdown', {
    Title = 'Select Weapon',
    Values = {
        'Melee',
        'Sword',
        'Fruit',
        'Gun',
    },
    Multi = false,
})

Dropdown:SetValue(_G.SelectWeapon)
Dropdown:OnChanged(function(p341)
    _G.SelectWeapon = p341
end)

FireCooldown = 'Xeter Attack'
Dropdown = v307:AddDropdown('Dropdown', {
    Title = 'Fast Attack Delay',
    Values = {
        'Normal Attack',
        'Fast Attack',
        'Super Attack',
        'Xeter Attack',
    },
    Multi = false,
})

Dropdown:SetValue(FireCooldown)
Dropdown:OnChanged(function(p342)
    FireCooldown = p342
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.SelectWeapon ~= 'Melee' then
                if _G.SelectWeapon ~= 'Sword' then
                    if _G.SelectWeapon ~= 'Gun' then
                        if _G.SelectWeapon == 'Fruit' then
                            local v343, v344, v345 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                            while true do
                                local v346

                                v345, v346 = v343(v344, v345)

                                if v345 == nil then
                                    break
                                end
                                if v346.ToolTip == 'Blox Fruit' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v346.Name)) then
                                    _G.SelectWeapon = v346.Name
                                end
                            end
                        end
                    else
                        local v347, v348, v349 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v350

                            v349, v350 = v347(v348, v349)

                            if v349 == nil then
                                break
                            end
                            if v350.ToolTip == 'Gun' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v350.Name)) then
                                _G.SelectWeapon = v350.Name
                            end
                        end
                    end
                else
                    local v351, v352, v353 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v354

                        v353, v354 = v351(v352, v353)

                        if v353 == nil then
                            break
                        end
                        if v354.ToolTip == 'Sword' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v354.Name)) then
                            _G.SelectWeapon = v354.Name
                        end
                    end
                end
            else
                local v355, v356, v357 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v358

                    v357, v358 = v355(v356, v357)

                    if v357 == nil then
                        break
                    end
                    if v358.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v358.Name)) then
                        _G.SelectWeapon = v358.Name
                    end
                end
            end
        end)
    end
end)
v307:AddSection('Farming')

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Farm Level',
    Default = false,
})

Toggle:OnChanged(function(p359)
    _G.Level = p359

    StopTween(_G.Farm)
end)

_G.Auto_CFrame = true
PosLv = CFrame.new(0, 25, 0)

local vu360 = 1

spawn(function()
    while wait() do
        local _ = game.Players.LocalPlayer.Data.Level.Value
        local vu361 = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest

        pcall(function()
            if not _G.Level then
                return
            end
            if vu361.Visible ~= true then
                topos(vu106()[2])

                if (vu106()[2].Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                    StartMagnetLv = false

                    wait(0.2)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', vu106()[4], vu106()[1])
                    wait(0.2)
                    topos(vu106()[7][1] * PosLv)
                end
            end

            local v362 = vu361.Container.QuestTitle.Title.Text

            if not string.find(v362, vu106()[6]) then
                StartMagnetLv = false

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                wait(0.5)
                topos(vu106()[2])

                if (vu106()[2].Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                    wait(0.2)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', vu106()[4], vu106()[1])
                    wait(0.2)
                    topos(vu106()[7][1] * PosLv)
                end
            end
            if not game:GetService('Workspace').Enemies:FindFirstChild(vu106()[3]) then
                if _G.Auto_CFrame then
                    topos(vu106()[7][vu360] * PosLv)

                    if (vu106()[7][vu360].Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                        if vu360 == nil or vu360 == '' then
                            vu360 = 1
                        elseif vu360 >= #vu106()[7] then
                            vu360 = 1
                        end

                        vu360 = vu360 + 1

                        wait(0.5)
                    end
                end
            end

            local v363, v364, v365 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            task.wait()

            if _G.Auto_CFrame then
                vu360 = 1
            end

            PosMonLv = v366.HumanoidRootPart.CFrame
            v366.HumanoidRootPart.CanCollide = false
            v366.Humanoid.WalkSpeed = 0
            v366.Head.CanCollide = false
            StartMagnetLv = true

            EquipWeapon(_G.SelectWeapon)

            v366.HumanoidRootPart.Transparency = 1

            TP2(v366.HumanoidRootPart.CFrame * Pos)

            if _G.Level and (v366.Parent and (v366.Humanoid.Health > 0 and (vu361.Visible ~= false and v366:FindFirstChild('HumanoidRootPart')))) then
            end

            local v366

            v365, v366 = v363(v364, v365)

            if v365 == nil then
            end
            if v366.Name ~= vu106()[3] or (not v366:FindFirstChild('Humanoid') or (not v366:FindFirstChild('HumanoidRootPart') or v366.Humanoid.Health <= 0)) then
            else
            end
        end)
    end
end)

if World1 then
    Toggle = v307:AddToggle('Toggle', {
        Title = 'Auto Farm Skip (Farm Lv.1-100)',
        Default = false,
    })

    Toggle:OnChanged(function(p367)
        _G.Farmfast = p367
        _G.Stats_Kaitun = p367

        StopTween(_G.Farmfast)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Farmfast and World1 then
                    local v368 = game.Players.LocalPlayer.Data.Level.Value

                    if v368 >= 1 then
                        _G.Level = false
                        _G.Farmfast = true
                    end
                    if v368 >= 100 then
                        _G.Level = true
                        _G.Farmfast = false
                    end
                    if v368 >= 1 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))

                        local v369, v370, v371 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v372

                            v371, v372 = v369(v370, v371)

                            if v371 == nil then
                                break
                            end
                            if v372.Name == 'Shanda' and (v372:FindFirstChild('Humanoid') and (v372:FindFirstChild('HumanoidRootPart') and v372.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v372.HumanoidRootPart.CanCollide = false
                                    v372.Humanoid.WalkSpeed = 0
                                    StartMagnet = true
                                    _G.PosMon = v372.HumanoidRootPart.CFrame

                                    TP2(v372.HumanoidRootPart.CFrame * Pos)
                                until not _G.Farmfast or (not v372.Parent or v372.Humanoid.Health <= 0)

                                StartMagnet = false

                                topos(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Shanda') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Shanda').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end
            end
        end)
    end)
end

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Kaitun',
    Default = false,
})

Toggle:OnChanged(function(p373)
    _G.Level = p373
    _G.Stats_Kaitun = p373
    _G.Superhuman = p373
    _G.SecondSea = p373
    _G.ThirdSea = p373
    _G.BuyLegendarySword = p373
    _G.StoreFruit = p373
    _G.BuyAllAib = p373
    _G.BuyAllSword = p373

    StopTween(_G.Farm)
end)
spawn(function()
    while wait() do
        if _G.BuyAllSword then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')

                if _G.BuyHop then
                    wait(10)
                    Hop()
                end
            end)
        end
        if _G.BuyAllAib then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')

                if _G.HopBuy then
                    wait(10)
                    Hop()
                end
            end)
        end
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Farm Nearest',
    Default = false,
})

Toggle:OnChanged(function(p374)
    _G.FarmNearest = p374

    StopTween(_G.FarmNearest)
end)
spawn(function()
    while wait() do
        if _G.FarmNearest then
            local v375, v376, v377 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v378

                v377, v378 = v375(v376, v377)

                if v377 == nil then
                    break
                end
                if v378.Name and (v378:FindFirstChild('Humanoid') and (v378:FindFirstChild('HumanoidRootPart') and ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v378.HumanoidRootPart.Position).Magnitude <= 2000 and v378.Humanoid.Health > 0))) then
                    repeat
                        wait()
                        EquipWeapon(_G.SelectWeapon)
                        TP2(v378.HumanoidRootPart.CFrame * Pos)

                        v378.HumanoidRootPart.CanCollide = false
                        StartMagnet = true
                        _G.PosMon = v378.HumanoidRootPart.CFrame
                    until not _G.FarmNearest or (not v378.Parent or v378.Humanoid.Health <= 0)

                    StartMagnet = false
                end
            end
        end
    end
end)
v307:AddSection('Berry')

Toggle = v307:AddToggle('Toggle', {
    Title = 'Collect Berries',
    Default = false,
})

Toggle:OnChanged(function(p379)
    _G.CollectBerry = p379

    StopTween(_G.CollectBerry)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Collect Berries Hop',
    Default = false,
})

Toggle:OnChanged(function(p380)
    _G.CollectBerryHop = p380
end)
spawn(function()
    while wait() do
        if _G.CollectBerry then
            local v381 = game:GetService('Players').LocalPlayer
            local v382 = (v381.Character or v381.CharacterAdded:Wait()):GetPivot().Position
            local v383 = game:GetService('CollectionService'):GetTagged('BerryBush')
            local v384 = math.huge
            local v385 = nil

            for v386 = 1, #v383 do
                local v387 = v383[v386]
                local v388, v389, v390 = pairs(v387:GetAttributes())

                while true do
                    local v391

                    v390, v391 = v388(v389, v390)

                    if v390 == nil then
                        break
                    end

                    local v392 = (v387.Parent:GetPivot().Position - v382).Magnitude

                    if v392 < v384 then
                        v385 = v387
                        v384 = v392
                    end
                end
            end

            if v385 then
                local v393 = v385.Parent:GetPivot().Position
                local v394 = CFrame.new(v393)

                topos(v394)
            elseif _G.CollectBerryHop then
                Hop()
            end
        end
    end
end)
v307:AddSection('Misc Elite')

local vu395 = v307:AddParagraph({
    Title = 'Total Elite Hunter :',
    Content = '',
})
local vu396 = v307:AddParagraph({
    Title = 'Status:',
    Content = '',
})

spawn(function()
    while task.wait() do
        vu395:SetDesc('Total Elite Hunter : ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))))) then
                vu396:SetDesc('Status: Elite Spawn!')
            else
                vu396:SetDesc('Status: Elite Not Spawn')
            end
        end)
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Elite Hunter',
    Default = false,
})

Toggle:OnChanged(function(p397)
    _G.Elitehunter = p397

    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
    StopTween(_G.Elitehunter)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Elite Hunter Hop',
    Default = false,
})

Toggle:OnChanged(function(p398)
    _G.EliteHunterHop = p398
end)
spawn(function()
    while wait() do
        if _G.Elitehunter and World3 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                    if _G.EliteHunterHop and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter') == "I don't have anything for you right now. Come back later." then
                        hop()
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    end
                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                        local v399, v400, v401 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v402

                            v401, v402 = v399(v400, v401)

                            if v401 == nil then
                                break
                            end
                            if (v402.Name == 'Diablo' or (v402.Name == 'Deandre' or v402.Name == 'Urban')) and (v402:FindFirstChild('Humanoid') and (v402:FindFirstChild('HumanoidRootPart') and v402.Humanoid.Health > 0)) then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v402.HumanoidRootPart.CanCollide = false
                                    v402.Humanoid.WalkSpeed = 0

                                    TP2(v402.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until _G.Elitehunter == false or (v402.Humanoid.Health <= 0 or not v402.Parent)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)
v307:AddSection('Chest Farm')

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Farm Chest',
    Default = false,
})

Toggle:OnChanged(function(p403)
    _G.FarmChest = p403

    StopTween(_G.FarmChest)
end)
spawn(function()
    while wait() do
        if _G.FarmChest then
            local v404 = game:GetService('Players').LocalPlayer
            local v405 = (v404.Character or v404.CharacterAdded:Wait()):GetPivot().Position
            local v406 = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local v407 = math.huge
            local v408 = nil

            for v409 = 1, #v406 do
                local v410 = v406[v409]
                local v411 = (v410:GetPivot().Position - v405).Magnitude

                if not v410:GetAttribute('IsDisabled') then
                    if v411 < v407 then
                        v408 = v410
                        v407 = v411
                    end
                end
            end

            if v408 then
                local v412 = v408:GetPivot().Position
                local v413 = CFrame.new(v412)

                topos(v413)
            end
        end
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Farm Chest Bypass',
    Default = false,
})

Toggle:OnChanged(function(p414)
    _G.ChestBypass = p414
end)
spawn(function()
    while true do
        if not wait() then
            return
        end
        if _G.ChestBypass then
            local v415 = game:GetService('Players').LocalPlayer
            local v416 = game:GetService('CollectionService')

            if not v415.Character then
                v415.CharacterAdded:Wait()
            end

            local v417 = tick()

            while tick() - v417 < 4 do
                local v418 = v415.Character or v415.CharacterAdded:Wait()
                local v419 = v418:GetPivot().Position
                local v420 = v416:GetTagged('_ChestTagged')
                local v421 = math.huge
                local v422 = nil

                for v423 = 1, #v420 do
                    local v424 = v420[v423]
                    local v425 = (v424:GetPivot().Position - v419).Magnitude

                    if not v424:GetAttribute('IsDisabled') then
                        if v425 < v421 then
                            v422 = v424
                            v421 = v425
                        end
                    end
                end

                if not v422 then
                    break
                end

                local v426 = v422:GetPivot().Position

                v418:PivotTo(CFrame.new(v426))
                task.wait(0.2)
            end

            if v415.Character then
                v415.Character:BreakJoints()
                v415.CharacterAdded:Wait()
            end
        end
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Stop Items',
    Default = false,
})

Toggle:OnChanged(function(p427)
    _G.StopItemsChest = p427
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.StopItemsChest and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fist of Darkness')) then
                _G.ChestBypass = false

                topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
        end)
    end
end)
v307:AddSection('Pirates Raid')

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Pirates Raid',
    Default = false,
})

Toggle:OnChanged(function(p428)
    _G.RaidPirate = p428

    StopTween(_G.RaidPirate)
end)
spawn(function()
    while wait() do
        if _G.RaidPirate then
            pcall(function()
                local v429 = CFrame.new(-5496.17432, 363.768921, -2841.53027)

                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    topos(v429)
                else
                    local v430, v431, v432 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v433

                        v432, v433 = v430(v431, v432)

                        if v432 == nil then
                            break
                        end
                        if _G.RaidPirate and (v433:FindFirstChild('HumanoidRootPart') and (v433:FindFirstChild('Humanoid') and (v433.Humanoid.Health > 0 and (v433.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v433.HumanoidRootPart.CanCollide = false

                                TP2(v433.HumanoidRootPart.CFrame * Pos)
                            until v433.Humanoid.Health <= 0 or not (v433.Parent and _G.RaidPirate)
                        end
                    end
                end

                topos(CFrame.new(-5496.17432, 313.768921, -2841.53027))
            end)
        end
    end
end)
v307:AddSection('Misc Bone')

local vu434 = v307:AddParagraph({
    Title = 'Total Bone:',
    Content = '',
})

spawn(function()
    while task.wait(2) do
        pcall(function()
            vu434:SetDesc('Total Bone: ' .. tostring(GetMaterial('Bones')))
        end)
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Farm Bone',
    Default = false,
})

Toggle:OnChanged(function(p435)
    _G.Bone = p435

    StopTween(_G.Bone)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Accept Quest Bone',
    Default = true,
})

Toggle:OnChanged(function(p436)
    _G.QuestBone = p436
end)

local vu437 = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)

spawn(function()
    while wait() do
        if _G.Bone and (not _G.QuestBone and World3) then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                    local v438, v439, v440 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v441

                        v440, v441 = v438(v439, v440)

                        if v440 == nil then
                            break
                        end
                        if (v441.Name == 'Reborn Skeleton' or (v441.Name == 'Living Zombie' or (v441.Name == 'Demonic Soul' or v441.Name == 'Posessed Mummy'))) and (v441:FindFirstChild('Humanoid') and (v441:FindFirstChild('HumanoidRootPart') and v441.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v441.HumanoidRootPart.CanCollide = false
                                v441.Humanoid.WalkSpeed = 0
                                v441.Head.CanCollide = false
                                BonesBring = true
                                PosMonBone = v441.HumanoidRootPart.CFrame

                                TP2(v441.HumanoidRootPart.CFrame * Pos)
                            until not _G.Bone or (not v441.Parent or v441.Humanoid.Health <= 0)
                        end
                    end
                else
                    BonesBring = false

                    topos(vu437)
                end
            end)
        end
    end
end)

local vu442 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

spawn(function()
    while wait() do
        if _G.Bone and (_G.QuestBone and World3) then
            pcall(function()
                local v443 = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                if not string.find(v443, 'Demonic Soul') then
                    BonesBring = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    BonesBring = false

                    topos(vu442)

                    if (vu442.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'HauntedQuest2', 1)
                    end
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                        local v444, v445, v446 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v447

                            v446, v447 = v444(v445, v446)

                            if v446 == nil then
                                break
                            end
                            if v447:FindFirstChild('HumanoidRootPart') and (v447:FindFirstChild('Humanoid') and (v447.Humanoid.Health > 0 and (v447.Name == 'Reborn Skeleton' or (v447.Name == 'Living Zombie' or (v447.Name == 'Demonic Soul' or v447.Name == 'Posessed Mummy'))))) then
                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Demonic Soul') then
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    PosMonBone = v447.HumanoidRootPart.CFrame

                                    TP2(v447.HumanoidRootPart.CFrame * Pos)

                                    v447.HumanoidRootPart.CanCollide = false
                                    v447.Humanoid.WalkSpeed = 0
                                    v447.Head.CanCollide = false
                                    BonesBring = true

                                    if _G.Bone and (v447.Humanoid.Health > 0 and v447.Parent) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                                    end
                                else
                                    BonesBring = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                end
                            end
                        end
                    else
                        BonesBring = false
                    end
                end
            end)
        end
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Random Surprise',
    Default = false,
})

Toggle:OnChanged(function(p448)
    _G.Random_Bone = p448
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Random_Bone then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
            end
        end
    end)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Pray',
    Default = false,
})

Toggle:OnChanged(function(p449)
    _G.Pray = p449

    StopTween(_G.Pray)
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Pray then
                topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-9, 1, -8.24392288e-9, -0.18326205, -8.43218029e-9, -0.983064115))
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 1)
            end
        end
    end)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Try Luck',
    Default = false,
})

Toggle:OnChanged(function(p450)
    _G.Trylux = p450

    StopTween(_G.Trylux)
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Trylux then
                topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-9, 1, -8.24392288e-9, -0.18326205, -8.43218029e-9, -0.983064115))
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
            end
        end
    end)
end)
v307:AddSection('Dought Boss')

local vu451 = v307:AddParagraph({
    Title = 'Killed',
    Content = '',
})

spawn(function()
    while task.wait(2) do
        pcall(function()
            if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 88 then
                if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 87 then
                    if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 86 then
                        vu451:SetDesc('Boss Is Spawning')
                    else
                        vu451:SetDesc('Defeat: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 39))
                    end
                else
                    vu451:SetDesc('Defeat: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 40))
                end
            else
                vu451:SetDesc('Defeat: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 41))
            end
        end)
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Farm Cake Prince',
    Default = false,
})

Toggle:OnChanged(function(p452)
    _G.DoughtBoss = p452

    StopTween(_G.DoughtBoss)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Accept Quest Cake Prince',
    Default = true,
})

Toggle:OnChanged(function(p453)
    _G.QuestCake = p453
end)
spawn(function()
    while wait() do
        if _G.DoughtBoss and not _G.QuestCake then
            pcall(function()
                local v454 = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)

                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    local v455, v456, v457 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v458

                        v457, v458 = v455(v456, v457)

                        if v457 == nil then
                            break
                        end
                        if (v458.Name == 'Cake Prince' or v458.Name == 'Dough King') and (v458:FindFirstChild('Humanoid') and (v458:FindFirstChild('HumanoidRootPart') and v458.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v458.HumanoidRootPart.CanCollide = false
                                v458.Humanoid.WalkSpeed = 0

                                TP2(v458.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.DoughtBoss or (not v458.Parent or v458.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Dough King').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                elseif game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                    local v459, v460, v461 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v462

                        v461, v462 = v459(v460, v461)

                        if v461 == nil then
                            break
                        end
                        if (v462.Name == 'Cookie Crafter' or (v462.Name == 'Cake Guard' or (v462.Name == 'Baking Staff' or v462.Name == 'Head Baker'))) and (v462:FindFirstChild('Humanoid') and (v462:FindFirstChild('HumanoidRootPart') and v462.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v462.HumanoidRootPart.CanCollide = false
                                v462.Humanoid.WalkSpeed = 0
                                v462.Head.CanCollide = false
                                CakeBring = true
                                PosMonDoughtOpenDoor = v462.HumanoidRootPart.CFrame

                                TP2(v462.HumanoidRootPart.CFrame * Pos)
                            until not _G.DoughtBoss or (not v462.Parent or v462.Humanoid.Health <= 0) or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or KillMob == 0))
                        end
                    end
                else
                    CakeBring = false

                    topos(v454)
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.DoughtBoss and (_G.QuestCake and World3) then
            pcall(function()
                local v463 = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-8, 0.288177818, 6.9301186999999995e-8, 1, 7.5193121099999995e-8, -0.288177818, -5.2032135e-8, 0.957576931)

                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    local v464, v465, v466 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v467

                        v466, v467 = v464(v465, v466)

                        if v466 == nil then
                            break
                        end
                        if (v467.Name == 'Cake Prince' or v467.Name == 'Dough King') and (v467:FindFirstChild('Humanoid') and (v467:FindFirstChild('HumanoidRootPart') and v467.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v467.HumanoidRootPart.CanCollide = false
                                v467.Humanoid.WalkSpeed = 0

                                TP2(v467.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.DoughtBoss or (not v467.Parent or v467.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Dough King').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                else
                    local v468 = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                    if not string.find(v468, 'Cookie Crafter') then
                        CakeBring = false

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                                local v469, v470, v471 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v472

                                    v471, v472 = v469(v470, v471)

                                    if v471 == nil then
                                        break
                                    end
                                    if v472:FindFirstChild('HumanoidRootPart') and (v472:FindFirstChild('Humanoid') and (v472.Humanoid.Health > 0 and (v472.Name == 'Cookie Crafter' or (v472.Name == 'Cake Guard' or (v472.Name == 'Baking Staff' or v472.Name == 'Head Baker'))))) then
                                        if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Cookie Crafter') then
                                            repeat
                                                wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP2(v472.HumanoidRootPart.CFrame * Pos)

                                                v472.HumanoidRootPart.CanCollide = false
                                                v472.Humanoid.WalkSpeed = 0
                                                v472.Head.CanCollide = false
                                                CakeBring = true
                                                PosMonDoughtOpenDoor = v472.HumanoidRootPart.CFrame
                                            until not (_G.DoughtBoss and v472.Parent) or (game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false or v472.Humanoid.Health <= 0 or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or KillMob == 0)))
                                        else
                                            CakeBring = false

                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                        end
                                    end
                                end
                            else
                                CakeBring = false
                            end
                        end
                    else
                        CakeBring = false

                        topos(v463)

                        if (v463.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CakeQuest1', 1)
                        end
                    end
                end
            end)
        end
    end
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Spawn Cake Prince',
    Default = false,
})

Toggle:OnChanged(function(p473)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner', p473)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Dough King Raid',
    Default = false,
})

Toggle:OnChanged(function(p474)
    _G.DoughKingRaid = p474

    StopTween(_G.DoughKingRaid)
end)

Toggle = v307:AddToggle('Toggle', {
    Title = 'Auto Dough King Hop',
    Default = false,
})

Toggle:OnChanged(function(p475)
    _G.doughkingHop = p475
end)
spawn(function()
    while wait() do
        if _G.DoughKingRaid then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc'), 'Where') then
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Notification',
                            Text = 'Not Have Enough Material',
                            Icon = 'http://www.roblox.com/asset/?id=',
                            Duration = 2.5,
                        })
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sweet Chalice') or game.Players.LocalPlayer.Character:FindFirstChild('Sweet Chalice') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 'Do you want to open the portal now?') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v476, v477, v478 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v479

                            v478, v479 = v476(v477, v478)

                            if v478 == nil then
                                break
                            end
                            if (v479.Name == 'Baking Staff' or (v479.Name == 'Head Baker' or (v479.Name == 'Cake Guard' or v479.Name == 'Cookie Crafter'))) and v479.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    CakeBring = true
                                    PosMonDoughtOpenDoor = v479.HumanoidRootPart.CFrame

                                    TP2(v479.HumanoidRootPart.CFrame * Pos)
                                until _G.DoughKingRaid == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (not v479.Parent or v479.Humanoid.Health <= 0))
                            end
                        end
                    else
                        CakeBring = false

                        topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                    end
                elseif game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v480, v481, v482 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v483

                            v482, v483 = v480(v481, v482)

                            if v482 == nil then
                                break
                            end
                            if v483.Name == 'Dough King' then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v483.HumanoidRootPart.CanCollide = false

                                    TP2(v483.HumanoidRootPart.CFrame * Pos)
                                until _G.DoughKingRaid == false or (not v483.Parent or v483.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'CakeScientist',
                        'Check',
                    }))
                elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                    if _G.doughkingHop and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter') == "I don't have anything for you right now. Come back later." then
                        hop()
                    else
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    end
                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                        local v484, v485, v486 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v487

                            v486, v487 = v484(v485, v486)

                            if v486 == nil then
                                break
                            end
                            if (v487.Name == 'Diablo' or (v487.Name == 'Deandre' or v487.Name == 'Urban')) and (v487:FindFirstChild('Humanoid') and (v487:FindFirstChild('HumanoidRootPart') and v487.Humanoid.Health > 0)) then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v487.HumanoidRootPart.CanCollide = false
                                    v487.Humanoid.WalkSpeed = 0

                                    TP2(v487.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until _G.DoughKingRaid == false or (v487.Humanoid.Health <= 0 or not v487.Parent) or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice"))
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)
v307:AddSection('Tyrant Of The Skies')

local vu488 = v307:AddParagraph({
    Title = 'Status Eyes',
    Content = '',
})

task.spawn(function()
    while task.wait() do
        pcall(function()
            local v489 = workspace.Map.TikiOutpost.IslandModel
            local v490 = v489.IslandChunks.E
            local v491 = {
                v489:FindFirstChild('Eye1'),
                v489:FindFirstChild('Eye2'),
                v490:FindFirstChild('Eye3'),
                v490:FindFirstChild('Eye4'),
            }
            local v492, v493, v494 = ipairs(v491)
            local v495 = 0

            while true do
                local v496

                v494, v496 = v492(v493, v494)

                if v494 == nil then
                    break
                end
                if v496 and v496.Transparency == 0 then
                    v495 = v495 + 1
                end
            end

            vu488:SetDesc('Eyes: ' .. v495 .. '/4')
        end)
    end
end)
v307:AddToggle('Toggle', {
    Title = 'Teleport To Tyrant Skies',
    Default = false,
}):OnChanged(function(p497)
    _G.TpSkies = p497

    task.spawn(function()
        while _G.TpSkies do
            task.wait()
            topos(CFrame.new(-16198, 156, 1390))
        end
    end)
end)
v307:AddToggle('Toggle', {
    Title = 'Auto Farm Tyrant Of The Skies',
    Default = false,
}):OnChanged(function(p498)
    _G.TyrantSkies = p498

    StopTween(_G.TyrantSkies)
end)

local vu499 = {
    CFrame.new(-16547, 56, -172),
    CFrame.new(-16540, 56, 1051),
    CFrame.new(-16665, 105, 1576),
}

spawn(function()
    while wait() do
        if _G.TyrantSkies and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Isle Outlaw') or (game:GetService('Workspace').Enemies:FindFirstChild('Island Boy') or (game:GetService('Workspace').Enemies:FindFirstChild('Sun-kissed Warrior') or (game:GetService('Workspace').Enemies:FindFirstChild('Isle Champion') or (game:GetService('Workspace').Enemies:FindFirstChild('Serpent Hunter') or game:GetService('Workspace').Enemies:FindFirstChild('Skull Slayer'))))) then
                    local v500, v501, v502 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v503

                        v502, v503 = v500(v501, v502)

                        if v502 == nil then
                            break
                        end
                        if (v503.Name == 'Isle Outlaw' or (v503.Name == 'Island Boy' or (v503.Name == 'Sun-kissed Warrior' or (v503.Name == 'Isle Champion' or (v503.Name == 'Serpent Hunter' or v503.Name == 'Skull Slayer'))))) and (v503:FindFirstChild('Humanoid') and (v503:FindFirstChild('HumanoidRootPart') and v503.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v503.HumanoidRootPart.CanCollide = false
                                v503.Humanoid.WalkSpeed = 0
                                v503.Head.CanCollide = false
                                StartMagnet = true
                                _G.PosMon = v503.HumanoidRootPart.CFrame

                                TP2(v503.HumanoidRootPart.CFrame * Pos)
                            until not _G.TyrantSkies or (not v503.Parent or v503.Humanoid.Health <= 0)
                        end
                    end
                else
                    StartMagnet = false

                    local v504 = vu499[math.random(1, #vu499)]

                    topos(v504)
                    wait(3)

                    local v505, v506, v507 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v508

                        v507, v508 = v505(v506, v507)

                        if v507 == nil then
                            break
                        end
                        if (v508.Name == 'Isle Outlaw' or (v508.Name == 'Island Boy' or (v508.Name == 'Sun-kissed Warrior' or (v508.Name == 'Isle Champion' or (v508.Name == 'Serpent Hunter' or v508.Name == 'Skull Slayer'))))) and v508:FindFirstChild('HumanoidRootPart') then
                            TP2(v508.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))

                            break
                        end
                    end
                end
            end)
        end
    end
end)
v307:AddToggle('Toggle', {
    Title = 'Auto Tyrant Of The Skies Boss',
    Default = false,
}):OnChanged(function(p509)
    _G.KillBossTyrantSkies = p509

    StopTween(_G.KillBossTyrantSkies)
end)
spawn(function()
    while wait() do
        if _G.KillBossTyrantSkies and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Tyrant of the Skies') then
                    local v510, v511, v512 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v513

                        v512, v513 = v510(v511, v512)

                        if v512 == nil then
                            break
                        end
                        if v513.Name == 'Tyrant of the Skies' and (v513:FindFirstChild('Humanoid') and (v513:FindFirstChild('HumanoidRootPart') and v513.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v513.HumanoidRootPart.CanCollide = false
                                v513.Humanoid.WalkSpeed = 0

                                TP2(v513.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.KillBossTyrantSkies or (not v513.Parent or v513.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Tyrant of the Skies') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Tyrant of the Skies').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v307:AddSection('Misc Mastery')
v307:AddToggle('Toggle', {
    Title = 'Auto Mastery Fruit (Delete Function)',
    Default = false,
}):OnChanged(function(p514)
    _G.FarmFruitMastery = p514

    StopTween(_G.FarmFruitMastery)

    if not _G.FarmFruitMastery then
        UseSkill = false
    end
end)
v307:AddToggle('Toggle', {
    Title = 'Auto Mastery Gun (Delete Function)',
    Default = false,
}):OnChanged(function(p515)
    _G.FarmGunMastery = p515

    StopTween(_G.FarmGunMastery)
end)
v307:AddSection('Observation')
v307:AddToggle('Toggle', {
    Title = 'Auto Farm Observation',
    Default = false,
}):OnChanged(function(p516)
    _G.Observation = p516

    StopTween(_G.Observation)
end)
v307:AddToggle('Toggle', {
    Title = 'Auto Farm Observation Hop',
    Default = false,
}):OnChanged(function(p517)
    _G.Observation_Hop = p517
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Observation then
                while true do
                    task.wait()

                    if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') or not _G.Observation then
                    end
                end
            else
                return
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while true do
            repeat
                if not wait() then
                    return
                end
            until _G.Observation

            if game:GetService('Players').LocalPlayer.VisionRadius.Value < 3000 then
                break
            end

            wait(2)
        end

        if not World2 then
        end
        if game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate [Lv. 1200]') then
            if game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                repeat
                    task.wait()

                    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate').HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                until _G.Observation == false or not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')
            else
                task.wait()

                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate').HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) + wait(1)

                if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') and _G.Observation_Hop == true then
                    game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
                end
                if _G.Observation ~= false and not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                end
            end
        else
            topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
        end
        if not World1 then
        end
        if not game:GetService('Workspace').Enemies:FindFirstChild('Galley Captain') then
        end
        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        end

        repeat
            task.wait()

            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Galley Captain').HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
        until _G.Observation == false or not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')

        topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
        task.wait()

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Galley Captain').HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

        wait(1)

        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') and _G.Observation_Hop == true then
            game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        end
        if _G.Observation == false or game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        else
        end
        if not World3 then
        end
        if not game:GetService('Workspace').Enemies:FindFirstChild('Giant Islander') then
        end
        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        end

        task.wait()

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Giant Islander').HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

        if _G.Observation ~= false and game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        end

        task.wait()

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Giant Islander').HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

        wait(1)

        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') and _G.Observation_Hop == true then
            game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        end
        if _G.Observation == false or game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        else
        end

        topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
    end)
end)
v307:AddSection('Boss')

local vu518 = v307:AddParagraph({
    Title = 'Status',
    Content = '',
})

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) or game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                vu518:SetDesc('Status : Spawn!')
            else
                vu518:SetDesc('Status : Boss Not Spawn')
            end
        end)
    end
end)

if World1 then
    Dropdown = v307:AddDropdown('Dropdown', {
        Title = 'Select Boss',
        Values = {
            'The Saw',
            'The Gorilla King',
            'Bobby',
            'Yeti',
            'Mob Leader',
            'Vice Admiral',
            'Warden',
            'Chief Warden',
            'Swan',
            'Magma Admiral',
            'Fishman Lord',
            'Wysper',
            'Thunder God',
            'Cyborg',
            'Saber Expert',
        },
        Multi = false,
    })

    Dropdown:SetValue(false)
    Dropdown:OnChanged(function(p519)
        _G.SelectBoss = p519
    end)
end
if World2 then
    Dropdown = v307:AddDropdown('Dropdown', {
        Title = 'Select Boss',
        Values = {
            'Diamond',
            'Jeremy',
            'Fajita',
            'Don Swan',
            'Smoke Admiral',
            'Cursed Captain',
            'Darkbeard',
            'Order',
            'Awakened Ice Admiral',
            'Tide Keeper',
        },
        Multi = false,
    })

    Dropdown:SetValue(false)
    Dropdown:OnChanged(function(p520)
        _G.SelectBoss = p520
    end)
end
if World3 then
    Dropdown = v307:AddDropdown('Dropdown', {
        Title = 'Select Boss',
        Values = {
            'Stone',
            'Island Empress',
            'Kilo Admiral',
            'Captain Elephant',
            'Beautiful Pirate',
            'rip_indra True Form',
            'Longma',
            'Soul Reaper',
            'Cake Queen',
        },
        Multi = false,
    })

    Dropdown:SetValue(false)
    Dropdown:OnChanged(function(p521)
        _G.SelectBoss = p521
    end)
end

v307:AddToggle('Toggle', {
    Title = 'Auto Farm Boss',
    Default = false,
}):OnChanged(function(p522)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

    _G.FarmBoss = p522

    StopTween(_G.FarmBoss)
end)
spawn(function()
    while wait() do
        if _G.FarmBoss and not BypassTP then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v523, v524, v525 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v526

                        v525, v526 = v523(v524, v525)

                        if v525 == nil then
                            break
                        end
                        if v526.Name == _G.SelectBoss and (v526:FindFirstChild('Humanoid') and (v526:FindFirstChild('HumanoidRootPart') and v526.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v526.HumanoidRootPart.CanCollide = false
                                v526.Humanoid.WalkSpeed = 0

                                TP2(v526.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.FarmBoss or (not v526.Parent or v526.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
            end)
        end
    end
end)
v307:AddToggle('Toggle', {
    Title = 'Auto Farm All Boss',
    Default = false,
}):OnChanged(function(p527)
    _G.AllBoss = p527

    StopTween(_G.AllBoss)
end)
v307:AddToggle('Toggle', {
    Title = 'Auto Farm All Boss Hop',
    Default = false,
}):OnChanged(function(p528)
    _G.AllBossHop = p528
end)
spawn(function()
    while wait() do
        if _G.AllBoss then
            pcall(function()
                local v529, v530, v531 = pairs(game.ReplicatedStorage:GetChildren())

                while true do
                    local v532

                    v531, v532 = v529(v530, v531)

                    if v531 == nil then
                        break
                    end
                    if v532.Name == 'rip_indra' or (v532.Name == 'Ice Admiral' or (v532.Name == 'Saber Expert' or (v532.Name == 'The Saw' or (v532.Name == 'Greybeard' or (v532.Name == 'Mob Leader' or (v532.Name == 'The Gorilla King' or (v532.Name == 'Bobby' or (v532.Name == 'Yeti' or (v532.Name == 'Vice Admiral' or (v532.Name == 'Warden' or (v532.Name == 'Chief Warden' or (v532.Name == 'Swan' or (v532.Name == 'Magma Admiral' or (v532.Name == 'Fishman Lord' or (v532.Name == 'Wysper' or (v532.Name == 'Thunder God' or (v532.Name == 'Cyborg' or (v532.Name == 'Don Swan' or (v532.Name == 'Diamond' or (v532.Name == 'Jeremy' or (v532.Name == 'Fajita' or (v532.Name == 'Smoke Admiral' or (v532.Name == 'Awakened Ice Admiral' or (v532.Name == 'Tide Keeper' or (v532.Name == 'Order' or (v532.Name == 'Darkbeard' or (v532.Name == 'Stone' or (v532.Name == 'Island Empress' or (v532.Name == 'Kilo Admiral' or (v532.Name == 'Captain Elephant' or (v532.Name == 'Beautiful Pirate' or (v532.Name == 'Cake Queen' or (v532.Name == 'rip_indra True Form' or (v532.Name == 'Longma' or (v532.Name == 'Soul Reaper' or (v532.Name == 'Cake Prince' or v532.Name == 'Dough King')))))))))))))))))))))))))))))))))))) then
                        if (v532.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v532.Humanoid.WalkSpeed = 0
                                v532.HumanoidRootPart.CanCollide = false
                                v532.Head.CanCollide = false

                                TP2(v532.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until v532.Humanoid.Health <= 0 or (_G.AllBoss == false or not v532.Parent)
                        end
                    elseif _G.AllBossHop then
                        Hop()
                    end
                end
            end)
        end
    end
end)
v309:AddSection('Speed Tween')
v309:AddSlider('Slider', {
    Title = 'Tween Speed',
    Min = 50,
    Max = 350,
    Default = 350,
    Rounding = 5,
    Callback = function(p533)
        getgenv().TweenSpeed = p533
    end,
})
v309:AddToggle('Toggle', {
    Title = 'Tween PosY Hight',
    Default = true,
}):OnChanged(function(p534)
    getgenv().TweenPosY = p534
end)
v309:AddSlider('Slider', {
    Title = 'Select PosY Hight',
    Min = 1,
    Max = 2000,
    Default = 200,
    Rounding = 5,
    Callback = function(p535)
        _G.SelectPosYHight = p535
    end,
})
v309:AddToggle('Toggle', {
    Title = 'Spin Pos',
    Default = true,
}):OnChanged(function(p536)
    _G.SpinPos = p536
end)
v309:AddSlider('Slider', {
    Title = 'Select PosX',
    Min = 1,
    Max = 100,
    Default = 0,
    Rounding = 5,
    Callback = function(p537)
        PosX = p537
    end,
})
v309:AddSlider('Slider', {
    Title = 'Select PosY',
    Min = 1,
    Max = 100,
    Default = 20,
    Rounding = 5,
    Callback = function(p538)
        PosY = p538
    end,
})
v309:AddSlider('Slider', {
    Title = 'Select PosZ',
    Min = 1,
    Max = 100,
    Default = 15,
    Rounding = 5,
    Callback = function(p539)
        PosZ = p539
    end,
})
v309:AddButton({
    Title = 'Stop All Tween',
    Description = '',
    Callback = function()
        topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)

        _G.Clip = false
    end,
})
v309:AddSection('Setting Farming')
v309:AddToggle('Toggle', {
    Title = 'Auto Click',
    Default = false,
}):OnChanged(function(p540)
    _G.AutoClick = p540
end)
spawn(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.AutoClick then
            pcall(function()
                game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, true, game, 0)
                task.wait()
                game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, false, game, 0)
            end)
        end
    end)
end)
v309:AddToggle('Toggle', {
    Title = 'Auto Shoot Gun',
    Default = false,
}):OnChanged(function(p541)
    _G.AutoShootGun = p541
end)

function GetClosestEnemyPart()
    local v542 = game:GetService('Players').LocalPlayer.Character

    if v542 then
        local v543 = v542:FindFirstChild('HumanoidRootPart')

        if v543 then
            local v544, v545, v546 = ipairs(workspace.Enemies:GetChildren())
            local v547 = 100
            local v548 = nil

            while true do
                local v549

                v546, v549 = v544(v545, v546)

                if v546 == nil then
                    break
                end
                if v549:IsA('Model') then
                    local v550 = v549:FindFirstChild('Head') or v549:FindFirstChild('HumanoidRootPart')

                    if v550 and v550:IsA('BasePart') then
                        local v551 = (v550.Position - v543.Position).Magnitude

                        if v551 < v547 then
                            v548 = v550
                            v547 = v551
                        end
                    end
                end
            end

            return v548
        end
    end
end

task.spawn(function()
    while task.wait(0.1) do
        if _G.AutoShootGun and GetClosestEnemyPart() then
            game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):FindFirstChild('RE/ShootGunEvent'):FireServer(GetClosestEnemyPart().Position, {
                GetClosestEnemyPart(),
            })
            game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, true, game, 0)
            game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, false, game, 0)
        end
    end
end)
v309:AddToggle('Toggle', {
    Title = 'Bring Mob',
    Default = true,
}):OnChanged(function(p552)
    _G.BringMonster = p552
end)
spawn(function()
    while task.wait(0.1) do
        if _G.BringMonster then
            pcall(function()
                vu106()

                local v553, v554, v555 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v556

                    v555, v556 = v553(v554, v555)

                    if v555 == nil then
                        break
                    end
                    if v556:FindFirstChild('Humanoid') and (v556:FindFirstChild('HumanoidRootPart') and v556.Humanoid.Health > 0) then
                        local v557 = false

                        if _G.Level and (StartMagnetLv and (v556.Name == Mon and not v557)) then
                            v557 = (v556.HumanoidRootPart.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode
                        end
                        if v557 then
                            v556.HumanoidRootPart.CFrame = PosMonLv
                            v556.HumanoidRootPart.CanCollide = false
                            v556.Head.CanCollide = false
                            v556.Humanoid.JumpPower = 0
                            v556.Humanoid.WalkSpeed = 0

                            v556.Humanoid:ChangeState(14)

                            if v556.Humanoid:FindFirstChild('Animator') then
                                v556.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    end
                end
            end)
        end
    end
end)

local vu558 = {
    Cake = {
        ['Cookie Crafter'] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
        ['Cake Guard'] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
        ['Baking Staff'] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
        ['Head Baker'] = CFrame.new(-2223.1416, 53.5283203, -12854.752),
    },
    Bone = {
        ['Reborn Skeleton'] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
        ['Living Zombie'] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
        ['Demonic Soul'] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
        ['Posessed Mummy'] = CFrame.new(-9570.88281, 5.81831884, 6187.86279),
    },
}

function BringEnemies(p559, _)
    local v560, v561, v562 = pairs(game.Workspace.Enemies:GetChildren())

    while true do
        local v563

        v562, v563 = v560(v561, v562)

        if v562 == nil then
            break
        end
        if vu558[p559][v563.Name] then
            local v564 = vu558[p559][v563.Name]

            if v564 then
                v563.HumanoidRootPart.CFrame = v564
            end

            v563.Head.CanCollide = false
            v563.Humanoid.Sit = false

            v563.Humanoid:ChangeState(14)

            v563.HumanoidRootPart.CanCollide = false
            v563.Humanoid.JumpPower = 0
            v563.Humanoid.WalkSpeed = 0

            local v565 = v563.Humanoid:FindFirstChild('Animator')

            if v565 then
                v565:Destroy()
            end

            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        end
    end
end

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.BringMonster then
                if CakeBring then
                    BringEnemies('Cake')
                end
                if BonesBring then
                    BringEnemies('Bone')
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        if StartMagnet and _G.BringMonster then
            pcall(function()
                local v566, v567, v568 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v569

                    v568, v569 = v566(v567, v568)

                    if v568 == nil then
                        break
                    end
                    if v569:FindFirstChild('Humanoid') and (v569:FindFirstChild('HumanoidRootPart') and (v569.HumanoidRootPart.Position - _G.PosMon.Position).Magnitude <= _G.BringMode) then
                        v569.HumanoidRootPart.CFrame = _G.PosMon
                        v569.HumanoidRootPart.CanCollide = false
                        v569.Humanoid.JumpPower = 0
                        v569.Humanoid.WalkSpeed = 0

                        v569.Humanoid:ChangeState(14)

                        if v569.Humanoid:FindFirstChild('Animator') then
                            v569.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'MaximumSimulationRadius', math.huge)
                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end
    end
end)

Dropdown = v309:AddDropdown('Dropdown', {
    Title = 'Bring Mob Mode',
    Values = {
        '100',
        '200',
        '300',
        '350',
        '400',
        '500',
    },
    Multi = false,
})

Dropdown:SetValue('200')
Dropdown:OnChanged(function(p570)
    _G.BringMode = tonumber(p570)
end)
v309:AddToggle('Toggle', {
    Title = 'Auto Haki',
    Default = true,
}):OnChanged(function(p571)
    _G.Haki = p571
end)
spawn(function()
    while task.wait(0.1) do
        if _G.Haki and not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'Buso',
            }))
        end
    end
end)
v309:AddToggle('Toggle', {
    Title = 'Auto Ken',
    Default = false,
}):OnChanged(function(p572)
    _G.Ken = p572
end)
spawn(function()
    while wait() do
        if _G.Ken == true then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
            end)
        end
    end
end)
v309:AddToggle('Toggle', {
    Title = 'Disabled Notifications',
    Default = false,
}):OnChanged(function(p573)
    _G.Remove_trct = p573
end)
spawn(function()
    while wait() do
        if _G.Remove_trct then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)
v309:AddToggle('Toggle', {
    Title = 'Disabled Damage Counter',
    Default = false,
}):OnChanged(function(p574)
    _G.DisabledDame = p574
end)
spawn(function()
    while wait() do
        if _G.DisabledDame then
            game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)

local vu575 = Instance.new('BlurEffect')

vu575.Size = 100
vu575.Enabled = false
vu575.Parent = game.Lighting

v309:AddToggle('Toggle', {
    Title = 'Fix Lag Screen',
    Default = false,
}):OnChanged(function(p576)
    vu575.Enabled = p576
end)
v309:AddToggle('Toggle', {
    Title = 'White Screen',
    Default = false,
}):OnChanged(function(p577)
    _G.WhiteScreen = p577

    game:GetService('RunService'):Set3dRenderingEnabled(not _G.WhiteScreen)
end)
spawn(function()
    while wait() do
        if _G.WhiteScreen then
            local v578, v579, v580 = pairs(game.Workspace._WorldOrigin:GetChildren())

            while true do
                local v581

                v580, v581 = v578(v579, v580)

                if v580 == nil then
                    break
                end
                if v581.Name == 'CurvedRing' or (v581.Name == 'SlashHit' or (v581.Name == 'DamageCounter' or (v581.Name == 'SwordSlash' or (v581.Name == 'SlashTail' or v581.Name == 'Sounds')))) then
                    v581:Destroy()
                end
            end
        end
    end
end)
v309:AddToggle('Toggle', {
    Title = 'Hide Mobs',
    Description = '',
    Default = false,
}):OnChanged(function(p582)
    _G.hadesinvis = p582
end)
spawn(function()
    while wait() do
        if _G.hadesinvis then
            pcall(function()
                local v583, v584, v585 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v586

                    v585, v586 = v583(v584, v585)

                    if v585 == nil then
                        break
                    end
                    if v586.ClassName == 'MeshPart' then
                        v586.Transparency = 1
                    end
                end

                local v587, v588, v589 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v590

                    v589, v590 = v587(v588, v589)

                    if v589 == nil then
                        break
                    end
                    if v590.Name == 'Head' then
                        v590.Transparency = 1
                    end
                end

                local v591, v592, v593 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v594

                    v593, v594 = v591(v592, v593)

                    if v593 == nil then
                        break
                    end
                    if v594.ClassName == 'Accessory' then
                        v594.Handle.Transparency = 1
                    end
                end

                local v595, v596, v597 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v598

                    v597, v598 = v595(v596, v597)

                    if v597 == nil then
                        break
                    end
                    if v598.ClassName == 'Decal' then
                        v598.Transparency = 1
                    end
                end
            end)
        end
    end
end)
v309:AddToggle('Toggle', {
    Title = 'Fps Boost',
    Default = false,
}):OnChanged(function(p599)
    if p599 then
        cleanlag()
    end
end)

function cleanlag()
    spawn(function()
        local v600, v601, v602 = pairs(workspace:GetDescendants())

        while true do
            local v603

            v602, v603 = v600(v601, v602)

            if v602 == nil then
                break
            end
            if v603.ClassName == 'Part' or (v603.ClassName == 'SpawnLocation' or (v603.ClassName == 'WedgePart' or v603.ClassName == 'Terrain')) then
                v603.Material = 'Plastic'
            end
        end

        local v604, v605, v606 = pairs(game:GetDescendants())

        while true do
            local v607

            v606, v607 = v604(v605, v606)

            if v606 == nil then
                break
            end
            if v607:IsA('Texture') then
                v607.Texture = ''
            elseif v607:IsA('BasePart') then
                v607.Material = 'Plastic'
            end
        end

        local v608, v609, v610 = pairs(Players.LocalPlayer.PlayerScripts:GetDescendants())

        while true do
            local v611

            v610, v611 = v608(v609, v610)

            if v610 == nil then
                break
            end
            if table.find({
                'RecordMode',
                'Fireflies',
                'Wind',
                'WindShake',
                'WindLines',
                'WaterBlur',
                'WaterEffect',
                'wave',
                'WaterColorCorrection',
                'WaterCFrame',
                'MirageFog',
                'MobileButtonTransparency',
                'WeatherStuff',
                'AnimateEntrance',
                'Particle',
                'AccessoryInvisible',
            }, v611.Name) then
                v611:Destroy()
            end
        end
    end)
end

v309:AddSection('Setting Farm Mastery')
v309:AddSlider('Slider', {
    Title = 'Select % Health Mob',
    Min = 10,
    Max = 100,
    Default = 20,
    Rounding = 5,
    Callback = function(p612)
        Kill_At = p612
    end,
})
v309:AddToggle('Toggle', {
    Title = 'Skill Z',
    Default = true,
}):OnChanged(function(p613)
    _G.SkillZ = p613
end)
v309:AddToggle('Toggle', {
    Title = 'Skill X',
    Default = true,
}):OnChanged(function(p614)
    _G.SkillX = p614
end)
v309:AddToggle('Toggle', {
    Title = 'Skill C',
    Default = true,
}):OnChanged(function(p615)
    _G.SkillC = p615
end)
v309:AddToggle('Toggle', {
    Title = 'Skill V',
    Default = true,
}):OnChanged(function(p616)
    _G.SkillV = p616
end)

if World1 or World2 then
    v311:AddSection('World')
end
if World1 then
    v311:AddToggle('Toggle', {
        Title = 'Auto Second Sea',
        Default = false,
    }):OnChanged(function(p617)
        _G.SecondSea = p617

        StopTween(_G.SecondSea)
    end)
    spawn(function()
        while wait() do
            if _G.SecondSea then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 700 and World1 then
                        if game:GetService('Workspace').Map.Ice.Door.CanCollide == false and game:GetService('Workspace').Map.Ice.Door.Transparency == 1 then
                            local v618 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                            repeat
                                topos(v618)
                                wait()
                            until (v618.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.SecondSea == false

                            wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                            wait(0.5)
                            EquipWeapon('Key')

                            repeat
                                topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                wait()
                            until (Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.SecondSea == false

                            wait(0.5)
                        end
                        if game:GetService('Workspace').Map.Ice.Door.CanCollide ~= false or game:GetService('Workspace').Map.Ice.Door.Transparency ~= 1 then
                        end
                        if game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral') then
                            local v619, v620, v621 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v622

                                v621, v622 = v619(v620, v621)

                                if v621 == nil then
                                    break
                                end
                                if v622.Name == 'Ice Admiral' then
                                    if not v622.Humanoid.Health > 0 then
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                    elseif v622:FindFirstChild('Humanoid') and (v622:FindFirstChild('HumanoidRootPart') and v622.Humanoid.Health > 0) then
                                        OldCFrameSecond = v622.HumanoidRootPart.CFrame

                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)

                                        v622.HumanoidRootPart.CanCollide = false
                                        v622.Humanoid.WalkSpeed = 0
                                        v622.Head.CanCollide = false
                                        v622.HumanoidRootPart.CFrame = OldCFrameSecond

                                        TP2(v622.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                                        if _G.SecondSea and (v622.Parent and v622.Humanoid.Health > 0) then
                                        end
                                    end
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                        end
                    end
                end)
            end
        end
    end)
end
if World2 then
    v311:AddToggle('Toggle', {
        Title = 'Auto Third Sea',
        Default = false,
    }):OnChanged(function(p623)
        _G.ThirdSea = p623

        StopTween(_G.ThirdSea)
    end)
    spawn(function()
        while wait() do
            if _G.ThirdSea then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1500 and World2 then
                        _G.Level = false

                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))

                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                            end

                            wait(1.8)

                            if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                                local v624, v625, v626 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v627

                                    v626, v627 = v624(v625, v626)

                                    if v626 == nil then
                                        break
                                    end
                                    if v627.Name == 'rip_indra' then
                                        OldCFrameThird = v627.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP2(v627.HumanoidRootPart.CFrame * Pos)

                                            v627.HumanoidRootPart.CFrame = OldCFrameThird
                                            v627.HumanoidRootPart.CanCollide = false
                                            v627.Humanoid.WalkSpeed = 0

                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        until _G.ThirdSea == false or (v627.Humanoid.Health <= 0 or not v627.Parent)
                                    end
                                end
                            elseif not game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Factory',
        Default = false,
    }):OnChanged(function(p628)
        _G.Factory = p628

        StopTween(_G.Factory)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Factory then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Core') then
                        local v629, v630, v631 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v632

                            v631, v632 = v629(v630, v631)

                            if v631 == nil then
                                break
                            end
                            if v632.Name == 'Core' and v632.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                                until v632.Humanoid.Health <= 0 or _G.Factory == false
                            end
                        end
                    else
                        topos(CFrame.new(448.46756, 199.356781, -441.389252))
                    end
                end
            end)
        end
    end)
end

v311:AddSection('Fighting Style')
v311:AddToggle('Toggle', {
    Title = 'Auto Superhuman',
    Default = false,
}):OnChanged(function(p633)
    _G.Superhuman = p633
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Superhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Combat') or game.Players.LocalPlayer.Character:FindFirstChild('Combat') and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 150000 then
                    UnEquipWeapon('Combat')
                    wait(0.1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') or game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') then
                    _G.SelectWeapon = 'Superhuman'
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') or (game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') or (game.Players.LocalPlayer.Character:FindFirstChild('Electro') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') or (game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw'))))))) then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') and game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value <= 299 then
                        _G.SelectWeapon = 'Black Leg'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') and game.Players.LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value <= 299 then
                        _G.SelectWeapon = 'Electro'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value <= 299 then
                        _G.SelectWeapon = 'Fishman Karate'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value <= 299 then
                        _G.SelectWeapon = 'Dragon Claw'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 300000) then
                        UnEquipWeapon('Black Leg')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') and (game.Players.LocalPlayer.Character:FindFirstChild('Black Leg').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 300000) then
                        UnEquipWeapon('Black Leg')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 750000) then
                        UnEquipWeapon('Electro')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Electro') and (game.Players.LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 750000) then
                        UnEquipWeapon('Electro')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value >= 300 and game:GetService('Players').Localplayer.Data.Fragments.Value >= 1500) then
                        UnEquipWeapon('Fishman Karate')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate') and (game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate').Level.Value >= 300 and game:GetService('Players').Localplayer.Data.Fragments.Value >= 1500) then
                        UnEquipWeapon('Fishman Karate')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 3000000) then
                        UnEquipWeapon('Dragon Claw')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw') and (game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 3000000) then
                        UnEquipWeapon('Dragon Claw')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    end
                end
            end
        end
    end)
end)
v311:AddToggle('Toggle', {
    Title = 'Auto DeathStep',
    Default = false,
}):OnChanged(function(p634)
    _G.DeathStep = p634
end)
spawn(function()
    while wait() do
        wait()

        if _G.DeathStep then
            if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Death Step') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Death Step'))) then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value >= 450 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')

                    _G.SelectWeapon = 'Death Step'
                end
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg').Level.Value >= 450 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')

                    _G.SelectWeapon = 'Death Step'
                end
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value <= 449 then
                    _G.SelectWeapon = 'Black Leg'
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
            end
        end
    end
end)
v311:AddToggle('Toggle', {
    Title = 'Auto Sharkman Karate',
    Default = false,
}):OnChanged(function(p635)
    _G.Sharkman = p635
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Sharkman then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')

                if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate'), 'keys') then
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Water Key') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Water Key') then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                    elseif not game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fishman Karate') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fishman Karate').Level.Value < 400 then
                        Ms = 'Tide Keeper'

                        if game:GetService('Workspace').Enemies:FindFirstChild(Ms) then
                            local v636, v637, v638 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v639

                                v638, v639 = v636(v637, v638)

                                if v638 == nil then
                                    break
                                end
                                if v639.Name == Ms then
                                    OldCFrameShark = v639.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)

                                        v639.Head.CanCollide = false
                                        v639.Humanoid.WalkSpeed = 0
                                        v639.HumanoidRootPart.CanCollide = false
                                        v639.HumanoidRootPart.CFrame = OldCFrameShark

                                        TP2(v639.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until not v639.Parent or (v639.Humanoid.Health <= 0 or _G.Sharkman == false) or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Water Key') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Water Key'))
                                end
                            end
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857325999999999e-8, 0.885206044, 4.0332897e-9, 1, 1.35347511e-8, -0.885206044, -2.72606271e-9, 0.465199202))
                            wait(3)
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                end
            end
        end
    end)
end)
v311:AddToggle('Toggle', {
    Title = 'Auto Electric Claw',
    Default = false,
}):OnChanged(function(p640)
    _G.ElectricClaw = p640

    StopTween(_G.ElectricClaw)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.ElectricClaw then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electric Claw') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electric Claw'))) then
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 400 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        _G.SelectWeapon = 'Electric Claw'
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 400 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        _G.SelectWeapon = 'Electric Claw'
                    end
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value <= 399 then
                        _G.SelectWeapon = 'Electro'
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                end
            end
            if _G.ElectricClaw and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro')) and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 400 or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 400) then
                if _G.Level ~= false then
                    if _G.Level == true then
                        _G.Level = false

                        wait(1)

                        repeat
                            task.wait()
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                        wait(2)

                        repeat
                            task.wait()
                            topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                        until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                        wait(1)

                        repeat
                            task.wait()
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        _G.SelectWeapon = 'Electric Claw'

                        wait(0.1)

                        _G.Level = true
                    end
                else
                    repeat
                        task.wait()
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                    wait(2)

                    repeat
                        task.wait()
                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                    until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                    wait(1)

                    repeat
                        task.wait()
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                end
            end
        end
    end)
end)
v311:AddToggle('Toggle', {
    Title = 'Auto Dragon Talon',
    Default = false,
}):OnChanged(function(p641)
    _G.DragonTalon = p641
end)
spawn(function()
    while wait() do
        if _G.DragonTalon then
            if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Talon') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Talon'))) then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value >= 400 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')

                    _G.SelectWeapon = 'Dragon Talon'
                end
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw').Level.Value >= 400 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')

                    _G.SelectWeapon = 'Dragon Talon'
                end
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value <= 399 then
                    _G.SelectWeapon = 'Dragon Claw'
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
            end
        end
    end
end)
v311:AddToggle('Toggle', {
    Title = 'Auto GodHuman',
    Default = false,
}):OnChanged(function(p642)
    _G.God_Human = p642
end)
spawn(function()
    while task.wait() do
        if _G.God_Human then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Death Step') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Death Step') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fishman Karate') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fishman Karate') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sharkman Karate') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sharkman Karate') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') or (game.Players.LocalPlayer.Character:FindFirstChild('Electro') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electric Claw') or (game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Talon') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Talon') or (game.Players.LocalPlayer.Character:FindFirstChild('Godhuman') or game.Players.LocalPlayer.Backpack:FindFirstChild('Godhuman'))))))))))))))))))) then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') and game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') and game.Players.LocalPlayer.Character:FindFirstChild('Superhuman').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Death Step') and game.Players.LocalPlayer.Backpack:FindFirstChild('Death Step').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Death Step') and game.Players.LocalPlayer.Character:FindFirstChild('Death Step').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Sharkman Karate') and game.Players.LocalPlayer.Backpack:FindFirstChild('Sharkman Karate').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate') and game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Electric Claw') and game.Players.LocalPlayer.Backpack:FindFirstChild('Electric Claw').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw') and game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Talon') and game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Talon').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Talon') and game.Players.LocalPlayer.Character:FindFirstChild('Dragon Talon').Level.Value >= 400) and not string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman', true), 'Bring') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                end
            end)
        end
    end
end)
v311:AddSection('Materials')

if World2 then
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Radioactive Material',
        Default = false,
    }):OnChanged(function(p643)
        Radioactive = p643

        StopTween(Radioactive)
    end)

    local vu644 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570313)

    spawn(function()
        while wait() do
            if Radioactive and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Factory Staff') then
                        local v645, v646, v647 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v648

                            v647, v648 = v645(v646, v647)

                            if v647 == nil then
                                break
                            end
                            if v648.Name == 'Factory Staff' and (v648:FindFirstChild('Humanoid') and (v648:FindFirstChild('HumanoidRootPart') and v648.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v648.HumanoidRootPart.CanCollide = false
                                    v648.Humanoid.WalkSpeed = 0
                                    v648.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v648.HumanoidRootPart.CFrame

                                    TP2(v648.HumanoidRootPart.CFrame * Pos)
                                until not Radioactive or (not v648.Parent or v648.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu644)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Factory Staff') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Factory Staff').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Ectoplasm',
        Default = false,
    }):OnChanged(function(p649)
        _G.Ectoplasm = p649

        StopTween(_G.Ectoplasm)
    end)
    spawn(function()
        while wait() do
            if _G.Ectoplasm and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer'))) then
                        local v650, v651, v652 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v653

                            v652, v653 = v650(v651, v652)

                            if v652 == nil then
                                break
                            end

                            local _ = v653.Name == 'Ship Officer' or v653.Name == 'Ship Steward'

                            if v653:FindFirstChild('Humanoid') and (v653:FindFirstChild('HumanoidRootPart') and v653.Humanoid.Health > 0) then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v653.HumanoidRootPart.CanCollide = false
                                    v653.Humanoid.WalkSpeed = 0

                                    TP2(v653.HumanoidRootPart.CFrame * Pos)

                                    StartMagnet = true
                                    _G.PosMon = v653.HumanoidRootPart.CFrame
                                until not _G.Ectoplasm or (not v653.Parent or v653.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        StartMagnet = false

                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Mystic Droplet',
        Default = false,
    }):OnChanged(function(p654)
        _G.Makori_gay = p654

        StopTween(_G.Makori_gay)
    end)

    local vu655 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)

    spawn(function()
        while wait() do
            if _G.Makori_gay and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Water Fighter') then
                        local v656, v657, v658 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v659

                            v658, v659 = v656(v657, v658)

                            if v658 == nil then
                                break
                            end
                            if v659.Name == 'Water Fighter' and (v659:FindFirstChild('Humanoid') and (v659:FindFirstChild('HumanoidRootPart') and v659.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v659.HumanoidRootPart.CanCollide = false
                                    v659.Humanoid.WalkSpeed = 0
                                    v659.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v659.HumanoidRootPart.CFrame

                                    TP2(v659.HumanoidRootPart.CFrame * Pos)
                                until not _G.Makori_gay or (not v659.Parent or v659.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu655)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Water Fighter') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Water Fighter').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 or World2 then
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Magma Ore',
        Default = false,
    }):OnChanged(function(p660)
        _G.Umm = p660

        StopTween(_G.Umm)
    end)

    local vu661 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)

    spawn(function()
        while wait() do
            if _G.Umm and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Military Spy') then
                        local v662, v663, v664 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v665

                            v664, v665 = v662(v663, v664)

                            if v664 == nil then
                                break
                            end
                            if v665.Name == 'Military Spy' and (v665:FindFirstChild('Humanoid') and (v665:FindFirstChild('HumanoidRootPart') and v665.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v665.HumanoidRootPart.CanCollide = false
                                    v665.Humanoid.WalkSpeed = 0
                                    v665.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v665.HumanoidRootPart.CFrame

                                    TP2(v665.HumanoidRootPart.CFrame * Pos)
                                until not _G.Umm or (not v665.Parent or v665.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu661)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Military Spy') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Military Spy').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu666 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)

    spawn(function()
        while wait() do
            if _G.Umm and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate') then
                        local v667, v668, v669 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v670

                            v669, v670 = v667(v668, v669)

                            if v669 == nil then
                                break
                            end
                            if v670.Name == 'Lava Pirate' and (v670:FindFirstChild('Humanoid') and (v670:FindFirstChild('HumanoidRootPart') and v670.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v670.HumanoidRootPart.CanCollide = false
                                    v670.Humanoid.WalkSpeed = 0
                                    v670.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v670.HumanoidRootPart.CFrame

                                    TP2(v670.HumanoidRootPart.CFrame * Pos)
                                until not _G.Umm or (not v670.Parent or v670.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu666)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Lava Pirate') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Lava Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 then
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Angel Wings',
        Default = false,
    }):OnChanged(function(p671)
        _G.Wing = p671

        StopTween(_G.Wing)
    end)

    local vu672 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)

    spawn(function()
        while wait() do
            if _G.Wing and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Royal Soldier') then
                        local v673, v674, v675 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v676

                            v675, v676 = v673(v674, v675)

                            if v675 == nil then
                                break
                            end
                            if v676.Name == 'Royal Soldier' and (v676:FindFirstChild('Humanoid') and (v676:FindFirstChild('HumanoidRootPart') and v676.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v676.HumanoidRootPart.CanCollide = false
                                    v676.Humanoid.WalkSpeed = 0
                                    v676.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v676.HumanoidRootPart.CFrame

                                    TP2(v676.HumanoidRootPart.CFrame * Pos)
                                until not _G.Wing or (not v676.Parent or v676.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu672)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Royal Soldier') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Royal Soldier').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 or (World2 or World3) then
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Leather',
        Default = false,
    }):OnChanged(function(p677)
        _G.Leather = p677

        StopTween(_G.Leather)
    end)

    local vu678 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)

    spawn(function()
        while wait() do
            if _G.Leather and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Pirate') then
                        local v679, v680, v681 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v682

                            v681, v682 = v679(v680, v681)

                            if v681 == nil then
                                break
                            end
                            if v682.Name == 'Pirate' and (v682:FindFirstChild('Humanoid') and (v682:FindFirstChild('HumanoidRootPart') and v682.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v682.HumanoidRootPart.CanCollide = false
                                    v682.Humanoid.WalkSpeed = 0
                                    v682.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v682.HumanoidRootPart.CFrame

                                    TP2(v682.HumanoidRootPart.CFrame * Pos)
                                until not _G.Leather or (not v682.Parent or v682.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu678)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Pirate') then
                            topos(game:GetService('ReplicatedStorage').Pirate.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu683 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)

    spawn(function()
        while wait() do
            if _G.Leather and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Marine Captain') then
                        local v684, v685, v686 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v687

                            v686, v687 = v684(v685, v686)

                            if v686 == nil then
                                break
                            end
                            if v687.Name == 'Marine Captain' and (v687:FindFirstChild('Humanoid') and (v687:FindFirstChild('HumanoidRootPart') and v687.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v687.HumanoidRootPart.CanCollide = false
                                    v687.Humanoid.WalkSpeed = 0
                                    v687.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v687.HumanoidRootPart.CFrame

                                    TP2(v687.HumanoidRootPart.CFrame * Pos)
                                until not _G.Leather or (not v687.Parent or v687.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu683)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Marine Captain') then
                            topos(game:GetService('ReplicatedStorage').MarineCaptain.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu688 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)

    spawn(function()
        while wait() do
            if _G.Leather and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Jungle Pirate') then
                        local v689, v690, v691 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v692

                            v691, v692 = v689(v690, v691)

                            if v691 == nil then
                                break
                            end
                            if v692.Name == 'Jungle Pirate' and (v692:FindFirstChild('Humanoid') and (v692:FindFirstChild('HumanoidRootPart') and v692.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v692.HumanoidRootPart.CanCollide = false
                                    v692.Humanoid.WalkSpeed = 0
                                    v692.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v692.HumanoidRootPart.CFrame

                                    TP2(v692.HumanoidRootPart.CFrame * Pos)
                                until not _G.Leather or (not v692.Parent or v692.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu688)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Jungle Pirate') then
                            topos(game:GetService('ReplicatedStorage').JunglePirate.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 or (World2 or World3) then
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Scrap Metal',
        Default = false,
    }):OnChanged(function(p693)
        Scrap = p693

        StopTween(Scrap)
    end)

    local vu694 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)

    spawn(function()
        while wait() do
            if Scrap and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Brute') then
                        local v695, v696, v697 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v698

                            v697, v698 = v695(v696, v697)

                            if v697 == nil then
                                break
                            end
                            if v698.Name == 'Brute' and (v698:FindFirstChild('Humanoid') and (v698:FindFirstChild('HumanoidRootPart') and v698.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v698.HumanoidRootPart.CanCollide = false
                                    v698.Humanoid.WalkSpeed = 0
                                    v698.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v698.HumanoidRootPart.CFrame

                                    TP2(v698.HumanoidRootPart.CFrame * Pos)
                                until not Scrap or (not v698.Parent or v698.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu694)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Brute') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Brute').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu699 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)

    spawn(function()
        while wait() do
            if Scrap and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Mercenary') then
                        local v700, v701, v702 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v703

                            v702, v703 = v700(v701, v702)

                            if v702 == nil then
                                break
                            end
                            if v703.Name == 'Mercenary' and (v703:FindFirstChild('Humanoid') and (v703:FindFirstChild('HumanoidRootPart') and v703.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v703.HumanoidRootPart.CanCollide = false
                                    v703.Humanoid.WalkSpeed = 0
                                    v703.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v703.HumanoidRootPart.CFrame

                                    TP2(v703.HumanoidRootPart.CFrame * Pos)
                                until not Scrap or (not v703.Parent or v703.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu699)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Mercenary') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mercenary').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu704 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)

    spawn(function()
        while wait() do
            if Scrap and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Pirate Millionaire') then
                        local v705, v706, v707 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v708

                            v707, v708 = v705(v706, v707)

                            if v707 == nil then
                                break
                            end
                            if v708.Name == 'Pirate Millionaire' and (v708:FindFirstChild('Humanoid') and (v708:FindFirstChild('HumanoidRootPart') and v708.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v708.HumanoidRootPart.CanCollide = false
                                    v708.Humanoid.WalkSpeed = 0
                                    v708.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v708.HumanoidRootPart.CFrame

                                    TP2(v708.HumanoidRootPart.CFrame * Pos)
                                until not Scrap or (not v708.Parent or v708.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu704)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Pirate Millionaire') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Pirate Millionaire').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World3 then
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Conjured Cocoa',
        Default = false,
    }):OnChanged(function(p709)
        Cocoafarm = p709

        StopTween(Cocoafarm)
    end)

    local vu710 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)

    spawn(function()
        while wait() do
            if Cocoafarm and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Chocolate Bar Battler') then
                        local v711, v712, v713 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v714

                            v713, v714 = v711(v712, v713)

                            if v713 == nil then
                                break
                            end
                            if v714.Name == 'Chocolate Bar Battler' and (v714:FindFirstChild('Humanoid') and (v714:FindFirstChild('HumanoidRootPart') and v714.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v714.HumanoidRootPart.CanCollide = false
                                    v714.Humanoid.WalkSpeed = 0
                                    v714.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v714.HumanoidRootPart.CFrame

                                    TP2(v714.HumanoidRootPart.CFrame * Pos)
                                until not Cocoafarm or (not v714.Parent or v714.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu710)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Chocolate Bar Battler') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Chocolate Bar Battler').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Dragon Scale',
        Default = false,
    }):OnChanged(function(p715)
        Dragon_Scale = p715

        StopTween(Dragon_Scale)
    end)

    local vu716 = CFrame.new(6752, 565, 315)

    spawn(function()
        while wait() do
            if Dragon_Scale and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dragon Crew Archer') then
                        local v717, v718, v719 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v720

                            v719, v720 = v717(v718, v719)

                            if v719 == nil then
                                break
                            end
                            if v720.Name == 'Dragon Crew Archer' and (v720:FindFirstChild('Humanoid') and (v720:FindFirstChild('HumanoidRootPart') and v720.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v720.HumanoidRootPart.CanCollide = false
                                    v720.Humanoid.WalkSpeed = 0
                                    v720.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v720.HumanoidRootPart.CFrame

                                    TP2(v720.HumanoidRootPart.CFrame * Pos)
                                until not Dragon_Scale or (not v720.Parent or v720.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu716)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Dragon Crew Archer') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Dragon Crew Archer').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Gunpowder',
        Default = false,
    }):OnChanged(function(p721)
        Gunpowder = p721

        StopTween(Gunpowder)
    end)

    local vu722 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)

    spawn(function()
        while wait() do
            if Gunpowder and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Pistol Billionaire') then
                        local v723, v724, v725 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v726

                            v725, v726 = v723(v724, v725)

                            if v725 == nil then
                                break
                            end
                            if v726.Name == 'Pistol Billionaire' and (v726:FindFirstChild('Humanoid') and (v726:FindFirstChild('HumanoidRootPart') and v726.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v726.HumanoidRootPart.CanCollide = false
                                    v726.Humanoid.WalkSpeed = 0
                                    v726.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v726.HumanoidRootPart.CFrame

                                    TP2(v726.HumanoidRootPart.CFrame * Pos)
                                until not Gunpowder or (not v726.Parent or v726.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu722)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Pistol Billionaire') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Pistol Billionaire').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Fish Tail World 3',
        Default = false,
    }):OnChanged(function(p727)
        Fish = p727

        StopTween(Fish)
    end)

    local vu728 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)

    spawn(function()
        while wait() do
            if Fish and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fishman Captain') then
                        local v729, v730, v731 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v732

                            v731, v732 = v729(v730, v731)

                            if v731 == nil then
                                break
                            end
                            if v732.Name == 'Fishman Captain' and (v732:FindFirstChild('Humanoid') and (v732:FindFirstChild('HumanoidRootPart') and v732.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v732.HumanoidRootPart.CanCollide = false
                                    v732.Humanoid.WalkSpeed = 0
                                    v732.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v732.HumanoidRootPart.CFrame

                                    TP2(v732.HumanoidRootPart.CFrame * Pos)
                                until not Fish or (not v732.Parent or v732.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu728)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Fishman Captain') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Fishman Captain').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Farm Mini Tusk',
        Default = false,
    }):OnChanged(function(p733)
        MiniHee = p733

        StopTween(MiniHee)
    end)

    local vu734 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)

    spawn(function()
        while wait() do
            if MiniHee and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Mythological Pirate') then
                        local v735, v736, v737 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v738

                            v737, v738 = v735(v736, v737)

                            if v737 == nil then
                                break
                            end
                            if v738.Name == 'Mythological Pirate' and (v738:FindFirstChild('Humanoid') and (v738:FindFirstChild('HumanoidRootPart') and v738.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v738.HumanoidRootPart.CanCollide = false
                                    v738.Humanoid.WalkSpeed = 0
                                    v738.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v738.HumanoidRootPart.CFrame

                                    TP2(v738.HumanoidRootPart.CFrame * Pos)
                                until not MiniHee or (not v738.Parent or v738.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu734)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Mythological Pirate') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mythological Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 then
    v311:AddParagraph({
        Title = 'Sea 1',
        Content = 'World 1',
    })
    v311:AddSection('Greybeard')
    v311:AddToggle('Toggle', {
        Title = 'Auto Greybeard',
        Default = false,
    }):OnChanged(function(p739)
        _G.Greybeard = p739

        StopTween(_G.Greybeard)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Greybeard Hop',
        Default = false,
    }):OnChanged(function(p740)
        _G.Greybeardhop = p740
    end)

    local vu741 = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375)

    spawn(function()
        while wait() do
            if _G.Greybeard and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Greybeard') then
                        local v742, v743, v744 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v745

                            v744, v745 = v742(v743, v744)

                            if v744 == nil then
                                break
                            end
                            if v745.Name == 'Greybeard' and (v745:FindFirstChild('Humanoid') and (v745:FindFirstChild('HumanoidRootPart') and v745.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v745.HumanoidRootPart.CanCollide = false
                                    v745.Humanoid.WalkSpeed = 0

                                    TP2(v745.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Greybeard or (not v745.Parent or v745.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu741)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Greybeard') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Greybeard').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Greybeardhop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v311:AddSection('Saber')
    v311:AddToggle('Toggle', {
        Title = 'Auto Saber',
        Default = false,
    }):OnChanged(function(p746)
        _G.Saber = p746

        StopTween(_G.Saber)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Saber Hop',
        Default = false,
    }):OnChanged(function(p747)
        _G.SaberHop = p747
    end)
    spawn(function()
        while task.wait() do
            if _G.Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency ~= 0 then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert') then
                            local v748, v749, v750 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v751

                                v750, v751 = v748(v749, v750)

                                if v750 == nil then
                                    break
                                end
                                if v751:FindFirstChild('Humanoid') and (v751:FindFirstChild('HumanoidRootPart') and (v751.Humanoid.Health > 0 and v751.Name == 'Saber Expert')) then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v751.HumanoidRootPart.CFrame * Pos)

                                        v751.HumanoidRootPart.Transparency = 1
                                        v751.Humanoid.JumpPower = 0
                                        v751.Humanoid.WalkSpeed = 0
                                        v751.HumanoidRootPart.CanCollide = false
                                        FarmPos = v751.HumanoidRootPart.CFrame
                                        MonFarm = v751.Name
                                    until v751.Humanoid.Health <= 0 or not _G.Saber

                                    if v751.Humanoid.Health <= 0 then
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                                    end
                                end
                            end
                        end
                    elseif game:GetService('Workspace').Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
                        if game:GetService('Workspace').Map.Desert.Burn.Part.Transparency ~= 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                            wait(0.5)
                                            EquipWeapon('Relic')
                                            wait(0.5)
                                            topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-9, 0.481375456, 2.53851997e-8, 1, -5.79995607e-8, -0.481375456, 6.30572643e-8, 0.876514494))
                                        end
                                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                        topos(CFrame.new(-2967.59521, 4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

                                        local v752, v753, v754 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v755

                                            v754, v755 = v752(v753, v754)

                                            if v754 == nil then
                                                break
                                            end
                                            if v755.Name == 'Mob Leader' then
                                                if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') and (v755:FindFirstChild('Humanoid') and (v755:FindFirstChild('HumanoidRootPart') and v755.Humanoid.Health > 0)) then
                                                    repeat
                                                        task.wait()
                                                        EquipWeapon(_G.SelectWeapon)

                                                        v755.HumanoidRootPart.CanCollide = false
                                                        v755.Humanoid.WalkSpeed = 0

                                                        TP2(v755.HumanoidRootPart.CFrame * Pos)
                                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                    until v755.Humanoid.Health <= 0 or not _G.Saber
                                                end
                                                if game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader').HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                end
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'GetCup')
                                wait(0.5)
                                EquipWeapon('Cup')
                                wait(0.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'FillCup', game:GetService('Players').LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan')
                            end
                        elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Torch') then
                            EquipWeapon('Torch')
                            topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-9, 0.761243105, -5.70652914e-10, 1, 1.20584542e-9, -0.761243105, 3.4754488199999996e-10, -0.648466587))
                        else
                            topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408))
                        end
                    elseif (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                        topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279))
                    else
                        topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate1.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate2.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate3.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate4.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate5.Button.CFrame

                        wait(1)
                    end
                end)
            end
        end
    end)
    v311:AddSection('Pole')
    v311:AddToggle('Toggle', {
        Title = 'Auto Pole v1',
        Default = false,
    }):OnChanged(function(p756)
        _G.pole = p756

        StopTween(_G.pole)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Pole v1 Hop',
        Default = false,
    }):OnChanged(function(p757)
        _G.polehop = p757
    end)

    local vu758 = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)

    spawn(function()
        while wait() do
            if _G.pole and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Thunder God') then
                        local v759, v760, v761 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v762

                            v761, v762 = v759(v760, v761)

                            if v761 == nil then
                                break
                            end
                            if v762.Name == 'Thunder God' and (v762:FindFirstChild('Humanoid') and (v762:FindFirstChild('HumanoidRootPart') and v762.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v762.HumanoidRootPart.CanCollide = false
                                    v762.Humanoid.WalkSpeed = 0

                                    TP2(v762.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.pole or (not v762.Parent or v762.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu758)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.polehop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
end
if World2 then
    v311:AddParagraph({
        Title = 'Sea 2',
        Content = 'World 2',
    })
    v311:AddSection('Legendary Sword')
    v311:AddToggle('Toggle', {
        Title = 'Auto Legendary Sword',
        Default = false,
    }):OnChanged(function(p763)
        _G.BuyLegendarySword = p763
    end)
    spawn(function()
        while wait() do
            if _G.BuyLegendarySword then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '1',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '2',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '3',
                    }))

                    if _G.BuyLegendarySword_Hop and (_G.BuyLegendarySword and World2) then
                        wait(10)
                        Hop()
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Legendary Sword Hop',
        Default = false,
    }):OnChanged(function(p764)
        _G.BuyLegendarySword_Hop = p764
    end)
    v311:AddSection('Enchancement Colour')
    v311:AddToggle('Toggle', {
        Title = 'Auto Enchancement Colour',
        Default = false,
    }):OnChanged(function(p765)
        _G.BuyEnchancementColour = p765
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Enchancement Hop',
        Default = false,
    }):OnChanged(function(p766)
        _G.BuyEnchancementColour_Hop = p766
    end)
    spawn(function()
        while wait() do
            if _G.BuyEnchancementColour then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'ColorsDealer',
                    '2',
                }))

                if _G.BuyEnchancementColour_Hop and (_G.BuyEnchancementColour and not World1) then
                    wait(10)
                    Hop()
                end
            end
        end
    end)
    v311:AddSection('Bartlio')
    v311:AddToggle('Toggle', {
        Title = 'Auto Bartlio',
        Default = false,
    }):OnChanged(function(p767)
        _G.Bartilo = p767
    end)
    spawn(function()
        pcall(function()
            while true do
                if not wait(0.1) then
                    return
                end
                if _G.Bartilo then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 0 then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value < 800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 1 then
                            if game:GetService('Players').LocalPlayer.Data.Level.Value >= 800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') == 2 then
                                repeat
                                    topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10

                                wait(1)
                                topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                                wait()

                                if _G.Bartilo and (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude > 10 then
                                    break
                                end
                            end
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Jeremy') then
                            Ms = 'Jeremy'

                            local v768, v769, v770 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v771

                                v770, v771 = v768(v769, v770)

                                if v770 == nil then
                                    break
                                end
                                if v771.Name == Ms then
                                    OldCFrameBartlio = v771.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        EquipWeapon(_G.SelectWeapon)

                                        v771.HumanoidRootPart.Transparency = 1
                                        v771.HumanoidRootPart.CanCollide = false
                                        v771.HumanoidRootPart.CFrame = OldCFrameBartlio

                                        TP2(v771.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until not v771.Parent or (v771.Humanoid.Health <= 0 or _G.Bartilo == false)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Jeremy [Lv. 850] [Boss]') then
                            repeat
                                topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                wait()
                            until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                            wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo')
                            wait(1)

                            repeat
                                topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                wait()
                            until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10

                            wait(2)
                        else
                            repeat
                                topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                wait()
                            until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Swan Pirates') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Swan Pirate') then
                            Ms = 'Swan Pirate'

                            local v772, v773, v774 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local vu775

                                v774, vu775 = v772(v773, v774)

                                if v774 == nil then
                                    break
                                end
                                if vu775.Name == Ms then
                                    pcall(function()
                                        repeat
                                            task.wait()
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            EquipWeapon(_G.SelectWeapon)

                                            vu775.HumanoidRootPart.Transparency = 1
                                            vu775.HumanoidRootPart.CanCollide = false

                                            TP2(vu775.HumanoidRootPart.CFrame * Pos)

                                            _G.PosMon = vu775.HumanoidRootPart.CFrame
                                            StartMagnet = true
                                        until not vu775.Parent or (vu775.Humanoid.Health <= 0 or _G.Bartilo == false) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                        StartMagnet = false
                                    end)
                                end
                            end
                        else
                            topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582))
                            wait()

                            if _G.Bartilo and (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582)).Magnitude > 10 then
                            end
                        end
                    else
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                        wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'BartiloQuest', 1)
                    end
                end
            end
        end)
    end)
    v311:AddSection('Swan Glasses')
    v311:AddToggle('Toggle', {
        Title = 'Auto Swan Glasses',
        Default = false,
    }):OnChanged(function(p776)
        _G.FarmSwanGlasses = p776

        StopTween(_G.FarmSwanGlasses)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.FarmSwanGlasses then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Don Swan') then
                        local v777, v778, v779 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu780

                            v779, vu780 = v777(v778, v779)

                            if v779 == nil then
                                break
                            end
                            if vu780.Name == 'Don Swan' and (vu780.Humanoid.Health > 0 and (vu780:IsA('Model') and (vu780:FindFirstChild('Humanoid') and vu780:FindFirstChild('HumanoidRootPart')))) then
                                repeat
                                    task.wait()
                                    pcall(function()
                                        EquipWeapon(_G.SelectWeapon)

                                        vu780.HumanoidRootPart.CanCollide = false

                                        TP2(vu780.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    end)
                                until _G.FarmSwanGlasses == false or vu780.Humanoid.Health <= 0
                            end
                        end
                    else
                        repeat
                            task.wait()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                        until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.FarmSwanGlasses == false
                    end
                end
            end
        end)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Swan Glasses Hop',
        Default = false,
    }):OnChanged(function(p781)
        _G.FarmSwanGlasses_Hop = p781
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Evo Race (V2)',
        Default = false,
    }):OnChanged(function(p782)
        _G.EvoRace = p782

        StopTween(_G.EvoRace)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.EvoRace and not game:GetService('Players').LocalPlayer.Data.Race:FindFirstChild('Evolved') then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 0 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 1 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') == 2 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                            end
                        else
                            pcall(function()
                                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 1') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 1') then
                                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 2') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 2') then
                                        if not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 3')) then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Zombie') then
                                                local v783, v784, v785 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                while true do
                                                    local v786

                                                    v785, v786 = v783(v784, v785)

                                                    if v785 == nil then
                                                        break
                                                    end
                                                    if v786.Name == 'Zombie' then
                                                        repeat
                                                            task.wait()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            TP2(v786.HumanoidRootPart.CFrame * Pos)

                                                            v786.HumanoidRootPart.CanCollide = false
                                                            _G.PosMon = v786.HumanoidRootPart.CFrame
                                                            StartMagnet = true
                                                        until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or (not v786.Parent or (v786.Humanoid.Health <= 0 or _G.EvoRace == false))

                                                        StartMagnet = false
                                                    end
                                                end
                                            else
                                                StartMagnet = false

                                                topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                            end
                                        end
                                    else
                                        topos(game:GetService('Workspace').Flower2.CFrame)
                                    end
                                else
                                    topos(game:GetService('Workspace').Flower1.CFrame)
                                end
                            end)
                        end
                    else
                        topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-8, -0.68292886, 3.5996322399999996e-8, 1, 5.50667032e-8, 0.68292886, 1.56424669e-8, -0.730484903))

                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    end
                end
            end
        end)
    end)
    v311:AddSection('Dark Fragment')
    v311:AddToggle('Toggle', {
        Title = 'Auto Darkbeard Boss (Summon And Kill)',
        Default = false,
    }):OnChanged(function(p787)
        _G.AutoDarkbeard = p787

        StopTween(_G.AutoDarkbeard)
    end)
    spawn(function()
        while wait() do
            if _G.AutoDarkbeard then
                local _ = game.Player.LocalPlayer

                if game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness') or game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') then
                    EquipWeapon('Fist of Darkness')
                    topos(CFrame.new(3777.58618, 14.8764334, -3498.81909, 0.13158533, 1.16175372e-8, -0.991304874, -9.53944035e-10, 1, 1.15928129e-8, 0.991304874, -5.79794768e-10, 0.13158533))

                    local v788, v789, v790 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v791

                        v790, v791 = v788(v789, v790)

                        if v790 == nil then
                            break
                        end
                        if v791.Name == 'Darkbeard' then
                            repeat
                                wait(0.1)
                                EquipWeapon(_G.SelectWeapon)

                                v791.HumanoidRootPart.CanCollide = false
                                v791.Humanoid.WalkSpeed = 0

                                TP2(v791.HumanoidRootPart.CFrame * Pos)
                            until not v791.Name == 'Darkbeard' and not v791.Parent
                        end
                    end
                end
            end
        end
    end)
    v311:AddSection('Rengoku')
    v311:AddToggle('Toggle', {
        Title = 'Auto Rengoku',
        Default = false,
    }):OnChanged(function(p792)
        _G.Rengoku = p792

        StopTween(_G.Rengoku)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Rengoku then
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hidden Key') then
                        EquipWeapon('Hidden Key')
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Snow Lurker') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior') then
                        local v793, v794, v795 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v796

                            v795, v796 = v793(v794, v795)

                            if v795 == nil then
                                break
                            end
                            if (v796.Name == 'Snow Lurker' or v796.Name == 'Arctic Warrior') and v796.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v796.HumanoidRootPart.CanCollide = false
                                    _G.PosMon = v796.HumanoidRootPart.CFrame

                                    TP2(v796.HumanoidRootPart.CFrame * Pos)

                                    StartMagnet = true
                                until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or (_G.Rengoku == false or (not v796.Parent or v796.Humanoid.Health <= 0))

                                StartMagnet = false
                            end
                        end
                    else
                        StartMagnet = false

                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    v311:AddSection('Trident')
    v311:AddToggle('Toggle', {
        Title = 'Auto Dragon Trident',
        Default = false,
    }):OnChanged(function(p797)
        _G.Dragon_Trident = p797

        StopTween(_G.Dragon_Trident)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Dragon Trident Hop',
        Default = false,
    }):OnChanged(function(p798)
        _G.Dragon_Trident_Hop = p798
    end)

    local vu799 = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125)

    spawn(function()
        while wait() do
            if _G.Dragon_Trident and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper') then
                        local v800, v801, v802 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v803

                            v802, v803 = v800(v801, v802)

                            if v802 == nil then
                                break
                            end
                            if v803.Name == 'Tide Keeper' and (v803:FindFirstChild('Humanoid') and (v803:FindFirstChild('HumanoidRootPart') and v803.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v803.HumanoidRootPart.CanCollide = false
                                    v803.Humanoid.WalkSpeed = 0

                                    TP2(v803.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Dragon_Trident or (not v803.Parent or v803.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu799)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Dragon_Trident_Hop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
end
if World3 then
    v311:AddParagraph({
        Title = 'Sea 3',
        Content = 'World 3',
    })
    v311:AddSection('Rip Indra')
    v311:AddToggle('Toggle', {
        Title = 'Auto Rip_Indra True',
        Default = false,
    }):OnChanged(function(p804)
        _G.DarkDagger = p804

        StopTween(_G.DarkDagger)
    end)

    local vu805 = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.DarkDagger then
                    if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra True Form') or game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                        local v806, v807, v808 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu809

                            v808, vu809 = v806(v807, v808)

                            if v808 == nil then
                                break
                            end
                            if vu809.Name == ('rip_indra True Form' or vu809.Name == 'rip_indra') and (vu809.Humanoid.Health > 0 and (vu809:IsA('Model') and (vu809:FindFirstChild('Humanoid') and vu809:FindFirstChild('HumanoidRootPart')))) then
                                repeat
                                    task.wait()
                                    pcall(function()
                                        EquipWeapon(_G.SelectWeapon)

                                        vu809.HumanoidRootPart.CanCollide = false

                                        TP2(vu809.HumanoidRootPart.CFrame * Pos)
                                    end)
                                until _G.DarkDagger == false or vu809.Humanoid.Health <= 0
                            end
                        end
                    else
                        topos(vu805)
                    end
                end
            end
        end)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Rip_Indra True Hop',
        Default = false,
    }):OnChanged(function(p810)
        _G.DarkDagger_Hop = p810
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.DarkDagger_Hop and (_G.DarkDagger and World3) and not (game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form [Lv. 5000] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('rip_indra True Form [Lv. 5000] [Raid Boss]')) then
                    Hop()
                end
            end
        end)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Press Haki Button',
        Default = false,
    }):OnChanged(function(p811)
        Open_Color_Haki = p811

        StopTween(Open_Color_Haki)
    end)
    spawn(function()
        while wait(0.3) do
            pcall(function()
                if Open_Color_Haki then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Winter Sky')
                    wait(0.5)

                    repeat
                        topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208))
                        wait()
                    until _G.StopTween == true or (Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)

                    wait(0.5)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Pure Red')
                    wait(0.5)

                    repeat
                        topos(CFrame.new(-5414.41357, 309.865753, -2212.45776))
                        wait()
                    until _G.StopTween == true or (Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)

                    wait(0.5)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Snow White')
                    wait(0.5)

                    repeat
                        topos(CFrame.new(-4971.47559, 331.565765, -3720.02954))
                        wait()
                    until _G.StopTween == true or (Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)

                    wait(0.5)
                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
                    wait(3)
                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
                end
            end)
        end
    end)

    function EquipAllWeapon()
        pcall(function()
            local v812, v813, v814 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v815

                v814, v815 = v812(v813, v814)

                if v814 == nil then
                    break
                end
                if v815:IsA('Tool') and (v815.Name ~= 'Summon Sea Beast' and (v815.Name ~= 'Water Body' and v815.Name ~= 'Awakening')) then
                    local v816 = game.Players.LocalPlayer.Backpack:FindFirstChild(v815.Name)

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v816)
                    wait(1)
                end
            end
        end)
    end

    v311:AddSection('Yama')
    v311:AddToggle('Toggle', {
        Title = 'Auto Yama',
        Default = false,
    }):OnChanged(function(p817)
        _G.Yama = p817

        StopTween(_G.Yama)
    end)
    spawn(function()
        while wait() do
            if _G.Yama and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                repeat
                    wait(0.1)
                    fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Yama') or not _G.Yama
            end
        end
    end)
    v311:AddSection('Advance Dungeon')
    v311:AddToggle('Toggle', {
        Title = 'Auto Phoenix Raid',
        Default = false,
    }):OnChanged(function(p818)
        _G.AdvanceDungeon = p818

        StopTween(_G.AdvanceDungeon)
    end)
    spawn(function()
        while wait() do
            if _G.AdvanceDungeon then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Phoenix') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Phoenix') then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))

                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Check')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Heal')
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                            topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))

                            if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Check')
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Heal')
                            end
                        end
                    end
                end)
            end
        end
    end)
    v311:AddSection('Musketeer')
    v311:AddToggle('Toggle', {
        Title = 'Auto Musketeer Hat',
        Default = false,
    }):OnChanged(function(p819)
        _G.MusketeerHat = p819

        StopTween(_G.MusketeerHat)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.MusketeerHat then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBandits ~= false then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBoss ~= false then
                            if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                                topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                            end
                        elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                                local v820, v821, v822 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local vu823

                                    v822, vu823 = v820(v821, v822)

                                    if v822 == nil then
                                        break
                                    end
                                    if vu823.Name == 'Captain Elephant' then
                                        OldCFrameElephant = vu823.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)

                                                vu823.HumanoidRootPart.CanCollide = false

                                                TP2(vu823.HumanoidRootPart.CFrame * Pos)

                                                vu823.HumanoidRootPart.CanCollide = false
                                                vu823.HumanoidRootPart.CFrame = OldCFrameElephant

                                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            end)
                                        until _G.MusketeerHat == false or (vu823.Humanoid.Health <= 0 or not vu823.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                            end
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Forest Pirate') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
                            local v824, v825, v826 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local vu827

                                v826, vu827 = v824(v825, v826)

                                if v826 == nil then
                                    break
                                end
                                if vu827.Name == 'Forest Pirate' then
                                    repeat
                                        task.wait()
                                        pcall(function()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP2(vu827.HumanoidRootPart.CFrame * Pos)

                                            vu827.HumanoidRootPart.CanCollide = false
                                            _G.PosMon = vu827.HumanoidRootPart.CFrame
                                            StartMagnet = true
                                        end)
                                    until _G.MusketeerHat == false or (not vu827.Parent or vu827.Humanoid.Health <= 0) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                    StartMagnet = false
                                end
                            end
                        else
                            StartMagnet = false

                            topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                        end
                    end
                end
            end
        end)
    end)
    v311:AddSection('Twin Hook')
    v311:AddToggle('Toggle', {
        Title = 'Auto Twin Hook',
        Default = false,
    }):OnChanged(function(p828)
        _G.TwinHook = p828

        StopTween(_G.TwinHook)
    end)

    ToggleHop = v311:AddToggle('Toggle', {
        Title = 'Auto Twin Hook Hop',
        Default = false,
    })

    ToggleHop:OnChanged(function(p829)
        _G.TwinHook_Hop = p829
    end)

    local vu830 = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)

    spawn(function()
        while wait() do
            if _G.TwinHook and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                        local v831, v832, v833 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v834

                            v833, v834 = v831(v832, v833)

                            if v833 == nil then
                                break
                            end
                            if v834.Name == 'Captain Elephant' and (v834:FindFirstChild('Humanoid') and (v834:FindFirstChild('HumanoidRootPart') and v834.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v834.HumanoidRootPart.CanCollide = false
                                    v834.Humanoid.WalkSpeed = 0

                                    TP2(v834.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.TwinHook or (not v834.Parent or v834.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu830)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Captain Elephant') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Captain Elephant').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.TwinHook_Hop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v311:AddSection('Haki')
    v311:AddToggle('Toggle', {
        Title = 'Auto Rainbow Haki',
        Default = false,
    }):OnChanged(function(p835)
        _G.Rainbow_Haki = p835

        StopTween(_G.Rainbow_Haki)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.Rainbow_Haki then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true or not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Stone') then
                            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true or not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Island Empress') then
                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Kilo Admiral') then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Kilo Admiral') then
                                        local v836, v837, v838 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v839

                                            v838, v839 = v836(v837, v838)

                                            if v838 == nil then
                                                break
                                            end
                                            if v839.Name == 'Kilo Admiral' then
                                                OldCFrameRainbow = v839.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP2(v839.HumanoidRootPart.CFrame * Pos)

                                                    v839.HumanoidRootPart.CanCollide = false
                                                    v839.HumanoidRootPart.CFrame = OldCFrameRainbow

                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until _G.Rainbow_Haki == false or (v839.Humanoid.Health <= 0 or not v839.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, 0, -0.143904909, 0, 1.00000012, 0, 0.143904924, 0, -0.989591479))
                                    end
                                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                                        local v840, v841, v842 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v843

                                            v842, v843 = v840(v841, v842)

                                            if v842 == nil then
                                                break
                                            end
                                            if v843.Name == 'Captain Elephant' then
                                                OldCFrameRainbow = v843.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP2(v843.HumanoidRootPart.CFrame * Pos)

                                                    v843.HumanoidRootPart.CanCollide = false
                                                    v843.HumanoidRootPart.CFrame = OldCFrameRainbow

                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until _G.Rainbow_Haki == false or (v843.Humanoid.Health <= 0 or not v843.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-8, 0.69961375, -1.02065748e-7, 1, -9.943830649999999e-9, -0.69961375, -6.430152410000001e-8, 0.714521289))
                                    end
                                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Beautiful Pirate') then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                                        local v844, v845, v846 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v847

                                            v846, v847 = v844(v845, v846)

                                            if v846 == nil then
                                                break
                                            end
                                            if v847.Name == 'Beautiful Pirate' then
                                                OldCFrameRainbow = v847.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP2(v847.HumanoidRootPart.CFrame * Pos)

                                                    v847.HumanoidRootPart.CanCollide = false
                                                    v847.HumanoidRootPart.CFrame = OldCFrameRainbow

                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until _G.Rainbow_Haki == false or (v847.Humanoid.Health <= 0 or not v847.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                                    end
                                else
                                    topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                        wait(1.5)
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                                    end
                                end
                            elseif game:GetService('Workspace').Enemies:FindFirstChild('Island Empress') then
                                local v848, v849, v850 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v851

                                    v850, v851 = v848(v849, v850)

                                    if v850 == nil then
                                        break
                                    end
                                    if v851.Name == 'Island Empress' then
                                        OldCFrameRainbow = v851.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP2(v851.HumanoidRootPart.CFrame * Pos)

                                            v851.HumanoidRootPart.CanCollide = false
                                            v851.HumanoidRootPart.CFrame = OldCFrameRainbow

                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        until _G.Rainbow_Haki == false or (v851.Humanoid.Health <= 0 or not v851.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, 0, -0.994878292, 0, 1, 0, 0.994878292, 0, -0.101080291))
                            end
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Stone') then
                            local v852, v853, v854 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v855

                                v854, v855 = v852(v853, v854)

                                if v854 == nil then
                                    break
                                end
                                if v855.Name == 'Stone' then
                                    OldCFrameRainbow = v855.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v855.HumanoidRootPart.CFrame * Pos)

                                        v855.HumanoidRootPart.CanCollide = false
                                        v855.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until _G.Rainbow_Haki == false or (v855.Humanoid.Health <= 0 or not v855.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.0000203251839, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                        end
                    end
                end
            end
        end)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Observation Haki v2',
        Default = false,
    }):OnChanged(function(p856)
        _G.Observationv2 = p856

        StopTween(_G.Observationv2)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Observationv2 then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') ~= 3 then
                        _G.MusketeerHat = true
                    else
                        _G.MusketeerHat = false

                        if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Banana') and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Apple') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pineapple')) then
                            repeat
                                topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                                wait()
                            until not _G.Observationv2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10

                            wait(0.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                        elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fruit Bowl') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fruit Bowl') then
                            repeat
                                topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                                wait()
                            until not _G.Observationv2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10

                            wait(0.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                            wait(1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                        else
                            local v857, v858, v859 = pairs(game:GetService('Workspace'):GetDescendants())

                            while true do
                                local v860

                                v859, v860 = v857(v858, v859)

                                if v859 == nil then
                                    break
                                end
                                if v860.Name == 'Apple' or (v860.Name == 'Banana' or v860.Name == 'Pineapple') then
                                    v860.Handle.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)

                                    wait()
                                    firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v860.Handle, 0)
                                    wait()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    v311:AddSection('Carvander')
    v311:AddToggle('Toggle', {
        Title = 'Auto Cavander',
        Default = false,
    }):OnChanged(function(p861)
        _G.Carvender = p861

        StopTween(_G.Carvender)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Cavander Hop',
        Default = false,
    }):OnChanged(function(p862)
        _G.Carvenderhop = p862
    end)

    local vu863 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)

    spawn(function()
        while wait() do
            if _G.Carvender and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                        local v864, v865, v866 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v867

                            v866, v867 = v864(v865, v866)

                            if v866 == nil then
                                break
                            end
                            if v867.Name == 'Beautiful Pirate' and (v867:FindFirstChild('Humanoid') and (v867:FindFirstChild('HumanoidRootPart') and v867.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v867.HumanoidRootPart.CanCollide = false
                                    v867.Humanoid.WalkSpeed = 0

                                    TP2(v867.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Carvender or (not v867.Parent or v867.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu863)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Cavanderhop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v311:AddSection('Tushita')
    v311:AddToggle('Toggle', {
        Title = 'Auto Tushita',
        Default = false,
    }):OnChanged(function(p868)
        _G.tushita = p868

        StopTween(_G.tushita)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Tushita Hop',
        Default = false,
    }):OnChanged(function(p869)
        _G.tushitahop = p869
    end)

    local vu870 = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)

    spawn(function()
        while wait() do
            if _G.tushita and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Longma') then
                        local v871, v872, v873 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v874

                            v873, v874 = v871(v872, v873)

                            if v873 == nil then
                                break
                            end
                            if v874.Name == 'Longma' and (v874:FindFirstChild('Humanoid') and (v874:FindFirstChild('HumanoidRootPart') and v874.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v874.HumanoidRootPart.CanCollide = false
                                    v874.Humanoid.WalkSpeed = 0

                                    TP2(v874.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.tushita or (not v874.Parent or v874.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu870)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Longma') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Longma').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.tushitahop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Holy Torch',
        Default = false,
    }):OnChanged(function(p875)
        _G.HolyTorch = p875

        StopTween(_G.HolyTorch)
    end)
    spawn(function()
        while wait(0.5) do
            pcall(function()
                if _G.HolyTorch then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Holy Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Holy Torch') then
                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(5713, 47, 254))
                        until (Vector3.new(-10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)

                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                        until (Vector3.new(-11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)

                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                        until (Vector3.new(-12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)

                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                        until (Vector3.new(-13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)
                        EquipWeapon('Holy Torch')

                        repeat
                            wait(0.2)
                            topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                        until (Vector3.new(-13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)
                        Com()
                        wait(20)
                    elseif not (game.Players.LocalPlayer.Backpack:FindFirstChild('Holy Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Holy Torch')) then
                        if (Vector3.new(5153.18799, 172.82933, 909.815918) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5314.58203125, 25.419387817382813, -125.94227600097656))
                        end

                        topos(CFrame.new(5153.18799, 172.82933, 909.815918))
                        wait(3)
                    end
                end
            end)
        end
    end)
    v311:AddSection('Hallow Scythe')
    v311:AddToggle('Toggle', {
        Title = 'Auto Hallow Scythe',
        Default = false,
    }):OnChanged(function(p876)
        _G.FarmBossHallow = p876

        StopTween(_G.FarmBossHallow)
    end)

    ToggleHop = v311:AddToggle('Toggle', {
        Title = 'Auto Hallow Scythe Hop',
        Default = false,
    })

    ToggleHop:OnChanged(function(p877)
        _G.FarmBossHallowHop = p877
    end)
    spawn(function()
        while wait() do
            if _G.FarmBossHallow then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v878, v879, v880 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v881

                            v880, v881 = v878(v879, v880)

                            if v880 == nil then
                                break
                            end
                            if string.find(v881.Name, 'Soul Reaper') then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP2(v881.HumanoidRootPart.CFrame * Pos)

                                    v881.HumanoidRootPart.Transparency = 1

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until v881.Humanoid.Health <= 0 or _G.FarmBossHallow == false
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        EquipWeapon('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif _G.FarmBossHallowHop then
                        Hop()
                    end
                end)
            end
        end
    end)
end
if World2 or World3 then
    v311:AddSection('Soul Guitar')
    v311:AddToggle('Toggle', {
        Title = 'Auto Soul Guitar ( Test )',
        Default = false,
    }):OnChanged(function(p882)
        _G.Guitar = p882

        StopTween(_G.Guitar)
    end)
    task.spawn(function()
        repeat
            task.wait()
        until _G.Guitar

        while task.wait() do
            pcall(function()
                if _G.Guitar and World3 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)

                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check') ~= nil then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Swamp ~= false then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Gravestones ~= false then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Ghost ~= false then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies ~= false then
                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == false then
                                            topos(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375))

                                            repeat
                                                task.wait()
                                            until not _G.Guitar or GetDistance(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375)) <= 10

                                            for v885 = 10, 10 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v885)].BrickColor ~= 'Storm blue' then
                                                    local v884 = v885

                                                    while true do
                                                        task.wait()
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v885)].ClickDetector)

                                                        local v885

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v885)].BrickColor == 'Storm blue' then
                                                            v885 = v884

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v885 = v884

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v885 = v884

                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            for v888 = 8, 8 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v888)].BrickColor ~= game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v888)]['Part' .. tostring(v888)].BrickColor then
                                                    local v887 = v888

                                                    while true do
                                                        task.wait()
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v888)].ClickDetector)

                                                        local v888

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v888)].BrickColor == game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v888)]['Part' .. tostring(v888)].BrickColor then
                                                            v888 = v887

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v888 = v887

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v888 = v887

                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            for v891 = 6, 6 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v891)].BrickColor ~= game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v891)]['Part' .. tostring(v891)].BrickColor then
                                                    local v890 = v891

                                                    while true do
                                                        task.wait()
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v891)].ClickDetector)

                                                        local v891

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v891)].BrickColor == game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v891)]['Part' .. tostring(v891)].BrickColor then
                                                            v891 = v890

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v891 = v890

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v891 = v890

                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            for v894 = 3, 4 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v894)].BrickColor ~= game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v894)]['Part' .. tostring(v894)].BrickColor then
                                                    local v893 = v894

                                                    while true do
                                                        task.wait(5)
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v894)].ClickDetector)

                                                        local v894

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v894)].BrickColor == game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v894)]['Part' .. tostring(v894)].BrickColor then
                                                            v894 = v893

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v894 = v893

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v894 = v893

                                                            break
                                                        end
                                                    end
                                                end
                                            end

                                            if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1.BrickColor ~= game:GetService('Workspace').Map['Haunted Castle'].IslandModel['gamma_Cube.275'].BrickColor then
                                                repeat
                                                    task.wait()
                                                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1.ClickDetector)
                                                until game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1.BrickColor == game:GetService('Workspace').Map['Haunted Castle'].IslandModel['gamma_Cube.275'].BrickColor or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true
                                            end
                                        end
                                    else
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment2:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment2.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment5:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment5.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment6:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment6.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment8:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment8.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment9:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment9.Line.Position.Y == -1000 or not _G.Guitar

                                        if getTrophies(1)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(2)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment3:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment3.Line.Rotation.Z == getTrophies(2)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment3.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(3)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment4:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment4.Line.Rotation.Z == getTrophies(3)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment4.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(4)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment7:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment7.Line.Rotation.Z == getTrophies(4)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment7.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(5)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment10:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment10.Line.Rotation.Z == getTrophies(5)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment10.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Ghost', true)
                                end
                            else
                                GetFirePlacard('7', 'Left')
                                GetFirePlacard('6', 'Left')
                                GetFirePlacard('5', 'Left')
                                GetFirePlacard('4', 'Right')
                                GetFirePlacard('3', 'Left')
                                GetFirePlacard('2', 'Right')
                                GetFirePlacard('1', 'Right')
                            end
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') then
                            local v895, v896, v897 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v898

                                v897, v898 = v895(v896, v897)

                                if v897 == nil then
                                    break
                                end
                                if v898.Name == 'Living Zombie' and (v898:FindFirstChild('HumanoidRootPart') and (v898:FindFirstChild('Humanoid') and v898:FindFirstChild('Humanoid').Health > 0)) then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)

                                        v898.HumanoidRootPart.CanCollide = false
                                        v898.Head.CanCollide = false

                                        TP2(v898.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                        _G.PosMon = v898.HumanoidRootPart.CFrame
                                        StartMagnet = true
                                    until not _G.Guitar or (v898.Humanoid.Health <= 0 or not v898.Parent) or game:GetService('Workspace').Map['Haunted Castle'].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                                end
                            end
                        else
                            StartMagnet = false

                            topos(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                    end
                end
            end)
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Soul Guitar Full',
        Default = false,
    }):OnChanged(function(p899)
        Auto_Quest_Soul_Guitar = p899

        StopTween(Auto_Quest_Soul_Guitar)
    end)
    LPH_NO_VIRTUALIZE(function()
        vu20.spawn(function()
            while wait() do
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
                end
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                end
            end
        end)
    end)()
    spawn(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            pcall(function()
                if StartMagnet then
                    local v900, v901, v902 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v903

                        v902, v903 = v900(v901, v902)

                        if v902 == nil then
                            break
                        end
                        if not string.find(v903.Name, 'Boss') and ((v903.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and InMyNetWork(v903.HumanoidRootPart)) then
                            v903.HumanoidRootPart.CFrame = PosMon
                            v903.Humanoid.JumpPower = 0
                            v903.Humanoid.WalkSpeed = 0
                            v903.HumanoidRootPart.CanCollide = false
                            v903.Head.CanCollide = false

                            v903.Humanoid:ChangeState(14)
                            v903.Humanoid:ChangeState(11)
                        end
                    end
                end
            end)
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if GetWeaponInventory('Soul Guitar') == false and Auto_Quest_Soul_Guitar then
                    if GetMaterial('Bones') < 500 or (GetMaterial('Ectoplasm') < 250 or GetMaterial('Dark Fragment') < 1) then
                        if GetMaterial('Ectoplasm') > 250 then
                            if GetMaterial('Bones') <= 500 then
                                if World3 then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                                        local v904, v905, v906 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v907

                                            v906, v907 = v904(v905, v906)

                                            if v906 == nil then
                                                break
                                            end
                                            if (v907.Name == 'Reborn Skeleton' or (v907.Name == 'Living Zombie' or (v907.Name == 'Demonic Soul' or v907.Name == 'Posessed Mummy'))) and (v907:FindFirstChild('Humanoid') and (v907:FindFirstChild('HumanoidRootPart') and v907.Humanoid.Health > 0)) then
                                                repeat
                                                    wait()

                                                    BonesBring = true

                                                    EquipWeapon(_G.SelectWeapon)

                                                    PosMonBone = v907.HumanoidRootPart.CFrame
                                                    v907.HumanoidRootPart.Transparency = 1
                                                    v907.Humanoid.JumpPower = 0
                                                    v907.Humanoid.WalkSpeed = 0
                                                    v907.HumanoidRootPart.CanCollide = false

                                                    TP2(v907.HumanoidRootPart.CFrame * Pos)
                                                until not Auto_Quest_Soul_Guitar or (v907.Humanoid.Health <= 0 or (not v907.Parent or v907.Humanoid.Health <= 0))

                                                BonesBring = false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                end
                            end
                        elseif World2 then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior')))) then
                                local v908, v909, v910 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v911

                                    v910, v911 = v908(v909, v910)

                                    if v910 == nil then
                                        break
                                    end
                                    if (v911.Name == 'Ship Deckhand' or (v911.Name == 'Ship Engineer' or (v911.Name == 'Ship Steward' or (v911.Name == 'Ship Officer' or v911.Name == 'Arctic Warrior')))) and (v911:FindFirstChild('Humanoid') and (v911:FindFirstChild('HumanoidRootPart') and v911.Humanoid.Health > 0)) then
                                        repeat
                                            wait()

                                            StartMagnet = true

                                            EquipWeapon(_G.SelectWeapon)

                                            _G.PosMon = v911.HumanoidRootPart.CFrame
                                            v911.HumanoidRootPart.Transparency = 1
                                            v911.Humanoid.JumpPower = 0
                                            v911.Humanoid.WalkSpeed = 0
                                            v911.HumanoidRootPart.CanCollide = false

                                            TP2(v911.HumanoidRootPart.CFrame * Pos)
                                        until not Auto_Quest_Soul_Guitar or (not v911.Parent or v911.Humanoid.Health <= 0)

                                        StartMagnet = false
                                    end
                                end
                            else
                                StartMagnet = false

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                        end
                    elseif (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                        topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                    elseif game:GetService('Workspace').Map['Haunted Castle'].Candle1.Transparency ~= 0 then
                        if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Error') then
                            print('Go to Grave')
                            topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                        elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                            print('Wait Next Night')
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                        end
                    else
                        local v912 = game.ReplicatedStorage:WaitForChild('Remotes'):WaitForChild('CommF_')
                        local v913 = v912:InvokeServer('GuitarPuzzleProgress', 'Check')

                        if not v913 then
                            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer('gravestoneEvent', 2) ~= true then
                                if Auto_Quest_Soul_Guitar_Hop then
                                    ServerFunc:NormalTeleport()
                                end
                            else
                                v912:InvokeServer('gravestoneEvent', 2, true)
                            end
                        end
                        if v913 then
                            local v914 = v913.Swamp
                            local v915 = v913.Gravestones
                            local v916 = v913.Ghost
                            local v917 = v913.Trophies
                            local v918 = v913.Pipes
                            local _ = v913.CraftedOnce

                            if v914 and (v915 and (v916 and (v917 and v918))) then
                                Auto_Quest_Soul_Guitar = false
                            end
                            if not v914 then
                                repeat
                                    wait()
                                    topos(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0, 30, 0))
                                until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100

                                local v919, v920, v921 = pairs(game.Workspace.Enemies:GetChildren())

                                while true do
                                    local v922

                                    v921, v922 = v919(v920, v921)

                                    if v921 == nil then
                                        break
                                    end
                                    if v922.Name == 'Living Zombie' and (v922:FindFirstChild('Humanoid') and v922:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer:DistanceFromCharacter(v922.HumanoidRootPart.Position) <= 2000 then
                                        repeat
                                            wait()
                                            EquipWeapon(_G.SelectWeapon)

                                            v922.HumanoidRootPart.Transparency = 1
                                            PosMonBone = v922.HumanoidRootPart.CFrame
                                            BonesBring = true
                                            v922.Humanoid.JumpPower = 0
                                            v922.Humanoid.WalkSpeed = 0
                                            v922.HumanoidRootPart.CanCollide = false

                                            TP2(v922.HumanoidRootPart.CFrame * CFrame.new(0, 30, 15))
                                        until not v922.Parent or (v922.Humanoid.Health <= 0 or not (v922:FindFirstChild('HumanoidRootPart') and (v922:FindFirstChild('Humanoid') and Auto_Quest_Soul_Guitar)))

                                        BonesBring = false
                                    end
                                end
                            end

                            wait(1)

                            if v914 and not v915 then
                                v912:InvokeServer('GuitarPuzzleProgress', 'Gravestones')
                            end

                            wait(1)

                            if v914 and (v915 and not v916) then
                                v912:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                            end

                            wait(1)

                            if v914 and (v915 and (v916 and not v917)) then
                                v912:InvokeServer('GuitarPuzzleProgress', 'Trophies')
                            end

                            wait(1)

                            if v914 and (v915 and (v916 and (v917 and not v918))) then
                                v912:InvokeServer('GuitarPuzzleProgress', 'Pipes')
                            end
                        end
                    end
                end
            end)
        end
    end)
end
if World3 then
    v311:AddSection('Buddy Sword')
    v311:AddToggle('Toggle', {
        Title = 'Auto Buddy Sword',
        Default = false,
    }):OnChanged(function(p923)
        _G.BudySword = p923

        StopTween(_G.BudySword)
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Buddy Sword Hop',
        Default = false,
    }):OnChanged(function(p924)
        _G.BudySwordHop = p924
    end)

    local vu925 = CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875)

    spawn(function()
        while wait() do
            if _G.BudySword and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                        local v926, v927, v928 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v929

                            v928, v929 = v926(v927, v928)

                            if v928 == nil then
                                break
                            end
                            if v929.Name == 'Cake Queen' and (v929:FindFirstChild('Humanoid') and (v929:FindFirstChild('HumanoidRootPart') and v929.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v929.HumanoidRootPart.CanCollide = false
                                    v929.Humanoid.WalkSpeed = 0

                                    TP2(v929.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.BudySword or (not v929.Parent or v929.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu925)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.BudySwordHop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v311:AddSection('Dual Curse Katana')
    v311:AddToggle('Toggle', {
        Title = 'Auto Finish Tushita Quest',
        Default = false,
    }):OnChanged(function(p930)
        Tushita_Quest = p930

        StopTween(Tushita_Quest)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not Tushita_Quest then
                    return
                end
                if tostring(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')) ~= 'opened' then
                    wait(0.7)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')
                    wait(0.3)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor', true)
                    warn('\u{fffd}\u{fffd}\u{e33}\u{e25}\u{e31}\u{e07}\u{e40}\u{e1b}\u{e34}\u{e14}\u{e40}\u{e1b}\u{e34}\u{e14}\u{e1b}\u{e23}\u{e30}\u{e15}\u{e39}...')
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished == nil then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished ~= false then
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == -3 then
                    repeat
                        wait()
                        topos(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875))
                    until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 1

                    if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.7)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'), 'Check')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'))
                    end

                    wait(1)

                    repeat
                        wait()
                        topos(CFrame.new(3914, 8, -2582))
                    until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 1

                    if (CFrame.new(3914, 8, -2582).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.7)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'), 'Check')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'))
                    end

                    wait(1)

                    repeat
                        wait()
                        topos(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625))
                    until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 1

                    if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.7)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'), 'Check')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'))
                    end

                    vu20.wait(1)
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == -4 then
                    if game:GetService('Workspace').Enemies:FindFirstChildOfClass('Model') then
                        local v931, v932, v933 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v934

                            v933, v934 = v931(v932, v933)

                            if v933 == nil then
                                break
                            end
                            if (v934:FindFirstChild('HumanoidRootPart').Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude > 1000 then
                                topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                            elseif v934:FindFirstChild('HumanoidRootPart') and (v934:FindFirstChild('Humanoid') and v934:FindFirstChild('Humanoid').Health > 0) then
                                vu20.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v934.HumanoidRootPart.CanCollide = false
                                v934.Head.CanCollide = false

                                TP2(v934.HumanoidRootPart.CFrame * Pos)

                                PosTHQuest = v934.HumanoidRootPart.CFrame
                                MagnetTHQuest = true
                                NameTH = v934.Name

                                if Tushita_Quest and (v934.Humanoid.Health > 0 and v934.Parent) and tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) ~= 2 then
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                    end
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) ~= -5 then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    local v935, v936, v937 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v938

                        v937, v938 = v935(v936, v937)

                        if v937 == nil then
                            break
                        end
                        if v938.Name == 'Cake Queen' and (v938:FindFirstChild('Humanoid') and (v938:FindFirstChild('HumanoidRootPart') and v938.Humanoid.Health > 0)) then
                            repeat
                                vu20.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v938.HumanoidRootPart.CanCollide = false
                                v938.Head.CanCollide = false

                                TP2(v938.HumanoidRootPart.CFrame * Pos)
                            until not Tushita_Quest or (not v938.Parent or v938.Humanoid.Health <= 0) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 3
                        end
                    end
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') and game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').Humanoid.Health > 0 then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HeavenlyDimension.Spawn.Position).Magnitude > 1000 then
                end

                local v939, v940, v941 = pairs(game:GetService('Workspace').Map.HeavenlyDimension.Exit:GetChildren())

                while true do
                    local v942

                    v941, v942 = v939(v940, v941)

                    if v941 == nil then
                        break
                    end

                    Ex = v941
                end

                if Ex == 2 then
                    repeat
                        vu20.wait()

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.HeavenlyDimension.Exit.CFrame
                    until not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 3
                end

                vu20.wait()
                topos(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625))

                local v943, v944, v945 = pairs(game:GetService('Workspace').Map.HeavenlyDimension:GetDescendants())

                while true do
                    local v946

                    v945, v946 = v943(v944, v945)

                    if v945 == nil then
                        break
                    end
                    if v946:IsA('ProximityPrompt') then
                        fireproximityprompt(v946)
                    end
                end

                if (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.DoneT1 = true

                if Tushita_Quest and not _G.DoneT1 then
                    vu20.wait()
                end

                vu20.wait()
                topos(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875))

                local v947, v948, v949 = pairs(game:GetService('Workspace').Map.HeavenlyDimension:GetDescendants())

                while true do
                    local v950

                    v949, v950 = v947(v948, v949)

                    if v949 == nil then
                        break
                    end
                    if v950:IsA('ProximityPrompt') then
                        fireproximityprompt(v950)
                    end
                end

                if (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.DoneT2 = true

                if not _G.DoneT2 and Tushita_Quest ~= false then
                    vu20.wait()
                end

                vu20.wait()
                topos(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375))

                local v951, v952, v953 = pairs(game:GetService('Workspace').Map.HeavenlyDimension:GetDescendants())

                while true do
                    local v954

                    v953, v954 = v951(v952, v953)

                    if v953 == nil then
                        break
                    end
                    if v954:IsA('ProximityPrompt') then
                        fireproximityprompt(v954)
                    end
                end

                if (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.DoneT3 = true

                if _G.DoneT3 or Tushita_Quest == false then
                    local v955, v956, v957 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v958

                        v957, v958 = v955(v956, v957)

                        if v957 == nil then
                            break
                        end
                        if (v958:FindFirstChild('HumanoidRootPart').Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.3218583399999995e-8, 0.99301964, -8.73070718e-8, 1, -2.30819008e-8, -0.99301964, -8.397513799999999e-8, 0.11794927).Position).Magnitude > 300 then
                            MagnetTHQuest = false
                        elseif v958:FindFirstChild('HumanoidRootPart') and (v958:FindFirstChild('Humanoid') and v958:FindFirstChild('Humanoid').Health > 0) then
                            repeat
                                vu20.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v958.HumanoidRootPart.CanCollide = false
                                v958.Head.CanCollide = false

                                TP2(v958.HumanoidRootPart.CFrame * Pos)

                                PosTHQuest = v958.HumanoidRootPart.CFrame
                                MagnetTHQuest = true
                                NameTH = v958.Name
                            until not Tushita_Quest or (v958.Humanoid.Health <= 0 or not v958.Parent)
                        end
                    end
                end

                wait()
            end)
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Finish Yama Quest',
        Default = false,
    }):OnChanged(function(p959)
        Yama_Quest = p959

        StopTween(Yama_Quest)
    end)

    PosMsList = {
        ['Pirate Millionaire'] = CFrame.new(-426, 176, 5558),
        ['Pistol Billionaire'] = CFrame.new(-83, 127, 6097),
        ['Dragon Crew Warrior'] = CFrame.new(6320, 52, -1282),
        ['Dragon Crew Archer'] = CFrame.new(6625, 378, 244),
        ['Female Islander'] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
        ['Giant Islander'] = CFrame.new(4902, 670, 39),
        ['Marine Commodore'] = CFrame.new(2401, 123, -7589),
        ['Marine Rear Admiral'] = CFrame.new(3588, 229, -7085),
        ['Fishman Raider'] = CFrame.new(-10941, 332, -8760),
        ['Fishman Captain'] = CFrame.new(-11035, 332, -9087),
        ['Forest Pirate'] = CFrame.new(-13446, 413, -7760),
        ['Mythological Pirate'] = CFrame.new(-13510, 584, -6987),
        ['Jungle Pirate'] = CFrame.new(-11778, 426, -10592),
        ['Musketeer Pirate'] = CFrame.new(-13282, 496, -9565),
        ['Reborn Skeleton'] = CFrame.new(-8764, 142, 5963),
        ['Living Zombie'] = CFrame.new(-10227, 421, 6161),
        ['Demonic Soul'] = CFrame.new(-9579, 6, 6194),
        ['Posessed Mummy'] = CFrame.new(-9579, 6, 6194),
        ['Peanut Scout'] = CFrame.new(-1993, 187, -10103),
        ['Peanut President'] = CFrame.new(-2215, 159, -10474),
        ['Ice Cream Chef'] = CFrame.new(-877, 118, -11032),
        ['Ice Cream Commander'] = CFrame.new(-877, 118, -11032),
        ['Cookie Crafter'] = CFrame.new(-2021, 38, -12028),
        ['Cake Guard'] = CFrame.new(-2024, 38, -12026),
        ['Baking Staff'] = CFrame.new(-1932, 38, -12848),
        ['Head Baker'] = CFrame.new(-1932, 38, -12848),
        ['Cocoa Warrior'] = CFrame.new(95, 73, -12309),
        ['Chocolate Bar Battler'] = CFrame.new(647, 42, -12401),
        ['Sweet Thief'] = CFrame.new(116, 36, -12478),
        ['Candy Rebel'] = CFrame.new(47, 61, -12889),
        Ghost = CFrame.new(5251, 5, 1111),
    }

    spawn(function()
        while wait() do
            pcall(function()
                if not Yama_Quest then
                    return
                end
                if tostring(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')) ~= 'opened' then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor', true)
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished == nil then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished ~= false then
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == -3 then
                    vu20.wait()

                    if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
                        local v960, v961, v962 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu963

                            v962, vu963 = v960(v961, v962)

                            if v962 == nil then
                                break
                            end
                            if vu963.Name == 'Forest Pirate' then
                                PosMon = vu963.HumanoidRootPart.CFrame

                                spawn(function()
                                    BringMobs(PosMon, vu963.Name)
                                end)
                                topos(game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate').HumanoidRootPart.CFrame)
                            end
                        end
                    else
                        topos(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                    end
                    if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= 1 and Yama_Quest then
                    end
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == -4 then
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= -5 or (not game:GetService('Workspace').Map:FindFirstChild('HellDimension') or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude > 1000) then
                end

                local v964, v965, v966 = pairs(game:GetService('Workspace').Map.HellDimension.Exit:GetChildren())

                while true do
                    local v967

                    v966, v967 = v964(v965, v966)

                    if v966 == nil then
                        break
                    end
                    if tonumber(v966) == 2 then
                        repeat
                            vu20.wait()

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.HellDimension.Exit.CFrame
                        until not Yama_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3
                    end
                end

                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                    wait()
                    EquipWeapon(_G.SelectWeapon)
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3 then
                    local v968, v969, v970 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local vu971

                        v970, vu971 = v968(v969, v970)

                        if v970 == nil then
                            break
                        end
                        if (vu971:FindFirstChild('HumanoidRootPart').Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude > 300 then
                            MagnetYamaQuest = false
                        elseif vu971:FindFirstChild('HumanoidRootPart') and (vu971:FindFirstChild('Humanoid') and vu971:FindFirstChild('Humanoid').Health > 0) then
                            repeat
                                vu20.wait()
                                EquipWeapon(_G.SelectWeapon)

                                vu971.HumanoidRootPart.CanCollide = false
                                vu971.Head.CanCollide = false

                                TP2(vu971.HumanoidRootPart.CFrame * Pos)

                                PosMon = vu971.HumanoidRootPart.CFrame

                                spawn(function()
                                    BringMobs(PosMon, vu971.Name)
                                end)
                            until not Yama_Quest or (vu971.Humanoid.Health <= 0 or not vu971.Parent) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3
                        end
                    end
                end

                local v972, v973, v974 = pairs(game:GetService('Players').LocalPlayer.QuestHaze:GetChildren())

                if string.find(v975, v977.Name) and v977.Value > 0 then
                end

                local v975, v976 = v978(v979, v975)

                if v975 ~= nil then
                end

                local v977

                v974, v977 = v972(v973, v974)

                if v974 == nil then
                end

                local v978, v979

                v978, v979, v975 = pairs(PosMsList)

                if game:GetService('Workspace').Enemies:FindFirstChild(v975) then
                end

                local v980 = v975

                if true then
                    wait()

                    if game:GetService('Workspace').Enemies:FindFirstChild(v975) then
                        local v981, v982, v983 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu984

                            v983, vu984 = v981(v982, v983)

                            if v983 == nil then
                                break
                            end
                            if vu984:FindFirstChild('HumanoidRootPart') and (vu984:FindFirstChild('Humanoid') and (vu984:FindFirstChild('Humanoid').Health > 0 and vu984:FindFirstChild('HazeESP'))) then
                                repeat
                                    vu20.wait()

                                    StartMagnet = true

                                    EquipWeapon(_G.SelectWeapon)

                                    vu984.HumanoidRootPart.CanCollide = false
                                    vu984.Head.CanCollide = false

                                    TP2(vu984.HumanoidRootPart.CFrame * Pos)

                                    PosMon = vu984.HumanoidRootPart.CFrame

                                    spawn(function()
                                        BringMobs(PosMon, vu984.Name)
                                    end)

                                    local v985 = vu984
                                until not (vu984.FindFirstChild(v985, 'HazeESP') and Yama_Quest) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 2
                            end
                        end
                    else
                        topos(v976)
                    end
                end
                if Yama_Quest then
                end

                v975 = v980

                local v986, v987, v988 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local vu989

                    v988, vu989 = v986(v987, v988)

                    if v988 == nil then
                        break
                    end
                    if vu989:FindFirstChild('HumanoidRootPart') and (vu989:FindFirstChild('Humanoid') and (vu989:FindFirstChild('Humanoid').Health > 0 and vu989:FindFirstChild('HazeESP'))) then
                        repeat
                            vu20.wait()

                            StartMagnet = true

                            EquipWeapon(_G.SelectWeapon)

                            vu989.HumanoidRootPart.CanCollide = false
                            vu989.Head.CanCollide = false

                            TP2(vu989.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                            PosMon = vu989.HumanoidRootPart.CFrame

                            spawn(function()
                                BringMobs(PosMon, vu989.Name)
                            end)
                        until not Yama_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 2
                    end
                end

                vu20.wait()
                topos(game:GetService('Workspace').Map.HellDimension.Torch1.Particles.CFrame)

                local v990, v991, v992 = pairs(game:GetService('Workspace').Map.HellDimension:GetDescendants())

                while true do
                    local v993

                    v992, v993 = v990(v991, v992)

                    if v992 == nil then
                        break
                    end
                    if v993:IsA('ProximityPrompt') then
                        fireproximityprompt(v993)
                    end
                end

                if (game:GetService('Workspace').Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.T1Yama = true

                if Yama_Quest and not _G.T1Yama and tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= 3 then
                    vu20.wait()
                end

                vu20.wait()
                topos(game:GetService('Workspace').Map.HellDimension.Torch2.Particles.CFrame)

                local v994, v995, v996 = pairs(game:GetService('Workspace').Map.HellDimension:GetDescendants())

                while true do
                    local v997

                    v996, v997 = v994(v995, v996)

                    if v996 == nil then
                        break
                    end
                    if v997:IsA('ProximityPrompt') then
                        fireproximityprompt(v997)
                    end
                end

                if (game:GetService('Workspace').Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.T2Yama = true

                if not _G.T2Yama and Yama_Quest ~= false and tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= 3 then
                    vu20.wait()
                end

                vu20.wait()
                topos(game:GetService('Workspace').Map.HellDimension.Torch3.Particles.CFrame)

                local v998, v999, v1000 = pairs(game:GetService('Workspace').Map.HellDimension:GetDescendants())

                while true do
                    local v1001

                    v1000, v1001 = v998(v999, v1000)

                    if v1000 == nil then
                        break
                    end
                    if v1001:IsA('ProximityPrompt') then
                        fireproximityprompt(v1001)
                    end
                end

                if (game:GetService('Workspace').Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.T3Yama = true

                if _G.T3Yama or Yama_Quest == false or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3 then
                end

                wait()
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Yama_Quest and (tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == -5 and (not game:GetService('Workspace').Map:FindFirstChild('HellDimension') or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude > 1000)) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v1002, v1003, v1004 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1005

                            v1004, v1005 = v1002(v1003, v1004)

                            if v1004 == nil then
                                break
                            end
                            if string.find(v1005.Name, 'Soul Reaper') then
                                repeat
                                    vu20.wait()
                                    TP2(v1005.HumanoidRootPart.CFrame)
                                until v1005.Humanoid.Health <= 0 or not (Yama_Quest and v1005.Parent) or (tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3 or game:GetService('Workspace').Map:FindFirstChild('HellDimension') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude <= 1000)
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            vu20.wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        EquipWeapon('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') and game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').Humanoid.Health > 0 then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame)
                    elseif game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check') >= 50 or (game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') or (game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') or game:GetService('Workspace').Map:FindFirstChild('HellDimension'))) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Domenic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                        local v1006, v1007, v1008 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1009

                            v1008, v1009 = v1006(v1007, v1008)

                            if v1008 == nil then
                                break
                            end
                            if (v1009.Name == 'Reborn Skeleton' or (v1009.Name == 'Living Zombie' or (v1009.Name == 'Demonic Soul' or v1009.Name == 'Posessed Mummy'))) and (v1009:FindFirstChild('HumanoidRootPart') and (v1009:FindFirstChild('Humanoid') and v1009:FindFirstChild('Humanoid').Health > 0)) then
                                repeat
                                    vu20.wait()

                                    BonesBring = true

                                    EquipWeapon(_G.SelectWeapon)

                                    v1009.HumanoidRootPart.CanCollide = false
                                    v1009.Head.CanCollide = false

                                    TP2(v1009.HumanoidRootPart.CFrame * Pos)

                                    PosMonBone = v1009.HumanoidRootPart.CFrame
                                until not Yama_Quest or (v1009.Humanoid.Health <= 0 or not v1009.Parent)
                            end
                        end
                    else
                        MagnetWaitY = false

                        topos(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                    end
                end
            end)
        end
    end)
    v311:AddToggle('Toggle', {
        Title = 'Auto Get Cursed Dual Katana',
        Default = false,
    }):OnChanged(function(p1010)
        Get_Cursed = p1010

        StopTween(Get_Cursed)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not Get_Cursed then
                    return
                end

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Boss')

                if not game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton Boss') then
                    topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                    vu20.wait(0.5)
                    topos(game:GetService('Workspace').Map.Turtle.Cursed.BossDoor.CFrame)
                end

                local v1011, v1012, v1013 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v1014

                v1013, v1014 = v1011(v1012, v1013)

                if v1013 == nil then
                end
                if v1014.Name ~= 'Cursed Skeleton Boss' or (not v1014:FindFirstChild('Humanoid') or (not v1014:FindFirstChild('HumanoidRootPart') or v1014.Humanoid.Health <= 0)) then
                end
                if true then
                    vu20.wait()

                    if game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') then
                        EquipWeapon('Yama')
                    elseif game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
                        EquipWeapon('Tushita')
                    else
                        warn('Yama or Tushita Only!!!')
                        wait(5)
                    end
                end

                v1014.HumanoidRootPart.CanCollide = false
                v1014.Humanoid.WalkSpeed = 0

                TP2(v1014.HumanoidRootPart.CFrame * Pos)
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)

                if Get_Cursed and (v1014.Parent and v1014.Humanoid.Health > 0) then
                else
                end
            end)
        end
    end)
end

task.spawn(function()
    while true do
        wait()

        if setscriptable then
            setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        end
    end
end)

function InMyNetWork(p1015)
    if isnetworkowner then
        return isnetworkowner(p1015)
    else
        return (p1015.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode
    end
end

if World1 or World2 then
    v313:AddSection('Go To The Third Sea')
end
if World3 then
    v313:AddSection('Mirage')

    local vu1016 = v313:AddParagraph({
        Title = 'Check Mirage',
        Desc = '',
    })

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    vu1016:SetDesc('Check Mirage : Spawn!')
                else
                    vu1016:SetDesc('Check Mirage : Not Spawn')
                end
            end)
        end
    end)
    v313:AddToggle('Toggle', {
        Title = 'Teleport Mirage Island',
        Default = false,
    }):OnChanged(function(p1017)
        _G.MysticIsland = p1017

        StopTween(_G.MysticIsland)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                local v1018 = _G.MysticIsland and game:GetService('Workspace').Map:FindFirstChild('MysticIsland')

                if v1018 then
                    local v1019 = v1018.WorldPivot.Position

                    topos(CFrame.new(v1019.X, 500, v1019.Z))
                end
            end
        end)
    end)
    v313:AddToggle('Toggle', {
        Title = 'Teleport Advanced Fruit Dealer',
        Default = false,
    }):OnChanged(function(p1020)
        _G.Miragenpc = p1020

        StopTween(_G.Miragenpc)
    end)
    spawn(function()
        while wait() do
            if _G.Miragenpc then
                local v1021 = game.ReplicatedStorage.NPCs:FindFirstChild('Advanced Fruit Dealer')

                if v1021 and v1021:IsA('Model') then
                    local v1022 = v1021.PrimaryPart

                    if v1022 then
                        v1022 = v1021.PrimaryPart.Position
                    end
                    if v1022 then
                        topos(CFrame.new(v1022))
                    end
                end
            end
        end
    end)
    v313:AddToggle('Toggle', {
        Title = 'Auto Lock Moon',
        Default = false,
    }):OnChanged(function(p1023)
        _G.LockCamToMoon = p1023
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.LockCamToMoon then
                    wait(0.1)

                    local v1024 = game.Lighting:GetMoonDirection()
                    local v1025 = game.Workspace.CurrentCamera.CFrame.p + v1024 * 100

                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v1025)
                end
            end)
        end
    end)
    v313:AddToggle('Toggle', {
        Title = 'Tween Gear',
        Default = false,
    }):OnChanged(function(p1026)
        _G.TweenMGear = p1026

        StopTween(_G.TweenMGear)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.TweenMGear and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    local v1027, v1028, v1029 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

                    while true do
                        local v1030

                        v1029, v1030 = v1027(v1028, v1029)

                        if v1029 == nil then
                            break
                        end
                        if v1030:IsA('MeshPart') and v1030.Material == Enum.Material.Neon then
                            topos(v1030.CFrame)
                        end
                    end
                end
            end
        end)
    end)
    v313:AddSection('Race V4')
    v313:AddButton({
        Title = 'Teleport To Top Of GreatTree',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'RaceV4Progress',
                'Teleport',
            }))
            wait(0.1)

            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)

            topos(CFrame.new(28609.5801, 14896.5098, 105.869637, -0.00754010677, 3.26780936e-9, -0.999971569, 6.88313628e-9, 1, 3.2160012399999998e-9, 0.999971569, -6.85869184e-9, -0.00754010677))
            wait(2)

            local v1031 = game.Players.LocalPlayer
            local v1032 = CFrame.new(28609.5801, 14896.5098, 105.869637).Position

            if v1031.Character and (v1031.Character:FindFirstChild('HumanoidRootPart') and (v1031.Character.HumanoidRootPart.Position - v1032).Magnitude < 3) then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'RaceV4Progress',
                    'TeleportBack',
                }))
            end
        end,
    })
    v313:AddButton({
        Title = 'Teleport To Temple Of Time',
        Callback = function()
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
        end,
    })
    v313:AddButton({
        Title = 'Teleport To Lever Pull',
        Callback = function()
            TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end,
    })
    v313:AddButton({
        Title = 'Teleport To Acient One (Must Be in Temple Of Time!)',
        Callback = function()
            TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end,
    })
    v313:AddToggle('Toggle', {
        Title = 'Auto Buy Gear',
        Default = false,
    }):OnChanged(function(p1033)
        _G.BuyGear = p1033
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.BuyGear then
                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer(unpack({
                        'UpgradeRace',
                        'Buy',
                    }))
                end
            end
        end)
    end)
    v313:AddToggle('Toggle', {
        Title = 'Disabled Inf Stairs',
        Default = false,
    }):OnChanged(function(p1034)
        game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = p1034
    end)
    v313:AddButton({
        Title = 'Teleport Trial Door',
        Callback = function()
            local v1035 = Game:GetService('Players').LocalPlayer
            local v1036 = v1035.Character.HumanoidRootPart

            v1036.CFrame = CFrame.new(28286, 14897, 103)

            wait(0.1)

            v1036.CFrame = CFrame.new(28286, 14897, 103)

            wait(0.1)

            v1036.CFrame = CFrame.new(28286, 14897, 103)

            wait(0.1)

            v1036.CFrame = CFrame.new(28286, 14897, 103)

            if v1035.Data.Race.Value ~= 'Fishman' then
                if v1035.Data.Race.Value ~= 'Human' then
                    if v1035.Data.Race.Value ~= 'Cyborg' then
                        if v1035.Data.Race.Value ~= 'Skypiea' then
                            if v1035.Data.Race.Value ~= 'Ghoul' then
                                if v1035.Data.Race.Value == 'Mink' then
                                    v1036.CFrame = CFrame.new(28286, 14897, 103)

                                    wait(0.6)
                                    topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
                                end
                            else
                                v1036.CFrame = CFrame.new(28286, 14897, 103)

                                wait(0.6)
                                topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
                            end
                        else
                            v1036.CFrame = CFrame.new(28286, 14897, 103)

                            wait(0.6)
                            topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
                        end
                    else
                        v1036.CFrame = CFrame.new(28286, 14897, 103)

                        wait(0.6)
                        topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
                    end
                else
                    v1036.CFrame = CFrame.new(28286, 14897, 103)

                    wait(0.6)
                    topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
                end
            else
                v1036.CFrame = CFrame.new(28286, 14897, 103)

                wait(0.6)
                topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
            end
        end,
    })
    v313:AddButton({
        Title = 'Teleport To Clock',
        Callback = function()
            TP2(CFrame.new(29551.9941, 15069.002, -85.5179291))
        end,
    })
    v313:AddToggle('Auto Trial', {
        Title = 'Auto Trial',
        Default = false,
    }):OnChanged(function(p1037)
        _G.QuestRace = p1037

        StopTween(_G.QuestRace)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.QuestRace then
                    local v1038 = game:GetService('Players').LocalPlayer.Data.Race.Value

                    if v1038 == 'Human' then
                        local v1039, v1040, v1041 = pairs(game.Workspace.Enemies:GetDescendants())

                        while true do
                            local vu1042

                            v1041, vu1042 = v1039(v1040, v1041)

                            if v1041 == nil then
                                break
                            end
                            if vu1042:FindFirstChild('Humanoid') and (vu1042:FindFirstChild('HumanoidRootPart') and vu1042.Humanoid.Health > 0) then
                                pcall(function()
                                    repeat
                                        wait(0.1)

                                        vu1042.Humanoid.Health = 0
                                        vu1042.HumanoidRootPart.CanCollide = false

                                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                    until not _G.QuestRace or (not vu1042.Parent or vu1042.Humanoid.Health <= 0)
                                end)
                            end
                        end
                    elseif v1038 == 'Skypiea' then
                        local v1043 = next
                        local v1044, v1045 = workspace:GetDescendants()

                        while true do
                            local v1046

                            v1045, v1046 = v1043(v1044, v1045)

                            if v1045 == nil then
                                break
                            end
                            if v1046.Name == 'FinishPart' then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1046.CFrame
                            end
                        end
                    elseif v1038 == 'Fishman' then
                        local v1047, v1048, v1049 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                        while true do
                            local v1050

                            v1049, v1050 = v1047(v1048, v1049)

                            if v1049 == nil then
                                break
                            end
                            if v1050.Name == 'HumanoidRootPart' then
                                topos(v1050.CFrame * CFrame.new(PosX, PosY, PosZ))

                                local v1051, v1052, v1053 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1054

                                    v1053, v1054 = v1051(v1052, v1053)

                                    if v1053 == nil then
                                        break
                                    end
                                    if v1054:IsA('Tool') and v1054.ToolTip == 'Melee' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1054)
                                    end
                                end

                                local v1055, v1056, v1057 = ipairs({122, 120, 99})

                                while true do
                                    local v1058

                                    v1057, v1058 = v1055(v1056, v1057)

                                    if v1057 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1058, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1058, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end

                                local v1059, v1060, v1061 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1062

                                    v1061, v1062 = v1059(v1060, v1061)

                                    if v1061 == nil then
                                        break
                                    end
                                    if v1062:IsA('Tool') and v1062.ToolTip == 'Blox Fruit' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1062)
                                    end
                                end

                                local v1063, v1064, v1065 = ipairs({122, 120, 99})

                                while true do
                                    local v1066

                                    v1065, v1066 = v1063(v1064, v1065)

                                    if v1065 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1066, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1066, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end

                                wait(0.5)

                                local v1067, v1068, v1069 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1070

                                    v1069, v1070 = v1067(v1068, v1069)

                                    if v1069 == nil then
                                        break
                                    end
                                    if v1070:IsA('Tool') and v1070.ToolTip == 'Sword' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1070)
                                    end
                                end

                                local v1071, v1072, v1073 = ipairs({122, 120, 99})

                                while true do
                                    local v1074

                                    v1073, v1074 = v1071(v1072, v1073)

                                    if v1073 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1074, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1074, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end

                                wait(0.5)

                                local v1075, v1076, v1077 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1078

                                    v1077, v1078 = v1075(v1076, v1077)

                                    if v1077 == nil then
                                        break
                                    end
                                    if v1078:IsA('Tool') and v1078.ToolTip == 'Gun' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1078)
                                    end
                                end

                                local v1079, v1080, v1081 = ipairs({122, 120, 99})

                                while true do
                                    local v1082

                                    v1081, v1082 = v1079(v1080, v1081)

                                    if v1081 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1082, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1082, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end
                            end
                        end
                    elseif v1038 == 'Cyborg' then
                        topos(CFrame.new(28654, 14898.7832, -30))
                    elseif v1038 == 'Ghoul' then
                        local v1083, v1084, v1085 = pairs(game.Workspace.Enemies:GetDescendants())

                        while true do
                            local vu1086

                            v1085, vu1086 = v1083(v1084, v1085)

                            if v1085 == nil then
                                break
                            end
                            if vu1086:FindFirstChild('Humanoid') and (vu1086:FindFirstChild('HumanoidRootPart') and vu1086.Humanoid.Health > 0) then
                                pcall(function()
                                    repeat
                                        wait(0.1)

                                        vu1086.Humanoid.Health = 0
                                        vu1086.HumanoidRootPart.CanCollide = false

                                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                    until not _G.QuestRace or (not vu1086.Parent or vu1086.Humanoid.Health <= 0)
                                end)
                            end
                        end
                    elseif v1038 == 'Mink' then
                        local v1087, v1088, v1089 = pairs(game:GetService('Workspace'):GetDescendants())

                        while true do
                            local v1090

                            v1089, v1090 = v1087(v1088, v1089)

                            if v1089 == nil then
                                break
                            end
                            if v1090.Name == 'StartPoint' then
                                topos(v1090.CFrame * CFrame.new(0, 10, 0))
                            end
                        end
                    end
                end
            end
        end)
    end)
    v313:AddToggle('Auto Farm & active V4', {
        Title = 'Auto Farm & active V4',
        Default = false,
    }):OnChanged(function(p1091)
        _G.Bone = p1091
        _G.Train = p1091
        _G.BuyGear = p1091
        _G.ActiveV4 = p1091

        StopTween(_G.Bone)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Train and game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    _G.Bone = false

                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end)
    end)
    v313:AddButton({
        Title = 'Buy Ancient One Quest',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
        end,
    })
    v313:AddSection('Kill Player Trial')
    v313:AddToggle('Toggle', {
        Title = 'Kill Player After Trial',
        Default = false,
    }):OnChanged(function(p1092)
        _G.KillAfterTrials = p1092
        _G.AimNearest = p1092
        _G.NoSt = p1092
        _G.Ken = p1092

        StopTween(_G.KillAfterTrials)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not _G.KillAfterTrials then
                    return
                end

                local v1093, v1094, v1095 = pairs(game.Workspace.Characters:GetChildren())
                local v1096

                v1095, v1096 = v1093(v1094, v1095)

                if v1095 == nil then
                end
                if v1096.Name == game.Players.LocalPlayer.Name or (not v1096:FindFirstChild('Humanoid') or (not v1096:FindFirstChild('HumanoidRootPart') or (v1096.Humanoid.Health <= 0 or (not v1096.Parent or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1096.HumanoidRootPart.Position).Magnitude > 230)))) then
                end

                task.wait()
                EquipWeapon(_G.SelectWeapon)
                TP2(v1096.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))

                local v1097, v1098, v1099 = ipairs({
                    'Z',
                    'X',
                    'C',
                    'V',
                    'F',
                })

                while true do
                    local v1100

                    v1099, v1100 = v1097(v1098, v1099)

                    if v1099 == nil then
                        break
                    end
                    if _G['SkillTrial' .. v1100] then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, v1100, false, game)
                        wait(0.1)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, v1100, false, game)
                    end
                end

                v1096.HumanoidRootPart.CanCollide = false
                v1096.Head.CanCollide = false
                v1096.Humanoid.WalkSpeed = 0

                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)

                if _G.KillAfterTrials and (v1096.Humanoid.Health > 0 and (v1096.Parent and (v1096:FindFirstChild('HumanoidRootPart') and v1096:FindFirstChild('Humanoid')))) then
                else
                end
            end)
        end
    end)
    v313:AddSection('Setting Kill Player Trial')
    v313:AddToggle('Toggle', {
        Title = 'Use Skill Z Kill Player',
        Default = false,
    }):OnChanged(function(p1101)
        _G.SkillTrialZ = p1101
    end)
    v313:AddToggle('Toggle', {
        Title = 'Use Skill X Kill Player',
        Default = false,
    }):OnChanged(function(p1102)
        _G.SkillTrialX = p1102
    end)
    v313:AddToggle('Toggle', {
        Title = 'Use Skill C Kill Player',
        Default = false,
    }):OnChanged(function(p1103)
        _G.SkillTrialC = p1103
    end)
    v313:AddToggle('Toggle', {
        Title = 'Use Skill V Kill Player',
        Default = false,
    }):OnChanged(function(p1104)
        _G.SkillTrialV = p1104
    end)
    v313:AddToggle('Toggle', {
        Title = 'Use Skill F Kill Player',
        Default = false,
    }):OnChanged(function(p1105)
        _G.SkillTrialF = p1105
    end)
end
if World1 or World2 then
    v315:AddSection('Go To The Third Sea')
end
if World3 then
    v315:AddSection('Sea Event')
    v315:AddButton({
        Title = 'Remove Fog',
        Callback = function()
            game:GetService('Lighting').LightingLayers:Destroy()
            game:GetService('Lighting').Sky:Destroy()
        end,
    })

    Dropdown = v315:AddDropdown('Dropdown', {
        Title = 'Select Boat',
        Values = {
            'Guardian',
            'PirateGrandBrigade',
            'MarineGrandBrigade',
            'PirateBrigade',
            'MarineBrigade',
            'PirateSloop',
            'MarineSloop',
            'BeastHunter',
        },
        Multi = false,
    })

    Dropdown:SetValue('PirateGrandBrigade')
    Dropdown:OnChanged(function(p1106)
        _G.SelectedBoat = p1106
    end)

    Dropdown = v315:AddDropdown('Dropdown', {
        Title = 'Select Zone',
        Values = {
            'Zone 1',
            'Zone 2',
            'Zone 3',
            'Zone 4',
            'Zone 5',
            'Zone 6',
            'Tiki Outpost',
            'Hydra Island',
        },
        Multi = false,
    })

    Dropdown:SetValue('Zone 5')
    Dropdown:OnChanged(function(p1107)
        _G.SelectedZone = p1107
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone ~= 'Zone 1' then
                    if _G.SelectedZone ~= 'Zone 2' then
                        if _G.SelectedZone ~= 'Zone 3' then
                            if _G.SelectedZone ~= 'Zone 4' then
                                if _G.SelectedZone ~= 'Zone 5' then
                                    if _G.SelectedZone ~= 'Zone 6' then
                                        if _G.SelectedZone ~= 'Tiki Outpost' then
                                            if _G.SelectedZone == 'Hydra Island' then
                                                CFrameSelectedZone = CFrame.new(5185, 0, 1670)
                                            end
                                        else
                                            CFrameSelectedZone = CFrame.new(-16195, 0, 441)
                                        end
                                    else
                                        CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                                    end
                                else
                                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-9, -0.981290519, -0.0365765914, -0.189026669)
                                end
                            else
                                CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                            end
                        else
                            CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                        end
                    else
                        CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                    end
                else
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.3650920099999997e-10, -0.991110802, -0.0569955558, 0.120211802)
                end
            end
        end)
    end)

    Dropdown = v315:AddDropdown('Dropdown', {
        Title = 'Speed Tween Boat',
        Values = {
            '180',
            '200',
            '250',
            '300',
            '325',
            '350',
        },
        Multi = false,
    })

    Dropdown:SetValue('300')
    Dropdown:OnChanged(function(p1108)
        getgenv().SpeedBoat = p1108
    end)
    v315:AddSlider('Slider', {
        Title = 'PosY Boat',
        Default = 40,
        Min = 40,
        Max = 250,
        Rounding = 5,
        Callback = function(p1109)
            getgenv().PosYBoat = p1109
        end,
    })
    v315:AddToggle('Toggle', {
        Title = 'Start Sea Event',
        Default = false,
    }):OnChanged(function(p1110)
        _G.SailBoat = p1110
    end)

    function CheckBoat()
        local v1111, v1112, v1113 = pairs(game:GetService('Workspace').Boats:GetChildren())

        while true do
            local v1114

            v1113, v1114 = v1111(v1112, v1113)

            if v1113 == nil then
                break
            end
            if v1114.Name == _G.SelectedBoat then
                local v1115, v1116, v1117 = pairs(v1114:GetChildren())

                while true do
                    local v1118

                    v1117, v1118 = v1115(v1116, v1117)

                    if v1117 == nil then
                        break
                    end
                    if v1118.Name == 'MyBoatEsp' then
                        return v1114
                    end
                end
            end
        end

        return false
    end
    function CheckEnemiesBoat()
        return (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') or game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade'))) and true or false
    end
    function CheckShark()
        local v1119, v1120, v1121 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1122

            v1121, v1122 = v1119(v1120, v1121)

            if v1121 == nil then
                break
            end
            if v1122.Name == 'Shark' and (v1122:FindFirstChild('Humanoid') and (v1122:FindFirstChild('HumanoidRootPart') and v1122.Humanoid.Health > 0)) and (game:GetService('Workspace').Enemies:FindFirstChild('Shark') and (v1122.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
                return true
            end
        end

        return false
    end
    function CheckPiranha()
        local v1123, v1124, v1125 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1126

            v1125, v1126 = v1123(v1124, v1125)

            if v1125 == nil then
                break
            end
            if v1126.Name == 'Piranha' and (v1126:FindFirstChild('Humanoid') and (v1126:FindFirstChild('HumanoidRootPart') and v1126.Humanoid.Health > 0)) and (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') and (v1126.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
                return true
            end
        end

        return false
    end
    function AddEsp(p1127, p1128)
        local v1129 = Instance.new('BillboardGui')
        local v1130 = Instance.new('TextLabel')

        v1129.Parent = p1128
        v1129.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        v1129.Active = true
        v1129.Name = p1127
        v1129.AlwaysOnTop = true
        v1129.LightInfluence = 1
        v1129.Size = UDim2.new(0, 200, 0, 50)
        v1129.StudsOffset = Vector3.new(0, 2.5, 0)
        v1130.Parent = v1129
        v1130.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v1130.BackgroundTransparency = 1
        v1130.Size = UDim2.new(1, 0, 1, 0)
        v1130.Font = Enum.Font.GothamBold
        v1130.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1130.TextSize = 15
        v1130.Text = 'Your Ship'
    end

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if CheckBoat() then
                        local v1131, v1132, v1133 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v1134

                            v1133, v1134 = v1131(v1132, v1133)

                            if v1133 == nil then
                                break
                            end
                            if v1134.Name == _G.SelectedBoat and v1134:FindFirstChild('MyBoatEsp') then
                                if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit then
                                    repeat
                                        wait()

                                        stopboat = TPB(CFrameSelectedZone, v1134.VehicleSeat)
                                    until CheckShark() and FarmShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark or CheckPiranha() and _G.farmpiranya or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip or CheckSeaBeast() and _G.SeaBest or not (game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit and _G.SailBoat))))))

                                    if stopboat then
                                        stopboat:Stop()
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                                elseif CheckShark() and FarmShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark or CheckPiranha() and _G.farmpiranya or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip or CheckSeaBeast() and _G.SeaBest))))) then
                                    if stoppos then
                                        stoppos:Stop()
                                    end
                                else
                                    stoppos = topos(v1134.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                end
                            end
                        end
                    else
                        local v1135 = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

                        if (v1135.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            stoppos = topos(v1135)
                        else
                            topos(CFrame.new(-16224, 9, 439))
                        end
                        if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            if stoppos then
                                stoppos:Stop()
                            end

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)

                            local v1136, v1137, v1138 = pairs(game:GetService('Workspace').Boats:GetChildren())

                            while true do
                                local v1139

                                v1138, v1139 = v1136(v1137, v1138)

                                if v1138 == nil then
                                    break
                                end
                                if v1139.Name == _G.SelectedBoat and (v1139.VehicleSeat.CFrame.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    AddEsp('MyBoatEsp', v1139)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SailBoat and (CheckShark() and FarmShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark or CheckPiranha() and _G.farmpiranya or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip or CheckSeaBeast() and _G.SeaBest)))))) and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                    wait(0.1)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                end
            end
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not _G.SailBoat then
                    return
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member then
                    local v1140, v1141, v1142 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1143

                        v1142, v1143 = v1140(v1141, v1142)

                        if v1142 == nil then
                            break
                        end
                        if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and (v1143.Name == 'Fish Crew Member' and (v1143:FindFirstChild('Humanoid') and (v1143:FindFirstChild('HumanoidRootPart') and v1143.Humanoid.Health > 0))) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                TP2(v1143.HumanoidRootPart.CFrame * Pos)

                                _G.SeaSkill = false
                            until not _G.Fish_Crew_Member or (not v1143.Parent or v1143.Humanoid.Health <= 0)

                            StartMagnet = false
                        end
                    end
                end
                if not (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat) then
                end

                local v1144, v1145, v1146 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip) then
                end

                local v1147, v1148, v1149 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if true then
                    task.wait()

                    local v1150 = v1152.Engine.CFrame

                    if (v1150.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 50 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                TP2(v1150)

                Skillaimbot = true
                AimSkill = v1152.Engine.CFrame * CFrame.new(0, -15, 0)
                AimBotSkillPosition = AimSkill.Position

                if v1152.Parent and v1152.Health.Value >= 0 and (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and (v1152:FindFirstChild('Engine') and _G.RelzPirateBrigade)) then
                end

                Skillaimbot = false
                _G.SeaSkill = false

                local v1151, v1152 = v1153(v1154, v1151)

                if v1151 == nil then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') then
                else
                end
                if not (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade) then
                end

                local v1153, v1154

                v1153, v1154, v1151 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not (CheckSeaBeast() and _G.SeaBest) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark then
                        local v1155, v1156, v1157 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1158

                            v1157, v1158 = v1155(v1156, v1157)

                            if v1157 == nil then
                                break
                            end
                            if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and (v1158.Name == 'Terrorshark' and (v1158:FindFirstChild('Humanoid') and (v1158:FindFirstChild('HumanoidRootPart') and v1158.Humanoid.Health > 0))) then
                                repeat
                                    task.wait(0.15)
                                    EquipWeapon(_G.SelectWeapon)

                                    _G.SeaSkill = false

                                    TP2(v1158.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                until not _G.Terrorshark or (not v1158.Parent or v1158.Humanoid.Health <= 0)
                            end
                        end
                    elseif CheckPiranha() and _G.farmpiranya then
                        local v1159, v1160, v1161 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1162

                            v1161, v1162 = v1159(v1160, v1161)

                            if v1161 == nil then
                                break
                            end
                            if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') and (v1162.Name == 'Piranha' and (v1162:FindFirstChild('Humanoid') and (v1162:FindFirstChild('HumanoidRootPart') and v1162.Humanoid.Health > 0))) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP2(v1162.HumanoidRootPart.CFrame * Pos)

                                    _G.SeaSkill = false
                                until not _G.farmpiranya or (not v1162.Parent or v1162.Humanoid.Health <= 0)
                            end
                        end
                    elseif CheckShark() and FarmShark then
                        local v1163, v1164, v1165 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1166

                            v1165, v1166 = v1163(v1164, v1165)

                            if v1165 == nil then
                                break
                            end
                            if game:GetService('Workspace').Enemies:FindFirstChild('Shark') and (v1166.Name == 'Shark' and (v1166:FindFirstChild('Humanoid') and (v1166:FindFirstChild('HumanoidRootPart') and v1166.Humanoid.Health > 0))) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP2(v1166.HumanoidRootPart.CFrame * Pos)

                                    _G.SeaSkill = false
                                until not FarmShark or (not v1166.Parent or v1166.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                    end
                end
                if not game:GetService('Workspace'):FindFirstChild('SeaBeasts') then
                end

                local v1167, v1168, v1169 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())
                local v1170

                v1146, v1170 = v1144(v1145, v1146)

                if v1146 == nil then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') then
                else
                end
                if true then
                    task.wait()

                    local v1171 = v1170.Engine.CFrame

                    if (v1171.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 50 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                TP2(v1171)

                Skillaimbot = true
                AimSkill = v1170.Engine.CFrame * CFrame.new(0, -15, 0)
                AimBotSkillPosition = AimSkill.Position

                if v1170.Parent and v1170.Health >= 0 and (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and (v1170:FindFirstChild('Engine') and _G.bjirFishBoat)) then
                else
                end

                Skillaimbot = false
                _G.SeaSkill = false

                if true then
                    task.wait()

                    local v1172 = v1173.Engine.CFrame

                    if (v1172.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 50 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                TP2(v1172)

                Skillaimbot = true
                AimSkill = v1173.Engine.CFrame * CFrame.new(0, -15, 0)
                AimBotSkillPosition = AimSkill.Position

                if v1173.Parent and v1173.Health.Value >= 0 and (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and (v1173:FindFirstChild('Engine') and _G.KillGhostShip)) then
                end

                Skillaimbot = false
                _G.SeaSkill = false

                local v1173

                v1149, v1173 = v1147(v1148, v1149)

                if v1149 == nil then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') then
                else
                end

                Skillaimbot = false
                _G.SeaSkill = false

                while true do
                    local v1174

                    v1169, v1174 = v1167(v1168, v1169)

                    if v1169 == nil then
                    end
                    if CheckSeaBeast() then
                        break
                    end

                    Skillaimbot = false
                    _G.SeaSkill = false
                end

                if true then
                    wait()

                    CFrameSeaBeast = v1174.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0)

                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude > 200 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                Skillaimbot = true
                AimBotSkillPosition = v1174.HumanoidRootPart.CFrame.Position

                TP2(CFrameSeaBeast * Pos)

                if _G.SeaBest and (CheckSeaBeast() ~= false and (v1174:FindFirstChild('Humanoid') and (v1174:FindFirstChild('HumanoidRootPart') and (v1174.Humanoid.Health >= 0 and v1174.Parent)))) then
                else
                end
            end)
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Kill Shark',
        Default = false,
    }):OnChanged(function(p1175)
        FarmShark = p1175

        StopTween(FarmShark)
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Kill Piranha',
        Default = false,
    }):OnChanged(function(p1176)
        _G.farmpiranya = p1176

        StopTween(_G.farmpiranya)
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Fish Crew',
        Default = false,
    }):OnChanged(function(p1177)
        _G.Fish_Crew_Member = p1177

        StopTween(_G.Fish_Crew_Member)
    end)

    function UpDownPos(p1178)
        fastpos(p1178 * CFrame.new(0, 40, 0))
        wait(2)
        fastpos(p1178 * CFrame.new(0, 300, 0))
        wait(3)
    end

    v315:AddToggle('Toggle', {
        Title = 'Auto Kill Ghost Ship',
        Default = false,
    }):OnChanged(function(p1179)
        _G.bjirFishBoat = p1179

        StopTween(_G.bjirFishBoat)

        if not _G.bjirFishBoat then
            _G.SeaSkill = false
            Skillaimbot = false

            StopTween(_G.bjirFishBoat)
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Kill Pirate Grand Brigade',
        Default = false,
    }):OnChanged(function(p1180)
        _G.KillGhostShip = p1180

        StopTween(_G.KillGhostShip)
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Kill Terror Shark',
        Default = false,
    }):OnChanged(function(p1181)
        _G.Terrorshark = p1181

        StopTween(_G.Terrorshark)
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Kill Sea Beast',
        Default = false,
    }):OnChanged(function(p1182)
        _G.SeaBest = p1182

        StopTween(_G.SeaBest)

        if not _G.SeaBest then
            _G.SeaSkill = false
            Skillaimbot = false
        end
    end)

    function CheckSeaBeast()
        if game:GetService('Workspace'):FindFirstChild('SeaBeasts') then
            local v1183, v1184, v1185 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

            while true do
                local v1186

                v1185, v1186 = v1183(v1184, v1185)

                if v1185 == nil then
                    break
                end
                if v1186:FindFirstChild('Humanoid') or (v1186:FindFirstChild('HumanoidRootPart') or v1186.Humanoid.Health < 0) then
                    return true
                end
            end
        end

        return false
    end

    v315:AddSection('Setting Sea Event')

    Dropdown = v315:AddDropdown('Dropdown', {
        Title = 'Select Brightness',
        Values = {
            '100',
            '150',
            '200',
            '250',
            '300',
            '325',
            '350',
        },
        Multi = false,
    })

    Dropdown:SetValue('100')
    Dropdown:OnChanged(function(p1187)
        BrightValue = p1187
    end)
    v315:AddButton({
        Title = 'Set Brightness',
        Callback = function()
            game:GetService('Lighting').Brightness = BrightValue
        end,
    })
    v315:AddToggle('Toggle', {
        Title = 'Enable Speed Boat',
        Default = false,
    }):OnChanged(function(p1188)
        _G.IncreaseBoatSpeed = p1188
    end)
    spawn(function()
        while wait() do
            pcall(function()
                local v1189, v1190, v1191 = pairs(game.Workspace.Boats:GetDescendants())
                local v1192 = {}

                while true do
                    local v1193

                    v1191, v1193 = v1189(v1190, v1191)

                    if v1191 == nil then
                        break
                    end
                    if v1193:IsA('VehicleSeat') then
                        table.insert(v1192, v1193)
                    end
                end

                if _G.IncreaseBoatSpeed then
                    local v1194, v1195, v1196 = pairs(v1192)

                    while true do
                        local v1197

                        v1196, v1197 = v1194(v1195, v1196)

                        if v1196 == nil then
                            break
                        end

                        v1197.MaxSpeed = 350
                    end
                else
                    local v1198, v1199, v1200 = pairs(v1192)

                    while true do
                        local v1201

                        v1200, v1201 = v1198(v1199, v1200)

                        if v1200 == nil then
                            break
                        end

                        v1201.MaxSpeed = 150
                    end
                end
            end)
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Enable Fly Boat',
        Default = false,
    }):OnChanged(function(p1202)
        if p1202 then
            _G.NoClipRock = true

            vu204(speaker, true)
        else
            _G.NoClipRock = false

            vu187(speaker)
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'NoClip Rock',
        Default = false,
    }):OnChanged(function(p1203)
        _G.NoClipRock = p1203
    end)
    spawn(function()
        while wait() do
            pcall(function()
                local v1204, v1205, v1206 = pairs(game:GetService('Workspace').Boats:GetChildren())

                while true do
                    local v1207

                    v1206, v1207 = v1204(v1205, v1206)

                    if v1206 == nil then
                        break
                    end

                    local v1208, v1209, v1210 = pairs(game:GetService('Workspace').Boats[v1207.Name]:GetDescendants())

                    while true do
                        local v1211

                        v1210, v1211 = v1208(v1209, v1210)

                        if v1210 == nil then
                            break
                        end
                        if v1211:IsA('BasePart') then
                            if _G.NoClipRock or _G.SailBoat then
                                v1211.CanCollide = false
                            else
                                v1211.CanCollide = true
                            end
                        end
                    end
                end
            end)
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Press W Auto',
        Default = false,
    }):OnChanged(function(p1212)
        _G.r71PressW = p1212
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.r71PressW and game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == true then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
                end
            end)
        end
    end)

    DoneSkillGun = false
    DoneSkillSword = false
    DoneSkillFruit = false
    DoneSkillMelee = false

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SeaSkill then
                    if _G.UseSeaFruitSkill and DoneSkillFruit == false then
                        local v1213, v1214, v1215 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1216

                            v1215, v1216 = v1213(v1214, v1215)

                            if v1215 == nil then
                                break
                            end
                            if v1216:IsA('Tool') and v1216.ToolTip == 'Blox Fruit' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1216)
                            end
                        end

                        if _G.SkillFruitZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(_G.SeaHoldSKillZ)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillFruitX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(_G.SeaHoldSKillX)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if _G.SkillFruitC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            wait(_G.SeaHoldSKillC)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if _G.SkillFruitV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            wait(_G.SeaHoldSKillV)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end
                        if _G.SkillFruitF then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                            wait(_G.SeaHoldSKillF)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                        end

                        DoneSkillFruit = true
                    end
                    if _G.UseSeaMeleeSkill and DoneSkillMelee == false then
                        local v1217, v1218, v1219 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1220

                            v1219, v1220 = v1217(v1218, v1219)

                            if v1219 == nil then
                                break
                            end
                            if v1220:IsA('Tool') and v1220.ToolTip == 'Melee' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1220)
                            end
                        end

                        if _G.SkillMeleeZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillMeleeX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if _G.SkillMeleeC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if _G.SkillMeleeV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end

                        DoneSkillMelee = true
                    end
                    if _G.UseSeaSwordSkill and DoneSkillSword == false then
                        local v1221, v1222, v1223 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1224

                            v1223, v1224 = v1221(v1222, v1223)

                            if v1223 == nil then
                                break
                            end
                            if v1224:IsA('Tool') and v1224.ToolTip == 'Sword' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1224)
                            end
                        end

                        if _G.SkillSwordZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillSwordX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end

                        DoneSkillSword = true
                    end
                    if _G.UseSeaGunSkill and DoneSkillGun == false then
                        local v1225, v1226, v1227 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1228

                            v1227, v1228 = v1225(v1226, v1227)

                            if v1227 == nil then
                                break
                            end
                            if v1228:IsA('Tool') and v1228.ToolTip == 'Gun' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1228)
                            end
                        end

                        if _G.SkillGunZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillGunX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end

                        DoneSkillGun = true
                    end

                    DoneSkillGun = false
                    DoneSkillSword = false
                    DoneSkillFruit = false
                    DoneSkillMelee = false
                end
            end)
        end
    end)
    v315:AddSection('Kitsune Event')
    v315:AddToggle('Toggle', {
        Title = 'Teleporter Kitsune',
        Default = false,
    }):OnChanged(function(p1229)
        _G.FKitsune = p1229

        StopTween(_G.FKitsune)
    end)
    spawn(function()
        while wait() do
            local v1230 = _G.FKitsune and game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

            if v1230 then
                topos(v1230.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10))
            end
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Collect Azure Ember',
        Default = false,
    }):OnChanged(function(p1231)
        _G.CltAze = p1231
    end)
    spawn(function()
        while wait() do
            if _G.CltAze then
                pcall(function()
                    if game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber') then
                        fastpos(game:GetService('Workspace'):WaitForChild('EmberTemplate'):FindFirstChild('Part').CFrame)
                    end
                end)
            end
        end
    end)
    v315:AddSlider('Slider', {
        Title = 'Set Azure Ember',
        Default = 20,
        Min = 5,
        Max = 25,
        Rounding = 5,
        Callback = function(p1232)
            _G.SetToTradeAureEmber = p1232
        end,
    })
    v315:AddToggle('Toggle', {
        Title = 'Auto Trade Azure Ember',
        Default = false,
    }):OnChanged(function(p1233)
        _G.TradeAureEmber = p1233
    end)

    function GetCountMaterials(p1234)
        local v1235 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory')
        local v1236, v1237, v1238 = pairs(v1235)

        while true do
            local v1239

            v1238, v1239 = v1236(v1237, v1238)

            if v1238 == nil then
                break
            end
            if v1239.Name == p1234 then
                return v1239.Count
            end
        end
    end

    spawn(function()
        while wait() do
            if _G.TradeAureEmber then
                pcall(function()
                    if GetCountMaterials('Azure Ember') >= _G.SetToTradeAureEmber then
                        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/KitsuneStatuePray'):InvokeServer()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KitsuneStatuePray')
                    end
                end)
            end
        end
    end)
    v315:AddSection('Leviathan')
    v315:AddToggle('Toggle', {
        Title = 'Teleport To Spy',
        Default = false,
    }):OnChanged(function(p1240)
        _G.TpSpy = p1240

        if _G.TpSpy then
            task.spawn(function()
                while _G.TpSpy do
                    task.wait()
                    topos(CFrame.new(-16471, 528, 539))
                end
            end)
        end
    end)
    v315:AddButton({
        Title = 'Buy Chip Leviathan',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
        end,
    })
    v315:AddButton({
        Title = 'Shoot Heart Leviathan',
        Callback = function()
            local v1241 = {
                'FireHarpoon',
                0.4219459368535087,
                0.30521099719905354,
                workspace.Boats:FindFirstChild('Beast Hunter').Harpoon,
                1728199048.263916,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1241))
        end,
    })
    v315:AddToggle('Toggle', {
        Title = 'Auto Find Leviathan (Need 5 People)',
        Default = false,
    }):OnChanged(function(p1242)
        _G.FindLeviathan = p1242

        StopTween(_G.FindLeviathan)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.FindLeviathan then
                    local v1243 = game.Players.LocalPlayer.Character

                    if v1243 and (v1243:FindFirstChild('Humanoid') and v1243.Humanoid.Sit) then
                        local v1244 = v1243.Humanoid.SeatPart

                        if v1244 and v1244:IsDescendantOf(game.Workspace.Boats) then
                            local v1245 = v1244.Parent

                            repeat
                                wait()

                                stopboat = topos(CFrame.new(-9999999, getgenv().PosYBoat, 0), v1245.VehicleSeat)
                            until game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Frozen Island') or not (v1243:FindFirstChild('Humanoid').Sit and _G.FindLeviathan)

                            if stopboat then
                                stopboat:Stop()
                            end
                            if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Frozen Island') then
                                _G.FindLeviathan = false

                                Notify('Xeter Hub', 'Frozen Island Spawn', 3)
                                game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                wait(0.1)
                                game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            if _G.FindLeviathan then
                pcall(function()
                    local v1246, v1247, v1248 = pairs(game:GetService('Workspace').Boats:GetChildren())

                    while true do
                        local v1249

                        v1248, v1249 = v1246(v1247, v1248)

                        if v1248 == nil then
                            break
                        end

                        local v1250, v1251, v1252 = pairs(game:GetService('Workspace').Boats[v1249.Name]:GetDescendants())

                        while true do
                            local v1253

                            v1252, v1253 = v1250(v1251, v1252)

                            if v1252 == nil then
                                break
                            end
                            if v1253:IsA('BasePart') then
                                if _G.NoClipRock or _G.FindLeviathan then
                                    v1253.CanCollide = false
                                else
                                    v1253.CanCollide = true
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Tween Frozen Dimension',
        Default = false,
    }):OnChanged(function(p1254)
        _G.FrozenDimension = p1254

        StopTween(_G.FrozenDimension)
    end)
    spawn(function()
        while wait() do
            if _G.FrozenDimension then
                pcall(function()
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                        topos(workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension').CFrame * CFrame.new(0, 250, 0))
                    end
                end)
            end
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Auto Kill / Attack Leviathan',
        Default = false,
    }):OnChanged(function(p1255)
        _G.KillLeviathan = p1255

        StopTween(_G.KillLeviathan)
    end)
    spawn(function()
        while wait() do
            if _G.KillLeviathan then
                pcall(function()
                    local v1256, v1257, v1258 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                    while true do
                        local v1259

                        v1258, v1259 = v1256(v1257, v1258)

                        if v1258 == nil then
                            break
                        end
                        if v1259.Name == 'Leviathan' and v1259:FindFirstChild('HumanoidRootPart') then
                            repeat
                                wait()
                                TP2(v1259.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                pcall(function()
                                    _G.SeaSkill = true
                                end)

                                _G.SeaSkill = true
                                AimBotSkillPosition = v1259.HumanoidRootPart
                                Skillaimbot = true
                            until not (v1259:FindFirstChild('HumanoidRootPart') and _G.KillLeviathan)

                            _G.SeaSkill = false
                            Skillaimbot = false
                        end
                    end
                end)
            end
        end
    end)
    v315:AddToggle('Toggle', {
        Title = 'Attack Segment Leviathan',
        Default = false,
    }):OnChanged(function(p1260)
        _G.SegmentLeviathan = p1260

        StopTween(_G.SegmentLeviathan)
    end)
    spawn(function()
        while wait() do
            if _G.SegmentLeviathan then
                pcall(function()
                    local v1261, v1262, v1263 = pairs(workspace.SeaBeasts:GetChildren())

                    while true do
                        local v1264

                        v1263, v1264 = v1261(v1262, v1263)

                        if v1263 == nil then
                            return
                        end
                        if not v1264 or (v1264.Name ~= 'Leviathan Segment' or (not v1264:FindFirstChild('Health') or v1264.Health.Value <= 0)) then
                        end

                        wait()

                        if v1264:FindFirstChild('HumanoidRootPart') then
                            topos(v1264.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                            pcall(function()
                                _G.SeaSkill = true
                            end)

                            AimBotSkillPosition = v1264.HumanoidRootPart
                            Skillaimbot = true
                        end
                        if v1264:FindFirstChild('HumanoidRootPart') and (_G.SegmentLeviathan and v1264.Health.Value > 0) then
                        end

                        _G.SeaSkill = false
                        Skillaimbot = false
                    end
                end)
            end
        end
    end)
    v315:AddSection('Settings Skills Only Sea Event')
    v315:AddToggle('Toggle', {
        Title = 'Enable Melee Skill',
        Default = false,
    }):OnChanged(function(p1265)
        _G.UseSeaMeleeSkill = p1265
    end)
    v315:AddToggle('Toggle', {
        Title = 'Enable Fruit Skill',
        Default = false,
    }):OnChanged(function(p1266)
        _G.UseSeaFruitSkill = p1266
    end)
    v315:AddToggle('Toggle', {
        Title = 'Enable Sword Skill',
        Default = false,
    }):OnChanged(function(p1267)
        _G.UseSeaSwordSkill = p1267
    end)
    v315:AddToggle('Toggle', {
        Title = 'Enable Gun Skill',
        Default = false,
    }):OnChanged(function(p1268)
        _G.UseSeaGunSkill = p1268
    end)
    v315:AddSection('Settings Melee Skill')
    v315:AddToggle('Toggle', {
        Title = 'Use Skill Z Melee',
        Default = false,
    }):OnChanged(function(p1269)
        _G.SkillMeleeZ = p1269
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill X Melee',
        Default = false,
    }):OnChanged(function(p1270)
        _G.SkillMeleeX = p1270
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill C Melee',
        Default = false,
    }):OnChanged(function(p1271)
        _G.SkillMeleeC = p1271
    end)
    v315:AddSection('Settings Fruit Skill')
    v315:AddToggle('Toggle', {
        Title = 'Use Skill Z Fruit',
        Default = false,
    }):OnChanged(function(p1272)
        _G.SkillFruitZ = p1272
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill X Fruit',
        Default = false,
    }):OnChanged(function(p1273)
        _G.SkillFruitX = p1273
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill C Fruit',
        Default = false,
    }):OnChanged(function(p1274)
        _G.SkillFruitC = p1274
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill V Fruit',
        Default = false,
    }):OnChanged(function(p1275)
        _G.SkillFruitV = p1275
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill F Fruit',
        Default = false,
    }):OnChanged(function(p1276)
        _G.SkillFruitF = p1276
    end)
    v315:AddSection('Settings Sword and Gun')
    v315:AddToggle('Toggle', {
        Title = 'Use Skill Z | Sword And Gun',
        Default = false,
    }):OnChanged(function(p1277)
        _G.SkillGunZ = p1277
        _G.SkillSwordZ = p1277
    end)
    v315:AddToggle('Toggle', {
        Title = 'Use Skill X | Sword And Gun',
        Default = false,
    }):OnChanged(function(p1278)
        _G.SkillGunX = p1278
        _G.SkillSwordX = p1278
    end)

    function EquipAllWeapon()
        pcall(function()
            local v1279, v1280, v1281 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v1282

                v1281, v1282 = v1279(v1280, v1281)

                if v1281 == nil then
                    break
                end
                if v1282:IsA('Tool') and (v1282.Name ~= 'Summon Sea Beast' and (v1282.Name ~= 'Water Body' and v1282.Name ~= 'Awakening')) then
                    local v1283 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1282.Name)

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1283)
                    wait(1)
                end
            end
        end)
    end

    local v1284 = getrawmetatable(game)
    local vu1285 = v1284.__namecall

    setreadonly(v1284, false)

    v1284.__namecall = newcclosure(function(...)
        local v1286 = getnamecallmethod()
        local v1287 = {...}

        if tostring(v1286) ~= 'FireServer' or (tostring(v1287[1]) ~= 'RemoteEvent' or (tostring(v1287[2]) == 'true' or (tostring(v1287[2]) == 'false' or not Skillaimbot))) then
            return vu1285(...)
        end

        v1287[2] = AimBotSkillPosition

        return vu1285(unpack(v1287))
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if UseSkill then
                    local v1288, v1289, v1290 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1291

                        v1290, v1291 = v1288(v1289, v1290)

                        if v1290 == nil then
                            break
                        end
                        if v1291.Name == MonFarm and (v1291:FindFirstChild('Humanoid') and (v1291:FindFirstChild('HumanoidRootPart') and v1291.Humanoid.Health <= v1291.Humanoid.MaxHealth * _G.Kill_At / 100)) then
                            if _G.SkillZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                                wait(_G.HoldSKillZ)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                            end
                            if _G.SkillX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                                wait(_G.HoldSKillX)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                            end
                            if _G.SkillC then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                                wait(_G.HoldSKillC)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                            end
                            if _G.SkillV then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                                wait(_G.HoldSKillV)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                            end
                            if _G.SkillF then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                                wait(_G.HoldSKillF)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if UseGunSkill then
                    local v1292, v1293, v1294 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1295

                        v1294, v1295 = v1292(v1293, v1294)

                        if v1294 == nil then
                            break
                        end
                        if v1295.Name == MonFarm and (v1295:FindFirstChild('Humanoid') and (v1295:FindFirstChild('HumanoidRootPart') and v1295.Humanoid.Health <= v1295.Humanoid.MaxHealth * _G.Kill_At / 100)) then
                            if _G.SkillZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                                wait(0.5)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                            end
                            if _G.SkillX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                                wait(0.5)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                            end
                        end
                    end
                end
            end)
        end
    end)
end

v317:AddSection('Quest')
v317:AddButton({
    Title = 'Teleport To Dojo Trainer',
    Callback = function()
        TP2(CFrame.new(5866, 1208, 870))
    end,
})
v317:AddButton({
    Title = 'Teleport To Dragon Hunter',
    Callback = function()
        TP2(CFrame.new(5863, 1209, 809))
    end,
})
v317:AddButton({
    Title = 'Teleport To Dragon Wizard',
    Callback = function()
        TP2(CFrame.new(5773, 1209, 806))
    end,
})
v317:AddToggle('Toggle', {
    Title = 'Auto Quest Dragon Hunter',
    Default = false,
}):OnChanged(function(p1296)
    _G.QuestDragon = p1296

    StopTween(_G.QuestDragon)
end)

function getBlazeEmberQuest()
    local v1297 = game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
        Context = 'Check',
    })

    if v1297 then
        local v1298, v1299, v1300 = pairs(v1297)

        while true do
            local v1301

            v1300, v1301 = v1298(v1299, v1300)

            if v1300 == nil then
                break
            end
            if v1300 == 'Text' then
                return v1301
            end
        end
    end
end
function getRequestQuest()
    return game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
        Context = 'RequestQuest',
    })
end
function getIsOnQuest()
    local v1302 = game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
        Context = 'Check',
    })

    if v1302 then
        local v1303, v1304, v1305 = pairs(v1302)

        while true do
            local v1306

            v1305, v1306 = v1303(v1304, v1305)

            if v1305 == nil then
                break
            end
            if v1305 == 'Text' and (string.find(v1306, 'Venomous Assailant') or (string.find(v1306, 'Hydra Enforcer') or string.find(v1306, 'Destroy 10 trees'))) then
                return true
            end
        end
    end

    return false
end

spawn(function()
    while wait(0.2) do
        if _G.QuestDragon then
            pcall(function()
                if not (_G.OnBlzeQuest or getIsOnQuest()) then
                    local v1307 = CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0, 0.476712614, 0, 1, 0, -0.476712614, 0, 0.879059196)

                    topos(v1307)
                    game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
                        Context = 'RequestQuest',
                    })
                end

                SaveBlazeEmberQuest()

                _G.OnBlzeQuest = true
            end)
        end
    end
end)

function SaveBlazeEmberQuest()
    local v1308 = getBlazeEmberQuest()

    if string.find(v1308, 'Venomous Assailant') then
        _G.BlazeEmberQuest = 'Venomous Assailant'
    elseif string.find(v1308, 'Hydra Enforcer') then
        _G.BlazeEmberQuest = 'Hydra Enforcer'
    elseif string.find(v1308, 'Destroy 10 trees') then
        _G.BlazeEmberQuest = 'Destroy 10 trees'
    end
end

_G.OnBlzeQuest = false

spawn(function()
    while wait(0.2) do
        if isQuestCompleated() then
            _G.OnBlzeQuest = false
        end
    end
end)
spawn(function()
    while wait(0.2) do
        if _G.QuestDragon then
            pcall(function()
                if _G.BlazeEmberQuest ~= 'Venomous Assailant' or not _G.OnBlzeQuest then
                    if _G.BlazeEmberQuest ~= 'Hydra Enforcer' or not _G.OnBlzeQuest then
                        if _G.BlazeEmberQuest == 'Destroy 10 trees' and _G.OnBlzeQuest then
                            autoDestroyHydraTrees()
                        end
                    else
                        autoKillHydraEnforcer()
                    end
                else
                    autoKillVenemousAssailant()
                end
            end)
        end
    end
end)

function isQuestCompleated()
    local v1309, v1310, v1311 = pairs(game:GetService('Players').LocalPlayer.PlayerGui.Notifications:GetChildren())

    while true do
        local v1312

        v1311, v1312 = v1309(v1310, v1311)

        if v1311 == nil then
            break
        end

        local v1313, v1314, v1315 = pairs(v1312:GetChildren())

        while true do
            local v1316

            v1315, v1316 = v1313(v1314, v1315)

            if v1315 == nil then
                break
            end
            if string.find(v1316.Text, 'Task completed!') or string.find(v1316.Text, 'Head back to the Dojo') then
                return true
            end
        end
    end

    return false
end
function CollectBlazeEmber()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace'):WaitForChild('EmberTemplate'):FindFirstChild('Part').CFrame
end
function autoKillVenemousAssailant()
    if game:GetService('Workspace').Enemies:FindFirstChild('Venomous Assailant') then
        local v1317, v1318, v1319 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1320

            v1319, v1320 = v1317(v1318, v1319)

            if v1319 == nil then
                break
            end
            if v1320.Name == 'Venomous Assailant' and (v1320:FindFirstChild('Humanoid') and (v1320:FindFirstChild('HumanoidRootPart') and v1320.Humanoid.Health > 0)) then
                repeat
                    game:GetService('RunService').Heartbeat:wait()
                    EquipWeapon(_G.SelectWeapon)

                    v1320.HumanoidRootPart.CanCollide = false
                    StartMagnet = true
                    _G.PosMon = v1320.HumanoidRootPart.CFrame

                    TP2(v1320.HumanoidRootPart.CFrame * Pos)
                until not v1320.Parent or (v1320.Humanoid.Health <= 0 or not (_G.QuestDragon and _G.OnBlzeQuest))
            end
        end
    else
        topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0, 0.924166501, 0, 1, 0, -0.924166501, 0, -0.381989956))
    end
end
function autoKillHydraEnforcer()
    if game:GetService('Workspace').Enemies:FindFirstChild('Hydra Enforcer') then
        local v1321, v1322, v1323 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1324

            v1323, v1324 = v1321(v1322, v1323)

            if v1323 == nil then
                break
            end
            if v1324.Name == 'Hydra Enforcer' and (v1324:FindFirstChild('Humanoid') and (v1324:FindFirstChild('HumanoidRootPart') and v1324.Humanoid.Health > 0)) then
                repeat
                    game:GetService('RunService').Heartbeat:wait()
                    EquipWeapon(_G.SelectWeapon)

                    v1324.HumanoidRootPart.CanCollide = false
                    StartMagnet = true
                    _G.PosMon = v1324.HumanoidRootPart.CFrame

                    TP2(v1324.HumanoidRootPart.CFrame * Pos)
                until not v1324.Parent or (v1324.Humanoid.Health <= 0 or not (_G.QuestDragon and _G.OnBlzeQuest))
            end
        end
    else
        topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0, 0.924166501, 0, 1, 0, -0.924166501, 0, -0.381989956))
    end
end
function autoDestroyHydraTrees()
    local v1325 = CFrame.new(5260.28223, 1004.24329, 347.062622, 0.923247099, 0, 0.384206682, 0, 1, 0, -0.384206682, 0, 0.923247099)
    local v1326 = CFrame.new(5237.94775, 1004.24329, 429.596344, 0.371416599, 0, 0.92846632, 0, 1, 0, -0.92846632, 0, 0.371416599)
    local v1327 = CFrame.new(5320.87793, 1004.24329, 439.152954, 0.136340275, 0, -0.990662038, 0, 1, 0, 0.990662038, 0, 0.136340275)
    local v1328 = CFrame.new(5346.70752, 1004.24329, 359.389008, 0.296962529, 0, -0.954889119, 0, 1, 0, 0.954889119, 0, 0.296962529)
    local v1329 = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame

    if (v1329.Position - v1325.Position).Magnitude > 3 then
        topos(v1325)
    else
        useAllSkill()
    end
    if (v1329.Position - v1326.Position).Magnitude > 3 then
        topos(v1326)
    else
        useAllSkill()
    end
    if (v1329.Position - v1327.Position).Magnitude > 3 then
        topos(v1327)
    else
        useAllSkill()
    end
    if (v1329.Position - v1328.Position).Magnitude > 3 then
        topos(v1328)
    else
        useAllSkill()
    end
end

DoneSkillGun = false
DoneSkillSword = false
DoneSkillFruit = false
DoneSkillMelee = false

function useAllSkill()
    local v1330 = game:service('VirtualInputManager')

    if not DoneSkillFruit then
        local v1331, v1332, v1333 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1334

            v1333, v1334 = v1331(v1332, v1333)

            if v1333 == nil then
                break
            end
            if v1334:IsA('Tool') and v1334.ToolTip == 'Blox Fruit' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1334)
            end
        end

        local v1335, v1336, v1337 = pairs({
            'Z',
            'X',
            'C',
            'V',
            'F',
        })

        while true do
            local v1338

            v1337, v1338 = v1335(v1336, v1337)

            if v1337 == nil then
                break
            end

            v1330:SendKeyEvent(true, v1338, false, game)
            wait(0)
            v1330:SendKeyEvent(false, v1338, false, game)
        end

        DoneSkillFruit = true
    end
    if not DoneSkillMelee then
        local v1339, v1340, v1341 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1342

            v1341, v1342 = v1339(v1340, v1341)

            if v1341 == nil then
                break
            end
            if v1342:IsA('Tool') and v1342.ToolTip == 'Melee' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1342)
            end
        end

        local v1343, v1344, v1345 = pairs({
            'Z',
            'X',
            'C',
            'V',
        })

        while true do
            local v1346

            v1345, v1346 = v1343(v1344, v1345)

            if v1345 == nil then
                break
            end

            v1330:SendKeyEvent(true, v1346, false, game)
            wait(0)
            v1330:SendKeyEvent(false, v1346, false, game)
        end

        DoneSkillMelee = true
    end
    if not DoneSkillSword then
        local v1347, v1348, v1349 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1350

            v1349, v1350 = v1347(v1348, v1349)

            if v1349 == nil then
                break
            end
            if v1350:IsA('Tool') and v1350.ToolTip == 'Sword' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1350)
            end
        end

        local v1351, v1352, v1353 = pairs({
            'Z',
            'X',
        })

        while true do
            local v1354

            v1353, v1354 = v1351(v1352, v1353)

            if v1353 == nil then
                break
            end

            v1330:SendKeyEvent(true, v1354, false, game)
            wait(0)
            v1330:SendKeyEvent(false, v1354, false, game)
        end

        DoneSkillSword = true
    end
    if not DoneSkillGun then
        local v1355, v1356, v1357 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1358

            v1357, v1358 = v1355(v1356, v1357)

            if v1357 == nil then
                break
            end
            if v1358:IsA('Tool') and v1358.ToolTip == 'Gun' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1358)
            end
        end

        local v1359, v1360, v1361 = pairs({
            'Z',
            'X',
        })

        while true do
            local v1362

            v1361, v1362 = v1359(v1360, v1361)

            if v1361 == nil then
                break
            end

            v1330:SendKeyEvent(true, v1362, false, game)
            wait(0.1)
            v1330:SendKeyEvent(false, v1362, false, game)
        end

        DoneSkillGun = true
    end

    DoneSkillGun = false
    DoneSkillSword = false
    DoneSkillFruit = false
    DoneSkillMelee = false
end

spawn(function()
    while wait(0.2) do
        if _G.QuestDragon then
            pcall(function()
                if game:GetService('Workspace').EmberTemplate:FindFirstChild('Part') then
                    CollectBlazeEmber()
                end
            end)
        end
    end
end)
v317:AddSection('Craft Item')
v317:AddButton({
    Title = 'Craft Volcanic Magnet',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})
v317:AddButton({
    Title = 'Craft Dino Hood',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'DinoHood',
        }))
    end,
})
v317:AddButton({
    Title = 'Craft T-Rex Skull',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'TRexSkull',
        }))
    end,
})
v317:AddSection('Prehistoric Island')

local vu1363 = v317:AddParagraph({
    Title = 'Status Prehistoric Island',
    Desc = '',
})

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                vu1363:SetDesc('Prehistoric Island : Spawn!')
            else
                vu1363:SetDesc('Prehistoric Island : Not Spawn')
            end
        end)
    end
end)
v317:AddButton({
    Title = 'Remove Lava In Prehistoric Island',
    Callback = function()
        local v1364, v1365, v1366 = pairs(game.Workspace:GetDescendants())

        while true do
            local v1367

            v1366, v1367 = v1364(v1365, v1366)

            if v1366 == nil then
                break
            end
            if v1367.Name == 'Lava' then
                v1367:Destroy()
            end
        end

        local v1368, v1369, v1370 = pairs(game.ReplicatedStorage:GetDescendants())

        while true do
            local v1371

            v1370, v1371 = v1368(v1369, v1370)

            if v1370 == nil then
                break
            end
            if v1371.Name == 'Lava' then
                v1371:Destroy()
            end
        end
    end,
})
v317:AddToggle('Toggle', {
    Title = 'Find Prehistoric Island',
    Default = false,
}):OnChanged(function(p1372)
    _G.FindPrehistoric = p1372

    StopTween(_G.FindPrehistoric)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.FindPrehistoric then
                if CheckBoat() then
                    local v1373, v1374, v1375 = pairs(game:GetService('Workspace').Boats:GetChildren())

                    while true do
                        local v1376

                        v1375, v1376 = v1373(v1374, v1375)

                        if v1375 == nil then
                            break
                        end
                        if v1376.Name == _G.SelectedBoat and v1376:FindFirstChild('MyBoatEsp') then
                            if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit then
                                repeat
                                    wait()

                                    stopboat = TPB(CFrame.new(-9999999, 1, 0), v1376.VehicleSeat)
                                until game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') or not (game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit and _G.FindPrehistoric)

                                if stopboat then
                                    stopboat:Stop()
                                end
                                if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                                    _G.FindPrehistoric = false

                                    Notify('Xeter Hub', 'Prehistoric Island Spawn', 3)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                                end
                            else
                                stoppos = TP2(v1376.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                            end
                        end
                    end
                else
                    local v1377 = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

                    if (v1377.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                        stoppos = topos(v1377)
                    else
                        topos(CFrame.new(-16224, 9, 439))
                    end
                    if (v1377.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if stoppos then
                            stoppos:Stop()
                        end

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)

                        local v1378, v1379, v1380 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v1381

                            v1380, v1381 = v1378(v1379, v1380)

                            if v1380 == nil then
                                break
                            end
                            if v1381.Name == _G.SelectedBoat and (v1381.VehicleSeat.CFrame.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                AddEsp('MyBoatEsp', v1381)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
v317:AddToggle('Toggle', {
    Title = 'Teleport Prehistoric Island',
    Default = false,
}):OnChanged(function(p1382)
    _G.TpPrehistoric = p1382

    StopTween(_G.TpPrehistoric)
end)
spawn(function()
    pcall(function()
        while wait() do
            local v1383 = _G.TpPrehistoric and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

            if v1383 then
                local v1384 = v1383.WorldPivot.Position

                topos(CFrame.new(v1384.X, 500, v1384.Z))
            end
        end
    end)
end)
v317:AddToggle('Toggle', {
    Title = 'Teleport Skull Core',
    Default = false,
}):OnChanged(function(p1385)
    _G.TpSkullCore = p1385

    StopTween(_G.TpSkullCore)
end)
spawn(function()
    local v1386 = nil

    while not v1386 do
        v1386 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1387 = _G.TpSkullCore and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1387 then
            local v1388 = v1387:FindFirstChild('Core')

            if v1388 then
                v1388 = v1387.Core:FindFirstChild('PrehistoricRelic')
            end
            if v1388 then
                v1388 = v1388:FindFirstChild('Skull')
            end
            if v1388 then
                topos(CFrame.new(v1388.Position))

                _G.TpSkullCore = false
            end
        end
    end
end)
v317:AddToggle('Toggle', {
    Title = 'Auto Kill Golem',
    Default = false,
}):OnChanged(function(p1389)
    _G.Kill_Aura = p1389
    _G.KillGolem = p1389

    StopTween(_G.KillGolem)
end)
spawn(function()
    while wait() do
        if _G.KillGolem and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Lava Golem') then
                    local v1390, v1391, v1392 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1393

                        v1392, v1393 = v1390(v1391, v1392)

                        if v1392 == nil then
                            break
                        end
                        if v1393.Name == 'Lava Golem' and (v1393:FindFirstChild('Humanoid') and (v1393:FindFirstChild('HumanoidRootPart') and v1393.Humanoid.Health > 0)) then
                            repeat
                                task.wait()

                                v1393.HumanoidRootPart.CanCollide = false
                                v1393.Humanoid.WalkSpeed = 0

                                TP2(v1393.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.KillGolem or (not v1393.Parent or v1393.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Lava Golem') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Lava Golem').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v317:AddToggle('Toggle', {
    Title = 'Auto Fix Volcano',
    Default = false,
}):OnChanged(function(p1394)
    _G.DefendVolcano = p1394

    StopTween(_G.DefendVolcano)
end)

local function vu1396(p1395)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1395, false, game)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1395, false, game)
end
local function vu1412()
    local v1397 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

    if v1397 and v1397:IsA('Model') then
        v1397:Destroy()
    end

    local v1398 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if v1398 then
        local v1399, v1400, v1401 = pairs(v1398:GetDescendants())

        while true do
            local v1402

            v1401, v1402 = v1399(v1400, v1401)

            if v1401 == nil then
                break
            end
            if v1402:IsA('Part') and v1402.Name:lower():find('lava') then
                v1402:Destroy()
            end
        end
    end

    local v1403 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if v1403 then
        local v1404, v1405, v1406 = pairs(v1403:GetDescendants())

        while true do
            local v1407

            v1406, v1407 = v1404(v1405, v1406)

            if v1406 == nil then
                break
            end
            if v1407:IsA('Model') then
                local v1408, v1409, v1410 = pairs(v1407:GetDescendants())

                while true do
                    local v1411

                    v1410, v1411 = v1408(v1409, v1410)

                    if v1410 == nil then
                        break
                    end
                    if v1411:IsA('MeshPart') and v1411.Name:lower():find('lava') then
                        v1411:Destroy()
                    end
                end
            end
        end
    end
end
local function vu1420()
    local v1413 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    local v1414, v1415, v1416 = pairs(v1413:GetChildren())

    while true do
        local v1417

        v1416, v1417 = v1414(v1415, v1416)

        if v1416 == nil then
            break
        end
        if v1417:IsA('Model') then
            local v1418 = v1417:FindFirstChild('volcanorock')

            if v1418 and v1418:IsA('MeshPart') then
                local v1419 = v1418.Color

                if v1419 == Color3.fromRGB(185, 53, 56) or v1419 == Color3.fromRGB(185, 53, 57) then
                    return v1418
                end
            end
        end
    end

    return nil
end
local function vu1432(p1421)
    local v1422 = game.Players.LocalPlayer
    local v1423 = v1422.Backpack
    local v1424, v1425, v1426 = pairs(v1423:GetChildren())

    while true do
        local v1427

        v1426, v1427 = v1424(v1425, v1426)

        if v1426 == nil then
            break
        end
        if v1427:IsA('Tool') and v1427.ToolTip == p1421 then
            v1427.Parent = v1422.Character

            local v1428, v1429, v1430 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local vu1431

                v1430, vu1431 = v1428(v1429, v1430)

                if v1430 == nil then
                    break
                end

                wait()
                pcall(function()
                    vu1396(vu1431)
                end)
            end

            v1427.Parent = v1423

            break
        end
    end
end

spawn(function()
    while wait() do
        if _G.DefendVolcano then
            pcall(vu1412)

            local v1433 = vu1420()

            if v1433 then
                local v1434 = CFrame.new(v1433.Position)

                topos(v1434)

                local v1435 = v1433.Color

                if v1435 == Color3.fromRGB(185, 53, 56) or v1435 == Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1433.Position).Magnitude <= 1 then
                        if _G.UseMelee then
                            vu1432('Melee')
                        end
                        if _G.UseFruit then
                            vu1432('Blox Fruit')
                        end
                        if _G.UseSword then
                            vu1432('Sword')
                        end
                        if _G.UseGun then
                            vu1432('Gun')
                        end
                    end

                    _G.TpSkullCore = false
                else
                    vu1420()
                end
            else
                _G.TpSkullCore = true
            end
        end
    end
end)
v317:AddToggle('Toggle', {
    Title = 'Collect Bone',
    Default = false,
}):OnChanged(function(p1436)
    _G.CollectBone = p1436
end)
spawn(function()
    while wait() do
        if _G.CollectBone then
            local v1437, v1438, v1439 = pairs(workspace:GetDescendants())

            while true do
                local v1440

                v1439, v1440 = v1437(v1438, v1439)

                if v1439 == nil then
                    break
                end
                if v1440:IsA('BasePart') and v1440.Name == 'DinoBone' then
                    topos(CFrame.new(v1440.Position))
                end
            end
        end
    end
end)
v317:AddToggle('Toggle', {
    Title = 'Collect Egg',
    Default = false,
}):OnChanged(function(p1441)
    _G.CollectEgg = p1441
end)
spawn(function()
    while wait() do
        if _G.CollectEgg then
            local v1442 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()

            if #v1442 > 0 then
                local v1443 = v1442[math.random(1, #v1442)]

                if v1443:IsA('Model') and v1443.PrimaryPart then
                    topos(v1443.PrimaryPart.CFrame)

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1443.PrimaryPart.Position).Magnitude <= 1 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
v317:AddSection('Settings Use Weapons')
v317:AddToggle('Toggle', {
    Title = 'Auto Use Melee',
    Default = true,
}):OnChanged(function(p1444)
    _G.UseMelee = p1444
end)
v317:AddToggle('Toggle', {
    Title = 'Auto Use Fruit',
    Default = false,
}):OnChanged(function(p1445)
    _G.UseFruit = p1445
end)
v317:AddToggle('Toggle', {
    Title = 'Auto Use Sword',
    Default = false,
}):OnChanged(function(p1446)
    _G.UseSword = p1446
end)
v317:AddToggle('Toggle', {
    Title = 'Auto Use Gun',
    Default = false,
}):OnChanged(function(p1447)
    _G.UseGun = p1447
end)
v319:AddSection('Player')

local vu1448 = v319:AddParagraph({
    Title = 'Player',
    Desc = '',
})

spawn(function()
    while task.wait() do
        pcall(function()
            local v1449, v1450, v1451 = pairs(game:GetService('Players'):GetPlayers())

            while true do
                local v1452

                v1451, v1452 = v1449(v1450, v1451)

                if v1451 == nil then
                    break
                end
                if v1451 == 12 then
                    vu1448:SetDesc('Players:' .. ' ' .. v1451 .. ' / 12 (Max)')
                elseif v1451 == 1 then
                    vu1448:SetDesc('Player:' .. ' ' .. v1451 .. ' / 12')
                else
                    vu1448:SetDesc('Players:' .. ' ' .. v1451 .. ' / 12')
                end
            end
        end)
    end
end)

local v1453, v1454, v1455 = pairs(game:GetService('Players'):GetPlayers())
local vu1456 = vu170
local vu1457 = vu187
local vu1458 = {}

while true do
    local v1459

    v1455, v1459 = v1453(v1454, v1455)

    if v1455 == nil then
        break
    end

    table.insert(vu1458, v1459.Name)
end

SelectedPly = v319:AddDropdown('SelectedPly', {
    Title = 'Select Player',
    Values = vu1458,
    Default = _G.SelectPly,
})

SelectedPly:SetValue(_G.SelectPly)
SelectedPly:OnChanged(function(p1460)
    _G.SelectPly = p1460
end)
v319:AddButton({
    Title = 'Refresh Player',
    Description = '',
    Callback = function()
        vu1458 = {}

        if not SelectedPly then
            SelectedPly = {}
        end
        if type(SelectedPly.Clear) == 'function' then
            SelectedPly:Clear()
        end

        local v1461, v1462, v1463 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local v1464

            v1463, v1464 = v1461(v1462, v1463)

            if v1463 == nil then
                break
            end

            table.insert(vu1458, v1464.Name)

            if type(SelectedPly.Add) == 'function' then
                SelectedPly:Add(v1464.Name)
            end
        end
    end,
})
v319:AddToggle('Toggle', {
    Title = 'Spectate Player',
    Default = false,
}):OnChanged(function(p1465)
    SpectatePlys = p1465

    local v1466 = game:GetService('Players').LocalPlayer.Character

    if v1466 then
        v1466 = game:GetService('Players').LocalPlayer.Character:FindFirstChild('Humanoid')
    end

    local v1467 = _G.SelectPly

    if v1467 then
        v1467 = game:GetService('Players'):FindFirstChild(_G.SelectPly)
    end

    local v1468 = v1467 and v1467.Character

    if v1468 then
        v1468 = v1467.Character:FindFirstChild('Humanoid')
    end
    if v1468 then
        repeat
            wait(0.1)

            game:GetService('Workspace').Camera.CameraSubject = v1468
        until SpectatePlys == false

        if v1466 then
            game:GetService('Workspace').Camera.CameraSubject = v1466
        end
    end
end)
v319:AddToggle('Toggle', {
    Title = 'Teleport',
    Default = false,
}):OnChanged(function(p1469)
    _G.TeleportPly = p1469

    pcall(function()
        if _G.TeleportPly then
            repeat
                topos(game:GetService('Players')[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                wait()
            until _G.TeleportPly == false
        end

        StopTween(_G.TeleportPly)
    end)
end)
v319:AddSection('PvP')
v319:AddToggle('Toggle', {
    Title = 'Aimbot Nearest',
    Default = false,
}):OnChanged(function(p1470)
    _G.AimNearest = p1470
end)

local vu1471 = game:GetService('Players')
local vu1472 = vu1471.LocalPlayer
local v1473 = game:GetService('RunService')

local function vu1483()
    local v1474 = math.huge
    local v1475 = vu1471
    local v1476, v1477, v1478 = pairs(v1475:GetPlayers())
    local v1479 = nil

    while true do
        local v1480

        v1478, v1480 = v1476(v1477, v1478)

        if v1478 == nil then
            break
        end
        if v1480 ~= vu1472 and v1480.Character and (v1480.Character:FindFirstChild('HumanoidRootPart') and (v1480.Team ~= vu1472.Team and v1480.Team.Name ~= 'Marines')) then
            local v1481 = v1480.Character.HumanoidRootPart.Position
            local v1482 = (vu1472.Character.HumanoidRootPart.Position - v1481).Magnitude

            if v1482 < v1474 then
                v1479 = v1480
                v1474 = v1482
            end
        end
    end

    return v1479
end

v1473.RenderStepped:Connect(function()
    local v1484 = _G.AimNearest and vu1483()

    if v1484 then
        _G.Aim_Players = v1484
    end
end)

local v1485 = getrawmetatable(game)
local vu1486 = v1485.__namecall

setreadonly(v1485, false)

v1485.__namecall = newcclosure(function(...)
    local v1487 = getnamecallmethod()
    local v1488 = {...}

    if tostring(v1487) ~= 'FireServer' or (tostring(v1488[1]) ~= 'RemoteEvent' or (tostring(v1488[2]) == 'true' or (tostring(v1488[2]) == 'false' or not (_G.AimNearest and _G.Aim_Players)))) then
        return vu1486(...)
    end

    v1488[2] = _G.Aim_Players.Character.HumanoidRootPart.Position

    return vu1486(unpack(v1488))
end)

setreadonly(v1485, true)
v319:AddToggle('Toggle', {
    Title = 'No Stun When Using Skill',
    Default = false,
}):OnChanged(function(p1489)
    _G.NoSt = p1489
end)
spawn(function()
    while wait() do
        if _G.NoSt then
            local v1490 = next
            local v1491, v1492 = vu279.Character:GetDescendants()

            while true do
                local v1493

                v1492, v1493 = v1490(v1491, v1492)

                if v1492 == nil then
                    break
                end
                if table.find({
                    'BodyGyro',
                    'BodyPosition',
                }, v1493.ClassName) then
                    v1493:Destroy()
                end
            end
        end
    end
end)
v319:AddToggle('Toggle', {
    Title = 'Enabled PvP',
    Default = false,
}):OnChanged(function(p1494)
    _G.EnabledPvP = p1494
end)
task.spawn(function()
    while task.wait(1) do
        if _G.EnabledPvP then
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('EnablePvp')
        end
    end
end)
v319:AddButton({
    Title = 'Set Position Spawn',
    Callback = function()
        _G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        Com()
    end,
})
v319:AddButton({
    Title = 'Respawn',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
        wait()
    end,
})
v319:AddSection('Other Players')
v319:AddToggle('Toggle', {
    Title = 'Auto Active V3',
    Default = false,
}):OnChanged(function(p1495)
    _G.ActiveV3 = p1495
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.ActiveV3 then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end
    end)
end)
v319:AddToggle('Toggle', {
    Title = 'Auto Active V4',
    Default = false,
}):OnChanged(function(p1496)
    _G.ActiveV4 = p1496
end)
spawn(function()
    while task.wait() do
        if _G.ActiveV4 then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('RaceEnergy') and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and (game.Players.LocalPlayer.Character:FindFirstChild('RaceTransformed') and not game.Players.LocalPlayer.Character.RaceTransformed.Value) then
                    game:GetService('Players').LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack({true}))
                end
            end)
        end
    end
end)
v319:AddToggle('Toggle', {
    Title = 'Enable Fly',
    Default = false,
}):OnChanged(function(p1497)
    if p1497 then
        _G.NoClip = true

        vu204(speaker, true)
    else
        _G.NoClip = false

        vu1457(speaker)
    end
end)
v319:AddToggle('Toggle', {
    Title = 'Walk on Water',
    Default = true,
}):OnChanged(function(p1498)
    _G.WalkWater = p1498
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

Dropdown = v319:AddDropdown('Dropdown', {
    Title = 'Select Walk Speed',
    Values = {
        '50',
        '100',
        '200',
        '250',
        '300',
        '350',
    },
    Multi = false,
})

Dropdown:SetValue('200')
Dropdown:OnChanged(function(p1499)
    _G.SelectSp = p1499
end)
v319:AddToggle('Toggle', {
    Title = 'Walk Speed',
    Default = false,
}):OnChanged(function(p1500)
    _G.WalkSp = p1500
end)
game:GetService('RunService').RenderStepped:Connect(function()
    if vu279.Character and (vu279.Character:FindFirstChild('Humanoid') and _G.WalkSp) then
        vu279.Character.Humanoid.WalkSpeed = tonumber(_G.SelectSp)
    end
end)

Dropdown = v319:AddDropdown('Dropdown', {
    Title = 'Select High Jump',
    Values = {
        '50',
        '100',
        '200',
        '250',
        '300',
        '350',
        '400',
    },
    Multi = false,
})

Dropdown:SetValue('200')
Dropdown:OnChanged(function(p1501)
    _G.SelectJp = p1501
end)
v319:AddToggle('Toggle', {
    Title = 'High Jump',
    Default = false,
}):OnChanged(function(p1502)
    _G.JumpSp = p1502
end)
game:GetService('RunService').RenderStepped:Connect(function()
    if vu279.Character and (vu279.Character:FindFirstChild('Humanoid') and _G.JumpSp) then
        vu279.Character.Humanoid.JumpPower = tonumber(_G.SelectJp)
    end
end)
v319:AddToggle('Toggle', {
    Title = 'NoClip',
    Default = false,
}):OnChanged(function(p1503)
    _G.NoClip = p1503
end)
spawn(function()
    while wait() do
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', 100)
        end
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)

            local v1504 = game.Players.LocalPlayer
            local v1505 = math.huge * math.huge
            local _ = math.huge * math.huge * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0

            v1504.SimulationRadius = v1505
        end
    end
end)
v319:AddSection('Stats')

local vu1506 = v319:AddParagraph({
    Title = 'Stat Points',
    Desc = '',
})
local vu1507 = v319:AddParagraph({
    Title = 'Melee',
    Desc = '',
})
local vu1508 = v319:AddParagraph({
    Title = 'Defense',
    Desc = '',
})
local vu1509 = v319:AddParagraph({
    Title = 'Sword',
    Desc = '',
})
local vu1510 = v319:AddParagraph({
    Title = 'Gun',
    Desc = '',
})
local vu1511 = v319:AddParagraph({
    Title = 'Fruit',
    Desc = '',
})

spawn(function()
    while task.wait() do
        pcall(function()
            vu1506:SetDesc('Stat Points: ' .. tostring(game:GetService('Players').LocalPlayer.Data.Points.Value))
            vu1507:SetDesc('Melee: ' .. game.Players.localPlayer.Data.Stats.Melee.Level.Value)
            vu1508:SetDesc('Defense: ' .. game.Players.localPlayer.Data.Stats.Defense.Level.Value)
            vu1509:SetDesc('Sword: ' .. game.Players.localPlayer.Data.Stats.Sword.Level.Value)
            vu1510:SetDesc('Gun: ' .. game.Players.localPlayer.Data.Stats.Gun.Level.Value)
            vu1511:SetDesc('Fruit: ' .. game.Players.localPlayer.Data.Stats['Demon Fruit'].Level.Value)
        end)
    end
end)
v319:AddSlider('Slider', {
    Title = 'Select Stats Kaitun',
    Min = 1,
    Max = 100,
    Default = 1,
    Rounding = 1,
    Callback = function(p1512)
        _G.Point = p1512
    end,
})
v319:AddToggle('Toggle', {
    Title = 'Auto Stats Kaitun',
    Default = false,
}):OnChanged(function(p1513)
    _G.Stats_Kaitun = p1513
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Stats_Kaitun then
                if World1 then
                    local v1514 = {
                        'AddPoint',
                        'Melee',
                        _G.Point,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1514))
                elseif World2 then
                    local v1515 = {
                        'AddPoint',
                        'Melee',
                        _G.Point,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1515))

                    local v1516 = {
                        'AddPoint',
                        'Defense',
                        _G.Point,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1516))
                end
            end
        end)
    end
end)
v319:AddToggle('Toggle', {
    Title = 'Melee',
    Default = false,
}):OnChanged(function(p1517)
    melee = p1517
end)
v319:AddToggle('Toggle', {
    Title = 'Defense',
    Default = false,
}):OnChanged(function(p1518)
    defense = p1518
end)
v319:AddToggle('Toggle', {
    Title = 'Sword',
    Default = false,
}):OnChanged(function(p1519)
    sword = p1519
end)
v319:AddToggle('Toggle', {
    Title = 'Gun',
    Default = false,
}):OnChanged(function(p1520)
    gun = p1520
end)
v319:AddToggle('Toggle', {
    Title = 'Devil Fruit',
    Default = false,
}):OnChanged(function(p1521)
    demonfruit = p1521
end)
spawn(function()
    while wait() do
        if melee then
            local v1522 = {
                'AddPoint',
                'Melee',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1522))
        end
        if defense then
            local v1523 = {
                'AddPoint',
                'Defense',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1523))
        end
        if sword then
            local v1524 = {
                'AddPoint',
                'Sword',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1524))
        end
        if gun then
            local v1525 = {
                'AddPoint',
                'Gun',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1525))
        end
        if demonfruit then
            local v1526 = {
                'AddPoint',
                'Demon Fruit',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1526))
        end
    end
end)
v321:AddSection('ESP MENU')
v321:AddToggle('Toggle', {
    Title = 'ESP Player',
    Default = false,
}):OnChanged(function(p1527)
    ESPPlayer = p1527

    UpdatePlayerChams()
end)
v321:AddToggle('Toggle', {
    Title = 'ESP Fruit',
    Default = false,
}):OnChanged(function(p1528)
    DevilFruitESP = p1528

    while DevilFruitESP do
        wait()
        UpdateDevilChams()
    end
end)
v321:AddToggle('Toggle', {
    Title = 'ESP Berries',
    Default = false,
}):OnChanged(function(p1529)
    BerriesESP = p1529

    while BerriesESP do
        wait()
        UpdateBerriesESP()
    end
end)
v321:AddToggle('Toggle', {
    Title = 'ESP Island',
    Default = false,
}):OnChanged(function(p1530)
    IslandESP = p1530
end)
v321:AddToggle('Toggle', {
    Title = 'Esp Mystic Island',
    Default = false,
}):OnChanged(function(p1531)
    MirageIslandESP = p1531

    while MirageIslandESP do
        wait()
        UpdateIslandMirageESP()
    end
end)
v321:AddToggle('Toggle', {
    Title = 'ESP Island Kitsune',
    Default = false,
}):OnChanged(function(p1532)
    IslandESP = p1532

    while IslandESP do
        wait()
        UpdateIslandESPKitsune()
    end
end)
spawn(function()
    while wait() do
        if BerriesESP then
            UpdateBerriesESP()
        end
        if DevilFruitESP then
            UpdateDevilChams()
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
    end
end)
spawn(function()
    while wait() do
        if IslandESP then
            pcall(function()
                local v1533, v1534, v1535 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

                while true do
                    local v1536

                    v1535, v1536 = v1533(v1534, v1535)

                    if v1535 == nil then
                        break
                    end
                    if not v1536:FindFirstChild('IslandEsp') then
                        local v1537 = Instance.new('BillboardGui')
                        local v1538 = Instance.new('TextLabel')

                        v1537.Parent = v1536
                        v1537.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        v1537.Active = true
                        v1537.Name = 'IslandEsp'
                        v1537.AlwaysOnTop = true
                        v1537.LightInfluence = 1
                        v1537.Size = UDim2.new(0, 200, 0, 50)
                        v1537.StudsOffset = Vector3.new(0, 2.5, 0)
                        v1538.Parent = v1537
                        v1538.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        v1538.BackgroundTransparency = 1
                        v1538.Size = UDim2.new(0, 200, 0, 50)
                        v1538.Font = Enum.Font.GothamBold
                        v1538.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v1538.FontSize = 'Size14'
                        v1538.TextStrokeTransparency = 0.5
                    end

                    local v1539 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1536.Position).Magnitude / 10)

                    v1536.IslandEsp.TextLabel.Text = v1536.Name .. '\n' .. '[' .. v1539 .. ']'
                end
            end)
        else
            local v1540, v1541, v1542 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

            while true do
                local v1543

                v1542, v1543 = v1540(v1541, v1542)

                if v1542 == nil then
                    break
                end
                if v1543:FindFirstChild('IslandEsp') then
                    v1543.IslandEsp:Destroy()
                end
            end
        end
    end
end)
v321:AddSection('Troll')
v321:AddButton({
    Title = 'Rain Fruit',
    Callback = function()
        local v1544, v1545, v1546 = pairs(game:GetObjects('rbxassetid://14759368201')[1]:GetChildren())

        while true do
            local vu1547

            v1546, vu1547 = v1544(v1545, v1546)

            if v1546 == nil then
                break
            end

            vu1547.Parent = game.Workspace.Map

            vu1547:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))

            if vu1547.Fruit:FindFirstChild('AnimationController') then
                vu1547.Fruit:FindFirstChild('AnimationController'):LoadAnimation(vu1547.Fruit:FindFirstChild('Idle')):Play()
            end

            vu1547.Handle.Touched:Connect(function(p1548)
                if p1548.Parent == game.Players.LocalPlayer.Character then
                    vu1547.Parent = game.Players.LocalPlayer.Backpack

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(vu1547)
                end
            end)
        end
    end,
})
v321:AddButton({
    Title = 'Instant Level/Beli/EXP',
    Callback = function()
        local v1549 = game:GetService('Players').LocalPlayer
        local v1550 = require(game:GetService('ReplicatedStorage').Notification)
        local v1551 = v1549:WaitForChild('Data')
        local v1552 = require(game.ReplicatedStorage:WaitForChild('EXPFunction'))
        local v1553 = require(game:GetService('ReplicatedStorage').Effect.Container.LevelUp)
        local v1554 = require(game:GetService('ReplicatedStorage').Util.Sound)
        local v1555 = game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp_Proxy') or game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp')

        function v129(p1556)
            repeat
                local v1557

                p1556, v1557 = string.gsub(p1556, '^(-?%d+)(%d%d%d)', '%1,%2')
            until v1557 == 0

            return p1556
        end

        v1550.new('<Color=Yellow>QUEST COMPLETED!<Color=/>'):Display()
        v1550.new('Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)'):Display()
        v1550.new('Earned <Color=Green>$9,999,999,999,999<Color=/>'):Display()

        v1549.Data.Exp.Value = 999999999999
        v1549.Data.Beli.Value = v1549.Data.Beli.Value + 999999999999

        local v1558 = 0

        while v1549.Data.Exp.Value - v1552(v1551.Level.Value) > 0 do
            v1549.Data.Exp.Value = v1549.Data.Exp.Value - v1552(v1551.Level.Value)
            v1549.Data.Level.Value = v1549.Data.Level.Value + 1
            v1549.Data.Points.Value = v1549.Data.Points.Value + 3

            v1553({v1549})
            v1554:Play(v1555.Value)
            v1550.new('<Color=Green>LEVEL UP!<Color=/> (' .. v1549.Data.Level.Value .. ')'):Display()

            v1558 = v1558 + 1

            if v1558 >= 5 then
                tick()
                wait(2)

                v1558 = 0
            end
        end
    end,
})
v321:AddInput('Input_Level', {
    Title = 'Fake Level',
    Default = '',
    Placeholder = '',
    Numeric = true,
    Finished = false,
    Callback = function(p1559)
        game:GetService('Players').LocalPlayer.Data.Level.Value = tonumber(p1559)
    end,
})
v321:AddInput('Input_Exp', {
    Title = 'Fake Exp',
    Default = '',
    Placeholder = '',
    Numeric = true,
    Finished = false,
    Callback = function(p1560)
        game:GetService('Players').LocalPlayer.Data.Exp.Value = tonumber(p1560)
    end,
})
v321:AddInput('Input_Money', {
    Title = 'Fake Money',
    Default = '',
    Placeholder = '',
    Numeric = true,
    Finished = false,
    Callback = function(p1561)
        game:GetService('Players').LocalPlayer.Data.Beli.Value = tonumber(p1561)
    end,
})
v321:AddInput('Input_Fragment', {
    Title = 'Fake Fragment',
    Default = '',
    Placeholder = '',
    Numeric = true,
    Finished = false,
    Callback = function(p1562)
        game:GetService('Players').LocalPlayer.Data.Fragments.Value = tonumber(p1562)
    end,
})
v321:AddInput('Input_Points', {
    Title = 'Fake Points',
    Default = '',
    Placeholder = '',
    Numeric = true,
    Finished = false,
    Callback = function(p1563)
        game:GetService('Players').LocalPlayer.Data.Points.Value = tonumber(p1563)
    end,
})
v321:AddInput('Input_Bounty', {
    Title = 'Fake Bounty',
    Default = '',
    Placeholder = '',
    Numeric = true,
    Finished = false,
    Callback = function(p1564)
        game:GetService('Players').LocalPlayer.leaderstats['Bounty/Honor'].Value = tonumber(p1564)
    end,
})
v321:AddSection('Highlight')
v321:AddToggle('Toggle', {
    Title = 'Show Chat disabled',
    Default = false,
}):OnChanged(function(p1565)
    _G.chat = p1565

    local v1566 = game:GetService('StarterGui')

    if _G.chat then
        v1566:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
    else
        v1566:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    end
end)
v321:AddToggle('Toggle', {
    Title = 'Show leaderboard disabled',
    Default = false,
}):OnChanged(function(p1567)
    _G.leaderboard = p1567

    local v1568 = game:GetService('StarterGui')

    if _G.leaderboard then
        v1568:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    else
        v1568:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
    end
end)
v321:AddButton({
    Title = 'Max Zoom',
    Callback = function()
        while wait() do
            game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
        end
    end,
})
v321:AddSection('Graphic')
v321:AddButton({
    Title = 'Remove Fog (Sea 3)',
    Callback = function()
        game:GetService('Lighting').LightingLayers:Destroy()
        game:GetService('Lighting').Sky:Destroy()
    end,
})
v321:AddToggle('Toggle', {
    Title = 'Remove Fog',
    Default = false,
}):OnChanged(function(p1569)
    RemoveFog = p1569

    if RemoveFog then
        while RemoveFog do
            wait()

            game.Lighting.FogEnd = 9000000000

            if not RemoveFog then
                game.Lighting.FogEnd = 2500
            end
        end
    end
end)
v321:AddButton({
    Title = 'Remove Lava',
    Callback = function()
        local v1570, v1571, v1572 = pairs(game.Workspace:GetDescendants())

        while true do
            local v1573

            v1572, v1573 = v1570(v1571, v1572)

            if v1572 == nil then
                break
            end
            if v1573.Name == 'Lava' then
                v1573:Destroy()
            end
        end

        local v1574, v1575, v1576 = pairs(game.ReplicatedStorage:GetDescendants())

        while true do
            local v1577

            v1576, v1577 = v1574(v1575, v1576)

            if v1576 == nil then
                break
            end
            if v1577.Name == 'Lava' then
                v1577:Destroy()
            end
        end
    end,
})
v321:AddButton({
    Title = 'Unlock FPS',
    Callback = function()
        setfpscap(9999999)
    end,
})
v321:AddSection('Abilities')
v321:AddToggle('Toggle', {
    Title = 'Dodge No Cooldown',
    Default = false,
}):OnChanged(function(p1578)
    nododgecool = p1578

    NoDodgeCool()
end)
v321:AddToggle('Toggle', {
    Title = 'Infinite Energy',
    Default = false,
}):OnChanged(function(p1579)
    InfiniteEnergy = p1579
    vu1456 = vu1472.Character.Energy.Value
end)
v321:AddToggle('Toggle', {
    Title = 'Infinite Ability',
    Default = false,
}):OnChanged(function(p1580)
    InfAbility = p1580

    local v1581 = not p1580 and game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility')

    if v1581 then
        v1581:Destroy()
    end
end)
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
v321:AddToggle('Toggle', {
    Title = 'Infinite Obversation Range',
    Default = false,
}):OnChanged(function(p1582)
    getgenv().InfiniteObRange = p1582

    local v1583 = game:GetService('Players').LocalPlayer.VisionRadius.Value

    while getgenv().InfiniteObRange do
        wait()

        local v1584 = game:GetService('Players').LocalPlayer
        local v1585 = v1584.Character
        local v1586 = v1584.VisionRadius

        if v1584 then
            if v1585.Humanoid.Health <= 0 then
                wait(5)
            end

            v1586.Value = math.huge
        elseif not getgenv().InfiniteObRange and v1584 then
            v1586.Value = v1583
        end
    end
end)
v321:AddToggle('Toggle', {
    Title = 'Infinite Geppo',
    Default = false,
}):OnChanged(function(p1587)
    getgenv().InfGeppo = p1587
end)
spawn(function()
    while wait() do
        pcall(function()
            if getgenv().InfGeppo then
                local v1588 = next
                local v1589, v1590 = getgc()

                while true do
                    local v1591

                    v1590, v1591 = v1588(v1589, v1590)

                    if v1590 == nil then
                        break
                    end
                    if game:GetService('Players').LocalPlayer.Character.Geppo and typeof(v1591) == 'function' and getfenv(v1591).script == game:GetService('Players').LocalPlayer.Character.Geppo then
                        local v1592 = next
                        local v1593, v1594 = getupvalues(v1591)

                        while true do
                            local v1595

                            v1594, v1595 = v1592(v1593, v1594)

                            if v1594 == nil then
                                break
                            end
                            if tostring(v1594) == '9' then
                                local v1596 = v1594

                                repeat
                                    wait(0.1)
                                    setupvalue(v1591, v1594, 0)
                                until not getgenv().InfGeppo or game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= 0

                                v1594 = v1596
                            end
                        end
                    end
                end
            end
        end)
    end
end)
v323:AddSection('Raid')

_G.SelectChip = selectraids or ''
Raidslist = {}
RaidsModule = require(game.ReplicatedStorage.Raids)

local v1597, v1598, v1599 = pairs(RaidsModule.raids)

while true do
    local v1600

    v1599, v1600 = v1597(v1598, v1599)

    if v1599 == nil then
        break
    end

    table.insert(Raidslist, v1600)
end

local v1601, v1602, v1603 = pairs(RaidsModule.advancedRaids)

while true do
    local v1604

    v1603, v1604 = v1601(v1602, v1603)

    if v1603 == nil then
        break
    end

    table.insert(Raidslist, v1604)
end

Dropdown = v323:AddDropdown('Dropdown', {
    Title = 'Select Chips',
    Values = Raidslist,
    Multi = false,
    Default = false,
})

Dropdown:OnChanged(function(p1605)
    _G.SelectChip = p1605
end)
v323:AddToggle('Toggle', {
    Title = 'Auto Select Dungeon',
    Default = false,
}):OnChanged(function(p1606)
    _G.SelectDungeon = p1606
end)
spawn(function()
    while wait() do
        if _G.SelectDungeon then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flame-Flame') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame-Flame') then
                    _G.SelectChip = 'Flame'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ice-Ice') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice-Ice') then
                    _G.SelectChip = 'Ice'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Quake-Quake') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake-Quake') then
                    _G.SelectChip = 'Quake'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Light-Light') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light-Light') then
                    _G.SelectChip = 'Light'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dark-Dark') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark-Dark') then
                    _G.SelectChip = 'Dark'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('String-String') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('String-String') then
                    _G.SelectChip = 'String'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rumble-Rumble') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble-Rumble') then
                    _G.SelectChip = 'Rumble'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Magma-Magma') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma-Magma') then
                    _G.SelectChip = 'Magma'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Human-Human: Buddha Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Human-Human: Buddha Fruit') then
                    _G.SelectChip = 'Human: Buddha'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sand-Sand') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand-Sand') then
                    _G.SelectChip = 'Sand'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird-Bird: Phoenix') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird-Bird: Phoenix') then
                    _G.SelectChip = 'Bird: Phoenix'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dough') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough') then
                    _G.SelectChip = 'Dough'
                else
                    _G.SelectChip = 'Flame'
                end
            end)
        end
    end
end)
v323:AddToggle('Toggle', {
    Title = 'Auto Buy Chip',
    Default = false,
}):OnChanged(function(p1607)
    _G.BuyChip = p1607
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.BuyChip and not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) and not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('RaidsNpc', 'Select', _G.SelectChip)
            end
        end
    end)
end)
v323:AddButton({
    Title = 'Buy Chip Select',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('RaidsNpc', 'Select', _G.SelectChip)
    end,
})
v323:AddToggle('Toggle', {
    Title = 'Auto Start Go To Dungeon',
    Default = false,
}):OnChanged(function(p1608)
    _G.StartRaid = p1608
end)
spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.StartRaid and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                if World2 then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
v323:AddButton({
    Title = 'Start Go To Dungeon',
    Callback = function()
        if World2 then
            fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
        end
    end,
})
v323:AddToggle('Toggle', {
    Title = 'Auto Next Island And Kill Mob',
    Default = false,
}):OnChanged(function(p1609)
    _G.Dungeon = p1609

    StopTween(_G.Dungeon)
end)

function IsIslandRaid(p1610)
    if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island ' .. p1610) then
        min = 4500

        local v1611, v1612, v1613 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local v1614

            v1613, v1614 = v1611(v1612, v1613)

            if v1613 == nil then
                break
            end
            if v1614.Name == 'Island ' .. p1610 and (v1614.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min then
                min = (v1614.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end

        local v1615, v1616, v1617 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local v1618

            v1617, v1618 = v1615(v1616, v1617)

            if v1617 == nil then
                break
            end
            if v1618.Name == 'Island ' .. p1610 and (v1618.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min then
                return v1618
            end
        end
    end
end
function getNextIsland()
    TableIslandsRaid = {
        5,
        4,
        3,
        2,
        1,
    }

    local v1619, v1620, v1621 = pairs(TableIslandsRaid)

    while true do
        local v1622

        v1621, v1622 = v1619(v1620, v1621)

        if v1621 == nil then
            break
        end
        if IsIslandRaid(v1622) and (IsIslandRaid(v1622).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return IsIslandRaid(v1622)
        end
    end
end
function attackNearbyEnemies()
    local v1623, v1624, v1625 = pairs(game:GetService('Workspace').Enemies:GetChildren())
    local v1626 = {}

    while true do
        local v1627

        v1625, v1627 = v1623(v1624, v1625)

        if v1625 == nil then
            break
        end
        if v1627:FindFirstChild('HumanoidRootPart') and (v1627:FindFirstChild('Humanoid') and (v1627.Humanoid.Health > 0 and (v1627.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
            table.insert(v1626, v1627)
        end
    end

    local v1628, v1629, v1630 = pairs(v1626)

    if false then
        return
    end

    local v1631

    v1630, v1631 = v1628(v1629, v1630)

    if v1630 == nil then
        break
    end

    while true do
        if v1631:FindFirstChild('Humanoid') and v1631.Humanoid.Health > 0 then
            EquipWeapon(_G.SelectWeapon)
            topos(v1631.HumanoidRootPart.CFrame * Pos)
            wait(0.1)
        end
        if not v1631:FindFirstChild('Humanoid') or v1631.Humanoid.Health <= 0 then
        end
    end
end

spawn(function()
    while wait() do
        if _G.Dungeon then
            attackNearbyEnemies()

            if getNextIsland() then
                spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Kill_Aura then
                local vu1632 = game:GetService('Players').LocalPlayer
                local v1633 = game:GetService('Workspace').Enemies:GetChildren()
                local v1634 = vu1632.Character and vu1632.Character:FindFirstChild('HumanoidRootPart')

                if v1634 then
                    v1634 = vu1632.Character.HumanoidRootPart.Position
                end
                if v1634 then
                    local v1635, v1636, v1637 = pairs(v1633)

                    while true do
                        local vu1638

                        v1637, vu1638 = v1635(v1636, v1637)

                        if v1637 == nil then
                            break
                        end
                        if vu1638:FindFirstChild('Humanoid') and (vu1638:FindFirstChild('HumanoidRootPart') and (vu1638.Humanoid.Health > 0 and (vu1638.HumanoidRootPart.Position - v1634).Magnitude <= 1000)) then
                            pcall(function()
                                repeat
                                    wait()
                                    sethiddenproperty(vu1632, 'SimulationRadius', math.huge)

                                    vu1638.Humanoid.Health = 0
                                    vu1638.HumanoidRootPart.CanCollide = false
                                until not _G.Kill_Aura or (not vu1638.Parent or vu1638.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
v323:AddToggle('Toggle', {
    Title = 'Auto Awakener',
    Default = false,
}):OnChanged(function(p1639)
    _G.Awakener = p1639
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Awakener then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Check')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
            end
        end
    end)
end)

if World2 then
    v323:AddButton({
        Title = 'Teleport to Lab',
        Callback = function()
            topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end,
    })
elseif World3 then
    v323:AddButton({
        Title = 'Teleport to Lab',
        Callback = function()
            topos(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end,
    })
end
if World2 then
    v323:AddSection('Misc KoKo Sword')
    v323:AddToggle('Toggle', {
        Title = 'Auto Law',
        Default = false,
    }):OnChanged(function(p1640)
        _G.OderSword = p1640

        StopTween(_G.OderSword)
    end)
    v323:AddToggle('Toggle', {
        Title = 'Auto Law Hop',
        Default = false,
    }):OnChanged(function(p1641)
        _G.OderSwordHop = p1641
    end)
    spawn(function()
        while wait() do
            if _G.OderSword then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        local v1642, v1643, v1644 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1645

                            v1644, v1645 = v1642(v1643, v1644)

                            if v1644 == nil then
                                break
                            end
                            if v1645.Name == 'Order' and (v1645:FindFirstChild('Humanoid') and (v1645:FindFirstChild('HumanoidRootPart') and v1645.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v1645.HumanoidRootPart.CanCollide = false
                                    v1645.Humanoid.WalkSpeed = 0

                                    TP2(v1645.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.OderSword or (not v1645.Parent or v1645.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order [Lv. 1250] [Raid Boss]') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Order [Lv. 1250] [Raid Boss]').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif _G.OderSwordHop then
                        Hop()
                    end
                end)
            end
        end
    end)
    v323:AddButton({
        Title = 'Buy Microchip Law Boss',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'BlackbeardReward',
                'Microchip',
                '2',
            }))
        end,
    })
    v323:AddButton({
        Title = 'Start Go To Raid Law Boss',
        Callback = function()
            if World2 then
                fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
            end
        end,
    })
end

v325:AddSection('World')
v325:AddButton({
    Title = 'Teleport To Old World',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
    end,
})
v325:AddButton({
    Title = 'Teleport To Second Sea',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
    end,
})
v325:AddButton({
    Title = 'Teleport To Third Sea',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
    end,
})
v325:AddSection('Island')

if World1 then
    Dropdown = v325:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Default = false,
        Values = {
            'WindMill',
            'Marine',
            'Middle Town',
            'Jungle',
            'Pirate Village',
            'Desert',
            'Snow Island',
            'MarineFord',
            'Colosseum',
            'Sky Island 1',
            'Sky Island 2',
            'Sky Island 3',
            'Prison',
            'Magma Village',
            'Under Water Island',
            'Fountain City',
        },
    })

    Dropdown:OnChanged(function(p1646)
        _G.SelectIsland = p1646
    end)
end
if World2 then
    Dropdown = v325:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Default = false,
        Values = {
            'The Cafe',
            'Frist Spot',
            'Dark Area',
            'Flamingo Mansion',
            'Flamingo Room',
            'Green Zone',
            'Zombie Island',
            'Two Snow Mountain',
            'Punk Hazard',
            'Cursed Ship',
            'Ice Castle',
            'Forgotten Island',
            'Ussop Island',
        },
    })

    Dropdown:OnChanged(function(p1647)
        _G.SelectIsland = p1647
    end)
end
if World3 then
    Dropdown = v325:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Default = false,
        Values = {
            'Mansion',
            'Port Town',
            'Great Tree',
            'Castle On The Sea',
            'Hydra Island',
            'Floating Turtle',
            'Haunted Castle',
            'Ice Cream Island',
            'Peanut Island',
            'Cake Island',
            'Candy Cane Island',
            'Tiki Outpost',
        },
    })

    Dropdown:OnChanged(function(p1648)
        _G.SelectIsland = p1648
    end)
end

v325:AddToggle('Toggle', {
    Title = 'Teleport',
    Default = false,
}):OnChanged(function(p1649)
    _G.TeleportIsland = p1649

    if _G.TeleportIsland then
        spawn(function()
            while true do
                wait()

                local v1650 = {
                    ['Middle Town'] = CFrame.new(-688, 15, 1585),
                    MarineFord = CFrame.new(-4810, 21, 4359),
                    Marine = CFrame.new(-2728, 25, 2056),
                    WindMill = CFrame.new(889, 17, 1434),
                    Desert = CFrame.new(945, 21, 4375),
                    ['Snow Island'] = CFrame.new(1298, 87, -1344),
                    ['Pirate Village'] = CFrame.new(-1173, 45, 3837),
                    Jungle = CFrame.new(-1614, 37, 146),
                    Prison = CFrame.new(4870, 6, 736),
                    ['Under Water Island'] = CFrame.new(61164, 5, 1820),
                    Colosseum = CFrame.new(-1535, 7, -3014),
                    ['Magma Village'] = CFrame.new(-5290, 9, 8349),
                    ['Sky Island 1'] = CFrame.new(-4814, 718, -2551),
                    ['Sky Island 2'] = CFrame.new(-4652, 873, -1754),
                    ['Sky Island 3'] = CFrame.new(-7895, 5547, -380),
                    ['Fountain City'] = CFrame.new(5128, 60, 4106),
                    ['The Cafe'] = CFrame.new(-382, 73, 290),
                    ['Frist Spot'] = CFrame.new(-11, 29, 2771),
                    ['Dark Area'] = CFrame.new(3494, 13, -3259),
                    ['Flamingo Mansion'] = CFrame.new(-317, 331, 597),
                    ['Flamingo Room'] = CFrame.new(2285, 15, 905),
                    ['Green Zone'] = CFrame.new(-2258, 73, -2696),
                    ['Zombie Island'] = CFrame.new(-5552, 194, -776),
                    ['Two Snow Mountain'] = CFrame.new(752, 408, -5277),
                    ['Punk Hazard'] = CFrame.new(-5897, 18, -5096),
                    ['Cursed Ship'] = CFrame.new(919, 125, 32869),
                    ['Ice Castle'] = CFrame.new(5505, 40, -6178),
                    ['Forgotten Island'] = CFrame.new(-3050, 240, -10178),
                    ['Ussop Island'] = CFrame.new(4816, 8, 2863),
                    Mansion = CFrame.new(-12471, 374, -7551),
                    ['Port Town'] = CFrame.new(-339, 21, 5555),
                    ['Castle On The Sea'] = CFrame.new(-5073, 315, -3153),
                    ['Hydra Island'] = CFrame.new(5290, 1005, 392),
                    ['Great Tree'] = CFrame.new(2681, 1682, -7190),
                    ['Floating Turtle'] = CFrame.new(-12528, 332, -8658),
                    ['Haunted Castle'] = CFrame.new(-9517, 142, 5528),
                    ['Ice Cream Island'] = CFrame.new(-902, 79, -10988),
                    ['Peanut Island'] = CFrame.new(-2062, 50, -10232),
                    ['Cake Island'] = CFrame.new(-1897, 14, -11576),
                    ['Candy Cane Island'] = CFrame.new(-1038, 10, -14076),
                    ['Tiki Outpost'] = CFrame.new(-16224, 9, 439),
                }

                if _G.SelectIsland and v1650[_G.SelectIsland] then
                    topos(v1650[_G.SelectIsland])
                end
                if not _G.TeleportIsland then
                    return
                end
            end
        end)
    end

    StopTween(_G.TeleportIsland)
end)
v325:AddSection('Teleport Fast')

if World1 then
    Dropdown = v325:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'Sky Island 1',
            'Sky Island 2',
            'Under Water Island',
            'Under Water Island Entrace',
        },
        Multi = false,
    })

    Dropdown:SetValue('')
    Dropdown:OnChanged(function(p1651)
        _G.SelectFast = p1651
    end)
end
if World2 then
    Dropdown = v325:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'Flamingo Mansion',
            'Flamingo Room',
            'Cursed Ship',
            'Zombie Island',
        },
        Multi = false,
    })

    Dropdown:SetValue('')
    Dropdown:OnChanged(function(p1652)
        _G.SelectFast = p1652
    end)
end
if World3 then
    Dropdown = v325:AddDropdown('Dropdown', {
        Title = 'Select Island',
        Values = {
            'Mansion',
            'Hydra Island',
            'Castle on the Sea',
            'Floating Turtle',
            'Beautiful Pirate',
        },
        Multi = false,
    })

    Dropdown:SetValue('')
    Dropdown:OnChanged(function(p1653)
        _G.SelectFast = p1653
    end)
end

v325:AddToggle('Toggle', {
    Title = 'Teleport Fast',
    Default = false,
}):OnChanged(function(p1654)
    _G.TeleFast = p1654

    if _G.TeleFast ~= true then
        return
    else
        while true do
            if true then
                wait()

                if _G.SelectFast ~= 'Sky Island 1' then
                    if _G.SelectFast ~= 'Sky Island 2' then
                        if _G.SelectFast ~= 'Under Water Island' then
                            if _G.SelectFast ~= 'Under Water Island Entrace' then
                                if _G.SelectFast ~= 'Flamingo Mansion' then
                                    if _G.SelectFast ~= 'Flamingo Room' then
                                        if _G.SelectFast ~= 'Cursed Ship' then
                                            if _G.SelectFast ~= 'Zombie Island' then
                                                if _G.SelectFast ~= 'Mansion' then
                                                    if _G.SelectFast ~= 'Hydra Island' then
                                                        if _G.SelectFast ~= 'Castle on the Sea' then
                                                            if _G.SelectFast ~= 'Floating Turtle' then
                                                                if _G.SelectFast == 'Beautiful Pirate' then
                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5319, 23, -93))
                                                                end
                                                            else
                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12001, 332, -8861))
                                                            end
                                                        else
                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5092, 315, -3130))
                                                        end
                                                    else
                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5662, 1013, -335))
                                                    end
                                                else
                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12471, 374, -7551))
                                                end
                                            else
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6509, 83, -133))
                                            end
                                        else
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923, 125, 32853))
                                        end
                                    else
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2283, 15, 867))
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-317, 331, 597))
                                end
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(3865, 5, -1926))
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61164, 5, 1820))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7895, 5547, -380))
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4652, 873, -1754))
                end
            end
            if not _G.TeleFast then
            end
        end
    end
end)
v327:AddSection('Abilities')
v327:AddButton({
    Title = 'Buy Geppo',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
v327:AddButton({
    Title = 'Buy Buso Haki',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
v327:AddButton({
    Title = 'Buy Soru',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
v327:AddButton({
    Title = 'Buy Observation Haki',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
v327:AddToggle('Toggle', {
    Title = 'Auto Buy Abilities',
    Default = false,
}):OnChanged(function(p1655)
    Abilities = p1655

    while Abilities do
        wait(0.1)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end
end)
v327:AddSection('Fighting Style')
v327:AddButton({
    Title = 'Buy Black Leg',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
    end,
})
v327:AddButton({
    Title = 'Buy Electro',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
    end,
})
v327:AddButton({
    Title = 'Buy Fishman Karate',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
    end,
})
v327:AddButton({
    Title = 'Buy Dragon Claw',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
    end,
})
v327:AddButton({
    Title = 'Buy Superhuman',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
v327:AddButton({
    Title = 'Buy Death Step',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
v327:AddButton({
    Title = 'Buy Sharkman Karate',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
    end,
})
v327:AddButton({
    Title = 'Buy Electric Claw',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
v327:AddButton({
    Title = 'Buy Dragon Talon',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
v327:AddButton({
    Title = 'Buy God Human',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
v327:AddButton({
    Title = 'Buy Sanguine Art',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt')
    end,
})
v327:AddSection('Sword')
v327:AddButton({
    Title = 'Cutlass',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
    end,
})
v327:AddButton({
    Title = 'Katana',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
    end,
})
v327:AddButton({
    Title = 'Iron Mace',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
    end,
})
v327:AddButton({
    Title = 'Dual Katana',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
    end,
})
v327:AddButton({
    Title = 'Triple Katana',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
    end,
})
v327:AddButton({
    Title = 'Pipe',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
    end,
})
v327:AddButton({
    Title = 'Dual-Headed Blade',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
    end,
})
v327:AddButton({
    Title = 'Bisento',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
    end,
})
v327:AddButton({
    Title = 'Soul Cane',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
    end,
})
v327:AddButton({
    Title = 'Pole v.2',
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ThunderGodTalk')
    end,
})
v327:AddSection('Gun')
v327:AddButton({
    Title = 'Slingshot',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Slingshot')
    end,
})
v327:AddButton({
    Title = 'Musket',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Musket')
    end,
})
v327:AddButton({
    Title = 'Flintlock',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Flintlock')
    end,
})
v327:AddButton({
    Title = 'Refined Slingshot',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Refined Flintlock')
    end,
})
v327:AddButton({
    Title = 'Refined Flintlock',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Refined Flintlock',
        }))
    end,
})
v327:AddButton({
    Title = 'Cannon',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cannon')
    end,
})
v327:AddButton({
    Title = 'Kabucha',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '2')
    end,
})
v327:AddButton({
    Title = 'Bizarre Rifle',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'Buy', 1)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'Buy', 1)
    end,
})
v327:AddSection('Accessories')
v327:AddButton({
    Title = 'Black Cape',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Black Cape',
        }))
    end,
})
v327:AddButton({
    Title = 'Swordsman Hat',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Swordsman Hat',
        }))
    end,
})
v327:AddButton({
    Title = 'Tomoe Ring',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyItem',
            'Tomoe Ring',
        }))
    end,
})
v327:AddSection('Player')
v327:AddButton({
    Title = 'Reset Stats',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
v327:AddButton({
    Title = 'Random Race',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
v327:AddButton({
    Title = 'Buy Ghoul',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'BuyCheck',
            4,
        }))
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
v327:AddButton({
    Title = 'Buy Cyborg',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CyborgTrainer',
            'Buy',
        }))
    end,
})
v329:AddSection('Sniper')

local v1656 = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

Table_DevilFruitSniper = {}
ShopDevilSell = {}

local v1657 = next
local v1658 = nil

while true do
    local v1659

    v1658, v1659 = v1657(v1656, v1658)

    if v1658 == nil then
        break
    end

    table.insert(Table_DevilFruitSniper, v1659.Name)

    if v1659.OnSale then
        table.insert(ShopDevilSell, v1659.Name)
    end
end

Dropdown = v329:AddDropdown('Dropdown', {
    Title = 'Select Fruits Sniper',
    Values = Table_DevilFruitSniper,
    Multi = false,
})

Dropdown:SetValue('')
Dropdown:OnChanged(function(p1660)
    _G.SelectFruit = p1660
end)
v329:AddToggle('Toggle', {
    Title = 'Auto Buy Fruit Sniper',
    Default = false,
}):OnChanged(function(p1661)
    _G.BuyFruitSniper = p1661
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.BuyFruitSniper then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', '_G.SelectFruit', false)
            end
        end
    end)
end)
v329:AddSection('Others')
v329:AddButton({
    Title = 'Random Fruit',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
    end,
})

local v1662 = v329:AddParagraph({
    Title = 'Mirage Stock',
    Desc = '',
})
local v1663 = v329:AddParagraph({
    Title = 'Normal Stock',
    Desc = '',
})
local v1664 = game:GetService('ReplicatedStorage').Remotes.CommF_
local v1665 = v1664:InvokeServer('GetFruits', true)
local v1666 = v1664:InvokeServer('GetFruits')
local v1667, v1668, v1669 = pairs(v1665)

local function v1673(p1670)
    local v1671 = tostring(p1670)

    repeat
        local v1672

        v1671, v1672 = v1671:gsub('^(-?%d+)(%d%d%d)', '%1,%2')
        k = v1672
    until k == 0

    return v1671
end

local v1674 = {}
local v1675 = {}

while true do
    local v1676

    v1669, v1676 = v1667(v1668, v1669)

    if v1669 == nil then
        break
    end
    if v1676.OnSale == true then
        local v1677 = v1673(v1676.Price)
        local v1678 = v1676.Name .. ' - $' .. v1677

        table.insert(v1674, v1678)
        v1662:SetDesc(table.concat(v1674, ' '))
    end
end

local v1679, v1680, v1681 = pairs(v1666)

while true do
    local v1682

    v1681, v1682 = v1679(v1680, v1681)

    if v1681 == nil then
        break
    end
    if v1682.OnSale == true then
        local v1683 = v1673(v1682.Price)
        local v1684 = v1682.Name .. ' - $' .. v1683

        table.insert(v1675, v1684)
        v1663:SetDesc(table.concat(v1675, ' '))
    end
end

v329:AddToggle('Toggle', {
    Title = 'Auto Store Fruit',
    Default = false,
}):OnChanged(function(p1685)
    _G.StoreFruit = p1685
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.StoreFruit then
                local v1686, v1687, v1688 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

                while true do
                    local v1689

                    v1688, v1689 = v1686(v1687, v1688)

                    if v1688 == nil then
                        break
                    end
                    if string.find(v1689.Name, 'Fruit') then
                        local v1690 = v1689.Name
                        local v1691 = string.gsub(v1689.Name, ' Fruit', '')

                        if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(v1690) then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', v1691 .. '-' .. v1691, game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(v1690))
                        end
                    end
                end
            end
        end)
    end
end)
v329:AddToggle('Toggle', {
    Title = 'Bring to Fruit',
    Default = false,
}):OnChanged(function(p1692)
    _G.Grabfruit = p1692
end)
v329:AddToggle('Toggle', {
    Title = 'Tween to Fruit',
    Default = false,
}):OnChanged(function(p1693)
    _G.Tweenfruit = p1693

    StopTween(_G.Tweenfruit)
end)
spawn(function()
    while wait(0.1) do
        local v1694, v1695, v1696 = ipairs(game.Workspace:GetChildren())

        while true do
            local v1697

            v1696, v1697 = v1694(v1695, v1696)

            if v1696 == nil then
                break
            end
            if v1697:IsA('Tool') and v1697:FindFirstChild('Handle') then
                if _G.Grabfruit then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1697.Handle.CFrame
                elseif _G.Tweenfruit then
                    topos(v1697.Handle.CFrame)
                end
            end
        end
    end
end)
v331:AddSection('Server')
v331:AddButton({
    Title = 'Rejoin Server',
    Callback = function()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
    end,
})
v331:AddButton({
    Title = 'Server Hop',
    Callback = function()
        Hop()
    end,
})
v331:AddButton({
    Title = 'Hop To Lower Player',
    Callback = function()
        Hop()
    end,
})
v331:AddButton({
    Title = 'Copy Job Id',
    Callback = function()
        setclipboard(tostring(game.JobId))
    end,
})
v331:AddInput('Input Job Id', {
    Title = 'Input Job Id',
    Default = '',
    Placeholder = 'Job ID',
    Numeric = false,
    Finished = false,
    Callback = function(p1698)
        _G.Job = p1698
    end,
})
v331:AddButton({
    Title = 'Join Sever',
    Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
    end,
})
v331:AddSection('Misc')
v331:AddButton({
    Title = 'Title Name',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'getTitles',
        }))

        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end,
})
v331:AddButton({
    Title = 'Color Haki',
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end,
})
v331:AddSection('Teams')
v331:AddButton({
    Title = 'Join Pirates Team',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    end,
})
v331:AddButton({
    Title = 'Join Marines Team',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
    end,
})
v331:AddSection('Codes')

local vu1699 = {
    'NOMOREHACK',
    'BANEXPLOIT',
    'WildDares',
    'BossBuild',
    'GetPranked',
    'EARN_FRUITS',
    'FIGHT4FRUIT',
    'NOEXPLOITER',
    'NOOB2ADMIN',
    'CODESLIDE',
    'ADMINHACKED',
    'ADMINDARES',
    'fruitconcepts',
    'krazydares',
    'TRIPLEABUSE',
    'SEATROLLING',
    '24NOADMIN',
    'REWARDFUN',
    'Chandler',
    'NEWTROLL',
    'KITT_RESET',
    'Sub2CaptainMaui',
    'kittgaming',
    'Sub2Fer999',
    'Enyu_is_Pro',
    'Magicbus',
    'JCWK',
    'Starcodeheo',
    'Bluxxy',
    'fudd10_v2',
    'SUB2GAMERROBOT_EXP1',
    'Sub2NoobMaster123',
    'Sub2UncleKizaru',
    'Sub2Daigrock',
    'Axiore',
    'TantaiGaming',
    'StrawHatMaine',
    'Sub2OfficialNoobie',
    'Fudd10',
    'Bignews',
    'TheGreatAce',
    'SECRET_ADMIN',
    'SUB2GAMERROBOT_RESET1',
    'SUB2OFFICIALNOOBIE',
    'AXIORE',
    'BIGNEWS',
    'BLUXXY',
    'CHANDLER',
    'ENYU_IS_PRO',
    'FUDD10',
    'FUDD10_V2',
    'KITTGAMING',
    'MAGICBUS',
    'STARCODEHEO',
    'STRAWHATMAINE',
    'SUB2CAPTAINMAUI',
    'SUB2DAIGROCK',
    'SUB2FER999',
    'SUB2NOOBMASTER123',
    'SUB2UNCLEKIZARU',
    'TANTAIGAMING',
    'THEGREATACE',
}

v331:AddButton({
    Title = 'Redeem All Codes',
    Callback = function()
        function RedeemCode(p1700)
            game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p1700)
        end

        local v1701, v1702, v1703 = pairs(vu1699)

        while true do
            local v1704

            v1703, v1704 = v1701(v1702, v1703)

            if v1703 == nil then
                break
            end

            RedeemCode(v1704)
        end
    end,
})
v331:AddSection('State')

Dropdown = v331:AddDropdown('Dropdown', {
    Title = 'Select Haki State',
    Values = {
        'State 0',
        'State 1',
        'State 2',
        'State 3',
        'State 4',
        'State 5',
    },
    Multi = false,
})

Dropdown:SetValue('')
Dropdown:OnChanged(function(p1705)
    _G.SelectStateHaki = p1705
end)
v331:AddButton({
    Title = 'Change Buso Haki State',
    Callback = function()
        if _G.SelectStateHaki ~= 'State 0' then
            if _G.SelectStateHaki ~= 'State 1' then
                if _G.SelectStateHaki ~= 'State 2' then
                    if _G.SelectStateHaki ~= 'State 3' then
                        if _G.SelectStateHaki ~= 'State 4' then
                            if _G.SelectStateHaki == 'State 5' then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 5)
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 4)
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 3)
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 2)
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 1)
            end
        else
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 0)
        end
    end,
})
Notify('Xeter Hub', 'Loading Done!', 3)
