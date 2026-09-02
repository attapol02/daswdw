-- ts file was generated at discord.gg/25ms

while not game:IsLoaded() do
    wait(0.1)
end
while not game.Players do
    wait(0.1)
end

local v1 = {
    game.CollectionService,
    game:GetService('PathfindingService'),
    table.insert,
    table.remove,
}
local u2 = false

while not game.Players.LocalPlayer do
    wait(0.1)
end

repeat
    wait()
until game:IsLoaded()

local u5 = (function()
    local v3 = ''
    local v4 = {
        'q',
        'w',
        'e',
        'r',
        't',
        'y',
        'u',
        'i',
        'o',
        'p',
        'a',
        's',
        'd',
        'f',
        'g',
        'h',
        'j',
        'k',
        'l',
        'z',
        'x',
        'c',
        'v',
        'b',
        'n',
        'm',
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
        '9',
        '0',
        'X',
        'A',
        'B',
        'V',
        'R',
        'I',
        'O',
        'P',
        'L',
    }

    for _ = 1, 16 do
        v3 = v3 .. v4[math.random(1, #v4)]
    end

    return v3
end)()

local function u6(_)
    return game.ReplicatedStorage.remotes.reloadInvy:InvokeServer()
end
local function u11(p7, p8, p9)
    if p9 == nil then
        while not p7:FindFirstChild(p8) do
            wait()
        end

        return p7:FindFirstChild(p8)
    end

    local v10 = 0

    while not p7:FindFirstChild(p8) and v10 < p9 do
        wait(0.1)

        v10 = v10 + 0.1
    end

    return p7:FindFirstChild(p8)
end

while not game.ReplicatedStorage:FindFirstChild('remotes') do
    wait(0.1)
end
while not game:FindFirstChild('Lighting') do
    wait(0.1)
end
while not game.Players.LocalPlayer:FindFirstChild('PlayerScripts') do
    wait(0.1)
end

function ScriptDebug(p12)
    warn(p12)
end

local _ = game:GetService('Players').LocalPlayer
local u13 = 15
local u14 = 2
local u15 = 5
local _extremelyFast = _G.extremelyFast
local u17 = 31
local u18 = v1[3]
local u19 = v1[4]
local v20 = false
local v21 = true
local v22 = false
local u23 = false
local u24 = u2 and 0.5 or 1
local u25 = false
local u26 = false

_G.auto_attack = true
_G.smallTeleportVal = 100

local u27 = {
    ['Sand Peasant'] = true,
    ['Sand Giant'] = true,
    ['Frost Minion'] = true,
    ['Frost Wizard'] = true,
    ['Pirate Rifleman'] = true,
    ['Pirate Savage'] = true,
    Elementalist = true,
    ["King's Guard"] = true,
    ['Dark Mage'] = true,
    ['Demon Warrior'] = true,
    ['Samurai Swordsman'] = true,
    Bodyguard = true,
    ['Burly Enforcer'] = true,
    Raider = true,
    ['Harpoon Gunner'] = true,
    ['Cannon Crab'] = true,
    ['Spinner Bot'] = true,
    ['Fighter Bot'] = true,
    ['Cog Shooter'] = true,
    ['Hammer Bot'] = true,
    ['Hologram Assassin'] = true,
    ['Hologram Warrior'] = true,
    ['Chicken Mage'] = true,
    ['Chicken Brawler'] = true,
}
local _VirtualUser = game:service('VirtualUser')

game:service('Players').LocalPlayer.Idled:connect(function()
    _VirtualUser:CaptureController()
    _VirtualUser:ClickButton2(Vector2.new())
end)

local _VirtualUser2 = game:GetService('VirtualUser')

game:GetService('Players').LocalPlayer.Idled:connect(function()
    _VirtualUser2:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    _VirtualUser2:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

function AIMovementInLobby()
    local v30 = 0
    local u31 = false

    _G.ai_done = false

    local _Character = game.Players.LocalPlayer.Character
    local _Humanoid = _Character.Humanoid

    spawn(function()
        local _PathfindingService = game:GetService('PathfindingService')
        local v35 = {
            {
                Vector3.new(29.4448986, 10.6809521, 1005.28198),
            },
            {
                Vector3.new(120.158272, 5.05413818, 1005.26672),
            },
            {
                Vector3.new(145.121567, 4.79999876, 1028.203),
            },
            {
                Vector3.new(138.910416, 4.85120726, 1080.46936),
            },
            {
                Vector3.new(50.0033913, 5.40119982, 1025.59448),
                Vector3.new(12.7496023, 4.94986296, 1046.24768),
            },
            {
                Vector3.new(56.9857826, 5.10824966, 1066.79846),
                Vector3.new(40.124321, 5, 1055.27551),
            },
            {
                Vector3.new(28.1154366, 4.8208971, 1041.24829),
            },
            {
                Vector3.new(8.27422428, 4.80000019, 1034.32092),
                Vector3.new(-36.9196014, 4.80000019, 1022.45972),
                Vector3.new(-93.4016876, 5.84888077, 1107.07776),
                Vector3.new(-134.147461, 5.84888077, 1080.1228),
            },
            {
                Vector3.new(8.27422428, 4.80000019, 1034.32092),
                Vector3.new(-36.9196014, 4.80000019, 1022.45972),
                Vector3.new(-69.0564728, 5.87887812, 1101.21545),
            },
            {
                Vector3.new(8.27422428, 4.80000019, 1034.32092),
                Vector3.new(-36.9196014, 4.80000019, 1022.45972),
                Vector3.new(-57.2358208, 5.81887817, 1059.91345),
            },
            {
                Vector3.new(104.851845, 4.80013657, 1029.08655),
                Vector3.new(66.5649185, 11.1366758, 981.947205),
                Vector3.new(58.9183998, 15.5042267, 969.327759),
            },
            {
                Vector3.new(106.917046, 5.1029253, 1033.20129),
                Vector3.new(126.421371, 4.80742407, 1017.41754),
                Vector3.new(109.249374, 4.99999857, 998.975525),
            },
            {
                Vector3.new(37.6123543, 5.1142168, 1041.55664),
                Vector3.new(8.08811092, 11.3835154, 1087.04956),
                Vector3.new(3.8377471, 4.81672573, 1051.76331),
            },
            {
                Vector3.new(74.2765732, 4.79785824, 1034.74109),
                Vector3.new(59.2142448, 5, 1081.58557),
                Vector3.new(23.250845, 5.6657753, 1021.79108),
            },
            {
                Vector3.new(75.4334259, 5.07404947, 1048.54626),
                Vector3.new(59.5415268, 9.24949932, 1002.75214),
                Vector3.new(21.7118225, 26.9064331, 982.54895),
            },
            {
                Vector3.new(86.8510361, 4.95114946, 1012.60217),
                Vector3.new(78.8645248, 5.21786928, 1063.84338),
                Vector3.new(39.1454849, 5, 1062.37744),
            },
            {
                Vector3.new(85.5781631, 5.19999838, 1044.32336),
                Vector3.new(7.32494354, 4.79999876, 1031.84668),
                Vector3.new(-16.918314, 7.10381889, 999.609253),
            },
            {
                Vector3.new(85.5781631, 5.19999838, 1044.32336),
                Vector3.new(7.32494354, 4.79999876, 1031.84668),
                Vector3.new(-60.5333252, 4.90647602, 1025.54321),
            },
            {
                Vector3.new(85.5781631, 5.19999838, 1044.32336),
                Vector3.new(7.32494354, 4.79999876, 1031.84668),
                Vector3.new(-76.8479233, 4.87704134, 1009.79724),
            },
            {
                Vector3.new(116.443657, 5.34364605, 1031.54187),
                Vector3.new(136.55043, 4.80000019, 1068.89758),
                Vector3.new(96.5291367, 5.04907751, 1055.71301),
            },
            {
                Vector3.new(136.55043, 4.80000019, 1068.89758),
                Vector3.new(96.5291367, 5.04907751, 1055.71301),
                Vector3.new(116.443657, 5.34364605, 1031.54187),
            },
            {
                Vector3.new(84.3650131, 4.95895767, 1011.05023),
                Vector3.new(28.3323727, 5.77999735, 1021.42993),
                Vector3.new(32.4552689, 5, 1067.22888),
            },
        }
        local v36, v37, v38 = pairs(v35[math.random(1, #v35)])

        while true do
            local v39

            v38, v39 = v36(v37, v38)

            if v38 == nil then
                break
            end

            local v40 = _PathfindingService:CreatePath()

            v40:ComputeAsync(_Character.HumanoidRootPart.Position, v39)

            local v41 = v40:GetWaypoints()
            local v42, v43, v44 = pairs(v41)
            local v45 = {}
            local v46 = 0

            while true do
                local v47

                v44, v47 = v42(v43, v44)

                if v44 == nil or _G.ai_done then
                    break
                end

                v46 = v46 + 0.5

                local _Part = Instance.new('Part')

                _Part.Shape = 'Ball'
                _Part.Material = 'Neon'
                _Part.Color = Color3.new(1, 120, 1)

                local v49 = (math.sin(v46) + 1.5) / 2

                _Part.Size = Vector3.new(v49, v49, v49)
                _Part.Position = v47.Position
                _Part.Anchored = true
                _Part.CanCollide = false
                _Part.Parent = game.Workspace

                u18(v45, _Part)
            end

            local v50, v51, v52 = pairs(v41)

            while true do
                local v53

                v52, v53 = v50(v51, v52)

                if v52 == nil or _G.ai_done then
                    break
                end

                v45[v52].BrickColor = BrickColor.new('Bright blue')

                _Humanoid:MoveTo(v53.Position)
                _Humanoid.MoveToFinished:Wait()

                v45[v52].BrickColor = BrickColor.new('Fire Yellow')
            end
        end

        u31 = true
    end)

    local v54 = _Character
    local v55 = _Humanoid

    while not u31 and _G.maxWaitTimeInLobby >= v30 do
        v30 = v30 + 0.1

        wait(0.1)
    end

    _G.ai_done = true

    v55:MoveTo(v54.HumanoidRootPart.Position)
end
function autoupgrade()
    if _G.auto_stat_upgrade and game.Players.LocalPlayer.skillPoints.Value > 0 then
        while game.Players.LocalPlayer.skillPoints.Value > 0 do
            game:GetService('ReplicatedStorage').remotes.spendSkillPoint:FireServer(_G.stat)
            wait()
        end
    end
end
function getItemType(p56, p57)
    return p56.health ~= nil and (p56.spellPower <= p56.physicalPower and (p57 and (p56.physicalPower <= p56.health and 'guardian' or 'physical') or 'physical') or (p57 and (p56.spellPower <= p56.health and 'guardian' or 'mage') or 'mage')) or (p56.spellPower >= p56.physicalDamage and 'mage' or 'physical')
end
function lobbyStrCheck(p58, p59)
    local v60 = string.lower(p58)
    local v61 = string.lower(p59)
    local v62 = string.gsub(v60, "'", '')
    local v63 = string.gsub(v61, "'", '')

    return string.gsub(v62, 's', '') == string.gsub(v63, 's', '')
end
function checkSell(p64, p65)
    local v66, v67, v68 = pairs(_G.itemlist)

    while true do
        local v69

        v68, v69 = v66(v67, v68)

        if v68 == nil then
            break
        end
        if lobbyStrCheck(v68, p65) then
            local v70, v71, v72 = pairs(v69)

            while true do
                local v73

                v72, v73 = v70(v71, v72)

                if v72 == nil then
                    break
                end
                if p64 == v73 then
                    return false
                end
            end
        end
    end

    return not _G.keeprarities[p64]
end

local function v92()
    if _G.autosell then
        local v74 = u6(game.Players.LocalPlayer)
        local v75, v76, v77 = pairs(v74)
        local v78 = {}

        while true do
            local v79, v80 = v75(v76, v77)

            if v79 == nil then
                break
            end

            local v81 = u6(game.Players.LocalPlayer)

            if v79 == 'weapons' or v79 == 'chests' or v79 == 'helmets' then
                local v82, v83, v84 = pairs(v80)

                v77 = v79

                while true do
                    local v85

                    v84, v85 = v82(v83, v84)

                    if v84 == nil then
                        break
                    end

                    local v86 = getItemType(v85, false)
                    local v87 = not _G.keep_items_from_class[v86]

                    if not v85.equipped and checkSell(v85.rarity, v85.name) and (v85.levelReq < _G.keep_items_level_requirement and v87) then
                        if v79 == 'weapons' then
                            if _G.testSell then
                                print('MROBSWAG Selling: ', v85.name)
                            else
                                game:GetService('ReplicatedStorage').remotes.sellItemEvent:FireServer({
                                    ability = {},
                                    helmet = {},
                                    chest = {},
                                    weapon = {
                                        (tonumber(string.sub(v84, 8))),
                                    },
                                })
                            end
                        elseif v79 == 'chests' then
                            if _G.testSell then
                                print('MROBSWAG Selling: ', v85.name)
                            else
                                game:GetService('ReplicatedStorage').remotes.sellItemEvent:FireServer({
                                    ability = {},
                                    helmet = {},
                                    chest = {
                                        (tonumber(string.sub(v84, 7))),
                                    },
                                    weapon = {},
                                })
                            end
                        elseif v79 == 'helmets' then
                            if _G.testSell then
                                print('MROBSWAG Selling: ', v85.name)
                            else
                                game:GetService('ReplicatedStorage').remotes.sellItemEvent:FireServer({
                                    ability = {},
                                    helmet = {
                                        (tonumber(string.sub(v84, 8))),
                                    },
                                    chest = {},
                                    weapon = {},
                                })
                            end
                        end
                    end
                end
            else
                v77 = v79
            end
            if v79 == 'abilities' then
                local v88, v89, v90 = pairs(v81.abilities)

                while true do
                    local v91

                    v90, v91 = v88(v89, v90)

                    if v90 == nil then
                        break
                    end
                    if v78[v91.name] then
                        v78[v91.name] = v78[v91.name] + 1
                    else
                        v78[v91.name] = 1
                    end
                    if not (v91.equipped.q or v91.equipped.e) and (checkSell(v91.rarity, v91.name) and v91.levelReq < _G.keep_items_level_requirement or v78[v91.name] > 2 and _G.keep2spells) then
                        if _G.testSell then
                            print('MROBSWAG Selling: ', v91.name)
                        else
                            game:GetService('ReplicatedStorage').remotes.sellItemEvent:FireServer({
                                ability = {
                                    (tonumber(string.sub(v90, 9))),
                                },
                                helmet = {},
                                chest = {},
                                weapon = {},
                            })
                        end
                    end
                end
            end
        end
    end
end
local function u96(p93, p94)
    for _ = 1, p94 do
        local v95 = p93 * 0.05

        p93 = p93 + (v95 > 10 and 10 or v95)
    end

    return math.floor(p93)
end
local function u103(p97, p98)
    local v99 = 100
    local v100 = 0

    for v101 = 1, p97 do
        if v101 > 1 then
            local v102 = 1.06 * v99 + 50

            if v102 - v99 <= 220 then
                v99 = v102
            else
                v99 = v99 + 220
            end
        end
        if p98 < v101 then
            if v101 <= 466 then
                v100 = v100 + v99
            else
                v100 = v100 + 100000
                v99 = 100000
            end
        end
    end

    return v100
end

function autoUpgradeEquip(p104)
    if _G.auto_upgrade_equip then
        local v105 = u6(game.Players.LocalPlayer)

        if p104 == 'chests' then
            local v106, v107, v108 = pairs(v105.chests)

            while true do
                local v109

                v108, v109 = v106(v107, v108)

                if v108 == nil then
                    break
                end

                local v110 = v109.maxUpgrades - v109.currentUpgrade

                if v109.equipped and v110 ~= 0 then
                    if v109.spellPower <= v109.physicalPower then
                        game:GetService('ReplicatedStorage').remotes.upgradeItem:FireServer('chest', tonumber(string.sub(v108, 7)), 'physical', v110)
                    else
                        game:GetService('ReplicatedStorage').remotes.upgradeItem:FireServer('chest', tonumber(string.sub(v108, 7)), 'spell', v110)
                    end
                end
            end
        elseif p104 == 'helmets' then
            local v111, v112, v113 = pairs(v105.helmets)

            while true do
                local v114

                v113, v114 = v111(v112, v113)

                if v113 == nil then
                    break
                end

                local v115 = v114.maxUpgrades - v114.currentUpgrade

                if v114.equipped and v115 ~= 0 then
                    if v114.spellPower <= v114.physicalPower then
                        game:GetService('ReplicatedStorage').remotes.upgradeItem:FireServer('helmet', tonumber(string.sub(v113, 8)), 'physical', v115)
                    else
                        game:GetService('ReplicatedStorage').remotes.upgradeItem:FireServer('helmet', tonumber(string.sub(v113, 8)), 'spell', v115)
                    end
                end
            end
        elseif p104 == 'weapons' then
            local v116, v117, v118 = pairs(v105.weapons)

            while true do
                local v119

                v118, v119 = v116(v117, v118)

                if v118 == nil then
                    break
                end

                local v120 = v119.maxUpgrades - v119.currentUpgrade

                if v119.equipped and v120 ~= 0 then
                    if v119.spellPower <= v119.physicalDamage then
                        game:GetService('ReplicatedStorage').remotes.upgradeItem:FireServer('weapon', tonumber(string.sub(v118, 8)), 'physical', v120)
                    else
                        game:GetService('ReplicatedStorage').remotes.upgradeItem:FireServer('weapon', tonumber(string.sub(v118, 8)), 'spell', v120)
                    end
                end
            end
        end
    end
end

local function u131(p121, p122)
    local v123, v124, v125 = pairs(p121)
    local v126 = 0
    local v127 = nil
    local v128 = nil

    while true do
        local v129

        v125, v129 = v123(v124, v125)

        if v125 == nil then
            break
        end
        if v129.name ~= 'skip' then
            local v130 = v129.description:lower()

            if v130:find('spell') and p122 == 'spell' then
                if v126 < v129.levelReq then
                    v126 = v129.levelReq
                    v128 = v129.name
                    v127 = v125
                end
            elseif v130:find('physical') and p122 == 'physical' and v126 < v129.levelReq then
                v126 = v129.levelReq
                v128 = v129.name
                v127 = v125
            end
        end
    end

    return v127, v128
end
local function v141()
    if _G.autoEquipSpell then
        local v132 = u6(game.Players.LocalPlayer)
        local _abilities = v132.abilities
        local v134, v135 = u131(_abilities, _G.spellType:lower())
        local v136, v137, v138 = pairs(v132.abilities)

        while true do
            local v139

            v138, v139 = v136(v137, v138)

            if v138 == nil then
                break
            end
            if v139.name == v135 then
                v139.name = 'skip'

                break
            end
        end

        local v140, _ = u131(_abilities, _G.spellType:lower())

        if v134 ~= nil and v140 ~= nil then
            print(v140, v134)
            game:GetService('ReplicatedStorage').remotes.equipItem:InvokeServer('ability', tonumber(string.sub(v134, 9)), 'q')
            wait(1)
            game:GetService('ReplicatedStorage').remotes.equipItem:InvokeServer('ability', tonumber(string.sub(v140, 9)), 'e')
        end
    end
end
local function v177()
    if _G.auto_equip_gear then
        print('autoEquip')

        local _Value = game.Players.LocalPlayer.leaderstats.Level.Value
        local v143 = u6(game.Players.LocalPlayer)
        local v144 = 0
        local v145 = nil

        if v143.chests ~= nil then
            local _Value2 = game.Players.LocalPlayer.leaderstats.Gold.Value
            local v147, v148, v149 = pairs(v143.chests)

            while true do
                local v150

                v149, v150 = v147(v148, v149)

                if v149 == nil then
                    break
                end

                local v151 = v150.maxUpgrades - v150.currentUpgrade
                local v152

                if _G.equip_type ~= 'spell' or v150.levelReq > _Value or v150.spellPower <= v150.physicalPower then
                    v152 = v144
                else
                    local _ = v150.maxUpgrades - v151

                    v152 = u96(v150.spellPower, v150.maxUpgrades, v149)

                    local v153 = u103(v150.maxUpgrades, v150.currentUpgrade) < _Value2

                    if v144 < v152 and v153 or v144 < v150.spellPower then
                        v145 = v149
                    else
                        v152 = v144
                    end
                end
                if _G.equip_type ~= 'physical' or v150.levelReq > _Value or v150.physicalPower <= v150.spellPower then
                    v144 = v152
                else
                    v144 = u96(v150.physicalPower, v151)

                    local v154 = u103(v150.maxUpgrades, v150.currentUpgrade) < _Value2

                    if v152 < v144 and v154 or v152 < v150.physicalPower then
                        v145 = v149
                    else
                        v144 = v152
                    end
                end
            end

            if v145 ~= nil then
                game:GetService('ReplicatedStorage').remotes.equipItem:InvokeServer('chest', (tonumber(string.sub(v145, 7))))
            end
        end

        wait(1)
        autoUpgradeEquip('helmets')
        wait(1)

        local v155 = 0
        local v156 = nil

        if v143.helmets ~= nil then
            local _Value3 = game.Players.LocalPlayer.leaderstats.Gold.Value
            local v158, v159, v160 = pairs(v143.helmets)

            while true do
                local v161

                v160, v161 = v158(v159, v160)

                if v160 == nil then
                    break
                end

                local v162 = v161.maxUpgrades - v161.currentUpgrade
                local v163

                if _G.equip_type ~= 'spell' or v161.levelReq > _Value or v161.spellPower <= v161.physicalPower then
                    v163 = v155
                else
                    v163 = u96(v161.spellPower, v162)

                    local v164 = u103(v161.maxUpgrades, v161.currentUpgrade) < _Value3

                    if v155 < v163 and v164 or v155 < v161.spellPower then
                        v156 = v160
                    else
                        v163 = v155
                    end
                end
                if _G.equip_type ~= 'physical' or v161.levelReq > _Value or v161.physicalPower <= v161.spellPower then
                    v155 = v163
                else
                    v155 = u96(v161.physicalPower, v162)

                    local v165 = u103(v161.maxUpgrades, v161.currentUpgrade) < _Value3

                    if v163 < v155 and v165 or v163 < v161.physicalPower then
                        v156 = v160
                    else
                        v155 = v163
                    end
                end
            end

            if v156 ~= nil then
                game:GetService('ReplicatedStorage').remotes.equipItem:InvokeServer('helmet', (tonumber(string.sub(v156, 8))))
            end
        end

        wait(1)
        autoUpgradeEquip('chests')
        wait(1)

        local v166 = 0
        local v167 = nil

        if v143.weapons ~= nil then
            local _Value4 = game.Players.LocalPlayer.leaderstats.Gold.Value
            local v169, v170, v171 = pairs(v143.weapons)

            while true do
                local v172

                v171, v172 = v169(v170, v171)

                if v171 == nil then
                    break
                end

                local v173 = v172.maxUpgrades - v172.currentUpgrade
                local v174

                if _G.equip_type ~= 'spell' or v172.levelReq > _Value or v172.spellPower <= v172.physicalDamage then
                    v174 = v166
                else
                    v174 = u96(v172.spellPower, v172.maxUpgrades)

                    local v175 = u103(v172.maxUpgrades, v173) < _Value4

                    if v166 < v174 and v175 or v166 < v172.spellPower then
                        v167 = v171
                    else
                        v174 = v166
                    end
                end
                if _G.equip_type ~= 'physical' or v172.levelReq > _Value or v172.physicalDamage <= v172.spellPower then
                    v166 = v174
                else
                    v166 = u96(v172.physicalDamage, v173)

                    local v176 = u103(v172.maxUpgrades, v172.currentUpgrade) < _Value4

                    if v174 < v166 and v176 or v174 < v172.physicalDamage then
                        v167 = v171
                    else
                        v166 = v174
                    end
                end
            end

            if v167 ~= nil then
                game:GetService('ReplicatedStorage').remotes.equipItem:InvokeServer('weapon', (tonumber(string.sub(v167, 8))))
            end
        end

        wait(1)
        autoUpgradeEquip('weapons')
        wait(1)
    end
end
local function v178()
    if _G.auto_choose_dungeon_and_difficulty then
        game.Players.LocalPlayer:WaitForChild('leaderstats')
        game.Players.LocalPlayer.leaderstats:WaitForChild('Level')

        lvl = game.Players.LocalPlayer.leaderstats.Level.Value

        print(lvl)

        if lvl > 5 then
            if lvl > 11 then
                if lvl > 19 then
                    if lvl > 26 then
                        if lvl > 32 then
                            if lvl > 39 then
                                if lvl > 44 then
                                    if lvl > 49 then
                                        if lvl > 54 then
                                            if lvl > 59 then
                                                if lvl > 64 then
                                                    if lvl > 69 then
                                                        if lvl > 74 then
                                                            if lvl > 79 then
                                                                if lvl > 84 then
                                                                    if lvl > 89 then
                                                                        if lvl > 94 then
                                                                            if lvl > 99 then
                                                                                if lvl > 104 then
                                                                                    if lvl > 109 then
                                                                                        if lvl > 114 then
                                                                                            if lvl > 119 then
                                                                                                if lvl > 124 then
                                                                                                    if lvl > 139 then
                                                                                                        if lvl > 145 then
                                                                                                            if lvl > 149 then
                                                                                                                if lvl > 154 then
                                                                                                                    _G.dungeon = 'Volcanic Chambers'
                                                                                                                    _G.difficulty = 'Nightmare'
                                                                                                                else
                                                                                                                    _G.dungeon = 'Volcanic Chambers'
                                                                                                                    _G.difficulty = 'Insane'
                                                                                                                end
                                                                                                            else
                                                                                                                _G.dungeon = 'Orbital Outpost'
                                                                                                                _G.difficulty = 'Nightmare'
                                                                                                            end
                                                                                                        else
                                                                                                            _G.dungeon = 'Orbital Outpost'
                                                                                                            _G.difficulty = 'Insane'
                                                                                                        end
                                                                                                    else
                                                                                                        _G.dungeon = 'Steampunk Sewers'
                                                                                                        _G.difficulty = 'Nightmare'
                                                                                                    end
                                                                                                else
                                                                                                    _G.dungeon = 'Steampunk Sewers'
                                                                                                    _G.difficulty = 'Insane'
                                                                                                end
                                                                                            else
                                                                                                _G.dungeon = 'Ghastly Harbor'
                                                                                                _G.difficulty = 'Nightmare'
                                                                                            end
                                                                                        else
                                                                                            _G.dungeon = 'Ghastly Harbor'
                                                                                            _G.difficulty = 'Insane'
                                                                                        end
                                                                                    else
                                                                                        _G.dungeon = 'The Canals'
                                                                                        _G.difficulty = 'Nightmare'
                                                                                    end
                                                                                else
                                                                                    _G.dungeon = 'The Canals'
                                                                                    _G.difficulty = 'Insane'
                                                                                end
                                                                            else
                                                                                _G.dungeon = 'Samurai Palace'
                                                                                _G.difficulty = 'Nightmare'
                                                                            end
                                                                        else
                                                                            _G.dungeon = 'Samurai Palace'
                                                                            _G.difficulty = 'Insane'
                                                                        end
                                                                    else
                                                                        _G.dungeon = 'The Underworld'
                                                                        _G.difficulty = 'Nightmare'
                                                                    end
                                                                else
                                                                    _G.dungeon = 'The Underworld'
                                                                    _G.difficulty = 'Insane'
                                                                end
                                                            else
                                                                _G.dungeon = "King's Castle"
                                                                _G.difficulty = 'Nightmare'
                                                            end
                                                        else
                                                            _G.dungeon = "King's Castle"
                                                            _G.difficulty = 'Insane'
                                                        end
                                                    else
                                                        _G.dungeon = 'Pirate Island'
                                                        _G.difficulty = 'Nightmare'
                                                    end
                                                else
                                                    _G.dungeon = 'Pirate Island'
                                                    _G.difficulty = 'Insane'
                                                end
                                            else
                                                _G.dungeon = 'Winter Outpost'
                                                _G.difficulty = 'Nightmare'
                                            end
                                        else
                                            _G.dungeon = 'Winter Outpost'
                                            _G.difficulty = 'Insane'
                                        end
                                    else
                                        _G.dungeon = 'Winter Outpost'
                                        _G.difficulty = 'Hard'
                                    end
                                else
                                    _G.dungeon = 'Winter Outpost'
                                    _G.difficulty = 'Medium'
                                end
                            else
                                _G.dungeon = 'Winter Outpost'
                                _G.difficulty = 'Easy'
                            end
                        else
                            _G.dungeon = 'Desert Temple'
                            _G.difficulty = 'Nightmare'
                        end
                    else
                        _G.dungeon = 'Desert Temple'
                        _G.difficulty = 'Insane'
                    end
                else
                    _G.dungeon = 'Desert Temple'
                    _G.difficulty = 'Hard'
                end
            else
                _G.dungeon = 'Desert Temple'
                _G.difficulty = 'Medium'
            end
        else
            _G.dungeon = 'Desert Temple'
            _G.difficulty = 'Easy'
        end
    end
end

function autoChooseBossRaidTier()
    if _G.auto_choose_raid_boss_tier then
        local v179 = u6(game.Players.LocalPlayer)
        local v180 = 0

        if v179.keys ~= nil and v179.keys then
            local v181, v182, v183 = pairs(v179.keys)

            while true do
                local v184

                v183, v184 = v181(v182, v183)

                if v183 == nil then
                    break
                end
                if v180 < tonumber(v183) and v184 then
                    v180 = tonumber(v183)
                    _G.boss_raid_tier = tonumber(v183)
                end
            end
        end
    end
end

local function u193()
    spawn(function()
        pgui = game.Players.LocalPlayer.PlayerGui

        if game.CoreGui.RobloxGui:FindFirstChild('TopBarContainer') then
            game.CoreGui.RobloxGui.TopBarContainer:WaitForChild('NameHealthContainer')

            if game.CoreGui.RobloxGui.TopBarContainer.NameHealthContainer:FindFirstChild('Username') then
                game.CoreGui.RobloxGui.TopBarContainer.NameHealthContainer.Username:Destroy()
            end
        end

        while not game.Players.LocalPlayer.PlayerGui:FindFirstChild('playerStatus') do
            wait(0.1)
        end

        pstat = pgui.playerStatus.Frame

        if _G.edit_ui then
            while not game.Players.LocalPlayer.PlayerGui:FindFirstChild('playerStatus') do
                wait(0.1)
            end

            pstat = pgui.playerStatus.Frame

            while not pstat.portraitBorder:FindFirstChild('portrait') do
                wait(0.1)
            end

            pstat.portraitBorder.portrait.Image = _G.UI_portait_image

            if pstat.moneyMain:FindFirstChild('updateMoney') then
                pstat.moneyMain.updateMoney:Destroy()
            end

            pstat.moneyMain.TextLabel.Text = _G.UI_money
            pstat.healthFrame.health.Text = _G.UI_health

            if pstat.healthFrame.health:FindFirstChild('label') then
                pstat.healthFrame.health.label:Destroy()
                pstat.healthFrame.healthUpdater:Destroy()
            end

            pstat.playerName.Text = _G.UI_name
            pstat.xpFrame.xp.Text = _G.UI_xp

            if pstat.xpFrame:FindFirstChild('xpUpdater') then
                pstat.xpFrame.xp.label:Destroy()
                pstat.xpFrame.xpUpdater:Destroy()
            end

            pstat.levelBorder.level.Text = _G.UI_lvl

            game.Players.LocalPlayer.PlayerGui:WaitForChild('abilities')
        end
    end)
    game.Players.LocalPlayer.Character:WaitForChild('playerNameplate', 5)

    if game.Players.LocalPlayer.Character:FindFirstChild('playerNameplate') then
        game.Players.LocalPlayer.Character.playerNameplate:Destroy()
    end

    while not game.Players.LocalPlayer.Character do
        wait()
    end
    while not game.Players.LocalPlayer.Character:FindFirstChildOfClass('Accessory') do
        wait()
    end

    wait()

    pchar = game.Players.LocalPlayer.Character

    local v185 = next
    local v186, v187 = game.Players.LocalPlayer.Character:GetChildren()

    while true do
        local v188

        v187, v188 = v185(v186, v187)

        if v187 == nil then
            break
        end

        local _ = v188.ClassName ~= 'Accessory'
        local v189, v190, v191 = pairs(pchar:GetChildren())

        while true do
            local v192

            v191, v192 = v189(v190, v191)

            if v191 == nil then
                break
            end
            if v192.ClassName == 'Accessory' then
                if v192:FindFirstChild('swing') then
                    if _G.del_armor and v192:FindFirstChildOfClass('Model') then
                        v192:FindFirstChildOfClass('Model'):Destroy()
                    end
                elseif _G.del_weapon then
                    v192:Destroy()
                end
            end
        end
    end
end

warn('place id check')

if game.PlaceId == 77649408247578 or game.PlaceId == 85776757589518 then
    warn('place id check done')

    while not workspace:FindFirstChild(game.Players.LocalPlayer.Name) do
        wait(0.1)
        game:GetService('ReplicatedStorage').remotes.loadPlayerCharacter:FireServer()
    end

    warn('pressed start')
    spawn(function()
        while not workspace:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('Humanoid') do
            wait(0.1)
        end

        spawn(function()
            while not game.Lighting:FindFirstChild('Blur') do
                wait(0.1)
            end
            while not game.Players.LocalPlayer.PlayerGui:FindFirstChild('introGui') do
                wait(0.1)
            end

            game.Players.LocalPlayer.PlayerGui:FindFirstChild('introGui'):Destroy()

            local _CurrentCamera = workspace.CurrentCamera

            _CurrentCamera.CameraType = Enum.CameraType.Track
            _CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid

            game.Lighting.Blur:Destroy()
        end)
        spawn(function()
            AIMovementInLobby()
        end)
    end)
    warn('player loaded')

    if _G.collect_daily_reward then
        while not workspace:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('HumanoidRootPart') do
            wait(0.1)
        end

        workspace.dailyRewardTouchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        wait(0.1)

        workspace.dailyRewardTouchPart.Size = Vector3.new(10, 10, 10)
        workspace.dailyRewardTouchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0)

        wait(0.1)
        spawn(function()
            game.CoreGui:WaitForChild('PurchasePromptApp'):Destroy()
        end)
    end

    warn('daily reward')

    if _G.boss_raid and _G.auto_choose_raid_boss_tier then
        local v195 = u6(game.Players.LocalPlayer)

        if v195.keys == nil then
            _G.auto_choose_dungeon_and_difficulty = true
            _G.boss_raid = false
            _G.wavedefense = false
        end
        if v195.keys['1'] ~= nil and v195.keys['1'] == false then
            _G.auto_choose_dungeon_and_difficulty = true
            _G.boss_raid = false
            _G.wavedefense = false
        end
    end

    warn('key check')
    v178()
    warn('choose dungeon')
    autoChooseBossRaidTier()
    warn('choose boss raid tier')
    v141()
    warn('auto spell swap')
    v177()
    warn('equip gear')
    v92()
    warn('sell done')
    autoupgrade()
    warn('auto upgrade done')

    if _G.easter_enable then
        _G.dungeon = 'Egg Island'
        _G.difficulty = 'Nightmare'
        _G.hardcore = false
    end

    print('JOINING DUNGEON')

    while not _G.ai_done do
        wait(0.1)
    end

    if _G.auto_join_dungeon then
        if _G.wait_for_friends_to_host then
            if _G.boss_raid then
                while not workspace.bossLobbies:FindFirstChild(_G.host_name) do
                    wait()
                end
                while wait(0.1) do
                    game:GetService('ReplicatedStorage').remotes.playerJoinBossLobby:InvokeServer(workspace.bossLobbies:FindFirstChild(_G.host_name))
                end
            else
                while not workspace.games.inLobby:FindFirstChild(_G.host_name) do
                    wait()
                end
                while wait(0.1) do
                    game:GetService('ReplicatedStorage').remotes.joinDungeon:InvokeServer(_G.host_name)
                end
            end
        end
        if _G.multi_roblox then
            if game.Players.LocalPlayer.Name ~= _G.host_name_key[1] then
                if _G.boss_raid then
                    while not workspace.bossLobbies:FindFirstChild(_G.host_name_key[1]) do
                        wait()
                    end
                    while wait(0.1) do
                        game:GetService('ReplicatedStorage').remotes.playerJoinBossLobby:InvokeServer(workspace.bossLobbies:FindFirstChild(_G.host_name_key[1]))
                    end
                else
                    while not workspace.games.inLobby:FindFirstChild(_G.host_name_key[1]) do
                        wait()
                    end
                    while wait(0.1) do
                        game:GetService('ReplicatedStorage').remotes.joinDungeon:InvokeServer(_G.host_name_key[1])
                    end
                end
            else
                if _G.boss_raid then
                    game:GetService('ReplicatedStorage').remotes.createBossLobby:InvokeServer(_G.boss_raid_tier, true, 0)
                else
                    game:GetService('ReplicatedStorage').remotes.createLobby:InvokeServer(_G.dungeon, _G.difficulty, 0, _G.hardcore, true, _G.wavedefense)
                end

                wait(0.1)

                if _G.boss_raid then
                    local v196, v197, v198 = pairs(_G.name_key_list)

                    while true do
                        local v199

                        v198, v199 = v196(v197, v198)

                        if v198 == nil then
                            break
                        end

                        game:GetService('ReplicatedStorage').remotes.addPlayerToBossWhitelist:FireServer(v199[1])
                    end
                else
                    local v200, v201, v202 = pairs(_G.name_key_list)

                    while true do
                        local v203

                        v202, v203 = v200(v201, v202)

                        if v202 == nil then
                            break
                        end

                        game:GetService('ReplicatedStorage').remotes.addPlayerToWhitelist:FireServer(v203[1])
                    end
                end
                if _G.boss_raid then
                    while#workspace.bossLobbies:FindFirstChild(game.Players.LocalPlayer.Name).players:GetChildren() ~= #_G.name_key_list + 1 do
                        wait()
                    end
                else
                    while#workspace.games.inLobby:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren() - 1 ~= #_G.name_key_list + 1 do
                        wait()
                    end
                end
                if _G.boss_raid then
                    game:GetService('ReplicatedStorage').remotes.startBossRaid:FireServer()
                else
                    game:GetService('ReplicatedStorage').remotes.startDungeon:FireServer()
                end
            end
        end
        if _G.wait_for_friends then
            if _G.boss_raid then
                game:GetService('ReplicatedStorage').remotes.createBossLobby:InvokeServer(_G.boss_raid_tier, true, 0)
            else
                game:GetService('ReplicatedStorage').remotes.createLobby:InvokeServer(_G.dungeon, _G.difficulty, 0, _G.hardcore, true, _G.wavedefense)
            end

            wait(0.1)

            if _G.boss_raid then
                local v204, v205, v206 = pairs(_G.friends)

                while true do
                    local v207

                    v206, v207 = v204(v205, v206)

                    if v206 == nil then
                        break
                    end

                    game:GetService('ReplicatedStorage').remotes.addPlayerToBossWhitelist:FireServer(v207)
                end
            else
                local v208, v209, v210 = pairs(_G.friends)

                while true do
                    local v211

                    v210, v211 = v208(v209, v210)

                    if v210 == nil then
                        break
                    end

                    game:GetService('ReplicatedStorage').remotes.addPlayerToWhitelist:FireServer(v211)
                end
            end

            wait(0.1)

            if _G.boss_raid then
                while#workspace.bossLobbies:FindFirstChild(game.Players.LocalPlayer.Name).players:GetChildren() ~= #_G.friends + 1 do
                    wait()
                end
            else
                while#workspace.games.inLobby:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren() - 1 ~= #_G.friends + 1 do
                    wait()
                end
            end
            if _G.boss_raid then
                game:GetService('ReplicatedStorage').remotes.startBossRaid:FireServer()
            else
                game:GetService('ReplicatedStorage').remotes.startDungeon:FireServer()
            end

            wait(20)
        end
        if _G.boss_raid then
            print('make boss lobby')
            game:GetService('ReplicatedStorage').remotes.createBossLobby:InvokeServer(_G.boss_raid_tier, true, 0)
            wait(1)
            game:GetService('ReplicatedStorage').remotes.startBossRaid:FireServer()
            wait(20)
        elseif not _G.boss_raid then
            game:GetService('ReplicatedStorage').remotes.createLobby:InvokeServer(_G.dungeon, _G.difficulty, 0, _G.hardcore, true, _G.wavedefense)
            wait(1)
            game:GetService('ReplicatedStorage').remotes.startDungeon:FireServer()
            wait(20)
        end
    else
        while wait(0.1) do end
    end

    while wait(0.1) do end
end

while not game.Players.LocalPlayer do
    wait(0.1)
end
while not game.Players.LocalPlayer.Character do
    wait(0.1)
end
while not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') do
    wait(0.1)
end
while not game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') do
    wait(0.1)
end
while not workspace:FindFirstChild(game.Players.LocalPlayer.Name) do
    wait(0.1)
end
while not (workspace:FindFirstChild('dungeon') or workspace:FindFirstChild('tier') or workspace:FindFirstChild('currentWave')) do
    wait(1)
end
while not (game:GetService('Workspace'):FindFirstChild('dungeonProgress') or game:GetService('Workspace'):FindFirstChild('raidProgress')) do
    wait()
end

wait(0.5)

local v212 = v1[2]
local u213 = v1[1]
local _ = game.Players.LocalPlayer.Character
local u214 = v212:CreatePath({
    AgentHeight = 5,
    AgentRadius = 3,
    AgentCanJump = true,
})
local u215 = {}
local u216 = 0
local u217 = nil
local u218 = {}

function stringInTable(p219, p220)
    return p220[p219] ~= nil
end

local function u224(p221, p222)
    if _G.loadSlow then
        game:GetService('RunService').RenderStepped:wait()
    end

    local _Part2 = Instance.new('Part')

    u213:AddTag(_Part2, 'RayWhitelist')

    _Part2.Size = p222
    _Part2.CFrame = p221
    _Part2.Name = u5
    _Part2.Anchored = true
    _Part2.Transparency = _G.wall_transparency
    _Part2.CanCollide = true
    _Part2.Parent = workspace

    return _Part2
end
local function u226(p225)
    report('ANTI SKID, TransChange', p225)
end
local function u228(p227)
    if p227.ClassName ~= 'TouchTransmitter' then
        report('ANTI SKID, ChildChange', p227)
    end
end
local function u234(p229, p230, p231, p232)
    local _Part3 = Instance.new('Part')

    _Part3.Shape = p232

    u213:AddTag(_Part3, 'RayIgnore')

    _Part3.Material = 'Neon'

    if _G.showPath then
        _Part3.Transparency = 0.5
    else
        _Part3.Transparency = u24
    end

    _Part3.Size = p230
    _Part3.CFrame = p229
    _Part3.Name = p231
    _Part3.Anchored = true
    _Part3.CanCollide = false
    _Part3.Parent = workspace

    _Part3:GetPropertyChangedSignal('Transparency'):Connect(u226)
    _Part3.ChildAdded:Connect(u228)

    return _Part3
end
local function u240(p235, p236, p237)
    local _Part4 = Instance.new('Part')

    u213:AddTag(_Part4, 'RayIgnore')

    _Part4.Size = p235
    _Part4.CFrame = p236
    _Part4.Parent = p237
    _Part4.Name = 'enemyRadius'
    _Part4.Anchored = false
    _Part4.CanCollide = false
    _Part4.Material = 'SmoothPlastic'
    _Part4.Transparency = u24

    _Part4:GetPropertyChangedSignal('Transparency'):Connect(u226)
    _Part4.ChildAdded:Connect(u228)

    _Part4.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)

    local _WeldConstraint = Instance.new('WeldConstraint')

    if p237.ClassName ~= 'Model' then
        _WeldConstraint.Part1 = p237
    else
        _WeldConstraint.Part1 = p237.PrimaryPart
    end

    _WeldConstraint.Part0 = _Part4
    _WeldConstraint.Parent = p237

    return _Part4
end
local function u267(p241, p242, p243)
    if p243 == nil then
        local v244 = {
            {p242, p242},
            {0, p242},
            {
                -p242,
                p242,
            },
            {p242, 0},
            {
                -p242,
                0,
            },
            {
                p242,
                -p242,
            },
            {
                0,
                -p242,
            },
            {
                -p242,
                -p242,
            },
        }
        local v245, v246, v247 = pairs(v244)

        while true do
            local v248

            v247, v248 = v245(v246, v247)

            if v247 == nil then
                break
            end

            local v249 = Vector3.new(1, 1, p242)
            local _Position = (p241.PrimaryPart.CFrame * CFrame.new(v248[1], 0, v248[2])).Position

            u240(v249, CFrame.new(_Position, p241.PrimaryPart.Position) * CFrame.new(0, 0, -p242 / 2 + 2), p241)
        end
    elseif p243 == 'square' then
        local v251 = Vector3.new(p242, p242, p242)

        CFrame.new(0, 0, 0)

        local v252

        if p241.ClassName ~= 'Model' then
            v252 = p241.CFrame
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v252 = p241.PrimaryPart.CFrame
        end

        u240(v251, v252, p241)
    elseif p243 == 'rectangle' then
        local v253 = Vector3.new(p242, p242, p242)

        CFrame.new(0, 0, 0)

        local v254

        if p241.ClassName ~= 'Model' then
            v254 = p241.CFrame
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v254 = p241.PrimaryPart.CFrame
        end

        u240(v253, v254, p241)

        local v255 = Vector3.new(1, p242, p242 * 2)

        CFrame.new(0, 0, 0)

        local v256

        if p241.ClassName ~= 'Model' then
            v256 = p241.CFrame * CFrame.new(0, 0, (p242 - 5) * -1)
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v256 = p241.PrimaryPart.CFrame * CFrame.new(0, 0, (p242 - 5) * -1)
        end

        u240(v255, v256, p241)
    elseif p243 == 'rectanglev2' then
        local v257 = Vector3.new(p242, p242, p242)

        CFrame.new(0, 0, 0)

        local v258

        if p241.ClassName ~= 'Model' then
            v258 = p241.CFrame
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v258 = p241.PrimaryPart.CFrame
        end

        u240(v257, v258, p241)

        local v259 = Vector3.new(p242, p242, p242)

        CFrame.new(0, 0, 0)

        local v260

        if p241.ClassName ~= 'Model' then
            v260 = p241.CFrame * CFrame.new(0, 0, (p242 - 10) * -1) * CFrame.Angles(math.rad(45), 0, math.rad(90))
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v260 = p241.PrimaryPart.CFrame * CFrame.new(0, 0, (p242 - 10) * -1) * CFrame.Angles(math.rad(45), 0, math.rad(90))
        end

        u240(v259, v260, p241)
    elseif p243 == 'rectanglev3' then
        local v261 = Vector3.new(p242, p242, p242)

        CFrame.new(0, 0, 0)

        local v262

        if p241.ClassName ~= 'Model' then
            v262 = p241.CFrame
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v262 = p241.PrimaryPart.CFrame
        end

        u240(v261, v262, p241)

        local v263 = Vector3.new(p242 - 5, p242 - 5, p242 - 5)

        CFrame.new(0, 0, 0)

        local v264

        if p241.ClassName ~= 'Model' then
            v264 = p241.CFrame * CFrame.new(0, 0, (p242 - 5) * -1) * CFrame.Angles(0, math.rad(45), 0)
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v264 = p241.PrimaryPart.CFrame * CFrame.new(0, 0, (p242 - 5) * -1) * CFrame.Angles(0, math.rad(45), 0)
        end

        u240(v263, v264, p241)
    elseif p243 == 'rectangle-2' then
        local v265 = Vector3.new(p242, p242, p242)

        CFrame.new(0, 0, 0)

        local v266

        if p241.ClassName ~= 'Model' then
            v266 = p241.CFrame * CFrame.Angles(0, math.rad(45), 0)
        else
            p241:WaitForChild('PrimaryPart', 0.5)

            v266 = p241.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(45), 0)
        end

        u240(v265, v266, p241)
    end
end
local function u273(p268)
    if _G.optimize_mobs then
        local v269, v270, v271 = pairs(p268:GetChildren())

        while true do
            local v272

            v271, v272 = v269(v270, v271)

            if v271 == nil then
                break
            end
            if v272.ClassName == 'Model' then
                v272:Destroy()
            end
        end

        if p268:FindFirstChild('HumanoidRootPart') then
            p268.HumanoidRootPart.Transparency = 0
        end
        if p268:FindFirstChild('Head') then
            p268.Head.Transparency = 0
        end
    end
end
local function u276(p274)
    if p274.ClassName == 'Model' then
        while p274.PrimaryPart == nil do
            wait()
        end
        while not p274:FindFirstChild(p274.PrimaryPart.Name) do
            wait()
        end

        p274:WaitForChild('HumanoidRootPart')
        p274:WaitForChild('enemyStyle', 1.5)

        if not p274:FindFirstChild('enemyStyle') then
            print('no enemy style')

            return
        end

        local _Value5 = p274.enemyStyle.Value

        if _Value5 == 'mob' or _Value5 == 'ranged' or (_Value5 == 'melee' or _Value5 == 'burly') then
            if u23 then
                while#u213:GetTags(p274) == 0 do
                    wait(0.1)
                end
            else
                while#u213:GetTags(p274) < 2 do
                    ScriptDebug('waiting for mob to add tag')
                    wait(0.1)
                end
            end

            u213:AddTag(p274, 'Enemy')

            if _G.doInstakill and p274:FindFirstChild('Humanoid') and u27[p274.Name] then
                p274.Humanoid.Health = 0
            end
            if _Value5 ~= 'ranged' then
                if game.PlaceId ~= 5281215714 then
                    if game.PlaceId ~= 6216785535 then
                        u267(p274, 7)
                    elseif p274.Name == 'Temple Guard' then
                        u267(p274, 3)
                    end
                elseif p274.Name == 'Explosive Lava Walker' or p274.Name == 'Aggressive Lava Walker' then
                    u267(p274, 8.5)
                end
            end
        else
            if u23 then
                while#u213:GetTags(p274) ~= 0 do
                    wait()
                end
            else
                while#u213:GetTags(p274) < 1 do
                    wait()
                end
            end
            if _G.doInstakill and p274:FindFirstChild('Humanoid') and u27[p274.Name] then
                p274.Humanoid.Health = 0
            end

            u213:AddTag(p274, 'Enemy')
        end
    end
end
local function v289()
    if workspace:FindFirstChild('tier') or workspace:FindFirstChild('currentWave') then
        workspace.enemies.ChildAdded:Connect(function(p277)
            if p277.Name ~= 'Stone Warrior' then
                u276(p277)
                u273(p277)
            else
                p277:WaitForChild('Humanoid')
                u267(p277, 5)
                wait(1)

                p277.Humanoid.Health = 0
            end
        end)
    else
        local v278, v279, v280 = pairs(workspace.dungeon:GetChildren())

        while true do
            local v281

            v280, v281 = v278(v279, v280)

            if v280 == nil then
                break
            end
            if v281:FindFirstChild('enemyFolder') then
                local _enemyFolder = v281:FindFirstChild('enemyFolder')

                if _enemyFolder then
                    local _Model = _enemyFolder:FindFirstChildOfClass('Model')

                    if _Model and _Model:FindFirstChild('Humanoid') then
                        wait(0.5)

                        local v284, v285, v286 = pairs(_enemyFolder:GetChildren())

                        while true do
                            local v287

                            v286, v287 = v284(v285, v286)

                            if v286 == nil then
                                break
                            end

                            u276(v287)
                            u273(v287)
                        end
                    end

                    _enemyFolder.ChildAdded:Connect(function(p288)
                        u276(p288)
                        u273(p288)
                    end)
                end
            end
        end
    end
end

local u290 = {}
local u291 = {}

(function()
    if game.ReplicatedStorage:FindFirstChild('projectiles') then
        local v292 = game:GetService('ReplicatedStorage').projectiles:GetChildren()
        local v293 = game:GetService('ReplicatedStorage').enemyProjectiles:GetChildren()
        local v294, v295, v296 = pairs(v292)

        while true do
            local v297

            v296, v297 = v294(v295, v296)

            if v296 == nil then
                break
            end

            u290[v297.Name] = true
        end

        local v298, v299, v300 = pairs(v293)

        while true do
            local v301

            v300, v301 = v298(v299, v300)

            if v300 == nil then
                break
            end

            u291[v301.Name] = true
        end

        u291.secondBossSlamHitbox = true
    end
end)()

local function u304(p302)
    local _Part5 = Instance.new('Part')

    u213:AddTag(_Part5, 'RayIgnore')

    _Part5.Shape = 'Ball'
    _Part5.Material = 'Neon'
    _Part5.Size = Vector3.new(0.6, 0.6, 0.6)
    _Part5.Position = p302
    _Part5.Anchored = true
    _Part5.CanCollide = false
    _Part5.Name = u5
    _Part5.Parent = game.Workspace
    u218[#u218 + 1] = _Part5
end

local u305 = u234(CFrame.new(0, 0, 0), Vector3.new(3, 3, 3), u5, 'Ball')
local _SelectionBox = Instance.new('SelectionBox')

local function u309(p307, p308)
    Vector3.new(p308.X, p307.Y, p308.Z)

    return (p307 - p308).magnitude
end
local function u314()
    local v310 = nil
    local v311 = nil
    local v312 = nil
    local v313 = nil

    while not game.Players.LocalPlayer do
        wait()
    end

    if game.Players.LocalPlayer then
        v310 = game.Players.LocalPlayer

        while not game.Players.LocalPlayer.Character do
            wait()
        end

        if game.Players.LocalPlayer.Character then
            v311 = game.Players.LocalPlayer.character

            while not game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') do
                wait()
            end

            if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
                v312 = game.Players.LocalPlayer.Character.Humanoid
            end

            while not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') do
                wait()
            end

            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
                v313 = game.Players.LocalPlayer.Character.HumanoidRootPart
            end
        end
    end

    return v310, v311, v312, v313
end

local u315 = {
    itemsEarned = {},
    startingInventory = u6(game.Players.LocalPlayer),
    dungeonName = nil,
    timeLeft = nil,
    endingInventory = nil,
    colorTable = {
        legendary = '16426522',
        epic = '14031610',
        rare = '39423',
        uncommon = '2096896',
        common = '15859184',
    },
}

function Format(p316)
    return string.format('%02i', p316)
end

local function u320(p317)
    local v318 = (p317 - p317 % 60) / 60
    local v319 = p317 - v318 * 60

    return Format(v318) .. ':' .. Format(v319)
end
local function u321()
    (syn and syn.request or http_request)({
        Url = _G.webhookLink,
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
        },
        Body = game:GetService('HttpService'):JSONEncode({
            embeds = u315.itemsEarned,
        }),
    })
end
local function u325(p322)
    local v323 = p322:sub(1, 1)
    local v324 = p322:sub(2)

    return v323:upper() .. v324
end
local function u333(p326, p327)
    local v328, v329, v330 = pairs(p327)

    while true do
        local v331

        v330, v331 = v328(v329, v330)

        if v330 == nil then
            break
        end
        if not p326[v330] then
            local v332 = {
                description = '```\n' .. u325(v331.name) .. '```',
                color = u315.colorTable[v331.rarity],
            }

            table.insert(u315.itemsEarned, v332)
        end
    end
end
local function u337()
    if _G.webhookEnabled then
        u315.timeLeft = u320(workspace.timeLeft.Value)

        local v334 = u315
        local v335 = {}
        local v336 = {
            color = '0',
            author = {
                name = 'MRobSwag Item Notifier',
            },
            fields = {
                {
                    name = 'Dungeon: ',
                    value = tostring(u315.dungeonName),
                },
                {
                    name = 'Clear Time: ',
                    value = u315.timeLeft,
                },
            },
        }

        __set_list(v335, 1, {v336})

        v334.itemsEarned = v335

        wait(2)
        print('doing webhook')

        u315.endingInventory = u6(game.Players.LocalPlayer)

        u333(u315.startingInventory.weapons, u315.endingInventory.weapons)
        u333(u315.startingInventory.abilities, u315.endingInventory.abilities)
        u333(u315.startingInventory.chests, u315.endingInventory.chests)
        u333(u315.startingInventory.helmets, u315.endingInventory.helmets)
        u321()
        print('done webhook')
    end
end

if workspace:FindFirstChild('dungeonProgress') then
    game:GetService('Workspace'):FindFirstChild('dungeonProgress').Changed:Connect(function(p338)
        if p338 ~= '' and (p338 ~= 'inProgress' and p338 ~= 'playersNotReady') then
            u25 = true

            if regionTable ~= nil then
                local v339, v340, v341 = pairs(regionTable)

                while true do
                    local v342

                    v341, v342 = v339(v340, v341)

                    if v341 == nil then
                        break
                    end

                    local v343, v344, v345 = pairs(v342)
                    local v346 = v341

                    while true do
                        local v347

                        v345, v347 = v343(v344, v345)

                        if v345 == nil then
                            break
                        end

                        regionTable[v346][v345].obj:Destroy()
                    end
                end
            end
            if readyPartTable ~= nil then
                local v348, v349, v350 = pairs(readyPartTable)

                while true do
                    local v351

                    v350, v351 = v348(v349, v350)

                    if v350 == nil then
                        break
                    end

                    v351:Destroy()
                end
            end

            spawn(u337)
            print('set timeout')
            wait(0.5)
            game:GetService('ScriptContext'):SetTimeout(0)
        end
    end)
elseif workspace:FindFirstChild('raidPorgress') then
    game:GetService('Workspace'):FindFirstChild('raidProgress').Changed:Connect(function(p352)
        if p352 ~= '' and (p352 ~= 'inProgress' and p352 ~= 'playersNotReady') then
            u25 = true

            if regionTable ~= nil then
                local v353, v354, v355 = pairs(regionTable)

                while true do
                    local v356

                    v355, v356 = v353(v354, v355)

                    if v355 == nil then
                        break
                    end

                    local v357, v358, v359 = pairs(v356)
                    local v360 = v355

                    while true do
                        local v361

                        v359, v361 = v357(v358, v359)

                        if v359 == nil then
                            break
                        end

                        regionTable[v360][v359].obj:Destroy()
                    end
                end
            end
            if readyPartTable ~= nil then
                local v362, v363, v364 = pairs(readyPartTable)

                while true do
                    local v365

                    v364, v365 = v362(v363, v364)

                    if v364 == nil then
                        break
                    end

                    v365:Destroy()
                end
            end

            spawn(u337)
            print('set timeout')
            wait(0.5)
            game:GetService('ScriptContext'):SetTimeout(0)
        end
    end)
end

function SelectBoxChange(p366)
    _SelectionBox.Adornee = p366
    _SelectionBox.Color3 = Color3.new(1, 0, 0)
    _SelectionBox.Parent = p366
end

local function u376()
    local _huge = math.huge

    if #u213:GetTagged('Prio-Enemy') > 0 then
        return u213:GetTagged('Prio-Enemy')[1]
    end

    local v368 = nil

    while#u213:GetTagged('Enemy') < 1 do
        ScriptDebug('Waiting for enemies...')

        if _extremelyFast then
            game:GetService('RunService').RenderStepped:wait()
        else
            wait()
        end
    end
    while v368 == nil do
        local _Enemy = u213:GetTagged('Enemy')
        local _, _, _, v370 = u314()
        local v371, v372, v373 = pairs(_Enemy)

        while true do
            local v374

            v373, v374 = v371(v372, v373)

            if v373 == nil then
                break
            end
            if v374:FindFirstChild('HumanoidRootPart') and v370 ~= nil then
                local v375 = u309(v370.Position, v374.HumanoidRootPart.Position)

                if v375 < _huge then
                    v368 = v374
                    _huge = v375
                end
            end
        end

        if v368 ~= nil then
            break
        end
        if _extremelyFast then
            game:GetService('RunService').RenderStepped:wait()
        else
            wait()
        end
    end

    if _G.showTarget then
        SelectBoxChange(v368.HumanoidRootPart)
    end

    return v368
end

function charLookAt(p377, p378)
    if p377.PrimaryPart and (p378 and p378.Position) then
        local _Position2 = p377.PrimaryPart.Position
        local _Position3 = p378.Position

        p377:SetPrimaryPartCFrame((CFrame.new(Vector3.new(_Position2.x, _Position2.y, _Position2.z), Vector3.new(_Position3.x, _Position2.y, _Position3.z))))
    end
end

local function u385()
    local v381, v382, v383 = pairs(u218)

    while true do
        local v384

        v383, v384 = v381(v382, v383)

        if v383 == nil then
            break
        end

        v384:Destroy()
    end

    u218 = {}
end
local function u393(p386)
    local _HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    local _Humanoid2 = game.Players.LocalPlayer.Character.Humanoid

    u214:ComputeAsync(_HumanoidRootPart.Position, p386)

    u215 = {}

    if u214.Status ~= Enum.PathStatus.Success then
        print('path not success')

        if u217 then
            _Humanoid2:MoveTo(u217.PrimaryPart.Position)
        else
            _Humanoid2:MoveTo(_HumanoidRootPart.Position)
        end
    else
        u215 = u214:GetWaypoints()

        if u2 then
            u385()

            local v389, v390, v391 = pairs(u215)

            while true do
                local v392

                v391, v392 = v389(v390, v391)

                if v391 == nil then
                    break
                end

                u304(v392.Position)
            end
        end

        u216 = 2

        if u215[u216] == Enum.PathWaypointAction.Jump then
            _Humanoid2.Jump = true
        end

        _Humanoid2:MoveTo(u215[u216].Position)
    end
end
local function u397(p394)
    local _, v395, v396, _ = u314()

    if v395 == nil or (v396 == nil or not p394) or u216 >= #u215 then
        if v395 ~= nil and v396 ~= ni and u217 and u217:FindFirstChild('HumanoidRootPart') then
            charLookAt(v395, u217.HumanoidRootPart)
        end
    else
        u216 = u216 + 1

        charLookAt(v395, u217.HumanoidRootPart)
        v396:MoveTo(u215[u216].Position)
    end
end
local function v400(p398)
    print('path blocked')

    local _, v399, _, _ = u314()

    if v399 ~= nil and u217 ~= nil then
        charLookAt(v399, u217.HumanoidRootPart)
    end
    if u216 < p398 then
        u393(destination)
    end
end
local function v423()
    local _, v401, _, _ = u314()

    if v401 ~= nil then
        u213:AddTag(v401, 'RayIgnore')
        u213:AddTag(workspace.Terrain, 'RayWhitelist')

        if workspace:FindFirstChild('tier') then
            local v402, v403, v404 = pairs(game:GetService('Workspace').mapModel:GetChildren())

            while true do
                local v405

                v404, v405 = v402(v403, v404)

                if v404 == nil then
                    break
                end
                if v405.ClassName == 'Part' or v405.ClassName == 'UnionOperation' or v405.ClassName == 'WedgePart' then
                    if v405 ~= v401 and v405.Name ~= u5 and (v405.Transparency < 1 and v405.Name ~= 'enemyRadius') then
                        u213:AddTag(v405, 'RayWhitelist')
                    end
                elseif v405.ClassName == 'Model' and v405 ~= v401 then
                    u213:AddTag(v405, 'RayWhitelist')
                end
            end
        elseif workspace:FindFirstChild('currentWave') then
            local v406, v407, v408 = pairs(workspace:GetChildren())

            while true do
                local v409

                v408, v409 = v406(v407, v408)

                if v408 == nil then
                    break
                end
                if string.find(v409.Name, 'Arena') then
                    u213:AddTag(v409, 'RayWhitelist')
                end
            end
        else
            local v410 = u11(workspace, 'dungeon')
            local v411, v412, v413 = pairs(v410:GetChildren())

            while true do
                local v414

                v413, v414 = v411(v412, v413)

                if v413 == nil then
                    break
                end

                local v415, v416, v417 = pairs(v414:GetChildren())

                while true do
                    local v418

                    v417, v418 = v415(v416, v417)

                    if v417 == nil then
                        break
                    end
                    if v418.ClassName == 'Part' or v418.ClassName == 'UnionOperation' or v418.ClassName == 'WedgePart' then
                        if v418.Transparency < 1 then
                            u213:AddTag(v418, 'RayWhitelist')
                        end
                    elseif v418.ClassName == 'Model' then
                        u213:AddTag(v418, 'RayWhitelist')
                    end
                end
            end

            local v419, v420, v421 = pairs(workspace:GetChildren())

            while true do
                local v422

                v421, v422 = v419(v420, v421)

                if v421 == nil then
                    break
                end
                if v422.ClassName == 'Part' or v422.ClassName == 'UnionOperation' or v422.ClassName == 'WedgePart' then
                    if v422 ~= v401 and v422.Name ~= u5 and (v422.Transparency < 1 and v422.Name ~= 'enemyRadius') then
                        u213:AddTag(v422, 'RayWhitelist')
                    end
                elseif v422.ClassName == 'Model' and v422 ~= v401 then
                    u213:AddTag(v422, 'RayWhitelist')
                end
            end
        end
    end
end

function round(p424)
    return math.floor(p424 + 0.5)
end
function roundVector(p425)
    return Vector3.new(round(p425.X), round(p425.Y), round(p425.Z))
end

local u426 = Vector3.new(0, 0, 0)
local u427 = Vector3.new(1, 0, 0)

local function u433(p428, p429)
    if p429 == nil then
        p429 = false
    end

    local _, v430, v431, v432 = u314()

    if p428.ClassName ~= 'Model' then
        u427 = roundVector(p428.Position)
    else
        u427 = roundVector(p428.PrimaryPart.Position)
    end
    if v431 ~= nil and v432 ~= nil then
        u426 = u427
        destination = u427

        if p429 then
            if u217 ~= nil then
                charLookAt(v430, u217.PrimaryPart)
            end

            spawn(u385)
            v431:MoveTo(u427)
        else
            u393(u427)
        end
    end
end

function visualRay(p434)
    local _Part6 = Instance.new('Part')

    u213:AddTag(_Part6, 'RayIgnore')

    _Part6.Size = Vector3.new(2, 2, 2)
    _Part6.Name = 'Ray'
    _Part6.Anchored = true
    _Part6.Material = 'Neon'
    _Part6.CanCollide = false
    _Part6.Parent = workspace

    game:GetService('Debris'):AddItem(_Part6, p434)

    return _Part6
end
function rayCast(p436, p437, p438, p439)
    local _p = p437.p
    local _p2 = p436.p
    local v442 = Ray.new(_p2, _p - _p2)
    local v443 = u213:GetTagged(p438)
    local v444, v445

    if p439 then
        v444, v445 = workspace:FindPartOnRayWithWhitelist(v442, v443)
    else
        v444, v445 = workspace:FindPartOnRayWithIgnoreList(v442, v443)
    end

    return v445, v444
end

local u446 = {
    laserBeam = true,
    bossRiflePreCast = true,
    bossRifleShot = true,
    hitIndicatorIceAOE = true,
    iceBeamIndicator = true,
    projectile = true,
    mageProjectileBall = true,
    thirdBossSafeSpots = true,
    secondBossOrb = true,
    thirdBossOrbShot = true,
    spikePrecast = true,
    kolvumarTrail = true,
    ['Kraken Tentacle'] = true,
    secondBossRandomSquare = true,
    initialMageBossEntry = false,
    initialKingBossEntry = false,
    initialHunterBossEntry = false,
    thirdBossSafeSpot = false,
    forceField = false,
    safeSpotCircle = false,
    secondBossSafeSpots = false,
}
local u447 = {
    glowPart = true,
    outerPrecast = true,
    beam = true,
    Beam = true,
    precast = true,
    preCast = true,
    HumanoidRootPart = true,
}
local u448 = nil
local u449 = nil
local u450 = nil
local u451 = nil
local u452 = nil

local function u454(p453)
    u451 = p453.Name

    if u451 == 'enemyRadius' then
        return true
    end
    if p453.Transparency == 1 then
        return false
    end

    u448 = u446[u451]

    if u448 ~= nil and u448 then
        return u448
    end

    u452 = p453.Parent
    u449 = u446[p453.Parent.Name]

    if u449 ~= nil then
        return u449
    end
    if stringInTable(u451, u290) then
        return false
    end

    u450 = u447[u451]

    return u450 ~= nil and p453.ClassName == 'Part' and (u452 ~= game.Players.LocalPlayer.Character and u450) and true or false
end

local u455 = 4
local u456 = 5
local u457 = 1.4
local u458 = {}
local u459 = math.random(0, 4)

local function u461()
    if _G.loadSlow then
        game:GetService('RunService').RenderStepped:wait()
    end

    local _Part7 = Instance.new('Part')

    u213:AddTag(_Part7, 'RayIgnore')

    _Part7.Size = Vector3.new(u455, 50, u455)
    _Part7.CFrame = CFrame.new(0, 100, 0)
    _Part7.Name = u5
    _Part7.Anchored = true
    _Part7.CanCollide = false
    _Part7.Material = 'SmoothPlastic'
    _Part7.Transparency = u24

    _Part7:GetPropertyChangedSignal('Transparency'):Connect(u226)
    _Part7.ChildAdded:Connect(u228)

    _Part7.BrickColor = BrickColor.new('Black')

    if u459 ~= 0 then
        if u459 ~= 1 then
            if u459 ~= 2 then
                if u459 ~= 3 then
                    if u459 == 4 then
                        _Part7.Parent = workspace.Camera
                    end
                elseif workspace:FindFirstChild('start') then
                    _Part7.Parent = workspace.start
                else
                    _Part7.Parent = workspace.dungeonStarted
                end
            else
                _Part7.Parent = workspace.stats
            end
        else
            _Part7.Parent = workspace.timeLeft
        end
    elseif workspace:FindFirstChild('hardcore') then
        _Part7.Parent = workspace.hardcore
    else
        _Part7.Parent = workspace.raidProgress
    end

    _Part7.Touched:Connect(function() end)
    u18(u458, _Part7)

    return _Part7
end
local function u466(p462)
    local v463 = {}

    for v464 = 1, p462 do
        local _ = v464

        for v465 = 1, p462 do
            if v463[v464] == nil then
                v463[v464] = {}
            end
            if v463[v464][v465] == nil then
                v463[v464][v465] = {
                    obj = nil,
                    safe = nil,
                }
            end
        end
    end

    return v463
end

local u473 = (function(p467)
    for _ = 1, 441 do
        u461()
    end

    local _ = game.Players.LocalPlayer.Character.HumanoidRootPart
    local v468 = u466(p467)
    local v469 = p467 / 2 + 0.5

    for v470 = 1, p467 do
        local _ = v470

        for v471 = 1, p467 do
            local v472 = u19(u458)

            v468[v470][v471].obj = v472
            v468[v470][v471].safe = true

            if v470 ~= v469 or v471 ~= v469 then
                u213:AddTag(v468[v470][v471].obj, 'directionWL')
            end
        end
    end

    return v468
end)(u456)

local function u492()
    local _, _, _, v474 = u314()

    if v474 ~= nil then
        local v475 = #u473
        local v476 = (v475 - 1) * u455 / 2 * -1 / u457
        local v477 = (v475 - 1) * u455 / 2 * -1 / u457
        local v478, v479, v480 = pairs(u473)

        while true do
            local v481

            v480, v481 = v478(v479, v480)

            if v480 == nil then
                break
            end

            local v482, v483, v484 = pairs(v481)

            while true do
                local v485

                v484, v485 = v482(v483, v484)

                if v484 == nil then
                    break
                end

                local _obj = v485.obj

                if v474 ~= nil and _obj ~= nil then
                    _obj.CFrame = v474.CFrame * CFrame.new(v476, 0, v477)

                    local v487 = _obj:GetTouchingParts()

                    _obj.BrickColor = BrickColor.new('Black')
                    v485.safe = true

                    local v488, v489, v490 = pairs(v487)

                    while true do
                        local v491

                        v490, v491 = v488(v489, v490)

                        if v490 == nil then
                            break
                        end
                        if u454(v491) then
                            _obj.BrickColor = BrickColor.new('Bright red')
                            v485.safe = false

                            break
                        end
                    end
                end

                v477 = v477 + u455 / u457
            end

            v477 = (v475 - 1) * u455 / 2 * -1 / u457
            v476 = v476 + u455 / u457
        end
    end
end
local function u509()
    local v493, v494, v495 = pairs(u473)

    while true do
        local v496

        v495, v496 = v493(v494, v495)

        if v495 == nil then
            break
        end
        if #u458 == 0 then
            u461()
        end

        local v497 = {
            obj = u19(u458),
        }

        u18(u473[v495], 1, v497)

        if #u458 == 0 then
            u461()
        end

        local v498 = {
            obj = u19(u458),
        }

        u18(u473[v495], v498)
    end

    local v499, v500, v501 = pairs(u473[1])
    local v502 = {}

    while true do
        local v503

        v501, v503 = v499(v500, v501)

        if v501 == nil then
            break
        end
        if #u458 == 0 then
            u461()
        end

        u18(v502, {
            obj = u19(u458),
        })
    end

    local v504, v505, v506 = pairs(u473[1])
    local v507 = {}

    while true do
        local v508

        v506, v508 = v504(v505, v506)

        if v506 == nil then
            break
        end
        if #u458 == 0 then
            u461()
        end

        u18(v507, {
            obj = u19(u458),
        })
    end

    u18(u473, 1, v502)
    u18(u473, v507)
end
local function u526()
    local v510, v511, v512 = pairs(u473)

    while true do
        local v513

        v512, v513 = v510(v511, v512)

        if v512 == nil then
            break
        end

        local v514 = u19(u473[v512], #u473[v512])

        if v514 ~= nil then
            v514.obj.CFrame = CFrame.new(0, 0, 0)

            u18(u458, v514.obj)

            local v515 = u19(u473[v512], 1)

            v515.obj.CFrame = CFrame.new(0, 0, 0)

            u18(u458, v515.obj)
        end
    end

    local v516 = u19(u473, #u473)
    local v517, v518, v519 = pairs(v516)

    while true do
        local v520

        v519, v520 = v517(v518, v519)

        if v519 == nil then
            break
        end
        if v520 ~= nil then
            v520.obj.CFrame = CFrame.new(0, 0, 0)

            u18(u458, v520.obj)
        end
    end

    local v521 = u19(u473, 1)
    local v522, v523, v524 = pairs(v521)

    while true do
        local v525

        v524, v525 = v522(v523, v524)

        if v524 == nil then
            break
        end
        if v525 ~= nil then
            v525.obj.CFrame = CFrame.new(0, 0, 0)

            u18(u458, v525.obj)
        end
    end
end

local u527 = false
local u528 = nil
local u529 = false

function checkAroundPlayer(p530, p531)
    local v532 = p531 / 2 + 0.5

    for v533 = #p530 - v532, u456 do
        if not p530[v533][v533].safe then
            return false
        end
    end

    return true
end

local function u543()
    u217 = u376()

    local v534 = u14

    if u217 ~= nil and (u217.Name ~= "Azrallik's Heart" and u217.Name ~= 'Dragon Orb') then
        u217:WaitForChild('enemyStyle')

        local _Value6 = u217.enemyStyle.Value

        if _Value6 == 'mob' or _Value6 == 'ranged' or (_Value6 == 'melee' or _Value6 == 'burly') then
            if u26 then
                local v536, v537, v538 = pairs(workspace:GetChildren())

                while true do
                    local v539

                    v538, v539 = v536(v537, v538)

                    if v538 == nil then
                        break
                    end
                    if u291[v539.Name] then
                        v539:Destroy()
                    end
                end
            end

            u26 = false
        else
            v534 = u15
            u26 = true
        end
    end

    local _, _, _, v540 = u314()

    if v540 == nil or u217 == nil then
        return 'nothing'
    else
        local _Position4 = u217.PrimaryPart.Position
        local v542 = u309(Vector3.new(_Position4.X, v540.Position.Y, _Position4.z), v540.Position) - u217.PrimaryPart.Size.Z / 2

        u492()
        print(v542)
        print(v534)

        if u529 then
            return 'chase_fobjective', nil
        elseif checkAroundPlayer(u473, #u473) then
            if u527 and u528 ~= nil then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24

                return 'chase_objective', nil
            elseif v542 >= v534 - 5 then
                if v542 < v534 then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24

                    return 'strafe', nil
                else
                    if u26 then
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
                    else
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
                    end

                    return 'chase', nil
                end
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24

                return 'run', nil
            end
        else
            if u26 or not _G.teleportDuringBossOnly then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
            end

            return 'dodge', nil
        end
    end
end

if _G.doInstakill then
    game:GetService('RunService').RenderStepped:connect(function()
        if sethiddenproperty then
            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
        end
    end)
end

local u544 = nil
local u545 = nil
local u546 = true

(function()
    spawn(function()
        local _, _, _, _ = u314()

        while true do
            if u25 then
                return
            end

            local _, _, v547, v548 = u314()

            if v548 ~= nil and v547 ~= nil and v547.Health > 0 then
                spawn(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = u17
                end)
                print('uh')

                local v549, _ = u543()

                ScriptDebug('Thought: ' .. v549 .. ', Enemy: ' .. u217.Name)

                if v549 == 'chase' then
                    local _, v550 = rayCast(v548.CFrame, u217.PrimaryPart.CFrame, 'RayWhitelist', true)

                    u544 = v550

                    if u544 ~= nil then
                        u433(u217)
                    else
                        u433(u217, true)
                    end
                elseif v549 == 'chase_objective' then
                    if u528 == nil or u528.ClassName ~= 'Model' then
                        if u528 ~= nil then
                            local _, v551 = rayCast(v548.CFrame * CFrame.new(0, 0, 0), u528.CFrame * CFrame.new(0, 4, 0), 'RayWhitelist', true)

                            u544 = v551
                        end
                    else
                        local _, v552 = rayCast(v548.CFrame * CFrame.new(0, 0, 0), u528.PrimaryPart.CFrame * CFrame.new(0, 4, 0), 'RayWhitelist', true)

                        u544 = v552
                    end
                    if u544 ~= nil then
                        u433(u528)
                    else
                        u433(u528, true)
                    end
                elseif v549 == 'chase_fobjective' then
                    local _, v553 = rayCast(v548.CFrame, u305.CFrame, 'RayWhitelist', true)

                    u544 = v553

                    if u544 ~= nil then
                        u433(u305)
                    else
                        u433(u305, true)
                    end
                elseif v549 == 'strafe' then
                    local v554, _ = rayCast(v548.CFrame, v548.CFrame * CFrame.new(1000, 0, 0), 'RayWhitelist', true)
                    local v555 = rayCast(v548.CFrame, v548.CFrame * CFrame.new(-1000, 0, 0), 'RayWhitelist', true)
                    local v556 = u309(v548.Position, v554)
                    local v557 = u309(v548.Position, v555)

                    if math.abs(v556 - v557) >= 5 then
                        if v557 < v556 then
                            u305.CFrame = v548.CFrame * CFrame.new(5, 0, 0)
                        else
                            u305.CFrame = v548.CFrame * CFrame.new(-5, 0, 0)
                        end
                    else
                        u305.CFrame = v548.CFrame
                    end

                    u433(u305, true)
                elseif v549 == 'run' then
                    local _, v558 = rayCast(v548.CFrame * CFrame.new(0, 0, 0), v548.CFrame * CFrame.new(0, 0, 25), 'RayWhitelist', true)

                    u544 = v558

                    if u544 ~= nil then
                        local v559 = false

                        for v560 = 1, 20 do
                            if v559 then
                                break
                            end

                            local _ = v560

                            for v561 = 1, 2 do
                                local v562 = v560 * 9

                                if v561 == 1 then
                                    v562 = v562 * -1
                                end

                                local _, v563 = rayCast(v548.CFrame, v548.CFrame * CFrame.new(v562, -2, 25 - v560), 'RayWhitelist', true)

                                u544 = v563

                                if u544 == nil then
                                    u305.CFrame = v548.CFrame * CFrame.new(v562, -2, 25 - v560)
                                    v559 = true

                                    break
                                end
                            end
                        end

                        u433(u305, true)
                    else
                        u305.CFrame = v548.CFrame * CFrame.new(0, 0, 25)

                        u433(u305, true)
                    end
                elseif v549 == 'dodge' then
                    local _huge2 = math.huge
                    local v565 = #u473 / 2 + 0.5
                    local v566 = nil
                    local v567 = false

                    while v566 == nil and (v548 ~= nil and v547 ~= nil) and v547.Health > 0 do
                        if u473[v565][v565].safe then
                            v566 = u473[v565][v565].obj
                            v567 = true

                            break
                        end

                        local v568, v569, v570 = pairs(u473)

                        while true do
                            local v571

                            v570, v571 = v568(v569, v570)

                            if v570 == nil then
                                break
                            end

                            local v572, v573, v574 = pairs(v571)
                            local v575 = v570

                            while true do
                                local v576

                                v574, v576 = v572(v573, v574)

                                if v574 == nil then
                                    break
                                end

                                local v577 = u473[v575][v574]
                                local v578 = math.floor(u309(v548.Position, v577.obj.Position) + 0.5)

                                if v577.safe and v578 < _huge2 then
                                    local _, v579 = rayCast(v548.CFrame * CFrame.new(0, 0, 0), CFrame.new(v577.obj.Position, v548.Position) * CFrame.new(0, 0, u455 / 2), 'RayWhitelist', true)

                                    u544 = v579

                                    if u544 ~= nil then
                                        v577.obj.BrickColor = BrickColor.new('Bright yellow')
                                    else
                                        v566 = v577.obj
                                        _huge2 = v578
                                    end
                                end
                            end
                        end

                        if v566 ~= nil then
                            break
                        end

                        u509()
                        u492()

                        if _extremelyFast then
                            game:GetService('RunService').RenderStepped:wait()
                        else
                            wait()
                        end
                    end

                    local _, _, v580, v581 = u314()

                    if v566 ~= nil and v581 ~= nil and v580 ~= nil then
                        if v567 then
                            if u527 then
                                if u528 == nil or u528.ClassName ~= 'Model' then
                                    if u528 ~= nil then
                                        u545 = Vector3.new(u528.Position.X, v581.Position.Y, u528.Position.Z)
                                    end
                                else
                                    u545 = Vector3.new(u528.PrimaryPart.Position.X, v581.Position.Y, u528.PrimaryPart.Position.Z)
                                end
                            else
                                u545 = Vector3.new(u217.PrimaryPart.Position.X, v581.Position.Y, u217.PrimaryPart.Position.Z)
                            end

                            local _, v582 = rayCast(v581.CFrame * CFrame.new(0, 0, 0), CFrame.new(u545), 'directionWL', true)

                            u544 = v582

                            if u544 == nil or u544.BrickColor ~= BrickColor.new('Black') then
                                u305.CFrame = v566.CFrame
                            elseif u527 then
                                u305.CFrame = u544.CFrame
                            elseif u15 >= u309(u217.PrimaryPart.Position, v581.Position) then
                                u305.CFrame = v581.CFrame
                            else
                                u305.CFrame = u544.CFrame
                            end
                        else
                            u305.CFrame = v566.CFrame
                        end

                        v566.BrickColor = BrickColor.new('Lime green')

                        if v567 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v566.CFrame

                            u433(u305, true)
                        elseif _huge2 >= _G.smallTeleportVal or not _G.SemiTeleports or not u546 then
                            u433(u305, true)
                        elseif _G.teleportDuringBossOnly and not u26 then
                            u433(u305, true)
                        else
                            u546 = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = u305.CFrame

                            u433(u305, true)
                            spawn(function()
                                wait(0.1)

                                u546 = true
                            end)
                        end
                    end

                    while u456 < #u473 do
                        u526()

                        if _extremelyFast then
                            game:GetService('RunService').RenderStepped:wait()
                        else
                            wait()
                        end
                    end
                end
            end
            if _extremelyFast then
                game:GetService('RunService').RenderStepped:wait()
            else
                wait()
            end
        end
    end)
end)()

local function v587()
    while not game.Players.LocalPlayer:FindFirstChild('Backpack') do
        wait()
    end
    while not u25 do
        if _G.ignoreAbilityRange then
            game:GetService('RunService').RenderStepped:wait()
        else
            wait()
        end

        char = game.Players.LocalPlayer.Character

        if u217 ~= nil and u217.PrimaryPart ~= nil and (char ~= nil and char.PrimaryPart ~= nil) and (u309(u217.PrimaryPart.Position, char.PrimaryPart.Position) - u217.PrimaryPart.Size.Z / 2 < u13 or _G.ignoreAbilityRange) then
            local v583, v584, v585 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v586

                v585, v586 = v583(v584, v585)

                if v585 == nil then
                    break
                end
                if v586:FindFirstChildOfClass('RemoteEvent') and v586.cooldown.Value <= 0 then
                    v586:FindFirstChildOfClass('RemoteEvent'):FireServer()
                end
            end
        end
    end
end
local function u592()
    player = game.Players.LocalPlayer.Character:GetChildren()

    local v588, v589, v590 = pairs(player)

    while true do
        local v591

        v590, v591 = v588(v589, v590)

        if v590 == nil then
            break
        end
        if v591.ClassName == 'Accessory' and v591:FindFirstChild('swing') and v591:FindFirstChild('attackSpeed') then
            return v591.swing, v591.attackSpeed.Value
        end
    end
end

if _G.auto_attack then
    spawn(v587)
    spawn(function()
        while not u25 do
            local v593, v594 = u592()

            cooldown = v594
            sword = v593
            player = game.Players.LocalPlayer.Character

            if u217 ~= nil and u217.PrimaryPart ~= nil and (player ~= nil and player.PrimaryPart ~= nil) and (cooldown ~= nil and u309(u217.PrimaryPart.Position, player.PrimaryPart.Position) - u217.PrimaryPart.Size.Z / 2 < 13) then
                wait(cooldown / 10)
                sword:FireServer()
            end

            wait()
        end
    end)
end

local function u603(p595)
    p595:WaitForChild('precast')

    local v596 = {
        bestVal = math.huge,
        bestObj = nil,
        dist = nil,
        newPoint = nil,
    }
    local _, _, _, _ = u314()
    local v597, v598, v599 = pairs(p595:GetChildren())

    while true do
        local v600

        v599, v600 = v597(v598, v599)

        if v599 == nil then
            break
        end
        if v600.Name ~= 'hitBox' then
            if v600.Name == 'cog' then
                v600:Destroy()
            end
        else
            v596.dist = u309(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, v600.Position)
            v600.Transparency = 0.9

            if v596.dist < v596.bestVal then
                v596.bestVal = v596.dist
                v596.bestObj = v600
            end
        end
    end

    v596.bestObj.BrickColor = BrickColor.new('Lime Green')

    local _Position5 = (v596.bestObj.CFrame * CFrame.new(0, 0, v596.bestObj.Size.Z / -2 + 5)).Position
    local _Position6 = (v596.bestObj.CFrame * CFrame.new(0, 0, v596.bestObj.Size.Z / 2 - 5)).Position

    if u309(u217.PrimaryPart.Position, _Position5) >= u309(u217.PrimaryPart.Position, _Position6) then
        return _Position6
    else
        return _Position5
    end
end
local function u607(p604)
    local _Union = workspace.secondBossRockPile2.Union
    local _Union2 = workspace.secondBossRockPile1.Union

    if (_Union.Position - p604.PrimaryPart.Position).Magnitude >= (_Union2.Position - p604.PrimaryPart.Position).Magnitude then
        return _Union2
    else
        return _Union
    end
end

local u608 = {
    forceFieldCounter = 0,
    gotRock = false,
    gyzerTable = {},
    gyzerLoopRunning = false,
}

local function u613(p609)
    local _HumanoidRootPart2 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local _PrimaryPart = p609.PrimaryPart
    local _Part8 = Instance.new('Part')

    _Part8.CFrame = CFrame.new(_Part8.Position, _HumanoidRootPart2.Position)
    _Part8.CFrame = _PrimaryPart.CFrame * CFrame.new(0, 10, -60)
    _Part8.Size = Vector3.new(14, 5, 128)
    _Part8.Parent = workspace
    _Part8.CanCollide = false
    _Part8.Transparency = 1
    _Part8.Anchored = true
    _Part8.Name = 'enemyRadius'

    wait(3)
    _Part8:Destroy()
end

workspace.ChildAdded:Connect(function(p614)
    if p614.Name ~= u5 then
        if p614.Name ~= 'firstBossMoveOrb' then
            if p614.Name ~= 'secondBossSlamHitbox' then
                if p614.Name == 'thirdBossOrbCircle' or p614.Name == 'finalBossOrbShot' then
                    u267(p614, 30, 'rectangle-2')
                elseif p614.Name ~= 'firstBossFollowOrb' then
                    if p614.Name ~= 'mageProjectileBall' then
                        if p614.Name ~= 'secondBossCrescent' then
                            if p614.Name ~= 'secondBossOrb' then
                                if p614.Name ~= 'secondBossStabProjectile' then
                                    if p614.Name ~= 'gasBall' then
                                        if p614.Name ~= 'tornado' then
                                            if p614.Name ~= 'thirdBossOrbShot' then
                                                if p614.Name ~= 'Kraken Tentacle' then
                                                    if p614.Name ~= 'Kraken Tentacle' then
                                                        if p614.Name ~= 'overheadCannon' then
                                                            if p614.Name ~= 'secondBossGeyser' then
                                                                if p614.Name ~= 'secondBossOverheadRock' then
                                                                    if p614.Name ~= 'thirdBossSafeSpots' then
                                                                        if p614.Name ~= 'thirdBossSpreadLine' then
                                                                            if p614.Name ~= 'firstBossLaserPrecast' then
                                                                                if p614.Name ~= 'secondBossSlamHitbox' then
                                                                                    if p614.Name ~= 'preCast' then
                                                                                        if p614.Name ~= 'riflemanShot' then
                                                                                            if p614.Name ~= 'firstBossGatlingGunShot' then
                                                                                                if p614.Name ~= 'firstBossFlameShot' then
                                                                                                    if p614.Name ~= 'chickenMage' then
                                                                                                        if p614.Name ~= 'droneShot' then
                                                                                                            if p614.Name ~= 'poisonBomb' then
                                                                                                                if p614.Name ~= 'rangeMobShot' then
                                                                                                                    if p614.Name ~= 'chickenMage' then
                                                                                                                        if p614.Name ~= 'npcMageShot' then
                                                                                                                            if p614.Name ~= 'iceBeamIndicator' then
                                                                                                                                if p614.Name ~= 'hitIndicatorIceAOE' then
                                                                                                                                    if p614.Name ~= 'thirdBossLifeStealBeams' then
                                                                                                                                        if p614.Name ~= 'silkBlast' then
                                                                                                                                            if p614.Name ~= 'thirdBossSafeSpot' then
                                                                                                                                                if p614.Name ~= 'safeSpotCircle' then
                                                                                                                                                    if p614.Name ~= 'forceField' then
                                                                                                                                                        if p614.ClassName == 'Model' then
                                                                                                                                                            if p614.Name == 'Kraken Tentacle' then
                                                                                                                                                                return
                                                                                                                                                            end

                                                                                                                                                            p614:WaitForChild('HumanoidRootPart', 10)

                                                                                                                                                            if p614 ~= nil and p614:FindFirstChild('HumanoidRootPart') and p614 ~= game.Players.LocalPlayer.Character then
                                                                                                                                                                if p614.Name == "Azrallik's Heart" or p614.Name == 'Dragon Orb' then
                                                                                                                                                                    u213:AddTag(p614, 'Prio-Enemy')
                                                                                                                                                                elseif p614.Name == 'Blood Minion' or p614.Name == 'Infected Pirate' or (p614.Name == 'Ice Minion' or p614.Name == 'Tracking Minion') or (p614.Name == 'Stone Minion' or p614.Name == 'Flame Minion') then
                                                                                                                                                                    p614:WaitForChild('Humanoid')
                                                                                                                                                                    u267(p614, 5, 'square')

                                                                                                                                                                    p614.Humanoid.Health = 0

                                                                                                                                                                    wait(3)
                                                                                                                                                                    p614:Destroy()
                                                                                                                                                                else
                                                                                                                                                                    local v615, v616, v617 = pairs(game.Players:GetChildren())
                                                                                                                                                                    local v618 = false

                                                                                                                                                                    while true do
                                                                                                                                                                        local v619

                                                                                                                                                                        v617, v619 = v615(v616, v617)

                                                                                                                                                                        if v617 == nil then
                                                                                                                                                                            break
                                                                                                                                                                        end
                                                                                                                                                                        if p614.name == v619.Name then
                                                                                                                                                                            v618 = true
                                                                                                                                                                        end
                                                                                                                                                                    end

                                                                                                                                                                    if not v618 then
                                                                                                                                                                        u213:AddTag(p614, 'Enemy')
                                                                                                                                                                        u267(p614, 7)
                                                                                                                                                                    end
                                                                                                                                                                end
                                                                                                                                                            end
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        u608.forceFieldCounter = u608.forceFieldCounter + 1
                                                                                                                                                        u527 = true
                                                                                                                                                        u528 = p614

                                                                                                                                                        if u608.forceFieldCounter == 2 then
                                                                                                                                                            u608.forceFieldCounter = 0
                                                                                                                                                            u527 = false
                                                                                                                                                            u528 = nil
                                                                                                                                                        end
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    u527 = true
                                                                                                                                                    u528 = p614

                                                                                                                                                    while p614 ~= nil and (workspace:FindFirstChild(p614.Name) and workspace:FindFirstChild(p614.Name).Transparency > 0) do
                                                                                                                                                        wait()
                                                                                                                                                    end

                                                                                                                                                    u528 = nil
                                                                                                                                                    u527 = false
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                u527 = true

                                                                                                                                                while not p614:FindFirstChild('precast') do
                                                                                                                                                    wait()
                                                                                                                                                end

                                                                                                                                                u528 = p614

                                                                                                                                                while workspace:FindFirstChild(u528.Name) and (workspace:FindFirstChild(u528.Name):FindFirstChild('precast') and workspace:FindFirstChild(u528.Name).precast.Transparency > 0) do
                                                                                                                                                    wait()
                                                                                                                                                end

                                                                                                                                                u528 = nil
                                                                                                                                                u527 = false
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            local v620 = p614:WaitForChild('precast'):Clone()

                                                                                                                                            v620.Size = p614.precast.Size + Vector3.new(3, 5, 3)
                                                                                                                                            v620.Name = 'enemyRadius'
                                                                                                                                            v620.Transparency = 0
                                                                                                                                            v620.Parent = workspace

                                                                                                                                            wait(5.5)
                                                                                                                                            v620:Destroy()
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        local v621 = u234(u217.PrimaryPart.CFrame * CFrame.new(0, 0, -75), Vector3.new(40, 40, 150), 'enemyRadius', 'Block')

                                                                                                                                        wait(1.5)
                                                                                                                                        v621:Destroy()
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    p614:WaitForChild('Part')

                                                                                                                                    p614.Part.Transparency = 0
                                                                                                                                end
                                                                                                                            else
                                                                                                                                p614:WaitForChild('Part')

                                                                                                                                p614.Part.Size = p614.Part.Size + Vector3.new(0, 3, 3)
                                                                                                                            end
                                                                                                                        else
                                                                                                                            p614:WaitForChild('precast')

                                                                                                                            p614.precast.Size = p614.precast.Size + Vector3.new(0, 0, 3)
                                                                                                                        end
                                                                                                                    else
                                                                                                                        p614:WaitForChild('precast')

                                                                                                                        p614.precast.Size = p614.precast.Size + Vector3.new(0, 0, 3)
                                                                                                                    end
                                                                                                                else
                                                                                                                    p614:WaitForChild('precast')

                                                                                                                    p614.precast.Size = p614.precast.Size + Vector3.new(1.5, 0, 3)
                                                                                                                end
                                                                                                            else
                                                                                                                p614:WaitForChild('eggPart')
                                                                                                                p614:WaitForChild('fuse')
                                                                                                                p614:WaitForChild('PrimaryPart')
                                                                                                                p614:WaitForChild('Union')

                                                                                                                p614.eggPart.Name = 'enemyRadius'
                                                                                                                p614.fuse.Name = 'enemyRadius'
                                                                                                                p614.PrimaryPart.Name = 'enemyRadius'
                                                                                                                p614.Union.Name = 'enemyRadius'
                                                                                                            end
                                                                                                        else
                                                                                                            p614:WaitForChild('shot')
                                                                                                            wait()

                                                                                                            local v622, v623, v624 = pairs(p614:GetChildren())

                                                                                                            while true do
                                                                                                                local v625

                                                                                                                v624, v625 = v622(v623, v624)

                                                                                                                if v624 == nil then
                                                                                                                    break
                                                                                                                end
                                                                                                                if v625.Name == 'shot' then
                                                                                                                    v625.precast.Size = v625.precast.Size + Vector3.new(1.2, 0, 0)
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    else
                                                                                                        p614:WaitForChild('precast')

                                                                                                        p614.precast.Size = p614.precast.Size + Vector3.new(0, 0, 3)
                                                                                                    end
                                                                                                else
                                                                                                    p614:WaitForChild('precast')

                                                                                                    p614.precast.Size = p614.precast.Size + Vector3.new(1, 0, 0)
                                                                                                end
                                                                                            else
                                                                                                p614:WaitForChild('precast')

                                                                                                p614.precast.Size = p614.precast.Size + Vector3.new(1, 0, 0)
                                                                                            end
                                                                                        else
                                                                                            p614:WaitForChild('hitBox')

                                                                                            p614.hitBox.Size = p614.hitBox.Size + Vector3.new(0, 0, 3)
                                                                                        end
                                                                                    else
                                                                                        p614:WaitForChild('preCast')

                                                                                        p614.preCast.Size = p614.preCast.Size + Vector3.new(0, 0, 3)
                                                                                    end
                                                                                else
                                                                                    local _precast = p614:WaitForChild('precast')
                                                                                    local v627 = 0 + _precast.Size.X + _precast.Size.Z + _precast.Size.Y

                                                                                    warn(v627)

                                                                                    if v627 == 46.431163787842 then
                                                                                        u529 = true
                                                                                        u305.CFrame = CFrame.new(-2653.086, 196.526, 2325.825)

                                                                                        wait(5)

                                                                                        u529 = false
                                                                                    end
                                                                                end
                                                                            else
                                                                                p614:WaitForChild('precast')
                                                                                wait(0.5)

                                                                                if p614:FindFirstChild('precast') then
                                                                                    local v628 = p614.precast:Clone()

                                                                                    v628.Parent = workspace
                                                                                    v628.Transparency = 1
                                                                                    v628.Size = p614.precast.Size
                                                                                    v628.Name = 'enemyRadius'

                                                                                    wait(1)
                                                                                    v628:Destroy()
                                                                                end
                                                                            end
                                                                        else
                                                                            p614:WaitForChild('precast')

                                                                            local v629 = p614.precast:Clone()

                                                                            v629.Parent = workspace
                                                                            v629.Transparency = 1
                                                                            v629.Size = p614.precast.Size + Vector3.new(2, 0, 0)
                                                                            v629.Name = 'enemyRadius'

                                                                            wait(1.4)
                                                                            v629:Destroy()

                                                                            p614.precast.Name = 'precast'
                                                                        end
                                                                    else
                                                                        u529 = true

                                                                        local v630 = u603(p614)

                                                                        u305.CFrame = CFrame.new(v630)

                                                                        while workspace:FindFirstChild(p614.Name) and (workspace[p614.Name]:FindFirstChild('precast') and workspace[p614.Name]:FindFirstChild('precast').Transparency < 1) do
                                                                            local v631 = u603(p614)

                                                                            u305.CFrame = CFrame.new(v631)

                                                                            wait()
                                                                        end

                                                                        u529 = false
                                                                    end
                                                                else
                                                                    u608.gotRock = true

                                                                    while workspace:FindFirstChild('secondBossOverheadRock') and workspace.secondBossRockPile2.Union.Transparency ~= 1 do
                                                                        wait()
                                                                    end

                                                                    u608.gotRock = false
                                                                end
                                                            else
                                                                p614:WaitForChild('PrimaryPart')
                                                                spawn(function()
                                                                    local v632 = #u608.gyzerTable + 1

                                                                    u18(u608.gyzerTable, p614)

                                                                    while p614 ~= nil and p614.Parent ~= nil do
                                                                        wait()
                                                                    end

                                                                    print('remove gyzzer instance')
                                                                    u19(u608.gyzerTable, v632)
                                                                end)
                                                                spawn(function()
                                                                    if not u608.gyzerLoopRunning then
                                                                        u527 = true
                                                                        u608.gyzerLoopRunning = true

                                                                        while workspace.secondBossRockPile2.Union.Transparency ~= 1 and #u608.gyzerTable ~= 0 do
                                                                            if u608.gotRock then
                                                                                u528 = u608.gyzerTable[#u608.gyzerTable]
                                                                            else
                                                                                u528 = u607(u608.gyzerTable[#u608.gyzerTable])
                                                                            end

                                                                            wait()
                                                                        end

                                                                        u608.gyzerLoopRunning = false

                                                                        if #u608.gyzerTable == 0 or workspace.secondBossRockPile2.Union.Transparency == 1 then
                                                                            u528 = nil
                                                                            u527 = false
                                                                        end
                                                                    end
                                                                end)
                                                            end
                                                        else
                                                            print('got cannon')

                                                            u527 = true
                                                            u528 = game:GetService('Workspace').playerFireCannon.ring

                                                            spawn(function()
                                                                while p614 ~= nil and p614.Parent ~= nil do
                                                                    wait()
                                                                end

                                                                if workspace.playerFireCannonHitMark.Transparency ~= 1 then
                                                                    print('chara prob died, get new cannon')

                                                                    u528 = workspace.playerPickupCannonballRing
                                                                    u527 = true
                                                                else
                                                                    print('obj done')

                                                                    u528 = nil
                                                                    u527 = false
                                                                end
                                                            end)
                                                        end
                                                    else
                                                        p614:WaitForChild('Humanoid')

                                                        local v633 = true

                                                        while p614.Parent ~= nil and (p614:FindFirstChild('Humanoid') and 0 < p614.Humanoid.Health) do
                                                            if #p614.Humanoid:GetPlayingAnimationTracks() ~= 2 or not v633 then
                                                                print('not attacking')
                                                            else
                                                                u613(p614)
                                                                wait(3)

                                                                v633 = true
                                                            end

                                                            wait()
                                                        end
                                                    end
                                                else
                                                    p614:WaitForChild('Humanoid')

                                                    local v634 = true

                                                    while p614.Parent ~= nil and (p614:FindFirstChild('Humanoid') and 0 < p614.Humanoid.Health) do
                                                        if #p614.Humanoid:GetPlayingAnimationTracks() ~= 2 or not v634 then
                                                            print('not attacking')
                                                        else
                                                            u613(p614)
                                                            wait(3)

                                                            v634 = true
                                                        end

                                                        wait()
                                                    end
                                                end
                                            else
                                                u267(p614, 26, 'rectanglev2')
                                            end
                                        else
                                            u267(p614, 20, 'square')
                                        end
                                    else
                                        u267(p614, 10, 'rectangle')
                                    end
                                else
                                    u267(p614, 15, 'rectangle-2')
                                end
                            else
                                u267(p614, 12, 'rectanglev3')
                            end
                        else
                            u267(p614, 12, 'square')
                        end
                    else
                        u267(p614, 10, 'rectangle')
                    end
                else
                    u267(p614, 25, 'rectangle-2')
                end
            else
                local _hitBox = p614:WaitForChild('hitBox')

                if _hitBox.Size.Z == 10 and _hitBox.Size.Y == 150 and (_hitBox.Size.X % 10 == 0 and 10 <= _hitBox.Size.X) and _hitBox.Size.X <= 150 then
                    local _Part9 = Instance.new('Part')

                    _Part9.Anchored = true
                    _Part9.CanCollide = false
                    _Part9.Transparency = 0.5
                    _Part9.CFrame = _hitBox.CFrame
                    _Part9.Size = Vector3.new(_hitBox.Size.X + 7, 5, 800)
                    _Part9.Name = 'enemyRadius'
                    _Part9.Parent = workspace

                    repeat
                        wait()
                    until p614 == nil or not p614:IsDescendantOf(workspace)

                    _Part9:Destroy()
                end
            end
        else
            u267(p614, 27, 'rectanglev3')
        end
    end
end)
Game:GetService('LogService').MessageOut:Connect(function(p637)
    if string.find(p637, 'Server Kick Message:') then
        game:GetService('TeleportService'):Teleport(2414851778)
    end
end)
spawn(u193)
u214.Blocked:Connect(v400)
game:GetService('Players')
game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Connect(u397)
game.Players.LocalPlayer.CharacterAdded:Connect(function(_)
    local _, _, v638, _ = u314()

    v638.MoveToFinished:Connect(u397)

    v638.WalkSpeed = u17
    v638.AutoRotate = false

    spawn(u193)
end)

function oceanFix()
    u224(CFrame.new(-2530.18213, 217.300583, 2292.73022, 0.978144467, 0, 0.207926437, 0, 1, 0, -0.207926437, 0, 0.978144467), Vector3.new(19.569891, 131.600006, 27.9050236))
    u224(CFrame.new(-783.23999, 69.9086685, 2350.23462, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(372.139984, 128.209991, 15.29))
    u224(CFrame.new(-2038.21997, 198.318665, 2348.7041, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(50.9199371, 138.75, 9.52999496))
    u224(CFrame.new(-2032.505, 198.318665, 2303.51416, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(39.4899368, 138.75, 9.52999496))
    u224(CFrame.new(-1876.875, 54.728653, 2323.83374, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3.30993915, 161.48999, 138.289993))
    u224(CFrame.new(-1944.46509, 54.728653, 2256.06372, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(3.30993915, 161.48999, 138.289993))
    u224(CFrame.new(-2013.51514, 54.728653, 2323.55371, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(3.30993915, 161.48999, 138.289993))
    u224(CFrame.new(-1940.46277, 186.948654, 2392.69385, 0, 0, 1, 0, 1, 0, -1, 0, 0), Vector3.new(3.30993915, 161.48999, 149.454834))
    u224(CFrame.new(-2018.40503, 198.318665, 2369.28418, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(11.2899389, 138.75, 50.3699913))
    u224(CFrame.new(-2018.40503, 198.318665, 2276.61914, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(11.2899389, 138.75, 63.3199921))
    u224(CFrame.new(-1936.995, 162.913666, 2251.38916, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(11.2899389, 67.9399948, 155.979996))
    u224(CFrame.new(-1855.01501, 162.913666, 2254.21924, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(11.2899389, 67.9399948, 44.0399971))
    u224(CFrame.new(-1835.495, 162.913666, 2321.28931, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(11.2899389, 67.9399948, 129.720001))
    u224(CFrame.new(-1270.09351, 52.6868362, 2227.28467, -0.998307824, 0, 0.058156427, 0, 1, 0, -0.058156427, 0, -0.998307824), Vector3.new(2.08999944, 162.653656, 36.7399902))
    u224(CFrame.new(-1277.76965, 52.6868362, 2242.85889, 0.0161704421, 0, 0.999869287, 0, 1, 0, -0.999869287, 0, 0.0161704421), Vector3.new(9.21999931, 162.653656, 26.4699898))
    u224(CFrame.new(-1238.92224, 52.6868362, 2468.63843, -0.999989033, 0, 0.00474769808, 0, 1, 0, -0.00474769808, 0, -0.999989033), Vector3.new(9.21999931, 162.653656, 107.419983))
    u224(CFrame.new(-1241.41284, 52.6868362, 2419.99854, 0.0148379207, 0, 0.999890029, 0, 1, 0, -0.999890029, 0, 0.0148379207), Vector3.new(10.3999996, 162.653656, 28.6099815))
    u224(CFrame.new(-1261.41321, 52.6868362, 2393.58862, 0.891518176, 0, 0.452984959, 0, 1, 0, -0.452984959, 0, 0.891518176), Vector3.new(9.21999931, 162.653656, 65.5099792))
    u224(CFrame.new(-1284.52197, 52.6868362, 2302.46655, 0.990956247, 0, 0.134185284, 0, 1, 0, -0.134185284, 0, 0.990956247), Vector3.new(9.21999931, 162.653656, 129.029984))
    u224(CFrame.new(-1263.70508, 69.9086685, 2329.61914, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(46.2999954, 128.209991, 13.9499998))
    u224(CFrame.new(-1265.06799, 52.6868362, 2238.36621, 0.993771136, 0, 0.111440428, 0, 1, 0, -0.111440428, 0, 0.993771136), Vector3.new(1.61999965, 162.653656, 139.828094))
    u224(CFrame.new(-1227.82751, 52.6868362, 2201.66064, 0.993771136, 0, 0.111440428, 0, 1, 0, -0.111440428, 0, 0.993771136), Vector3.new(9.21999931, 162.653656, 212.23999))
    u224(CFrame.new(-1292.28625, 52.6868362, 2105.9895, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(9.21999931, 162.653656, 141.559982))
    u224(CFrame.new(-1364.03931, 52.6868362, 2176.00854, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(9.21999931, 162.653656, 141.559982))
    u224(CFrame.new(-1348.71521, 52.6868362, 2243.71948, 0, 0, 1, 0, 1, 0, -1, 0, 0), Vector3.new(9.21999931, 162.653656, 29.5399895))
    u224(CFrame.new(-1332.10864, 52.6868362, 2284.60376, 0.990956247, 0, 0.134185284, 0, 1, 0, -0.134185284, 0, 0.990956247), Vector3.new(9.21999931, 162.653656, 90.7599869))
    u224(CFrame.new(-1331.63562, 52.6868362, 2374.04199, 0.991267025, 0, -0.131870151, 0, 1, 0, 0.131870151, 0, 0.991267025), Vector3.new(9.21999931, 162.653656, 92.5399857))
    u224(CFrame.new(-1337.19312, 52.6868362, 2448.06567, 0.999832571, 0, 0.0182995033, 0, 1, 0, -0.0182995033, 0, 0.999832571), Vector3.new(9.21999931, 162.653656, 64.6399918))
    u224(CFrame.new(-1397.48499, 65.1518402, 2454.98486, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(60.1099968, 137.723663, 7.00999975))
    u224(CFrame.new(-1413.17004, 65.1518402, 2428.40991, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(6.95999908, 137.723663, 38.3799973))
    u224(CFrame.new(-1482.84009, 65.1518402, 2428.40991, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(6.95999908, 137.723663, 21.1599998))
    u224(CFrame.new(-1491.44507, 65.1518402, 2475.6748, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(101.489998, 137.723663, 3.94999886))
    u224(CFrame.new(-1443.73999, 65.1518402, 2525.38989, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(9.71999931, 137.723663, 99.5199966))
    u224(CFrame.new(-1831.43005, 101.343674, 2414.46924, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(10.3799305, 191.080002, 57.9199944))
    u224(CFrame.new(-1360.9574, 52.6868362, 2520.39917, 0.0592788458, 0, -0.998241484, 0, 1, 0, 0.998241484, 0, 0.0592788458), Vector3.new(9.71999931, 162.653656, 86.7799988))
    u224(CFrame.new(-1364.93335, 52.6868362, 2477.90015, 0.0592788458, 0, -0.998241484, 0, 1, 0, 0.998241484, 0, 0.0592788458), Vector3.new(9.21999931, 162.653656, 64.6399918))
    u224(CFrame.new(-1280.71997, 52.6868362, 2518.2002, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(9.71999931, 162.653656, 86.7799988))
    u224(CFrame.new(-1835.495, 101.343674, 2365.10938, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(11.2899389, 191.080002, 42.0799942))
    u224(CFrame.new(-1853.7251, 101.343674, 2437.48438, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(54.9699287, 191.080002, 11.8899946))
    u224(CFrame.new(-1467.53931, 65.1518402, 2402.24146, 0.979213893, 0, -0.202830359, 0, 1, 0, 0.202830359, 0, 0.979213893), Vector3.new(6.95999908, 137.723663, 60.1899948))
    u224(CFrame.new(-1858.97498, 62.0486679, 2350.79932, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(38.1499329, 112.48999, 13.4599934))
    u224(CFrame.new(-1853.11987, 101.343674, 2213.18994, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(10.3799305, 191.080002, 57.9199944))
    u224(CFrame.new(-2055.80542, 101.343674, 2279.81958, 0, 0, 1, 0, 1, 0, -1, 0, 0), Vector3.new(35.4999313, 191.080002, 11.8899946))
    u224(CFrame.new(-2058.75537, 101.343674, 2238.39453, 0, 0, 1, 0, 1, 0, -1, 0, 0), Vector3.new(54.9699287, 191.080002, 11.8899946))
    u224(CFrame.new(-2031.19507, 101.343674, 2212.02441, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(48.0899277, 191.080002, 11.8899946))
    u224(CFrame.new(-1830.10474, 101.343674, 2253.21997, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(90.4399261, 191.080002, 11.8899946))
    u224(CFrame.new(-1944.03992, 101.343674, 2216.88501, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(126.819931, 191.080002, 11.8899946))
    u224(CFrame.new(-2034.54504, 101.343674, 2439.59448, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(54.9699287, 191.080002, 11.8899946))
    u224(CFrame.new(-2056.00513, 101.343674, 2367.26953, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(42.0799294, 191.080002, 11.8899946))
    u224(CFrame.new(-2060.91504, 101.343674, 2409.96436, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(48.0899277, 191.080002, 11.8899946))
    u224(CFrame.new(-2530.13501, 217.300583, 2359.55347, -0.978144407, 0, 0.207926437, 0, 1, 0, -0.207926437, 0, -0.978144407), Vector3.new(19.569891, 131.600006, 28.2675056))
    u224(CFrame.new(-2814.97021, 217.300583, 2295.89038, -0.978144407, 0, 0.207926437, 0, 1, 0, -0.207926437, 0, -0.978144407), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2538.92798, 217.300583, 2385.58179, -0.913549781, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, -0.913549781), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2805.54321, 217.300583, 2266.87744, -0.913549781, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, -0.913549781), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2554.1814, 217.300583, 2412.00098, -0.808997631, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, -0.808997631), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2790.29028, 217.300583, 2240.4585, -0.808997631, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, -0.808997631), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2574.59448, 217.300583, 2434.67188, -0.66911006, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, -0.66911006), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2769.87793, 217.300583, 2217.78784, -0.66911006, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, -0.66911006), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2599.27612, 217.300583, 2452.60132, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2745.19702, 217.300583, 2199.85962, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2717.32861, 217.300583, 2187.45264, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2627.14502, 217.300583, 2465.00854, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2687.49023, 217.300583, 2181.1106, -0.104543328, 0, 0.994520426, 0, 1, 0, -0.994520426, 0, -0.104543328), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2656.98462, 217.300583, 2471.35083, -0.104543328, 0, 0.994520426, 0, 1, 0, -0.994520426, 0, -0.104543328), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2687.48999, 217.300583, 2471.35059, 0.10454309, 0, 0.994520426, 0, 1, 0, -0.994520426, 0, 0.10454309), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2656.98462, 217.300583, 2181.11084, 0.10454309, 0, 0.994520426, 0, 1, 0, -0.994520426, 0, 0.10454309), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2717.32886, 217.300583, 2465.00806, 0.309060872, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, 0.309060872), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2627.146, 217.300583, 2187.45313, 0.309060872, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, 0.309060872), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2745.19629, 217.300583, 2452.59839, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2599.27905, 217.300583, 2199.8623, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2769.875, 217.300583, 2434.66724, 0.669109941, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, 0.669109941), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2574.60059, 217.300583, 2217.79272, 0.669109941, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, 0.669109941), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2554.18921, 217.300583, 2240.4624, 0.808997452, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, 0.808997452), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2790.28687, 217.300583, 2411.99756, 0.808997452, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, 0.808997452), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2538.93652, 217.300583, 2266.88037, 0.913549721, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, 0.913549721), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2805.53906, 217.300583, 2385.57935, 0.913549721, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, 0.913549721), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-2814.96558, 217.300583, 2356.56763, 0.978144467, 0, 0.207926437, 0, 1, 0, -0.207926437, 0, 0.978144467), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-1465.67212, 65.1518402, 2326.36108, 0.418038607, 0, 0.908429265, 0, 1, 0, -0.908429265, 0, 0.418038607), Vector3.new(6.95999908, 137.723663, 119.360001))
    u224(CFrame.new(-1945.50989, 101.343674, 2432.42505, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(128.319931, 191.080002, 11.8899946))
    u224(CFrame.new(-2297.98022, 144.288208, 2350.95459, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(476.47998, 282.413544, 13.9443436))
    u224(CFrame.new(-2818.1543, 217.300583, 2326.22998, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(19.569891, 131.600006, 34.3708916))
    u224(CFrame.new(-1131.17993, 69.9086685, 2381.5293, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(20.5199738, 128.209991, 74.9199982))
    u224(CFrame.new(-1420.72083, 65.1518402, 2388.11353, 0.979213893, 0, -0.202830359, 0, 1, 0, 0.202830359, 0, 0.979213893), Vector3.new(6.95999908, 137.723663, 81.0299988))
    u224(CFrame.new(-961.265015, 69.9086685, 2380.78955, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(16.0899849, 128.209991, 76.3999939))
    u224(CFrame.new(-1189.79504, 69.9086685, 2350.74414, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(137.75, 128.209991, 13.9499998))
    u224(CFrame.new(-1169.94495, 69.9086685, 2300.8855, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(98.0499878, 128.209991, 13.9499998))
    u224(CFrame.new(-1680.02002, 101.343666, 2350.79932, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(322.239929, 191.079987, 13.4599934))
    u224(CFrame.new(-1676.88501, 101.343666, 2301.47925, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(328.509979, 191.079987, 13.4599934))
    u224(CFrame.new(-783.23999, 69.9086685, 2301.69507, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(372.139984, 128.209991, 15.29))
    u224(CFrame.new(-961.265015, 69.9086685, 2271.14014, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(16.0899849, 128.209991, 76.3999939))
    u224(CFrame.new(-1489.99719, 65.1518402, 2361.78638, 0.418038607, 0, 0.908429265, 0, 1, 0, -0.908429265, 0, 0.418038607), Vector3.new(6.95999908, 137.723663, 67.8799973))
    u224(CFrame.new(-1131.17993, 69.9086685, 2270.40039, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(20.5199738, 128.209991, 74.9199982))
    u224(CFrame.new(-1047.32996, 69.9086685, 2241.58521, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(188.219971, 128.209991, 17.2899971))
    u224(CFrame.new(-2294.77515, 144.288223, 2300.9751, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(489.929993, 282.413544, 13.9443436))
    u224(CFrame.new(-1047.32996, 69.9086685, 2410.34448, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(188.219971, 128.209991, 17.2899971))
    u224(CFrame.new(-2055.80542, 63.3636742, 2325.40967, 0, 0, 1, 0, 1, 0, -1, 0, 0), Vector3.new(126.679932, 115.119995, 11.8899946))
    u224(CFrame.new(-605.989746, 69.9086685, 2325.82007, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(17.639555, 128.209991, 64.1190643))
    u224(CFrame.new(-908.832153, 19.1552086, 2328.98291, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(623.32428, 26.7030716, 180.023346))
    u224(CFrame.new(-1240.33691, 19.1552086, 2326.72632, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(44.9513016, 26.7030716, 38.2773705))
    u224(CFrame.new(-1246.12073, 2.28969336, 2217.56665, -0.994147718, -0.0294061154, -0.103950247, 0.00436780788, 0.950511336, -0.310659111, 0.107941173, -0.309295058, -0.944820225), Vector3.new(43.4626274, 0.818213403, 196.637329))
    u224(CFrame.new(-1283.27283, -26.5007706, 2155.53857, -0.785861552, -0.612678826, -0.0839429274, -0.561007082, 0.763435185, -0.320059299, 0.260178566, -0.204429671, -0.943671346), Vector3.new(22.6772556, 2.00851345, 39.9963722))
    u224(CFrame.new(-1277.3429, -23.8319092, 2181.02539, -0.785853446, -0.528600097, 0.320961922, -0.561008096, 0.390993059, -0.729653716, 0.260201216, -0.75346303, -0.603811979), Vector3.new(24.3937035, 18.8500004, 1.07342899))
    u224(CFrame.new(-1279.44299, -28.572773, 2173.7793, -1.00000024, 0, 0, 0, 1, -5.96046448e-8, 0, 5.96046448e-8, -1), Vector3.new(171.743622, 4.61810207, 136.415924))
    u224(CFrame.new(-1312.07739, -23.9459343, 2329.72607, -0.99006927, 0.0131960101, -0.13996321, 0.0200383328, 0.998665988, -0.0475906916, 0.139148533, -0.0499224477, -0.98901242), Vector3.new(93.4838867, 4.94735384, 208.818771))
    u224(CFrame.new(-1286.50586, -19.7647514, 2468.22461, -1.00000107, -2.79396772e-9, 0, 2.79396772e-9, 1.00000012, -2.38418579e-7, 0, 2.38418579e-7, -1.00000012), Vector3.new(93.4838867, 7.73166227, 87.2299957))
    u224(CFrame.new(-1286.50586, -20.5263233, 2466.67285, -1.00000107, -2.79396772e-9, 0, 2.79396772e-9, 1.00000012, -2.38418579e-7, 0, 2.38418579e-7, -1.00000012), Vector3.new(93.4838867, 8.40604877, 90.3334351))
    u224(CFrame.new(-1286.50586, -20.8730373, 2463.3562, -1.00000107, -2.79396772e-9, 0, 2.79396772e-9, 1.00000012, -2.38418579e-7, 0, 2.38418579e-7, -1.00000012), Vector3.new(93.4838867, 7.71262121, 96.9668121))
    u224(CFrame.new(-1286.50586, -21.1191273, 2460.82324, -1.00000107, -2.79396772e-9, 0, 2.79396772e-9, 1.00000012, -2.38418579e-7, 0, 2.38418579e-7, -1.00000012), Vector3.new(93.4838867, 7.21999979, 102.032936))
    u224(CFrame.new(-1357.41565, -10.7322168, 2529.74609, -0.974118412, 0.215022326, -0.0697357282, 0.21412079, 0.976597607, 0.0202486329, 0.0724577755, 0.00479363743, -0.99736017), Vector3.new(87.857872, 5.51671267, 107.359512))
    u224(CFrame.new(-1349.19824, 38.4995384, 2479.56812, -0.974118412, 0.215022326, -0.0697357282, 0.21412079, 0.976597607, 0.0202486329, 0.0724577755, 0.00479363743, -0.99736017), Vector3.new(85.6598358, 104.72879, 6.42000008))
    u224(CFrame.new(-1453.97693, 1.46386302, 2476.76196, -1.00000453, 9.7497832e-9, -1.49011612e-8, -9.7497832e-9, 1.00000048, -9.550713e-7, -1.49011612e-8, 9.550713e-7, -1.00000036), Vector3.new(109.169998, 0.424085021, 108.226189))
    u224(CFrame.new(-1454.32715, 1.63537717, 2476.76196, -1.00000453, 9.7497832e-9, -1.49011612e-8, -9.7497832e-9, 1.00000048, -9.550713e-7, -1.49011612e-8, 9.550713e-7, -1.00000036), Vector3.new(108.46965, 0.767113209, 108.226189))
    u224(CFrame.new(-1454.69763, 1.91353273, 2476.76196, -1.00000453, 9.7497832e-9, -1.49011612e-8, -9.7497832e-9, 1.00000048, -9.550713e-7, -1.49011612e-8, 9.550713e-7, -1.00000036), Vector3.new(107.728615, 1.32342398, 108.226189))
    u224(CFrame.new(-1443.73267, 10.8826275, 2394.87671, -0.977953851, -0.0425007194, 0.204492941, 0.00425821915, 0.974818051, 0.222961426, -0.208821028, 0.218918473, -0.953138232), Vector3.new(36.4249535, 6.1712513, 130.547668))
    u224(CFrame.new(-1427.18213, 70.4603043, 2405.68164, -0.977953851, -0.0425007194, 0.204492941, 0.00425821915, 0.974818051, 0.222961426, -0.208821028, 0.218918473, -0.953138232), Vector3.new(0.0500000007, 125.649826, 117.808311))
    u224(CFrame.new(-1487.76672, 20.8402691, 2338.7666, -0.893995583, 0.14297086, 0.424654365, 0.145493388, 0.988999486, -0.0266750585, -0.423796773, 0.0379370227, -0.90496242), Vector3.new(88.661377, 9.92626381, 41.2240219))
    u224(CFrame.new(-1700.78955, 29.0303326, 2325.34424, -1.00000012, 2.97213205e-8, 1.8844730200000002e-8, -2.97213205e-8, 0.999999821, -1.8626451499999999e-9, 1.8844730200000002e-8, 1.8626451499999999e-9, -0.999999881), Vector3.new(371.852844, 5.56997252, 53.5832138))
    u224(CFrame.new(-1529.57568, 28.8269882, 2325.34424, -1.00000012, 2.97213205e-8, 1.8844730200000002e-8, -2.97213205e-8, 0.999999821, -1.8626451499999999e-9, 1.8844730200000002e-8, 1.8626451499999999e-9, -0.999999881), Vector3.new(31.7297535, 5.16327238, 53.5832138))
    u224(CFrame.new(-1528.28796, 28.558382, 2325.34424, -1.00000012, 2.97213205e-8, 1.8844730200000002e-8, -2.97213205e-8, 0.999999821, -1.8626451499999999e-9, 1.8844730200000002e-8, 1.8626451499999999e-9, -0.999999881), Vector3.new(31.3896217, 4.62606096, 53.5832138))
    u224(CFrame.new(-1527.79773, 28.3058643, 2325.34424, -1.00000012, 2.97213205e-8, 1.8844730200000002e-8, -2.97213205e-8, 0.999999821, -1.8626451499999999e-9, 1.8844730200000002e-8, 1.8626451499999999e-9, -0.999999881), Vector3.new(32.3699989, 4.12102604, 53.5832138))
    u224(CFrame.new(-1527.37683, 28.102354, 2325.34424, -1.00000012, 2.97213205e-8, 1.8844730200000002e-8, -2.97213205e-8, 0.999999821, -1.8626451499999999e-9, 1.8844730200000002e-8, 1.8626451499999999e-9, -0.999999881), Vector3.new(33.211895, 3.71400523, 53.5832138))
    u224(CFrame.new(-1526.84424, 27.9374313, 2325.34424, -1.00000012, 2.97213205e-8, 1.8844730200000002e-8, -2.97213205e-8, 0.999999821, -1.8626451499999999e-9, 1.8844730200000002e-8, 1.8626451499999999e-9, -0.999999881), Vector3.new(34.2771111, 3.38415861, 53.5832138))
    u224(CFrame.new(-1855.52856, 37.2675323, 2286.03491, -1.00000024, -8.24050039e-6, 0.0000351449016, 4.88978958e-6, 0.932308853, 0.36166212, -0.0000357189347, 0.36166209, -0.932308912), Vector3.new(44.2060127, 6.02838516, 49.6322327))
    u224(CFrame.new(-1858.3186, 46.4191093, 2232.7439, -1.00000048, 1.18888238e-7, 7.53789209e-8, -1.18888238e-7, 0.999999285, 0, 7.53789209e-8, 0, -0.999999404), Vector3.new(56.2976837, 5.61337185, 63.1329041))
    u224(CFrame.new(-1938.64209, 59.3698273, 2253.55371, -0.975066185, 0.221918508, 1.4699873e-7, 0.221918583, 0.975063741, -3.34559616e-8, 1.50757813e-7, -8.96166618e-15, -0.999998748), Vector3.new(141.891571, 6.28999996, 63.1329041))
    u224(CFrame.new(-2031.08984, 76.6613846, 2259.55518, -1.00000191, 4.61935997e-7, 3.01515627e-7, -4.61935997e-7, 0.999997079, 5.15942202e-14, 3.01515627e-7, -5.15942202e-14, -0.999997497), Vector3.new(48.2068825, 3.13832617, 97.6713715))
    u224(CFrame.new(-2037.69958, 90.5315781, 2323.69995, -1.00000381, -4.73108639e-6, -0.0000501252653, 4.97483006e-6, 0.975067258, -0.221883357, 0.0000515119791, -0.221883178, -0.975068092), Vector3.new(48.2068825, 4.05999994, 133.019562))
    u224(CFrame.new(-2035.52686, 103.249794, 2413.302, -1, 1.79664345e-14, 1.13686838e-13, -1.79664345e-14, 1, -8.8817842e-16, 1.13686838e-13, 8.8817842e-16, -1), Vector3.new(48.8988571, 8.13232899, 50.8320503))
    u224(CFrame.new(-1952.27319, 116.819923, 2413.41699, -0.97507298, -0.221884459, 0.0000584738664, -0.221884459, 0.97507298, 7.50656818e-6, -0.0000586818787, -5.65499067e-6, -1), Vector3.new(144.940002, 7.03901482, 40.3282356))
    u224(CFrame.new(-1857.91382, 134.10907, 2348.59229, -0.99999994, 3.59328656e-14, 2.27373662e-13, -3.5932869e-14, 1, -1.77635684e-15, 2.27373675e-13, 1.77635684e-15, -1), Vector3.new(56.4390755, 4.47680473, 177.607712))
    u224(CFrame.new(-1873.65051, 136.331314, 2318.76172, -0.855346203, 0.518056273, 7.742519730000001e-13, 0.518056035, 0.85534656, -4.77246931e-13, 9.09494539e-13, 7.10542736e-15, -1), Vector3.new(6.69999218, 0.0500000007, 150.532593))
    u224(CFrame.new(-1946.55249, 137.231415, 2319.61206, -0.999999166, 2.98023224e-8, 1.81898875e-12, -2.98023224e-8, 1, -1.42108547e-14, 1.81898875e-12, 1.42108547e-14, -1), Vector3.new(137.636246, 3.40450764, 150.532593))
    u224(CFrame.new(-1945.93896, 137.022552, 2319.61206, -0.999999166, 2.98023224e-8, 1.81898875e-12, -2.98023224e-8, 1, -1.42108547e-14, 1.81898875e-12, 1.42108547e-14, -1), Vector3.new(138.863373, 2.98677969, 150.532593))
    u224(CFrame.new(-2190.23413, 136.711761, 2325.40161, -0.999999166, 2.98023224e-8, 1.81898875e-12, -2.98023224e-8, 1, -1.42108547e-14, 1.81898875e-12, 1.42108547e-14, -1), Vector3.new(366.358093, 2.36521196, 39.7483025))
    u224(CFrame.new(-2674.35205, 192.732971, 2320.76904, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(279.199799, 6.58692169, 290.013947))
    u224(CFrame.new(-2672.68774, 192.732971, 2320.76904, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(282.528381, 6.58692169, 290.013947))
    u224(CFrame.new(-2398.11328, 162.203232, 2325.17139, 0.970287263, 0.241955817, 0, -0.241955817, 0.970287263, 0, 0, 0, 1.00000012), Vector3.new(274.739532, 0.558954656, 51.0499992))
    u11(workspace, 'borders'):Destroy()

    if _G.destroy_map then
        workspace.Terrain:Clear()

        local v639, v640, v641 = pairs(workspace:GetChildren())

        while true do
            local v642

            v641, v642 = v639(v640, v641)

            if v641 == nil then
                break
            end
            if v642.Name ~= 'lastBossSafeZones' and v642.Name ~= 'Terrain' and (v642.ClassName == 'Model' or v642:IsA('BasePart')) and (v642 ~= game.Players.LocalPlayer.Character and v642.Name ~= u5) then
                v642:Destroy()
            end
        end
    end

    while#game:GetService('Workspace').dungeon.room3.enemyFolder:GetChildren() ~= 41 do
        wait(1)
    end

    u529 = true
    u305.CFrame = CFrame.new(-1240.337, 7.648, 2246.159)

    while wait() do
        local _, _, _, v643 = u314()

        if v643 and v643.Position.Y < 21 then
            break
        end
    end

    u529 = false

    while#game:GetService('Workspace').dungeon.room5.enemyFolder:GetChildren() ~= 16 do
        wait(1)
    end

    u529 = true
    u305.CFrame = CFrame.new(-1858.319, 46.419, 2232.744)

    while wait() do
        local _, _, _, v644 = u314()

        if v644 and v644.Position.Y < 38 then
            break
        end
    end

    u529 = false
end
function volcanicFix()
    u224(CFrame.new(-1233.02295, 2.79844761, 705.183167, -0.999982297, -6.14493274e-8, -0.00593414903, -6.1298465e-8, 1, -2.56039989e-8, 0.00593414903, -2.52398049e-8, -0.999982297), Vector3.new(148.029877, 17.849968, 161.050003))
    u224(CFrame.new(-1127.02625, -2.89132118, 699.554077, -0.981609523, 0.190805554, -0.00593414763, 0.190808892, 0.981627166, -2.57277861e-8, 0.0058251163, -0.00113231386, -0.999982119), Vector3.new(69.5298767, 18.849968, 35.0500031))
    u224(CFrame.new(-793.540466, -8.58208942, 699.325134, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(606.529907, 18.849968, 38.5500031))
    u224(CFrame.new(-417.026733, -7.0820694, 700.590942, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(157.529907, 18.849968, 158.550003))
    u224(CFrame.new(-498.050507, 0.667925298, 696.821716, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(5.52990723, 2.34996796, 37.0500031))
    u224(CFrame.new(-498.800507, 0.417925298, 696.826172, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(7.02990723, 1.84996796, 37.0500031))
    u224(CFrame.new(135.459915, -8.58203983, 696.812256, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(280.529907, 18.849968, 44.5500031))
    u224(CFrame.new(273.457336, -8.0820322, 695.993347, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(4.52990723, 19.849968, 44.5500031))
    u224(CFrame.new(276.957275, -7.5820322, 695.972595, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(9.52990723, 20.849968, 44.5500031))
    u224(CFrame.new(289.707031, -6.58203173, 695.896912, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(21.0299072, 22.849968, 44.5500031))
    u224(CFrame.new(-12.0373135, -8.08204746, 697.687561, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(44.5299072, 19.849968, 44.5500031))
    u224(CFrame.new(-14.5372658, -7.58204746, 697.702393, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(39.5299072, 20.849968, 44.5500031))
    u224(CFrame.new(-16.5372276, -7.08204746, 697.714233, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(35.5299072, 21.849968, 44.5500031))
    u224(CFrame.new(-19.0371799, -6.58204746, 697.729065, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(30.5299072, 22.849968, 44.5500031))
    u224(CFrame.new(-24.2870808, -6.08204794, 697.760193, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(20.0299072, 23.849968, 44.5500031))
    u224(CFrame.new(-40.2867775, -5.83204842, 697.855164, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(39.0299072, 24.349968, 44.5500031))
    u224(CFrame.new(-44.036705, -6.58204842, 697.877441, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(46.5299072, 22.849968, 44.5500031))
    u224(CFrame.new(-48.0366287, -7.08204889, 697.901123, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(54.5299072, 21.849968, 44.5500031))
    u224(CFrame.new(-65.2863083, -7.33204985, 698.003479, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(89.0299072, 21.349968, 44.5500031))
    u224(CFrame.new(-80.536026, -7.58205032, 698.093994, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(119.529907, 20.849968, 44.5500031))
    u224(CFrame.new(-88.5358734, -8.08205032, 698.141479, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(135.529907, 19.849968, 44.5500031))
    u224(CFrame.new(-113.535408, -8.58205223, 698.289856, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(185.529907, 18.849968, 44.5500031))
    u224(CFrame.new(-215.033478, -8.08205795, 698.89209, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(26.5299072, 19.849968, 44.5500031))
    u224(CFrame.new(-243.282944, -7.83205986, 699.059753, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(32.0299072, 20.349968, 44.5500031))
    u224(CFrame.new(-270.78241, -7.33206129, 699.222961, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(49.0299072, 21.349968, 44.5500031))
    u224(CFrame.new(-309.781677, -7.0820632, 699.454407, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(53.0299072, 21.849968, 44.5500031))
    u224(CFrame.new(-313.281616, -6.5820632, 699.475159, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(46.0299072, 22.849968, 44.5500031))
    u224(CFrame.new(-314.781586, -6.3320632, 699.48407, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(43.0299072, 23.349968, 44.5500031))
    u224(CFrame.new(-317.031555, -5.8320632, 699.497437, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(38.5299072, 24.349968, 44.5500031))
    u224(CFrame.new(-319.531494, -5.5820632, 699.512268, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(33.5299072, 24.849968, 44.5500031))
    u224(CFrame.new(-320.531464, -6.0820632, 699.518188, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(35.5299072, 23.849968, 44.5500031))
    u224(CFrame.new(-323.031403, -6.5820632, 699.53302, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(40.5299072, 22.849968, 44.5500031))
    u224(CFrame.new(-326.776886, -6.5820632, 700.305298, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(48.0299072, 22.849968, 76.0500031))
    u224(CFrame.new(-330.281281, -7.0820632, 699.57605, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(55.0299072, 21.849968, 90.5500031))
    u224(CFrame.new(-2341.5, 9.19974613, 695.25, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(197, 3, 194.5))
    u224(CFrame.new(-2244.75, 10.1997461, 695.25, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(10.5, 1, 194.5))
    u224(CFrame.new(-46.5366592, -6.33204842, 697.892273, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(34.5299072, 23.349968, 44.5500031))
    u224(CFrame.new(278.207245, -7.0820322, 695.965149, -0.999981225, -4.8950298e-8, -0.00593414297, -5.41017471e-8, 0.999999881, -2.59606168e-8, 0.00593414484, -2.53785402e-8, -0.999981582), Vector3.new(7.02990723, 21.849968, 44.5500031))
    u224(CFrame.new(-2093.75, 9.94974613, 696.75, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(692.5, 0.5, 37.5))
    u224(CFrame.new(-1725.44324, 10.6997461, 694.778015, 0.694658399, 0, 0.719339788, 0, 1, 0, -0.719339788, 0, 0.694658399), Vector3.new(48, 2, 45))
    u224(CFrame.new(-1339.51733, 4.49533796, 698.180054, 0.99026829, -0.13917312, 0, 0.13917312, 0.99026829, 0, 0, 0, 1), Vector3.new(67.5, 4, 37))
    u224(CFrame.new(-1363.59412, 1.11156046, 708.326904, 0.820969999, -0.13917318, 0.553750992, 0.115379818, 0.990268767, 0.0778246224, -0.559193194, 0, 0.829037607), Vector3.new(34, 4, 49))
    u224(CFrame.new(-1371.4259, -0.998918772, 723.160156, 0.930549145, -0.139173374, -0.338692099, 0.13078016, 0.990270197, -0.047600057, 0.34202072, -7.4505806e-9, 0.939693034), Vector3.new(38.5, 4, 48))
    u224(CFrame.new(-1393.78589, -4.70867538, 741.874329, 0.525701582, -0.11796616, -0.842453718, 0.0624936409, 0.993020117, -0.100052938, 0.848372996, -0.0000499562702, 0.529402494), Vector3.new(57, 4, 48))
    u224(CFrame.new(-1426.87244, -9.64694118, 727.73645, -0.0525785685, -0.117965765, -0.991624653, -0.00619550375, 0.993017733, -0.117802992, 0.998597682, -0.0000502976873, -0.0529423133), Vector3.new(43, 4, 49))
    u224(CFrame.new(-1542.79834, -24.1414528, 693.151733, 0.151433259, -0.117894612, -0.981410801, 0.0179410838, 0.993028104, -0.116522513, 0.988308668, 0.0000375595118, 0.152491033), Vector3.new(16.5, 4, 24.5))
    u224(CFrame.new(-1525.43823, -22.3317413, 680.852295, 0.711567044, -0.117893316, -0.692656934, 0.0844521746, 0.993026376, -0.0822597519, 0.697524667, 0.0000369343543, 0.716561079), Vector3.new(16.5, 3.5, 31))
    u224(CFrame.new(-1512.83789, -21.387928, 669.898132, 0.0859401673, -0.117966108, -0.989292026, 0.010259347, 0.993018389, -0.117519177, 0.996249139, -0.0000499039452, 0.086550802), Vector3.new(16.5, 3.5, 26))
    u224(CFrame.new(-1502.39136, -20.650486, 668.989319, 0.0859401673, -0.117966108, -0.989292026, 0.010259347, 0.993018389, -0.117519177, 0.996249139, -0.0000499039452, 0.086550802), Vector3.new(16.5, 3.5, 26))
    u224(CFrame.new(-1481.26001, -18.1399117, 673.785461, -0.526738107, -0.117966197, -0.841804624, -0.0625315532, 0.993019879, -0.100029439, 0.847729981, -0.0000499358321, -0.530434847), Vector3.new(16.5, 3.5, 26))
    u224(CFrame.new(-1468.12195, -15.5714817, 686.85675, -0.526738107, -0.117966197, -0.841804624, -0.0625315532, 0.993019879, -0.100029439, 0.847729981, -0.0000499358321, -0.530434847), Vector3.new(24.5, 3.5, 34.5))
    u224(CFrame.new(-1726.15015, 10.4497461, 694.790344, 0.694658399, 0, 0.719339788, 0, 1, 0, -0.719339788, 0, 0.694658399), Vector3.new(49, 1.5, 46))
    u224(CFrame.new(-1727.22302, 10.1997461, 694.101868, 0.694658399, 0, 0.719339788, 0, 1, 0, -0.719339788, 0, 0.694658399), Vector3.new(49.5, 1, 48.5))
    u224(CFrame.new(-1594.52539, -24.3682365, 695.275208, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(88.5, 2.5, 96))
    u224(CFrame.new(-1677.15637, -15.417098, 623.046021, 0.984657705, 0.0171872638, -0.173648149, -0.0174524058, 0.99984771, 0, 0.173621729, 0.00303057837, 0.98480767), Vector3.new(80.5, 8, 85.5))
    u224(CFrame.new(-1450.97681, -13.2820768, 704.461609, -0.526738107, -0.117966197, -0.841804624, -0.0625315532, 0.993019879, -0.100029439, 0.847729981, -0.0000499358321, -0.530434847), Vector3.new(36, 4, 32.5))
    u224(CFrame.new(-1635.84265, -139.839996, 622.938721, 0.178292945, 0, 0.98397553, 0, 1, 0, -0.983975589, 0, 0.178293034), Vector3.new(14, 255, 4.35629797))
    u224(CFrame.new(-1631.328, -140.839996, 623.947815, 0.2464917, 0, 0.969143093, 0, 1, 0, -0.969143093, 0, 0.24649176), Vector3.new(14, 255, 5.8792901))
    u224(CFrame.new(-1608.31348, -147.839996, 639.822876, 0.866703033, 0, 0.498820961, 0, 1, 0, -0.498820961, 0, 0.866703033), Vector3.new(14, 255, 5.13447332))
    u224(CFrame.new(-1606.00684, -148.839996, 644.197998, 0.899387717, 0, 0.437147677, 0, 1, 0, -0.437147677, 0, 0.899387717), Vector3.new(14, 255, 5.74125433))
    u224(CFrame.new(-1626.75098, -141.839996, 625.260925, 0.313491344, 0, 0.949589133, 0, 1, 0, -0.949589133, 0, 0.313491404), Vector3.new(14, 255, 4.62769413))
    u224(CFrame.new(-1623.35046, -142.839996, 626.612061, 0.426887631, 0, 0.904302716, 0, 1, 0, -0.904302716, 0, 0.426887691), Vector3.new(14, 255, 4.41635466))
    u224(CFrame.new(-1610.32239, -146.839996, 636.802979, 0.78356123, 0, 0.621311903, 0, 1, 0, -0.621311784, 0, 0.783561289), Vector3.new(14, 255, 4.21742392))
    u224(CFrame.new(-1619.98938, -143.839996, 628.473572, 0.532674611, 0, 0.846318007, 0, 1, 0, -0.846318007, 0, 0.53267467), Vector3.new(14, 255, 4.97442102))
    u224(CFrame.new(-1616.38782, -144.839996, 630.914368, 0.590408921, 0, 0.807102084, 0, 1, 0, -0.807102084, 0, 0.59040904), Vector3.new(14, 255, 4.71004725))
    u224(CFrame.new(-1613.16479, -145.839996, 633.713562, 0.701997042, 0, 0.712177455, 0, 1, 0, -0.712177455, 0, 0.701997101), Vector3.new(14, 255, 5.9066267))
    u224(CFrame.new(-1604.04761, -149.839996, 648.575867, 0.927696943, 0, 0.373347104, 0, 1, 0, -0.373347104, 0, 0.927697003), Vector3.new(14, 255, 4.8348875))
    u224(CFrame.new(-1712.18823, -137.559921, 611.531189, -0.0305747688, -3.8556588999999994e-8, 0.999530673, -1.6698479e-7, 1, 3.3466626799999997e-8, -0.999530613, -1.6588379000000002e-7, -0.030574739), Vector3.new(14, 255, 5.74125433))
    u224(CFrame.new(-1717.12427, -136.559921, 611.844177, -0.100224018, -3.8556588999999994e-8, 0.994963169, -1.6891255e-7, 1, 2.17368452e-8, -0.994963109, -1.6588379000000002e-7, -0.100223958), Vector3.new(14, 255, 5.13447332))
    u224(CFrame.new(-1720.7019, -135.559921, 612.44043, -0.246018708, -3.8556588999999994e-8, 0.969263375, -1.7027071e-7, 1, -3.43903395e-9, -0.969263315, -1.6588379000000002e-7, -0.246018708), Vector3.new(14, 255, 4.21742392))
    u224(CFrame.new(-1724.68433, -134.559921, 613.768799, -0.362314641, -3.8556588999999994e-8, 0.932054043, -1.68582289e-7, 1, -2.41653098e-8, -0.932054043, -1.6588379000000002e-7, -0.362314641), Vector3.new(14, 255, 5.9066267))
    u224(CFrame.new(-1728.55774, -133.559921, 615.56311, -0.494606912, -3.8556588999999994e-8, 0.869114876, -1.63242419e-7, 1, -4.85371636e-8, -0.869114757, -1.6588379000000002e-7, -0.494606853), Vector3.new(14, 255, 4.71004725))
    u224(CFrame.new(-1732.25928, -132.559921, 617.849548, -0.554024041, -3.8556588999999994e-8, 0.83249861, -1.5945929e-7, 1, -5.9805302e-8, -0.83249855, -1.6588379000000002e-7, -0.554023981), Vector3.new(14, 255, 4.97442102))
    u224(CFrame.new(-1735.33374, -131.559921, 620.153809, -0.650239468, -3.8556588999999994e-8, 0.759727001, -1.5109741e-7, 1, -7.8571702e-8, -0.759726942, -1.6588379000000002e-7, -0.650239348), Vector3.new(14, 255, 4.41635466))
    u224(CFrame.new(-1737.95874, -130.559921, 622.703003, -0.737985492, -3.8556588999999994e-8, 0.674813986, -1.40394903e-7, 1, -9.640130829999999e-8, -0.674813926, -1.6588379000000002e-7, -0.737985432), Vector3.new(14, 255, 4.62769413))
    u224(CFrame.new(-1741.03076, -129.559921, 626.341125, -0.783257902, -3.8556588999999994e-8, 0.621694207, -1.33328726e-7, 1, -1.0595938e-7, -0.621694148, -1.6588379000000002e-7, -0.783257842), Vector3.new(14, 255, 5.8792901))
    u224(CFrame.new(-1743.79993, -128.559921, 630.046875, -0.824713767, -3.8556588999999994e-8, 0.565547168, -1.25613255e-7, 1, -1.15001065e-7, -0.565547168, -1.6588379000000002e-7, -0.824713647), Vector3.new(14, 255, 4.35629797))
    u224(CFrame.new(-1745.77539, -127.560036, 633.337646, -0.879498184, -8.67711378e-8, 0.475898564, -1.12849136e-7, 1, -2.62235904e-8, -0.475898594, -7.67686217e-8, -0.879498243), Vector3.new(14, 255, 4.99258232))
    u224(CFrame.new(-1747.48596, -126.560036, 637.008545, -0.930946112, -8.67711378e-8, 0.365169674, -1.08812841e-7, 1, -3.97812556e-8, -0.365169674, -7.67686217e-8, -0.930946112), Vector3.new(14, 255, 4.8348875))
    u224(CFrame.new(-1749.06567, -125.560036, 641.53717, -0.954145014, -8.67711378e-8, 0.299338609, -1.05772067e-7, 1, -4.72744333e-8, -0.299338609, -7.67686217e-8, -0.954145014), Vector3.new(14, 255, 5.74125433))
    u224(CFrame.new(-1750.39087, -124.560036, 646.302246, -0.972701669, -8.67711378e-8, 0.2320517, -1.02216717e-7, 1, -5.45375691e-8, -0.2320517, -7.67686217e-8, -0.972701669), Vector3.new(14, 255, 5.13447332))
    u224(CFrame.new(-1751.00244, -123.560036, 649.877319, -0.99630177, -8.67711378e-8, 0.0859023929, -9.30448607e-8, 1, -6.90308681e-8, -0.0859024227, -7.67686217e-8, -0.996301889), Vector3.new(14, 255, 4.21742392))
    u224(CFrame.new(-1751.05554, -122.560036, 654.075134, -0.99934417, -8.67711378e-8, -0.0361632407, -8.39380334e-8, 1, -7.985619280000001e-8, 0.0361632407, -7.67686217e-8, -0.99934417), Vector3.new(14, 255, 5.9066267))
    u224(CFrame.new(-1750.63257, -121.560036, 658.322998, -0.983336091, -8.67711378e-8, -0.181787133, -7.13696551e-8, 1, -9.12632245e-8, 0.181787133, -7.67686217e-8, -0.983336091), Vector3.new(14, 255, 4.71004725))
    u224(CFrame.new(-1749.68848, -120.560036, 662.570007, -0.968261242, -8.67711378e-8, -0.249933213, -6.4830103999999995e-8, 1, -9.60190647e-8, 0.249933243, -7.67686217e-8, -0.968261242), Vector3.new(14, 255, 4.97442102))
    u224(CFrame.new(-1741.95715, -116.560036, 677.476013, -0.80499965, -8.67711378e-8, -0.59327215, -2.43060558e-8, 1, -1.13277608e-7, 0.59327215, -7.67686217e-8, -0.80499959), Vector3.new(14, 255, 4.35629797))
    u224(CFrame.new(-1744.5481, -117.560036, 673.643494, -0.844420195, -8.67711378e-8, -0.535677969, -3.2148051300000002e-8, 1, -1.11306363e-7, 0.535678029, -7.67686217e-8, -0.844420195), Vector3.new(14, 255, 5.8792901))
    u224(CFrame.new(-1746.97571, -118.560036, 669.54718, -0.879728258, -8.67711378e-8, -0.475472927, -3.98336297e-8, 1, -1.08792854e-7, 0.475472957, -7.67686217e-8, -0.879728317), Vector3.new(14, 255, 4.62769413))
    u224(CFrame.new(-1748.52148, -119.560036, 666.230652, -0.931119382, -8.67711378e-8, -0.364709496, -5.27960502e-8, 1, -1.0312700700000001e-7, 0.364709556, -7.67686217e-8, -0.931119382), Vector3.new(14, 255, 4.41635466))
    u224(CFrame.new(-1740.73279, 50.4497452, 720.327759, 0.694658399, 0, 0.719339788, 0, 1, 0, -0.719339788, 0, 0.694658399), Vector3.new(8, 81.5, 31.5))
    u224(CFrame.new(-1994.25, 10.4497461, 709.5, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(492.5, 0.5, 5))
    u224(CFrame.new(-1994.25, 10.4497461, 681.5, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(492.5, 0.5, 4))
    wait(0.1)

    local v645 = u11(workspace, 'borders')
    local v646, v647, v648 = pairs(v645:GetChildren())

    while true do
        local v649

        v648, v649 = v646(v647, v648)

        if v648 == nil then
            break
        end

        u213:AddTag(v649, 'RayWhitelist')

        v649.Transparency = _G.wall_transparency
    end

    if _G.destroy_map then
        workspace.map:Destroy()
    else
        local v650, v651, v652 = pairs(workspace.map:GetChildren())

        while true do
            local v653

            v652, v653 = v650(v651, v652)

            if v652 == nil then
                break
            end
            if v653:FindFirstChild('Meshes/Forgers Mark2_Circle.001') then
                v653:Destroy()
            end
        end
    end
end
function fixOrbital()
    u224(CFrame.new(2.05055237, 6.13212585, 144.456467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(184, 1.5, 81))
    u224(CFrame.new(-27.9494476, 18.8821259, 183.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(130, 27, 3.5))
    u224(CFrame.new(65.8005524, 18.8821259, 182.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(60.5, 27, 5.5))
    u224(CFrame.new(80.5505524, 18.8821259, 176.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(31, 27, 17.5))
    u224(CFrame.new(91.5505524, 18.8821259, 162.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(9, 27, 45.5))
    u224(CFrame.new(71.8005524, 20.3821259, 101.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(72.5, 30, 3.5))
    u224(CFrame.new(86.5673981, 5.77369833, 120.956467, 0.98480767, -0.173648179, 0, 0.173648179, 0.98480767, 0, 0, 0, 1), Vector3.new(40, 7, 38))
    u224(CFrame.new(122.800552, 8.88212585, 116.456467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(35.5, 7, 35))
    u224(CFrame.new(136.300552, 16.8821259, 132.706467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(60.5, 23, 10.5))
    u224(CFrame.new(123.300552, 16.8821259, 103.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(34.5, 23, 0.5))
    u224(CFrame.new(130.692398, 10.4759054, 116.456467, 0.98480773, -0.173648179, 0, 0.173648179, 0.98480773, 0, 0, 0, 1), Vector3.new(24, 7, 35))
    u224(CFrame.new(225.300552, 10.8821259, 83.7064667, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(172.5, 11, 149.5))
    u224(CFrame.new(139.050552, 16.6321259, 84.4564667, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(11, 22.5, 47))
    u224(CFrame.new(151.469864, 16.6321259, 61.0406761, 0.91354543, 0, -0.406736642, 0, 1, 0, 0.406736642, 0, 0.91354543), Vector3.new(3, 22.5, 94))
    u224(CFrame.new(169.348312, 16.6321259, 42.4514313, 0.694658279, 0, -0.719339728, 0, 1, 0, 0.719339728, 0, 0.694658279), Vector3.new(4, 22.5, 94))
    u224(CFrame.new(207.741302, 16.6321259, 22.175375, 0.358367801, 0, -0.93358016, 0, 1, 0, 0.93358016, 0, 0.358367801), Vector3.new(3.5, 22.5, 94))
    u224(CFrame.new(200.99971, 16.6321259, 23.0883999, 0.0174523592, 0, -0.999846816, 0, 1, 0, 0.999846816, 0, 0.0174523592), Vector3.new(2, 22.5, 94))
    u224(CFrame.new(251.564911, 16.6321259, 18.5538025, 0.766042292, 0, -0.642785966, 0, 1, 0, 0.642785966, 0, 0.766042292), Vector3.new(2, 22.5, 13.5))
    u224(CFrame.new(255.064896, 16.6321259, 9.05387974, 0.999991894, 0, -1.78813934e-7, 0, 1, 0, 1.78813934e-7, 0, 0.999991894), Vector3.new(5, 22.5, 13.5))
    u224(CFrame.new(170.300552, 16.8821259, 128.706467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(9.5, 23, 18.5))
    u224(CFrame.new(174.550552, 16.8821259, 109.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1, 23, 21.5))
    u224(CFrame.new(178.440842, 16.8821259, 87.8495941, 0.906307757, 0, -0.42261827, 0, 1, 0, 0.42261827, 0, 0.906307757), Vector3.new(3, 23, 26.5))
    u224(CFrame.new(192.023926, 16.8821259, 70.1889038, 0.629320323, 0, -0.777145863, 0, 1, 0, 0.777145863, 0, 0.629320323), Vector3.new(4, 23, 21))
    u224(CFrame.new(207.625092, 16.8821259, 62.0181961, 0.258818924, 0, -0.965925455, 0, 1, 0, 0.965925455, 0, 0.258818924), Vector3.new(5.5, 23, 21.5))
    u224(CFrame.new(235.841599, 16.8821259, 62.0727882, -0.0174523555, 0, -0.999844193, 0, 1, 0, 0.999844193, 0, -0.0174523555), Vector3.new(9, 23, 42))
    u224(CFrame.new(268.73175, 16.8821259, 68.6477737, -0.0174523555, 0, -0.999844193, 0, 1, 0, 0.999844193, 0, -0.0174523555), Vector3.new(6, 23, 49))
    u224(CFrame.new(295.005676, 16.8821259, 38.8518867, -0.0174523555, 0, -0.999844193, 0, 1, 0, 0.999844193, 0, -0.0174523555), Vector3.new(66.5, 23, 5.5))
    u224(CFrame.new(290.775604, 16.8821259, 9.02362251, -0.0174523555, 0, -0.999844193, 0, 1, 0, 0.999844193, 0, -0.0174523555), Vector3.new(13, 23, 15))
    u224(CFrame.new(237.565033, 20.8821259, -8.44598103, 0.999991894, 0, -1.78813934e-7, 0, 1, 0, 1.78813934e-7, 0, 0.999991894), Vector3.new(31, 31, 48.5))
    u224(CFrame.new(216.315201, 20.8821259, -32.4457855, 0.999991894, 0, -1.78813934e-7, 0, 1, 0, 1.78813934e-7, 0, 0.999991894), Vector3.new(21.5, 31, 96.5))
    u224(CFrame.new(335.789215, 20.8821259, -32.4457664, 0.999991894, 0, -1.78813934e-7, 0, 1, 0, 1.78813934e-7, 0, 0.999991894), Vector3.new(44.5500183, 31, 96.5))
    u224(CFrame.new(306.28949, 20.8821259, -8.19596863, 0.999991894, 0, -1.78813934e-7, 0, 1, 0, 1.78813934e-7, 0, 0.999991894), Vector3.new(19.5500164, 31, 48))
    u224(CFrame.new(274.800537, 11.3821259, -97.7935333, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(146.5, 12, 225.5))
    u224(CFrame.new(204.550537, 22.3821259, -144.543533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(6, 34, 132))
    u224(CFrame.new(346.550537, 22.3821259, -144.543533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3, 34, 132))
    u224(CFrame.new(253.300537, 22.3821259, -206.043533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(103.5, 34, 5))
    u224(CFrame.new(334.550537, 22.3821259, -206.043533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(19, 34, 5))
    u224(CFrame.new(339.300537, 22.3821259, -242.043533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(9.5, 34, 77))
    u224(CFrame.new(260.300537, 22.3821259, -219.293533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(54.5, 34, 31.5))
    u224(CFrame.new(312.050537, 11.3821259, -110.543533, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(72, 12, 251))
    u224(CFrame.new(314.800537, 22.3821259, -277.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(58.5, 34, 9.5))
    u224(CFrame.new(221.550537, 23.8821259, -421.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(14, 42, 8))
    u224(CFrame.new(221.300537, 23.8821259, -497.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(14.5, 42, 32.5))
    u224(CFrame.new(319.965942, 16.5022373, -230.817398, 0.950360954, 4.3711388300000005e-8, -0.311149508, -2.79408212e-8, 1, 5.51423724e-8, 0.311149508, -4.3711388300000005e-8, 0.950360954), Vector3.new(69, 1.5, 85))
    u224(CFrame.new(289.800537, 9.63212585, -304.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(116.5, 8.5, 138.5))
    u224(CFrame.new(233.300537, 21.6321259, -252.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3.5, 34.5, 35))
    u224(CFrame.new(234.925537, 22.1321259, -319.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(21.25, 33.5, 100))
    u224(CFrame.new(313.300537, 22.1321259, -304.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(37.5, 33.5, 57))
    u224(CFrame.new(352.550537, 22.1321259, -322.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(55, 33.5, 94.5))
    u224(CFrame.new(268.550537, 22.1321259, -366.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(66, 33.5, 6))
    u224(CFrame.new(302.300537, 9.63212585, -375.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(154.5, 8.5, 281))
    u224(CFrame.new(377.550537, 25.1321259, -440.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(4, 39.5, 147))
    u224(CFrame.new(302.800537, 25.1321259, -512.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(153.5, 39.5, 2.5))
    u224(CFrame.new(227.050537, 25.1321259, -492.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(10, 39.5, 41.5))
    u224(CFrame.new(227.300537, 25.1321259, -400.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(10.5, 39.5, 68))
    u224(CFrame.new(149.300537, 23.8821259, -501.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(158.5, 42, 24.5))
    u224(CFrame.new(72.3005371, 23.8821259, -414.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(4.5, 42, 16))
    u224(CFrame.new(165.300537, 23.3821259, -412.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(123.5, 41, 14.5))
    u224(CFrame.new(143.550537, 10.1321259, -427.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(178, 9.5, 176.5))
    u224(CFrame.new(170.300537, 23.8821259, -387.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(4.5, 42, 60.5))
    u224(CFrame.new(159.175537, 23.8821259, -335.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(25.25, 42, 59))
    u224(CFrame.new(92.8005371, 23.8821259, -360.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(47.5, 42, 7.5))
    u224(CFrame.new(69.8005371, 23.8821259, -424.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1.5, 42, 135))
    u224(CFrame.new(84.3005371, 22.6321259, -303.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(133.5, 44.5, 6))
    u224(CFrame.new(67.0505371, 22.6321259, -351.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(54, 44.5, 26.5))
    u224(CFrame.new(89.0505371, 22.6321259, -344.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(17, 44.5, 25))
    u224(CFrame.new(122.300537, 10.8821259, -333.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(51.5, 11, 54.5))
    u224(CFrame.new(64.4733582, -4.418859, -333.793518, 0.906307757, -0.42261827, 0, 0.42261827, 0.906307757, 0, 0, 0, 1), Vector3.new(75.5, 11, 54.5))
    u224(CFrame.new(20.3005371, -3.61787415, -356.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(95.5, 11, 99.5))
    u224(CFrame.new(39.9685135, 6.63212585, -380.228729, 0.913545489, 0, 0.406736732, 0, 1, 0, -0.406736732, 0, 0.913545489), Vector3.new(14.5, 31.5, 46.5))
    u224(CFrame.new(18.114563, 6.63212585, -403.113617, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(14.5, 31.5, 91))
    u224(CFrame.new(-26.2788792, 6.63212585, -366.632813, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(89, 31.5, 3.5))
    u224(CFrame.new(-36.5266075, 17.3821259, -309.552948, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(26.5, 53, 57))
    u224(CFrame.new(5.80053711, 4.07662964, -309.267822, 1, 0, 0, 0, -0.656059086, 0.754709542, 0, -0.754709542, -0.656059086), Vector3.new(31.5, 24, 15.5))
    u224(CFrame.new(19.5505371, 19.3427505, -291.517181, 1, 0, 0, 0, 0.0174524486, 0.99984777, 0, -0.99984777, 0.0174524486), Vector3.new(5, 62, 50.5))
    u224(CFrame.new(-102.175552, 17.3821259, -272.943085, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(102, 53, 90))
    u224(CFrame.new(4.05209827, 17.3821259, -242.084457, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(40, 53, 74.5))
    u224(CFrame.new(38.5662766, 17.3821259, -170.971268, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(181, 53, 3))
    u224(CFrame.new(-47.4959297, 17.3821259, -82.2097092, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(0.499998093, 53, 172))
    u224(CFrame.new(-130.682892, 17.3821259, -158.17308, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(149.5, 53, 3))
    u224(CFrame.new(-40.7920074, 4.38212585, -194.109756, 0.0174522102, 0, 0.999847889, 0, 1, 0, -0.999847889, 0, 0.0174522102), Vector3.new(224.5, 27, 181.5))
    u224(CFrame.new(-25.6994476, 18.8821259, 117.706467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(125.5, 27, 36.5))
    u224(CFrame.new(-89.1994476, 18.8821259, 154.206467, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(7.5, 27, 61.5))
    u224(CFrame.new(282.050537, 22.1321259, -316.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(28, 33.5, 5.5))
    u224(CFrame.new(226.777496, 14.4964676, -453.289978, 0.99999994, -8.742277660000001e-8, -2.8423887299999997e-16, 8.74227695e-8, 1, 8.742277660000001e-8, -7.358502169999999e-15, -8.742277660000001e-8, 1), Vector3.new(8, 1, 45.5))
    u224(CFrame.new(226.277496, 14.9964676, -453.289978, 0.99999994, -8.742277660000001e-8, -2.8423887299999997e-16, 8.74227695e-8, 1, 8.742277660000001e-8, -7.358502169999999e-15, -8.742277660000001e-8, 1), Vector3.new(7, 2, 43.5))
    u224(CFrame.new(225.777496, 15.4964676, -453.289978, 0.99999994, -8.742277660000001e-8, -2.8423887299999997e-16, 8.74227695e-8, 1, 8.742277660000001e-8, -7.358502169999999e-15, -8.742277660000001e-8, 1), Vector3.new(6, 3, 41.5))
    u224(CFrame.new(210.777496, 15.9964666, -456.539978, 0.99999994, -8.742277660000001e-8, -2.8423887299999997e-16, 8.74227695e-8, 1, 8.742277660000001e-8, -7.358502169999999e-15, -8.742277660000001e-8, 1), Vector3.new(31, 4, 77))
    u224(CFrame.new(210.027496, 14.9964666, -456.539978, 0.99999994, -8.742277660000001e-8, -2.8423887299999997e-16, 8.74227695e-8, 1, 8.742277660000001e-8, -7.358502169999999e-15, -8.742277660000001e-8, 1), Vector3.new(32.5, 4, 77))
    u224(CFrame.new(209.527496, 14.4964666, -456.539978, 0.99999994, -8.742277660000001e-8, -2.8423887299999997e-16, 8.74227695e-8, 1, 8.742277660000001e-8, -7.358502169999999e-15, -8.742277660000001e-8, 1), Vector3.new(33.5, 3, 77))
    u224(CFrame.new(-3.77072525, 17.3821259, -202.161972, -0.731354296, 0, 0.681998551, 0, 1, 0, -0.681998551, 0, -0.731354296), Vector3.new(29.5, 53, 29.5))
    u224(CFrame.new(21.5335732, 17.3821259, -189.938141, -0.99026978, 0, 0.13917309, 0, 1, 0, -0.13917309, 0, -0.99026978), Vector3.new(45, 53, 24.5))
    u224(CFrame.new(-11.1203985, 17.3821259, -219.985062, -0.190809608, 0, 0.981628776, 0, 1, 0, -0.981628776, 0, -0.190809608), Vector3.new(29.5, 53, 29.5))
    u224(CFrame.new(21.5335732, 17.3821259, -189.938141, -0.99026978, 0, 0.13917309, 0, 1, 0, -0.13917309, 0, -0.99026978), Vector3.new(45, 53, 24.5))
    u224(CFrame.new(201.004074, 16.6321259, 23.3383617, 0.0174523592, 0, -0.999846816, 0, 1, 0, 0.999846816, 0, 0.0174523592), Vector3.new(2.5, 22.5, 94))
    u224(CFrame.new(291.03064, 16.8821259, 66.0365601, -0.0174523555, 0, -0.999844193, 0, 1, 0, 0.999844193, 0, -0.0174523555), Vector3.new(12, 23, 12.5))
    u224(CFrame.new(292.446808, 16.8821259, 13.5534649, -0.0174523555, 0, -0.999844193, 0, 1, 0, 0.999844193, 0, -0.0174523555), Vector3.new(16, 23, 11.5))
    u224(CFrame.new(241.550537, 22.1321259, -316.793518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(12, 33.5, 5.5))
    u224(CFrame.new(198.585739, 15.9964609, -495.978149, 0.69465822, -8.742277660000001e-8, 0.719339728, -2.15772644e-9, 1, 1.2361564900000002e-7, -0.719339669, -8.74227837e-8, 0.694658399), Vector3.new(31, 4, 24.5))
    u224(CFrame.new(197.891083, 14.9964609, -495.25882, 0.69465822, -8.742277660000001e-8, 0.719339728, -2.15772644e-9, 1, 1.2361564900000002e-7, -0.719339669, -8.74227837e-8, 0.694658399), Vector3.new(31, 4, 24.5))
    u224(CFrame.new(196.849091, 13.9964609, -494.17981, 0.69465822, -8.742277660000001e-8, 0.719339728, -2.15772644e-9, 1, 1.2361564900000002e-7, -0.719339669, -8.74227837e-8, 0.694658399), Vector3.new(31, 4, 24.5))
    u224(CFrame.new(200.608017, 15.9964695, -413.158813, 0.707106352, -8.74227979e-8, -0.70710659, 1.23634393e-7, 1, 2.44249065e-14, 0.707106471, -8.74227837e-8, 0.707106888), Vector3.new(31, 4, 21))
    u224(CFrame.new(199.900909, 14.9964695, -413.865906, 0.707106352, -8.74227979e-8, -0.70710659, 1.23634393e-7, 1, 2.44249065e-14, 0.707106471, -8.74227837e-8, 0.707106888), Vector3.new(31, 4, 21))
    u224(CFrame.new(199.193802, 13.9964695, -414.572998, 0.707106352, -8.74227979e-8, -0.70710659, 1.23634393e-7, 1, 2.44249065e-14, 0.707106471, -8.74227837e-8, 0.707106888), Vector3.new(31, 4, 21))
    u224(CFrame.new(82.0505371, 23.8821259, -496.543518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(24, 42, 34))
    u224(CFrame.new(319.015594, 15.5022373, -231.12854, 0.950360954, 4.3711388300000005e-8, -0.311149508, -2.79408212e-8, 1, 5.51423724e-8, 0.311149508, -4.3711388300000005e-8, 0.950360954), Vector3.new(69, 1.5, 85))
    u224(CFrame.new(318.065247, 14.5022373, -231.439682, 0.950360954, 4.3711388300000005e-8, -0.311149508, -2.79408212e-8, 1, 5.51423724e-8, 0.311149508, -4.3711388300000005e-8, 0.950360954), Vector3.new(69, 1.5, 85))
    u224(CFrame.new(317.114899, 13.5022373, -231.750824, 0.950360954, 4.3711388300000005e-8, -0.311149508, -2.79408212e-8, 1, 5.51423724e-8, 0.311149508, -4.3711388300000005e-8, 0.950360954), Vector3.new(69, 1.5, 85))
    u224(CFrame.new(241.800537, 22.1321259, -317.043518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(12.5, 33.5, 6))
    u224(CFrame.new(122.300537, 9.88212585, -334.293518, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(51.5, 11.5, 55.5))
    wait(0.1)

    if _G.destroy_map then
        workspace.Terrain:Clear()
        workspace.Map:Destroy()
    end
end
function canalsFix()
    u224(CFrame.new(155.957275, 32.8910141, -46.5320663, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(11.7300148, 87.4399948, 105.580002))
    u224(CFrame.new(-138.143799, 32.8910141, 163.496231, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(97.5299759, 87.4399948, 22.3999958))
    u224(CFrame.new(-34.8195114, 32.8910141, -67.9616165, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(83.9499435, 87.4399948, 46.5899925))
    u224(CFrame.new(-103.979477, 32.8910141, -224.424011, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(6.84993505, 87.4399948, 235.629959))
    u224(CFrame.new(-186.825027, 62.1460152, 73.4007111, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(84.4299774, 145.949997, 5.42000008))
    u224(CFrame.new(-241.964264, 32.8910141, -94.9756775, -0.766044438, -6.69697329e-8, -0.642787576, -3.1228502500000004e-8, 1, -6.69697329e-8, 0.642787576, -3.1228502500000004e-8, -0.766044438), Vector3.new(66.1999207, 87.4399948, 5.42000008))
    u224(CFrame.new(-55.4694901, 32.8910141, -157.089325, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(6.84993505, 87.4399948, 138.609985))
    u224(CFrame.new(-145.703644, 32.8910141, 28.710371, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(84.4299774, 87.4399948, 5.42000008))
    u224(CFrame.new(71.0828094, 32.8910141, 50.8468018, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(49.6700058, 87.4399948, 93.9099808))
    u224(CFrame.new(135.878815, 32.8910141, 15.5871773, 0.719339788, 0, -0.694658399, 0, 1, 0, 0.694658399, 0, 0.719339788), Vector3.new(11.7300148, 87.4399948, 58.2199783))
    u224(CFrame.new(225.497131, 36.9860115, -59.8648605, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(150.809937, 95.6299896, 52.0899887))
    u224(CFrame.new(-242.781433, 32.8910141, -16.9685707, -0.121869326, -1.06541549e-8, 0.992546141, -1.7419391400000002e-7, 1, -1.06541549e-8, -0.992546141, -1.7419391400000002e-7, -0.121869326), Vector3.new(80.8499374, 87.4399948, 5.42000008))
    u224(CFrame.new(-224.062851, 32.8910141, -75.7806473, -0.766044438, -6.69697329e-8, -0.642787576, -3.1228502500000004e-8, 1, -6.69697329e-8, 0.642787576, -3.1228502500000004e-8, -0.766044438), Vector3.new(63.4499245, 87.4399948, 5.92000008))
    u224(CFrame.new(-145.703644, 62.2310066, 113.641754, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(84.4299774, 146.11998, 5.42000008))
    u224(CFrame.new(-294.795288, 32.8910141, -76.0985794, -0.99862951, -8.730296489999999e-8, -0.0523359589, -8.28474214e-8, 1, -8.730296489999999e-8, 0.0523359589, -8.28474214e-8, -0.99862951), Vector3.new(63.6999283, 87.4399948, 5.42000008))
    u224(CFrame.new(-123.277046, 32.8910141, 120.19175, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(97.5299759, 87.4399948, 15.5299997))
    u224(CFrame.new(397.023865, 36.9860115, -58.8248749, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(150.809937, 95.6299896, 54.1699905))
    u224(CFrame.new(416.749054, 36.9860115, -96.7398682, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(111.359848, 95.6299896, 117.999992))
    u224(CFrame.new(425.636475, 36.9860115, 1.16940498, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(106.859848, 95.6299896, 82.909996))
    u224(CFrame.new(-121.666016, 32.8910141, 279.982574, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(97.5299759, 87.4399948, 11.550005))
    u224(CFrame.new(-98.9495239, 59.7010269, -44.2266006, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(58.7299576, 33.8199959, 24.7199955))
    u224(CFrame.new(-98.8532333, 32.8910141, 51.1067657, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(50.0699921, 87.4399948, 41.260006))
    u224(CFrame.new(371.486694, 36.9860115, 44.0894165, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(215.159775, 95.6299896, 16.9300041))
    u224(CFrame.new(189.412186, 36.9860115, 17.0006351, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(16.339817, 95.6299896, 52.0800133))
    u224(CFrame.new(196.772171, 36.9860115, -85.2920761, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(93.3599701, 95.6299896, 28.0600014))
    u224(CFrame.new(155.065796, 36.9860115, 67.287796, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(20.3698311, 95.6299896, 17.1600227))
    u224(CFrame.new(124.959198, 36.9860115, 134.113754, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(41.2598, 95.6299896, 74.7600098))
    u224(CFrame.new(-162.458191, 32.8910141, -68.6916199, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(83.9499435, 87.4399948, 45.1299858))
    u224(CFrame.new(-111.588234, 32.8910141, 50.9817734, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(49.939991, 87.4399948, 15.7900009))
    u224(CFrame.new(-25.9021072, 32.8910141, 50.9817734, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(49.939991, 87.4399948, 114.280014))
    u224(CFrame.new(-223.311798, 32.8910141, -168.529022, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(6.84993505, 87.4399948, 116.899963))
    u224(CFrame.new(-136.288849, 32.8910141, 301.444031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(32.1999626, 87.4399948, 18.6900043))
    u224(CFrame.new(-232.190765, 32.8910141, 48.9222374, -0.224951044, -1.96658441e-8, 0.974370062, -1.72604913e-7, 1, -1.96658441e-8, -0.974370062, -1.72604913e-7, -0.224951044), Vector3.new(54.5299835, 87.4399948, 5.42000008))
    u224(CFrame.new(-170.796127, 32.8910141, 24.3202763, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(84.4299774, 87.4399948, 5.42000008))
    u224(CFrame.new(186.772171, 36.9860115, -167.385376, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(113.35997, 95.6299896, 15.4500008))
    u224(CFrame.new(-132.073868, 32.8910141, 268.779114, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(97.5299759, 87.4399948, 10.260006))
    u224(CFrame.new(175.484131, 36.9860115, 53.6146545, -0.707106769, -6.1817239299999995e-8, 0.707106769, -1.49240009e-7, 1, -6.1817239299999995e-8, -0.707106769, -1.49240009e-7, -0.707106769), Vector3.new(16.339817, 95.6299896, 46.5600052))
    u224(CFrame.new(124.959198, 36.9860115, 71.5675964, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(41.2598, 95.6299896, 17.1600227))
    u224(CFrame.new(117.913742, 77.9372025, 156.825684, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(167.879807, 17.2299976, 14.8899794))
    u224(CFrame.new(-207.538849, 32.8910141, 296.944031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(41.1999626, 87.4399948, 2.19000244))
    u224(CFrame.new(-187.778656, 27.8627968, 362.189514, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(125.759773, 117.039948, 42.3200684))
    u224(CFrame.new(-47.6979599, 48.4710083, 120.507584, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(68.4998016, 72.6599579, 42.0500107))
    u224(CFrame.new(-330.275391, 43.1127968, 387.889862, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(245.559784, 86.5399475, 41.8200684))
    u224(CFrame.new(267.329956, 44.1549873, 47.4600601, 1, 0, -4.3711388300000005e-8, 0, 1, 0, 4.3711388300000005e-8, 0, 1), Vector3.new(83.4698105, 65.7099991, 33.4500122))
    u224(CFrame.new(-281.293365, 65.0105286, 53.0568275, -0.241921902, -2.11494839e-8, 0.970295727, -1.7224871800000001e-7, 1, -2.11494839e-8, -0.970295727, -1.7224871800000001e-7, -0.241921902), Vector3.new(145.519989, 89.8999939, 14.3299999))
    u224(CFrame.new(-463.079102, 43.6127968, 295.492493, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(245.559784, 85.5399475, 41.8200684))
    u224(CFrame.new(46.2713356, 50.5749092, -60.2988358, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(102.98999, 76.6199799, 150.919952))
    u224(CFrame.new(-51.3865967, 44.7459869, 279.715424, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(140.999802, 54.1599617, 44.3200684))
    u224(CFrame.new(-304.962646, 44.8627968, 155.790512, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(245.559784, 83.0399475, 41.8200684))
    u224(CFrame.new(-33.8865967, 44.7459869, 164.972504, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(101.999802, 54.1599617, 52.3200684))
    u224(CFrame.new(-303.172791, 48.7665901, -37.5034637, -0.10452842, -9.13816489e-9, 0.994521916, -1.74366647e-7, 1, -9.13816489e-9, -0.994521916, -1.74366647e-7, -0.10452842), Vector3.new(48.9499397, 19.0299969, 20.3599987))
    u224(CFrame.new(13.9149284, 36.9860115, 136.112579, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(57.2598, 95.6299896, 76.2600098))
    u224(CFrame.new(-219.415039, 70.8955231, 110.323151, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(83.8099518, 122.169983, 13.8299999))
    u224(CFrame.new(-165.575058, 61.5059929, 108.555695, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(41.9299812, 144.669952, 23.8700027))
    u224(CFrame.new(-198.054108, 47.3627968, 299.961273, -0.809017003, -7.07265144e-8, 0.587785244, -1.38808588e-7, 1, -7.07265144e-8, -0.587785244, -1.38808588e-7, -0.809017003), Vector3.new(21.0899963, 78.0399475, 6.30006504))
    u224(CFrame.new(17.4978638, 32.8910141, 45.4267883, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(38.8299904, 87.4399948, 201.079956))
    u224(CFrame.new(-304.545441, 64.4899902, 21.4497986, -0.104528427, 1.77635684e-15, 0.994521916, 0, 1, 0, -0.994521916, 1.42108547e-14, -0.104528427), Vector3.new(190.769989, 98.3999939, 10.8299999))
    u224(CFrame.new(-112.038849, 4.6410141, 169.694031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(17.6999512, 30.9399948, 41.1900024))
    u224(CFrame.new(-249.993698, 65.0105209, 98.5818253, -0.681998253, -2.1149468e-8, 0.731353581, -1.4039864e-7, 1, -1.02005565e-7, -0.731353581, -1.7224871800000001e-7, -0.681998253), Vector3.new(214.269989, 89.8999939, 3.57999992))
    u224(CFrame.new(-248.899078, 32.8910065, -55.5102959, -0.121869326, -1.06541549e-8, 0.992546141, -1.7419391400000002e-7, 1, -1.06541549e-8, -0.992546141, -1.7419391400000002e-7, -0.121869326), Vector3.new(4.34993744, 87.4399948, 8.17000008))
    u224(CFrame.new(-273.835968, 17.4611702, 40.0727425, 0, -8.74227695e-8, 1, -8.74227837e-8, 1, 8.74227837e-8, -1, -8.74227837e-8, 0), Vector3.new(230.769989, 4.8999939, 88.3300018))
    u224(CFrame.new(-251.195892, 7.01116419, 91.0399628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 33.1999054))
    u224(CFrame.new(-249.195892, 6.01116419, 91.5399628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 41.1999054))
    u224(CFrame.new(-247.195892, 5.01116419, 93.2899628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 45.6999054))
    u224(CFrame.new(-245.195892, 4.01116419, 89.2899628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 50.6999054))
    u224(CFrame.new(-243.195892, 3.01116443, 92.0399628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 46.1999054))
    u224(CFrame.new(-241.195892, 2.01116443, 92.2899628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 47.6999054))
    u224(CFrame.new(-239.195892, 1.01116467, 95.2899628, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(47.0499802, 24, 45.6999054))
    u224(CFrame.new(-181.175049, 11.859992, 89.4149475, -2.8091230900000004e-16, -8.74227624e-8, 1, -8.742277660000001e-8, 1, 8.74227908e-8, -1, -8.742277660000001e-8, 7.3618310099999995e-15), Vector3.new(33.769989, 0.899993896, 68.8300018))
    u224(CFrame.new(-38.9890747, 11.6300173, -100.624664, -1, -8.742277660000001e-8, 7.7025881300000005e-15, -8.742277660000001e-8, 1, -8.742277660000001e-8, -5.9846265899999995e-17, -8.742277660000001e-8, -1), Vector3.new(388.849945, 2.43999481, 252.609985))
    u224(CFrame.new(-79.9495239, 44.2010269, -44.2266006, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(20.7299576, 64.8199921, 24.7199955))
    u224(CFrame.new(-114.449524, 44.2010269, -44.2266006, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(21.7299576, 64.8199921, 24.7199955))
    u224(CFrame.new(-146.699524, 44.2010269, -23.4766006, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(56.2299576, 64.8199921, 66.2199936))
    u224(CFrame.new(-47.6995239, 44.2010345, -30.7266006, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(41.22995, 64.8199921, 51.7199936))
    u224(CFrame.new(121.772171, 36.9860115, -141.885376, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(21.3599701, 95.6299896, 66.4499969))
    u224(CFrame.new(305.272156, 36.9860115, -162.635376, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(125.35997, 95.6299896, 24.9500008))
    u224(CFrame.new(207.30394, 36.9860153, 63.8677101, -0.707106769, -6.1817239299999995e-8, 0.707106769, -1.49240009e-7, 1, -6.1817239299999995e-8, -0.707106769, -1.49240009e-7, -0.707106769), Vector3.new(6.83981705, 95.6299896, 61.0600052))
    u224(CFrame.new(182.976639, 30.7049866, 90.3965759, -0.887010872, -3.55271368e-15, 0.46174866, 0, 1, -7.10542736e-15, -0.46174866, 0, -0.887010872), Vector3.new(5.33981705, 95.6299896, 14.0600052))
    u224(CFrame.new(178.860107, 32.4249954, 129.819794, -1.00000012, -3.15129545e-15, -2.98023224e-8, 3.15129566e-15, 1, -8.745887929999999e-15, 2.98023224e-8, 8.745887929999999e-15, -1.00000012), Vector3.new(4.33981705, 95.6299896, 69.0600052))
    u224(CFrame.new(160.610107, 32.4249954, 163.569794, -1.00000012, -3.15129545e-15, -2.98023224e-8, 3.15129566e-15, 1, -8.745887929999999e-15, 2.98023224e-8, 8.745887929999999e-15, -1.00000012), Vector3.new(40.839817, 95.6299896, 1.56000519))
    u224(CFrame.new(88.459198, 36.9860115, 166.613754, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(114.259796, 95.6299896, 9.76000977))
    u224(CFrame.new(311.260925, 24.7869816, -58.2802277, -1, -8.74098589e-8, -1.52582125e-9, -8.74224142e-8, 0.99984777, 0.0174522698, 3.52690052e-14, 0.0174522698, -0.99984777), Vector3.new(23.3499451, 39.9399948, 24.6099854))
    u224(CFrame.new(17.1134033, 44.7459869, 243.465424, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3.99980164, 54.1599617, 116.820068))
    u224(CFrame.new(-166.538849, 32.8910141, 307.694031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(19.6999626, 87.4399948, 79.1900024))
    u224(CFrame.new(-207.538849, 32.8910141, 217.694031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(82.6999664, 87.4399948, 2.19000244))
    u224(CFrame.new(-427.212646, 47.3627853, 175.540512, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(31.0597839, 78.0399475, 81.3200684))
    u224(CFrame.new(-176.288849, 32.8910141, 211.694031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(42.6999664, 87.4399948, 59.6900024))
    u224(CFrame.new(75.8479004, 0.891014099, -2.7682178, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(391.440002, 23.4399948, 462.780029))
    u224(CFrame.new(-49.6365967, 18.9959869, 200.222504, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(133.499802, 2.6599617, 121.820068))
    u224(CFrame.new(-290.788849, 0.641014099, 262.194031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(241.699966, 22.9399948, 369.690002))
    u224(CFrame.new(-109.038849, 1.3910141, 264.194031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(237.699951, 24.4399948, 35.1900024))
    u224(CFrame.new(239.912186, 36.9860115, -22.4993649, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(117.339813, 95.6299896, 48.0800133))
    u224(CFrame.new(178.260925, 23.3800297, -162.874664, -1, -8.742277660000001e-8, 7.7025881300000005e-15, -8.742277660000001e-8, 1, -8.742277660000001e-8, -5.9846265899999995e-17, -8.742277660000001e-8, -1), Vector3.new(121.349945, 25.9399948, 128.109985))
    u224(CFrame.new(307.760925, 23.380043, -136.374664, -1, -8.742277660000001e-8, 7.7025881300000005e-15, -8.742277660000001e-8, 1, -8.742277660000001e-8, -5.9846265899999995e-17, -8.742277660000001e-8, -1), Vector3.new(137.349945, 25.9399948, 181.109985))
    u224(CFrame.new(-99.9021072, -12.9436626, 113.714745, -3.53632537e-8, 2.56929074e-8, -1, 0.587785184, 0.809016943, -4.4408921e-16, 0.809016943, -0.587785184, -4.37113918e-8), Vector3.new(79.9400024, 23.4399948, 56.2800293))
    u224(CFrame.new(42.959198, 36.9860115, 134.363754, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(23.2597961, 95.6299896, 74.2600098))
    u224(CFrame.new(-121.288857, 0.756968558, 202.870163, -4.20180761e-8, 1.20484973e-8, 1, 0.275637388, 0.961261809, 3.33066907e-15, -0.961261809, 0.275637388, -4.37113918e-8), Vector3.new(59.1999512, 23.9399948, 10.6900024))
    u224(CFrame.new(310.510925, 23.1539402, -49.8755417, -1, -7.33189793e-8, -4.76138418e-8, -8.7422741e-8, 0.838670671, 0.544638932, -1.30358269e-14, 0.544638932, -0.838670671), Vector3.new(24.8499451, 39.9399948, 16.6099854))
    u224(CFrame.new(310.510925, 21.0615959, -71.9470215, -1, -7.78942706e-8, 3.9689119500000003e-8, -8.742277660000001e-8, 0.89100647, -0.453990608, -5.3323414e-17, -0.453990608, -0.89100647), Vector3.new(24.8499451, 39.9399948, 24.6099854))
    u224(CFrame.new(137.010925, 20.868412, -68.4826736, -1, -8.04731002e-8, -3.41587914e-8, -8.74227695e-8, 0.920504868, 0.390731037, -5.1442064499999995e-17, 0.390731037, -0.920504868), Vector3.new(38.8499451, 4.43999481, 68.1099854))
    u224(CFrame.new(256.935089, 9.34212494, 30.1253357, -0.920504808, -0.390731215, 3.55271368e-15, -0.390731215, 0.920504808, -8.74227837e-8, 3.4158798499999996e-8, -8.04730931e-8, -1), Vector3.new(66.8499451, 24.4399948, 66.1099854))
    u224(CFrame.new(337.760925, 22.6300564, 12.8753357, -1, -8.742277660000001e-8, 7.7025881300000005e-15, -8.742277660000001e-8, 1, -8.742277660000001e-8, -5.9846265899999995e-17, -8.742277660000001e-8, -1), Vector3.new(77.3499451, 24.4399948, 100.609985))
    u224(CFrame.new(337.010925, 22.1300583, 30.1253357, -1, -8.742277660000001e-8, 7.7025881300000005e-15, -8.742277660000001e-8, 1, -8.742277660000001e-8, -5.9846265899999995e-17, -8.742277660000001e-8, -1), Vector3.new(78.8499451, 23.4399948, 66.1099854))
    u224(CFrame.new(329.510925, 21.1300583, 30.1253357, -1, -8.742277660000001e-8, 7.7025881300000005e-15, -8.742277660000001e-8, 1, -8.742277660000001e-8, -5.9846265899999995e-17, -8.742277660000001e-8, -1), Vector3.new(93.8499451, 24.4399948, 66.1099854))
    u224(CFrame.new(-110.288849, 1.1410141, 231.444031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(51.1999512, 23.9399948, 37.6900024))
    u224(CFrame.new(-112.038849, 0.891014099, 231.444031, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(51.1999512, 23.4399948, 41.1900024))
    u224(CFrame.new(-245.053238, 24.6439991, -76.1922913, 0.131052777, 0.743242264, 0.656061411, -0.984807491, 0.173650265, -3.70293856e-6, -0.113928005, -0.646093667, 0.754707873), Vector3.new(4.34993744, 13.9399948, 22.9200001))
    u224(CFrame.new(-219.118988, 16.1449757, -98.7366257, -0.342632473, 0.672451258, 0.656058371, -0.891007841, -0.453988045, -5.2712857699999995e-6, 0.297839075, -0.58455497, 0.754710317), Vector3.new(4.34993744, 33.9399948, 22.9200001))
    u224(CFrame.new(-235.20369, 24.6545467, -84.7544098, -0.118063509, 0.745420098, 0.656065226, -0.987691581, -0.156433806, -3.13296914e-6, 0.102626264, -0.647989988, 0.754713774), Vector3.new(4.59993744, 13.9399948, 22.9200001))
    u224(CFrame.new(-254.772614, 20.8520355, -67.7679214, 0.335811794, 0.688516259, 0.642787576, -0.898794055, 0.438371211, -1.8626451499999999e-9, -0.281779528, -0.577733696, 0.766044378), Vector3.new(3.09993744, 14.6899948, 22.9200001))

    if _G.destroy_map then
        workspace.Terrain:Clear()

        local v654, v655, v656 = pairs(workspace:GetChildren())

        while true do
            local v657

            v656, v657 = v654(v655, v656)

            if v656 == nil then
                break
            end
            if (v657.ClassName == 'Model' or v657.ClassName == 'Part' or (v657.ClassName == 'UnionOperation' or v657.ClassName == 'WedgePart') or v657.Name == 'MeshPart') and (v657 ~= game.Players.LocalPlayer.Character and v657.Name ~= u5 and (v657.Name ~= 'secondBossSafeSpots' and v657.Name ~= 'finalBossObjectSpawns')) then
                v657:Destroy()
            end
        end
    end
end
function steamFix()
    u224(CFrame.new(1598.42798, -10.4780731, -429.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(2.5, 59, 146.5))
    u224(CFrame.new(1487.67798, -10.4780731, -502.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(224, 59, 0.5))
    u224(CFrame.new(1488.92798, -10.4780731, -357.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(221.5, 59, 7))
    u224(CFrame.new(1388.92798, -40.2280731, -429.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(44.5, 29.5, 151))
    u224(CFrame.new(1431.1106, -53.0152588, -431.698364, 0.882947683, 0.469471514, 0, -0.469471514, 0.882947683, 0, 0, 0, 1), Vector3.new(62.5, 29.5, 31.5))
    u224(CFrame.new(1326.0979, -27.7056007, -431.698364, 0.965927362, 0.258819342, 0, -0.258819342, 0.965927362, 0, 0, 0, 1), Vector3.new(155, 29.5, 31.5))
    u224(CFrame.new(1316.12097, -7.95021439, -416.198364, 0.965927362, 0.258819342, 0, -0.258819342, 0.965927362, 0, 0, 0, 1), Vector3.new(125.5, 62.5, 0.5))
    u224(CFrame.new(1316.84546, -8.14432907, -447.948364, 0.965927362, 0.258819342, 0, -0.258819342, 0.965927362, 0, 0, 0, 1), Vector3.new(127, 62.5, 3))
    u224(CFrame.new(1171.92798, -8.22807312, -429.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(165.5, 29.5, 151))
    u224(CFrame.new(1171.92798, 9.52192688, -481.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(165.5, 65, 47))
    u224(CFrame.new(1171.92798, 9.52192688, -397.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(165.5, 65, 10.5))
    u224(CFrame.new(1088.17798, 9.52192688, -408.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(5, 65, 33.5))
    u224(CFrame.new(1088.92798, 9.52192688, -447.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3.5, 65, 22.5))
    u224(CFrame.new(1059.92798, -3.47807312, -429.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(61.5, 39, 58.5))
    u224(CFrame.new(1034.92798, -7.47807312, -429.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(111.5, 31, 94.5))
    u224(CFrame.new(1019.40039, -7.82135487, -430.448364, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1), Vector3.new(40.5, 31.5, 28))
    u224(CFrame.new(978.677979, 0.27192688, -429.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(2, 14.5, 94.5))
    u224(CFrame.new(977.927979, 0.0219268799, -429.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(2.5, 14, 94.5))
    u224(CFrame.new(977.427979, -0.22807312, -429.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3.5, 13.5, 94.5))
    u224(CFrame.new(960.427979, -13.4780731, -437.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(37.5, 39, 161.5))
    u224(CFrame.new(937.427979, -13.4780731, -481.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(83.5, 39, 74.5))
    u224(CFrame.new(937.427979, 8.27192688, -510.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(83.5, 82.5, 15.5))
    u224(CFrame.new(976.177979, 8.27192688, -489.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(9, 82.5, 56.5))
    u224(CFrame.new(975.927979, 8.27192688, -379.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(8.5, 82.5, 39))
    u224(CFrame.new(811.927979, -33.4780731, -435.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(334.5, 2, 165))
    u224(CFrame.new(947.677979, -27.1234665, -424.020416, 1, 0, 0, 0, 0.777145922, -0.629320383, 0, 0.629320383, 0.777145922), Vector3.new(63, 27, 72.5))
    u224(CFrame.new(680.177979, -8.72807312, -364.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(71, 51.5, 32.5))
    u224(CFrame.new(679.927979, -9.72807312, -493.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(70.5, 49.5, 31))
    u224(CFrame.new(644.177979, -16.4780731, -461.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(4, 36, 35))
    u224(CFrame.new(644.177979, -16.4780731, -395.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(4, 36, 38))
    u224(CFrame.new(597.093445, -20.3076077, -428.198364, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813, 0, 0, 0, 1), Vector3.new(129, 2, 35.5))
    u224(CFrame.new(398.177979, -18.7280731, -428.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(277, 31.5, 103.5))
    u224(CFrame.new(496.177979, 1.77192688, -377.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(81, 72.5, 3))
    u224(CFrame.new(496.177979, 1.77192688, -480.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(81, 72.5, 3.5))
    u224(CFrame.new(467.177979, 1.77192688, -459.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(5, 72.5, 45))
    u224(CFrame.new(467.177979, 1.77192688, -399.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(5, 72.5, 39))
    u224(CFrame.new(589.427979, 1.77192688, -397.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(111.5, 72.5, 34))
    u224(CFrame.new(589.427979, 1.77192688, -466.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(111.5, 72.5, 46))
    u224(CFrame.new(351.927979, -3.47807312, -464.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(221.5, 62, 30))
    u224(CFrame.new(260.677979, -18.4780731, -428.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(2, 32, 103.5))
    u224(CFrame.new(249.677979, -17.9780731, -428.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(21, 33, 103.5))
    u224(CFrame.new(249.677979, -7.97807312, -428.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(19, 15, 103.5))
    u224(CFrame.new(249.677979, -7.47807312, -438.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(16, 16, 82.5))
    u224(CFrame.new(234.190384, -24.4961605, -428.198364, 0.848048091, -0.529919267, 0, 0.529919267, 0.848048091, 0, 0, 0, 1), Vector3.new(33, 33, 103.5))
    u224(CFrame.new(115.927979, -27.2280731, -296.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(292.5, 38.5, 396.5))
    u224(CFrame.new(41.9279785, -22.7280731, -25.4483643, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(56.5, 47.5, 147))
    u224(CFrame.new(69.1779785, 11.0219269, 10.3016357, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(2, 54, 75.5))
    u224(CFrame.new(18.4279785, 11.0219269, 10.0516357, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(0.5, 54, 76))
    u224(CFrame.new(44.1779785, 11.0219269, 43.3016357, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(52, 54, 9.5))
    u224(CFrame.new(43.1779785, -8.81507015, -108.920464, 1, 0, 0, 0, 0.906307936, 0.4226183, 0, -0.4226183, 0.906307936), Vector3.new(33, 9, 29))
    u224(CFrame.new(915.927979, -13.4780731, -419.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1.5, 39, 50))
    u224(CFrame.new(1105.50012, 1.51558495, -430.948364, 0.838670552, 0.544639051, 0, -0.544639051, 0.838670552, 0, 0, 0, 1), Vector3.new(40.5, 8.5, 12))
    u224(CFrame.new(1258.92798, 9.52192688, -475.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(13.5, 65, 58.5))
    u224(CFrame.new(1259.17798, 9.52192688, -409.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(14, 65, 14))
    u224(CFrame.new(1421.67798, -37.7280731, -416.198364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(31, 34.5, 0.5))
    u224(CFrame.new(1421.67798, -38.4780731, -447.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(31, 33, 0.5))
    u224(CFrame.new(942.427979, 25.0219269, -440.073364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1.5, 39, 10.75))
    u224(CFrame.new(1370.17798, -24.7280731, -383.448364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(7, 60.5, 59))
    u224(CFrame.new(1371.92798, -24.7280731, -475.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(10.5, 60.5, 60))
    u224(CFrame.new(1059.42798, 3.02192688, -401.698364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(99.5, 52, 47.5))
    u224(CFrame.new(1059.17798, 3.02192688, -449.948364, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(99, 52, 26))
    wait(0.1)

    if _G.destroy_map then
        local v658 = u11(workspace, 'borders')
        local v659, v660, v661 = pairs(v658:GetChildren())

        while true do
            local v662

            v661, v662 = v659(v660, v661)

            if v661 == nil then
                break
            end

            u213:AddTag(v662, 'RayWhitelist')
        end

        workspace.Terrain:Clear()

        local v663, v664, v665 = pairs(workspace:GetChildren())

        while true do
            local v666

            v665, v666 = v663(v664, v665)

            if v665 == nil then
                break
            end
            if (v666.ClassName == 'Model' or v666.ClassName == 'Part' or (v666.ClassName == 'UnionOperation' or v666.ClassName == 'WedgePart') or v666.Name == 'MeshPart') and (v666 ~= game.Players.LocalPlayer.Character and v666.Name ~= u5) then
                v666:Destroy()
            end
        end
    end
end
function ghastlyFix()
    _G.smallTeleportVal = 100
    _G.SemiTeleports = true
    _G.teleportDuringBossOnly = false

    u224(CFrame.new(314.997986, 164.955307, 141.573303, 0.969875216, 0, 0.243605107, 0, 1.00000072, 0, -0.243605226, 0, 0.96987462), Vector3.new(47.75, 1.75, 32.25))
    u224(CFrame.new(330.773529, 164.955322, 178.724518, 0.847127557, 0, 0.531389952, 0, 1.00000024, 0, -0.531390011, 0, 0.847127378), Vector3.new(35.25, 1.75, 66.5))
    u224(CFrame.new(291.867157, 164.455322, 192.210632, 0.847127557, 0, 0.531389952, 0, 1.00000024, 0, -0.531390011, 0, 0.847127378), Vector3.new(45.5, 0.75, 28.5))
    u224(CFrame.new(314.526306, 166.267242, 122.420898, 0.999228716, 0.0203912593, 0.0335599519, 0.0000898155777, 0.853422642, -0.521219611, -0.0392691493, 0.520820618, 0.852762461), Vector3.new(31.25, 5.75, 11))
    u224(CFrame.new(309.891113, 205.179276, -100.146835, 0.995393157, 1.8626451499999999e-9, 0.0958794728, 0, 1.00000012, -2.98023224e-8, -0.0958794951, 0, 0.995392919), Vector3.new(44, 6, 43.25))
    u224(CFrame.new(310.046906, 204.929276, -98.5293198, 0.995393157, 1.8626451499999999e-9, 0.0958794728, 0, 1.00000012, -2.98023224e-8, -0.0958794951, 0, 0.995392919), Vector3.new(44, 5.5, 46.5))
    u224(CFrame.new(312.679291, 209.306335, -100.399132, 0.95375818, 0.156644791, 0.256531715, 0.0000263154507, 0.853422999, -0.521219373, -0.300576419, 0.497123897, 0.813954473), Vector3.new(60.25, 2, 15))
    u224(CFrame.new(288.865051, 212.591721, -123.438225, 0.948331475, 9.31322575e-10, 0.317283809, -1.49011612e-8, 1.00000048, -2.98023224e-8, -0.317284107, 0, 0.948330641), Vector3.new(71.25, 2.75, 46.5))
    u224(CFrame.new(271.416656, 208.042877, -149.974716, 0.963662565, -0.133397385, 0.231429577, -0.0000228088975, 0.866338432, 0.499457479, -0.267122626, -0.481313825, 0.834854841), Vector3.new(44.25, 2.5, 18.75))
    u224(CFrame.new(317.858276, 226.091736, -141.969772, 0.902594805, -1.11274026e-7, 0.430492133, -6.26038599e-8, 1.00000179, -1.56817535e-7, -0.430491447, -1.11401803e-7, 0.902596354), Vector3.new(14.5, 26.75, 20.25))
    u224(CFrame.new(327.610962, 226.091751, -128.030334, 0.713265777, -3.46563553e-7, 0.700896978, -2.28876587e-7, 1.00000536, -4.53092753e-7, -0.700894475, -3.37397211e-7, 0.713270009), Vector3.new(14.5, 26.75, 20.25))
    u224(CFrame.new(299.221466, 219.653625, -171.897232, 0.999782085, -1.21432961e-7, 0.0208872557, -1.15081804e-7, 1.00000358, -3.0527127099999998e-7, -0.0208872557, -3.02800913e-7, 0.999785483), Vector3.new(22.25, 41.75, 50.249836))
    u224(CFrame.new(302.612976, 218.403732, -206.136353, 0.914973915, 3.57694532e-8, -0.403517187, -2.30164034e-7, 1.00000715, -6.10544703e-7, 0.403514266, -6.51506639e-7, 0.914980114), Vector3.new(18, 41, 29.249836))
    u224(CFrame.new(326.326263, 224.250214, -238.250687, 0.697180986, 1.19631932e-6, -0.716895223, -4.60329346e-7, 1, 1.22108031e-6, 0.716895163, -5.21306106e-7, 0.697180986), Vector3.new(15.5, 41, 52.499836))
    u224(CFrame.new(273.453644, 206.549149, -171.125031, 0.999962032, 0, 0.00871858001, -1.49011612e-8, 1.00000012, -8.94069672e-8, -0.00871856511, -2.98023224e-8, 0.999962091), Vector3.new(43.5, 1.5, 45.25))
    u224(CFrame.new(276.836884, 203.299271, -199.41629, 0.999660194, -0.0130174877, 0.0225868188, -3.66615131e-6, 0.866337717, 0.499459028, -0.026069466, -0.499289542, 0.866043389), Vector3.new(48.75, 0.75, 14))
    u224(CFrame.new(278.942017, 199.432602, -215.061096, 0.917066813, 7.4505806e-8, -0.398734063, -2.79396772e-8, 1.00000048, -2.38418579e-7, 0.398733914, -2.38418579e-7, 0.917067349), Vector3.new(39, 2.75, 44.25))
    u224(CFrame.new(289.955353, 198.776428, -221.000946, 0.771579385, -0.317793787, -0.551065564, 0.000133678317, 0.866355062, -0.499431521, 0.636133432, 0.385276377, 0.668504), Vector3.new(52, 0.749944925, 32.75))
    u224(CFrame.new(310.594818, 206.462585, -252.894989, 0.675608575, 6.66826963e-7, -0.737262726, -1.34110451e-7, 1.00000179, -1.01327896e-6, 0.737261295, -8.04662704e-7, 0.675610304), Vector3.new(52, 1.24994493, 49))
    u224(CFrame.new(69.4087906, 144.00502, -171.119354, 0.99996233, -5.89203459e-8, 0.00871866941, -5.46784662e-8, 1.00000095, -4.86772592e-7, -0.0087184906, -4.86277315e-7, 0.999963284), Vector3.new(43.75, 3.75, 49))
    u224(CFrame.new(52.5376968, 153.755035, -170.597244, 0.99996233, -5.89203459e-8, 0.00871866941, -5.46784662e-8, 1.00000095, -4.86772592e-7, -0.0087184906, -4.86277315e-7, 0.999963284), Vector3.new(10, 23.25, 48.25))
    u224(CFrame.new(64.1473999, 141.698074, -201.493713, 0.999660909, -0.0130176228, 0.022584945, -2.62307003e-6, 0.86633873, 0.499459445, -0.0260674842, -0.499291092, 0.866045833), Vector3.new(29.5, 1.24981689, 14.25))
    u224(CFrame.new(62.3234749, 137.645157, -210.031967, 0.837708116, -1.23679638e-6, 0.546123624, -2.17929482e-7, 1.00000381, -1.90734863e-6, -0.546121001, -1.4603138000000002e-6, 0.837710857), Vector3.new(38.25, 3.49981689, 32.5))
    u224(CFrame.new(-166.044968, 37.7829933, 287.729126, 0.0175017715, -2.39997362e-23, 0.999847293, 2.16954798e-23, 1, -2.43831762e-23, -0.999847054, -2.21189041e-23, 0.0175016522), Vector3.new(119.25, 16.2497978, 131.25))
    u224(CFrame.new(26.7727909, 131.330139, -229.596436, 0.498491108, -1.49011612e-8, 0.866894901, 0, 1, -2.98023224e-8, -0.86689496, -2.98023224e-8, 0.498491049), Vector3.new(49.75, 3.74981594, 60.25))
    u224(CFrame.new(52.0516853, 155.705139, -223.206177, 0.828062892, -2.1161690699999998e-7, 0.560636103, 4.75783892e-8, 1, -2.57120234e-7, -0.560636997, -1.3397551900000002e-7, 0.828062534), Vector3.new(38.25, 44.9998169, 3.75))
    u224(CFrame.new(104.046776, 139.162552, -171.938599, 0.986322045, -0.164742291, 0.00536258006, 0.164738536, 0.986336589, 0.00113770308, -0.00547673693, -0.000238718087, 0.99998498), Vector3.new(32.0000076, 16.1000004, 19.6999855))
    u224(CFrame.new(181.243668, 158.680099, -172.372742, 0.942704737, -0.333585948, 0.0053159981, 0.333584517, 0.94271946, 0.00117557438, -0.00540364953, 0.00066511496, 0.999985158), Vector3.new(27.6000061, 18.1999969, 19.6999855))
    u224(CFrame.new(131.853058, 145.830246, -172.094543, 0.976343989, -0.216156989, 0.0053403331, 0.216153711, 0.976358593, 0.00119193445, -0.00547172502, -9.405310270000001e-6, 0.999985039), Vector3.new(25.4000072, 14.2999983, 19.6999855))
    u224(CFrame.new(318.447052, 163.461685, 37.7652664, 0.999982238, 0.000530938152, 0.0059381309, 0.0000135496957, 0.995821595, -0.0913198441, -0.00596180419, 0.0913182944, 0.995803893), Vector3.new(16.2999992, 19.3199978, 41.7999878))
    u224(CFrame.new(318.052277, 174.400818, -28.883812, 0.999982417, 0.00173310237, 0.00567422993, 0.0000261646928, 0.955086589, -0.296326905, -0.00593294576, 0.296321839, 0.955069721), Vector3.new(16.2999992, 26.0899982, 41.7999878))
    u224(CFrame.new(226.274368, 183.300385, -172.641464, 0.870467842, -0.492196739, 0.00530316494, 0.492197692, 0.870482564, 0.00121696084, -0.00521529652, 0.00155088026, 0.999985218), Vector3.new(25.4000072, 11.5999985, 19.6999855))
    u224(CFrame.new(152.616531, 158.295456, -172.219894, 0.958893836, -0.283715218, 0.005320244, 0.283712894, 0.958908498, 0.00120666309, -0.0054439758, 0.000352359959, 0.999985099), Vector3.new(170.769989, 20.6599998, 19.6999855))
    u224(CFrame.new(318.252289, 167.785767, 4.91963005, 0.999982595, 0.00117594865, 0.00578253064, -0.0000267500873, 0.980835259, -0.194838986, -0.00590083003, 0.194835439, 0.980818212), Vector3.new(16.2999992, 21.3699989, 41.7999878))
    u224(CFrame.new(244.598236, 195.088745, -172.753021, 0.824243903, -0.566209912, 0.00532178301, 0.566212296, 0.824258626, 0.00119986106, -0.00506589841, 0.00202428014, 0.999985099), Vector3.new(25.4000072, 11.2999992, 19.6999855))
    u224(CFrame.new(203.613464, 171.606827, -172.507065, 0.917157352, -0.398489952, 0.00530689815, 0.398489475, 0.917172134, 0.00119122909, -0.00534203229, 0.00102219847, 0.999985218), Vector3.new(25.4000072, 11.8999987, 19.6999855))
    u224(CFrame.new(317.851074, 185.098953, -62.7725983, 0.999982536, 0.00234849169, 0.00542167015, -0.0000189922284, 0.918884039, -0.394527793, -0.00590843149, 0.394520819, 0.918868005), Vector3.new(16.2999992, 29.8699989, 41.7999878))
    u224(CFrame.new(313.591675, 164.848785, 87.4919815, 0.999982238, 0.0000123396703, 0.00595618133, 0.0000123396703, 0.999991417, -0.00414342992, -0.00595618133, 0.00414342992, 0.999973655), Vector3.new(26.6000271, 12.3999996, 63.6499863))
    u224(CFrame.new(313.780762, 164.967224, 119.242188, 0.999982238, 0.0000123396703, 0.00595618133, 0.0000123396703, 0.999991417, -0.00414342992, -0.00595618133, 0.00414342992, 0.999973655), Vector3.new(26.6000271, 12.8999996, 1.64998627))
    u224(CFrame.new(360.600037, 217.278778, 183.034668, -0.66911006, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, -0.66911006), Vector3.new(77.5999832, 140.259995, 5.57999849))
    u224(CFrame.new(329.736298, 201.704147, 121.851646, 0.990270376, 0, 0.13915664, 0, 1, 0, -0.13915664, 0, 0.990270376), Vector3.new(8.30997372, 92.3699722, 7.27999878))
    u224(CFrame.new(336.563782, 201.704147, 98.0409088, 0.961273968, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, 0.961273968), Vector3.new(8.30997372, 92.3699722, 49.2699966))
    u224(CFrame.new(336.604401, 225.51413, 1.04374969, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(22.5599785, 139.98996, 158.379974))
    u224(CFrame.new(291.936859, 201.704147, 117.422958, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(22.5599785, 92.3699722, 85.6899643))
    u224(CFrame.new(325.460632, 217.398804, 205.506134, 0.601813793, 0, -0.798636556, 0, 1, 0, 0.798636556, 0, 0.601813793), Vector3.new(31.1900005, 140.5, 5.57999849))
    u224(CFrame.new(356.861755, 217.278778, 201.473495, 0.79861635, 0, 0.601840496, 0, 1, 0, -0.601840496, 0, 0.79861635), Vector3.new(52.8799973, 140.259995, 5.57999849))
    u224(CFrame.new(332.964478, 201.704147, 137.253326, 0.139203906, 0, -0.99026376, 0, 1, 0, 0.99026376, 0, 0.139203906), Vector3.new(37.4799767, 92.3699722, 5.57999849))
    u224(CFrame.new(299.712402, 225.474121, 0.448717952, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(22.5599785, 139.909927, 154.210022))
    u224(CFrame.new(268.070129, 201.704147, 200.553894, 0.829036474, 0, 0.559194624, 0, 1, 0, -0.559194624, 0, 0.829036474), Vector3.new(4.10997677, 92.3699722, 43.399971))
    u224(CFrame.new(-3.77216744, 81.1528473, -397.064117, 0.987685978, 0, 0.156449571, 0, 1, 0, -0.156449571, 0, 0.987685978), Vector3.new(26.0000801, 131.969925, 144.389969))
    u224(CFrame.new(-417.882141, 71.6578674, -111.429916, 0.956294656, 0, 0.292404652, 0, 1, 0, -0.292404652, 0, 0.956294656), Vector3.new(12.0600824, 112.979919, 155.639954))
    u224(CFrame.new(89.2471313, 201.152954, -201.564957, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(12.8600912, 155.529922, 27.2199631))
    u224(CFrame.new(-322.662384, 71.6578674, -175.193466, 0.970287263, 0, 0.241955817, 0, 1, 0, -0.241955817, 0, 0.970287263), Vector3.new(52.1000938, 112.979919, 26.0899544))
    u224(CFrame.new(-125.327179, 150.609619, 448.347321, 0, 1, 0, 1, 0, 0, 0, 0, -1), Vector3.new(110.670059, 16.2098866, 21.2899628))
    u224(CFrame.new(278.299347, 240.282928, -82.8367004, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747), Vector3.new(26.6800213, 77.2699661, 29.6099987))
    u224(CFrame.new(268.070129, 201.704147, 200.553894, 0.829036474, 0, 0.559194624, 0, 1, 0, -0.559194624, 0, 0.829036474), Vector3.new(4.10997677, 92.3699722, 43.399971))
    u224(CFrame.new(321.441681, 258.039154, -126.414459, -0.406715393, 0, 0.913554907, 0, 1, 0, -0.913554907, 0, -0.406715393), Vector3.new(129.209961, 9.13999081, 34.7499962))
    u224(CFrame.new(136.824524, 71.6578674, -210.560226, 0.788016856, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, 0.788016856), Vector3.new(23.9600925, 112.979919, 112.829971))
    u224(CFrame.new(280.31485, 201.704147, 174.340118, 0.829036474, 0, 0.559194624, 0, 1, 0, -0.559194624, 0, 0.829036474), Vector3.new(53.7299843, 92.3699722, 13.6299658))
    u224(CFrame.new(-42.6308556, 83.3778839, -423.266296, 0.987685978, 0, 0.156449571, 0, 1, 0, -0.156449571, 0, 0.987685978), Vector3.new(55.3900757, 136.419937, 3.29997849))
    u224(CFrame.new(253.593842, 201.152954, -198.05365, -0.999848366, 0, 0.017436387, 0, 1, 0, -0.017436387, 0, -0.999848366), Vector3.new(7.96000004, 155.529922, 9.87997532))
    u224(CFrame.new(80.389328, 130.517944, -178.993362, 0.587748766, 0, -0.809043527, 0, 1, 0, 0.809043527, 0, 0.587748766), Vector3.new(84.3001022, 14.2599249, 27.2500114))
    u224(CFrame.new(-56.7383423, 82.0228577, -388.675171, 0.987685978, 0, 0.156449571, 0, 1, 0, -0.156449571, 0, 0.987685978), Vector3.new(16.700079, 133.709915, 144.389969))
    u224(CFrame.new(-90.3630447, 71.6578674, -322.139832, 0.999847949, 0, -0.017436387, 0, 1, 0, 0.017436387, 0, 0.999847949), Vector3.new(76.3400879, 112.979919, 10.0999537))
    u224(CFrame.new(-269.883667, 71.6578674, -211.016266, 0.933587551, 0, 0.358349502, 0, 1, 0, -0.358349502, 0, 0.933587551), Vector3.new(28.4701061, 112.979919, 26.0899544))
    u224(CFrame.new(66.7276688, 201.152954, -145.322754, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(65.3700638, 155.529922, 7.01998234))
    u224(CFrame.new(147.480667, 71.6578674, -481.844696, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(84.450058, 112.979919, 15.2799673))
    u224(CFrame.new(171.137604, 201.152954, -190.154861, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(161.15007, 155.529922, 20.5299816))
    u224(CFrame.new(289.106201, 199.204453, -237.240112, -0.681973696, 0, 0.731376648, 0, 1, 0, -0.731376648, 0, -0.681973696), Vector3.new(46.5600014, 1.63998556, 20.0499992))
    u224(CFrame.new(46.1648331, 170.712921, -244.133514, 0.933587551, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, 0.933587551), Vector3.new(48.9500923, 94.6499176, 9.41996288))
    u224(CFrame.new(32.8624992, 71.6578674, -504.092804, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(84.450058, 112.979919, 15.2799673))
    u224(CFrame.new(171.137604, 201.152954, -154.059052, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(161.15007, 155.529922, 20.5299816))
    u224(CFrame.new(56.9643517, 128.217972, -214.544128, 0.587748766, 0, -0.809043527, 0, 1, 0, 0.809043527, 0, 0.587748766), Vector3.new(21.7401257, 9.65992451, 31.1400127))
    u224(CFrame.new(78.888588, 201.152954, -216.94101, 0.544665456, 0, -0.838653445, 0, 1, 0, 0.838653445, 0, 0.544665456), Vector3.new(23.9600925, 155.529922, 9.41996288))
    u224(CFrame.new(201.904037, 81.967865, -316.362091, 0.788016856, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, 0.788016856), Vector3.new(51.6700859, 133.59993, 141.20993))
    u224(CFrame.new(-151.983612, 71.6578674, -307.082306, 0.829036474, 0, 0.559194624, 0, 1, 0, -0.559194624, 0, 0.829036474), Vector3.new(100.530083, 112.979919, 10.0999537))
    u224(CFrame.new(-211.735306, 71.6578674, -241.287537, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044), Vector3.new(89.0900803, 112.979919, 10.0999537))
    u224(CFrame.new(10.404254, 71.6578674, -235.046997, 0.984812498, 0, 0.173621148, 0, 1, 0, -0.173621148, 0, 0.984812498), Vector3.new(39.1400681, 112.979919, 31.4799538))
    u224(CFrame.new(299.215668, 201.704147, 210.820496, 0.829036474, 0, 0.559194624, 0, 1, 0, -0.559194624, 0, 0.829036474), Vector3.new(53.7299843, 92.3699722, 13.6299658))
    u224(CFrame.new(302.519348, 248.124329, -170.130829, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118), Vector3.new(53.5899887, 22.2499924, 36.8600044))
    u224(CFrame.new(-72.5408325, 92.6578674, -226.426178, 0.999847949, 0, 0.017436387, 0, 1, 0, -0.017436387, 0, 0.999847949), Vector3.new(130.620087, 154.979904, 36.8499527))
    u224(CFrame.new(37.5846519, 71.6578674, -237.363373, 0.999847949, 0, -0.017436387, 0, 1, 0, 0.017436387, 0, 0.999847949), Vector3.new(21.0300751, 112.979919, 29.3599606))
    u224(CFrame.new(-239.524338, 71.6578674, -200.243027, 0.933587551, 0, 0.358349502, 0, 1, 0, -0.358349502, 0, 0.933587551), Vector3.new(28.4701061, 112.979919, 26.0899544))
    u224(CFrame.new(-286.944824, 71.6578674, -186.516891, 0.90629667, 0, 0.422642082, 0, 1, 0, -0.422642082, 0, 0.90629667), Vector3.new(28.4701061, 112.979919, 26.0899544))
    u224(CFrame.new(-390.022064, 71.6578674, -175.793915, 0.956294656, 0, 0.292404652, 0, 1, 0, -0.292404652, 0, 0.956294656), Vector3.new(86.9200897, 112.979919, 26.0899544))
    u224(CFrame.new(296.471771, 209.142975, -107.708954, -0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, -0.951068401), Vector3.new(68.9400024, 8.52998447, 9.06999397))
    u224(CFrame.new(27.5196838, 170.712921, -245.540726, 0.999847949, 0, 0.017436387, 0, 1, 0, -0.017436387, 0, 0.999847949), Vector3.new(48.9500923, 94.6499176, 9.41996288))
    u224(CFrame.new(285.192871, 209.142975, -142.421982, -0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, -0.951068401), Vector3.new(68.9400024, 8.52998447, 9.06999397))
    u224(CFrame.new(304.893066, 229.299469, -222.380829, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664), Vector3.new(6.65000296, 61.8299904, 10.8399925))
    u224(CFrame.new(39.5098419, 201.152954, -171.609802, 0, 0, -1, 0, 1, 0, 1, 0, 0), Vector3.new(66.7700806, 155.529922, 28.3999786))
    u224(CFrame.new(102.651863, 81.8628693, -404.385468, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(26.0000801, 133.389938, 184.459961))
    u224(CFrame.new(334.250702, 259.569092, -104.673012, -0.173624277, 0, 0.984811902, 0, 1, 0, -0.984811902, 0, -0.173624277), Vector3.new(80.2499771, 208.099976, 9.06999397))
    u224(CFrame.new(257.434692, 240.282928, -114.319412, -0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, -0.951068401), Vector3.new(7.70001984, 77.2699661, 45.7699966))
    u224(CFrame.new(331.207611, 201.152954, -268.791962, -0.74314785, 0, -0.669127226, 0, 1, 0, 0.669127226, 0, -0.74314785), Vector3.new(7.96000004, 155.529922, 50.1699715))
    u224(CFrame.new(259.305756, 201.152954, -219.461853, -0.906296611, 0, 0.422642082, 0, 1, 0, -0.422642082, 0, -0.906296611), Vector3.new(7.96000004, 155.529922, 52.3299637))
    u224(CFrame.new(285.489746, 202.64946, -249.168152, -0.681973696, 0, 0.731376648, 0, 1, 0, -0.731376648, 0, -0.681973696), Vector3.new(68.9400024, 8.52998447, 9.06999397))
    u224(CFrame.new(271.153839, 202.64946, -189.05751, -1, 0, 0, 0, 1, 0, 0, 0, -1), Vector3.new(68.9400024, 8.52998447, 9.06999397))
    u224(CFrame.new(26.5978699, 178.708435, -202.503372, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044), Vector3.new(87.330101, 11.7599154, 70.6699524))
    u224(CFrame.new(146.12854, 82.1978836, -359.938873, 0.788016856, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, 0.788016856), Vector3.new(26.0000801, 134.059937, 141.20993))
    u224(CFrame.new(296.637207, 201.152954, -266.805756, -0.66911006, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, -0.66911006), Vector3.new(7.96000004, 155.529922, 50.1699715))
    u224(CFrame.new(99.3139725, 71.6578674, -192.906723, 0.788016856, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, 0.788016856), Vector3.new(61.3401108, 112.979919, 38.8199997))
    u224(CFrame.new(275.48941, 201.152954, -246.046173, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635), Vector3.new(7.96000004, 155.529922, 10.8099756))
    u224(CFrame.new(191.84343, 71.6578674, -519.669495, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(11.7900572, 112.979919, 106.469978))
    u224(CFrame.new(8.56675243, 176.11792, -233.824677, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044), Vector3.new(48.9500923, 105.459915, 9.41996288))
    u224(CFrame.new(4.76045275, 71.6578674, -554.318726, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(11.7900572, 112.979919, 103.099976))
    u224(CFrame.new(336.604401, 238.509155, -76.2662277, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(22.5599785, 165.97998, 3.75999427))
    u224(CFrame.new(103.385704, 71.6578674, -584.13147, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(192.360016, 112.979919, 6.27996731))
    u224(CFrame.new(45.7099876, 82.1828537, -415.45401, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(26.0000801, 134.029907, 184.459961))
    u224(CFrame.new(192.358246, 82.1778717, -374.678314, 0.788016856, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, 0.788016856), Vector3.new(39.2300949, 134.019928, 6.05993652))
    u224(CFrame.new(-353.975555, 71.6578674, -63.2335167, 0.956294656, 0, 0.292404652, 0, 1, 0, -0.292404652, 0, 0.956294656), Vector3.new(86.1100769, 112.979919, 26.0899544))
    u224(CFrame.new(251.776321, 240.282928, -140.439316, -0.951068401, 0, -0.308980465, 0, 1, 0, 0.308980465, 0, -0.951068401), Vector3.new(13.0800266, 77.2699661, 10.5299988))
    u224(CFrame.new(22.8892059, 108.482849, 344.445435, 0.515037358, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, 0.515037358), Vector3.new(7.17007732, 196.649918, 88.9599533))
    u224(CFrame.new(-189.411392, 115.27285, 512.67157, -0.74314785, 0, -0.669127226, 0, 1, 0, 0.669127226, 0, -0.74314785), Vector3.new(7.17007732, 210.229919, 107.459976))
    u224(CFrame.new(3.59355736, 115.27285, 400.595734, 0.79861635, 0, 0.601840496, 0, 1, 0, -0.601840496, 0, 0.79861635), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-48.4561577, 115.27285, 524.388855, 0.994518042, 0, -0.104565002, 0, 1, 0, 0.104565002, 0, 0.994518042), Vector3.new(29.3600597, 210.229919, 38.3299599))
    u224(CFrame.new(-217.117432, 108.482849, 331.702698, 0.788016856, 0, 0.615653694, 0, 1, 0, -0.615653694, 0, 0.788016856), Vector3.new(7.17007732, 196.649918, 65.809967))
    u224(CFrame.new(-132.738174, 115.27285, 485.842224, -0.656062722, 0, -0.754706323, 0, 1, 0, 0.754706323, 0, -0.656062722), Vector3.new(15.610075, 210.229919, 80.2799683))
    u224(CFrame.new(-114.245438, 115.27285, 502.964417, -0.656062722, 0, -0.754706323, 0, 1, 0, 0.754706323, 0, -0.656062722), Vector3.new(23.2500763, 210.229919, 18.7399883))
    u224(CFrame.new(-181.212082, 108.482849, 455.194031, -0.978144407, 0, -0.207926437, 0, 1, 0, 0.207926437, 0, -0.978144407), Vector3.new(7.17007732, 196.649918, 28.6599598))
    u224(CFrame.new(-171.409775, 108.482849, 480.494568, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447), Vector3.new(7.17007732, 196.649918, 28.6599598))
    u224(CFrame.new(-153.358505, 108.482849, 499.273956, -0.529884458, 0, -0.848069847, 0, 1, 0, 0.848069847, 0, -0.529884458), Vector3.new(7.17007732, 196.649918, 28.6599598))
    u224(CFrame.new(2.28053975, 191.96788, 412.527252, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627), Vector3.new(46.6800728, 51.1199303, 30.3899784))
    u224(CFrame.new(-11.8301239, 69.1528625, -32.3248634, -0.190845728, 0, 0.981620014, 0, 1, 0, -0.981620014, 0, -0.190845728), Vector3.new(33.9601364, 117.989929, 43.3399582))
    u224(CFrame.new(-5.22509098, 115.27285, 490.063293, 0.484826028, 0, -0.874610603, 0, 1, 0, 0.874610603, 0, 0.484826028), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-127.205185, 108.482849, 510.990234, -0.275688529, 0, -0.961247265, 0, 1, 0, 0.961247265, 0, -0.275688529), Vector3.new(8.14007759, 196.649918, 33.0399551))
    u224(CFrame.new(-159.152649, 108.482849, 380.508484, -0.719358206, 0, 0.694639385, 0, 1, 0, -0.694639385, 0, -0.719358206), Vector3.new(7.17007732, 196.649918, 28.6599598))
    u224(CFrame.new(-308.969879, 71.6578674, -94.8810577, 0.961249948, 0, 0.275678426, 0, 1, 0, -0.275678426, 0, 0.961249948), Vector3.new(27.9000931, 112.979919, 25.8499527))
    u224(CFrame.new(-196.633072, 71.6578674, 20.2068882, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146), Vector3.new(3.35009265, 112.979919, 193.439865))
    u224(CFrame.new(-64.1702118, 108.482849, 196.430222, 0.808997452, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, 0.808997452), Vector3.new(7.17007732, 196.649918, 19.1599712))
    u224(CFrame.new(21.93013, 115.27285, 434.743622, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-33.0243149, 115.27285, 372.81546, 0.258864343, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, 0.258864343), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-153.190704, 115.27285, 421.939972, -0.913549781, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, -0.913549781), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-186.537735, 71.6578674, 55.9972839, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146), Vector3.new(6.85009241, 112.979919, 191.819916))
    u224(CFrame.new(-102.091415, 108.482849, 351.480042, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106), Vector3.new(7.17007732, 196.649918, 105.239922))
    u224(CFrame.new(-150.674164, 108.482849, 227.823898, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118), Vector3.new(1.08007801, 196.649918, 27.1100006))
    u224(CFrame.new(2.66658545, 112.507874, 74.4540482, 0.0697871447, 0, 0.997561872, 0, 1, 0, -0.997561872, 0, 0.0697871447), Vector3.new(121.150146, 204.699951, 38.2499657))
    u224(CFrame.new(-95.8713608, 108.482849, 212.595322, -0.642763734, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, -0.642763734), Vector3.new(2.72007704, 196.649918, 74.0400085))
    u224(CFrame.new(3.05939007, 111.247864, 1.23464596, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685), Vector3.new(106.420143, 202.179932, 38.2499657))
    u224(CFrame.new(-296.766571, 71.6578674, -104.887527, 0.951068401, 0, 0.308980465, 0, 1, 0, -0.308980465, 0, 0.951068401), Vector3.new(21.460104, 112.979919, 5.02994967))
    u224(CFrame.new(-136.902573, 115.27285, 400.373932, -0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, -0.587748766), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-126.523605, 71.6578674, -35.9618187, -0.515037298, 0, 0.857167721, 0, 1, 0, -0.857167721, 0, -0.515037298), Vector3.new(69.3901215, 112.979919, 10.0999537))
    u224(CFrame.new(-107.43457, 108.482849, 200.957001, -0.642763734, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, -0.642763734), Vector3.new(2.72007704, 196.649918, 81.4400024))
    u224(CFrame.new(-156.125748, 115.27285, 447.67746, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(-84.8648453, 108.482849, 167.946167, 0.808997452, 0, 0.587812185, 0, 1, 0, -0.587812185, 0, 0.808997452), Vector3.new(7.17007732, 196.649918, 22.8599682))
    u224(CFrame.new(-28.1472721, 112.442856, -60.752491, -0.573599219, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, -0.573599219), Vector3.new(63.9601364, 204.569916, 38.2499657))
    u224(CFrame.new(-75.1926804, 108.482849, 332.591461, -0.74314785, 0, 0.669127226, 0, 1, 0, -0.669127226, 0, -0.74314785), Vector3.new(8.96007824, 196.649918, 53.559948))
    u224(CFrame.new(-275.843719, 71.6578674, 63.9708595, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146), Vector3.new(43.8200836, 112.979919, 32.2699165))
    u224(CFrame.new(-90.2726288, 108.482849, 117.84272, 0.999391913, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, 0.999391913), Vector3.new(7.17007732, 196.649918, 88.6899643))
    u224(CFrame.new(-188.159439, 108.482849, 236.08194, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685), Vector3.new(7.17007732, 196.649918, 65.809967))
    u224(CFrame.new(8.69923592, 108.482849, 164.62558, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118), Vector3.new(105.130081, 196.649918, 21.1499653))
    u224(CFrame.new(-217.38678, 71.6578674, -120.78791, 0.981621504, 0, 0.190838262, 0, 1, 0, -0.190838262, 0, 0.981621504), Vector3.new(28.2900963, 112.979919, 25.8499527))
    u224(CFrame.new(-177.051682, 71.6578674, -95.5953293, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635), Vector3.new(92.0400925, 112.979919, 10.0999537))
    u224(CFrame.new(-91.2905579, 98.7878723, -180.786469, -0.642763734, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, -0.642763734), Vector3.new(100.200134, 167.239929, 34.0199585))
    u224(CFrame.new(-60.8750038, 104.102882, -118.505707, -0.970287442, 0, 0.241955817, 0, 1, 0, -0.241955817, 0, -0.970287442), Vector3.new(14.3101358, 177.869934, 52.2899513))
    u224(CFrame.new(-81.9202881, 115.27285, 376.216888, -0.190845728, 0, 0.981620014, 0, 1, 0, -0.981620014, 0, -0.190845728), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(14.3495579, 115.27285, 466.507202, 0.866007268, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, 0.866007268), Vector3.new(20.2200737, 210.229919, 83.4799728))
    u224(CFrame.new(16.8177929, 177.457901, 466.780548, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627), Vector3.new(46.6800728, 22.099926, 30.3899784))
    u224(CFrame.new(-236.081604, 71.6578674, -107.771599, 0.951068401, 0, 0.308980465, 0, 1, 0, -0.308980465, 0, 0.951068401), Vector3.new(21.460104, 112.979919, 5.02994967))
    u224(CFrame.new(-51.8448524, 113.727875, -79.1300812, -0.906296611, 0, 0.422642082, 0, 1, 0, -0.422642082, 0, -0.906296611), Vector3.new(63.9601364, 207.139954, 38.2499657))
    u224(CFrame.new(11.4648485, 108.482849, 293.321198, -0.642763734, 0, -0.766064942, 0, 1, 0, 0.766064942, 0, -0.642763734), Vector3.new(7.17007732, 196.649918, 119.499962))
    u224(CFrame.new(-37.7696838, 115.27285, 507.855652, 0.241953552, 0, -0.970287859, 0, 1, 0, 0.970287859, 0, 0.241953552), Vector3.new(26.7200642, 210.229919, 20.9799595))
    u224(CFrame.new(-182.646271, 108.482849, 427.893585, -0.992540598, 0, 0.121917672, 0, 1, 0, -0.121917672, 0, -0.992540598), Vector3.new(7.17007732, 196.649918, 28.6599598))
    u224(CFrame.new(-212.57103, 108.482849, 383.047607, -0.890994906, 0, 0.454013437, 0, 1, 0, -0.454013437, 0, -0.890994906), Vector3.new(7.17007732, 196.649918, 65.809967))
    u224(CFrame.new(-219.156174, 115.27285, 442.736725, -0.997561932, 0, -0.0697919354, 0, 1, 0, 0.0697919354, 0, -0.997561932), Vector3.new(7.17007732, 210.229919, 84.3099747))
    u224(CFrame.new(-47.2210999, 115.27285, 512.638611, 0.5592103, 0, -0.829025805, 0, 1, 0, 0.829025805, 0, 0.5592103), Vector3.new(29.3600597, 210.229919, 13.2199593))
    u224(CFrame.new(-175.036667, 108.482849, 402.054779, -0.890994906, 0, 0.454013437, 0, 1, 0, -0.454013437, 0, -0.890994906), Vector3.new(7.17007732, 196.649918, 28.6599598))
    u224(CFrame.new(-34.2681313, 108.482849, 220.731842, 0.601813793, 0, 0.798636556, 0, 1, 0, -0.798636556, 0, 0.601813793), Vector3.new(7.17007732, 196.649918, 65.809967))
    u224(CFrame.new(-267.718323, 71.6578674, -106.124031, 0.933587551, 0, 0.358349502, 0, 1, 0, -0.358349502, 0, 0.933587551), Vector3.new(47.0600929, 112.979919, 25.8499527))
    u224(CFrame.new(-79.1659088, 108.482849, 247.456345, 0.224959731, 0, 0.974368095, 0, 1, 0, -0.974368095, 0, 0.224959731), Vector3.new(2.72007704, 196.649918, 93.0200272))
    u224(CFrame.new(-24.5546627, 153.542862, 346.573395, 0.309060872, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, 0.309060872), Vector3.new(48.760067, 106.5299, 82.7499619))
    u224(CFrame.new(-130.157043, 115.27285, 543.391418, -0.241953492, 0, -0.970287859, 0, 1, 0, 0.970287859, 0, -0.241953492), Vector3.new(7.17007732, 210.229919, 107.459976))
    u224(CFrame.new(-62.0073128, 115.27285, 535.006409, 0.587748766, 0, -0.809043527, 0, 1, 0, 0.809043527, 0, 0.587748766), Vector3.new(13.5600739, 210.229919, 78.2199707))
    u224(CFrame.new(1.19643378, 108.482849, 210.773438, 0.601813793, 0, 0.798636556, 0, 1, 0, -0.798636556, 0, 0.601813793), Vector3.new(55.8600845, 196.649918, 21.1499653))
    u224(CFrame.new(-226.246323, 108.482849, 280.09845, 0.981621504, 0, -0.190838262, 0, 1, 0, 0.190838262, 0, 0.981621504), Vector3.new(7.17007732, 196.649918, 65.809967))
    u224(CFrame.new(-93.2036362, 108.482849, 50.1853981, 0.984812498, 0, 0.173621148, 0, 1, 0, -0.173621148, 0, 0.984812498), Vector3.new(7.17007732, 196.649918, 49.9200096))
    u224(CFrame.new(-99.4887619, 26.6458683, 204.488251, -0.642771602, -0.172286958, 0.74643296, 0.0000349506736, 0.974375129, 0.224929258, -0.766058028, 0.144604191, -0.626294613), Vector3.new(17.6900787, 52.3899765, 81.5899811))
    u224(CFrame.new(-90.5216141, 92.6578674, -212.284851, 0.999847949, 0, 0.017436387, 0, 1, 0, -0.017436387, 0, 0.999847949), Vector3.new(20.6700878, 154.979904, 64.4999695))
    u224(CFrame.new(-69.007225, 150.609619, 414.444153, 0, 1, 0, 1, 0, 0, 0, 0, -1), Vector3.new(110.670059, 54.7698822, 46.6099701))
    u224(CFrame.new(-17.0605316, 150.609619, 455.940033, 0, 1, 0, 1, 0, 0, 0, 0, -1), Vector3.new(110.670059, 16.2098866, 21.2899628))
    u224(CFrame.new(44.4533386, 150.080139, -209.457306, 0.828062892, -2.1161690699999998e-7, 0.560636103, 4.75783892e-8, 1, -2.57120234e-7, -0.560636997, -1.3397551900000002e-7, 0.828062534), Vector3.new(10.25, 33.7498169, 18))
    u224(CFrame.new(90.6520691, 55.3309364, -253.047241, 0.615655065, -8.31751947e-7, 0.788017154, -1.05084027e-7, 1, -9.73401143e-7, -0.78802079, -5.16469811e-7, 0.615655005), Vector3.new(112, 5.24979782, 111))
    u224(CFrame.new(72.5854263, 90.4559326, -213.070435, 0.615655065, -8.31751947e-7, 0.788017154, -1.05084027e-7, 1, -9.73401143e-7, -0.78802079, -5.16469811e-7, 0.615655005), Vector3.new(26.75, 75.4998016, 90.25))
    u224(CFrame.new(129.757416, 61.8308907, -222.495361, 0.615655065, -8.31751947e-7, 0.788017154, -1.05084027e-7, 1, -9.73401143e-7, -0.78802079, -5.16469811e-7, 0.615655005), Vector3.new(112, 18.2497978, 11.75))
    u224(CFrame.new(151.133179, 61.8308983, -266.707794, 0.615655065, -8.31751947e-7, 0.788017154, -1.05084027e-7, 1, -9.73401143e-7, -0.78802079, -5.16469811e-7, 0.615655005), Vector3.new(16, 18.2497978, 32.5))
    u224(CFrame.new(102.768631, 61.8309555, -304.493622, 0.615655065, -8.31751947e-7, 0.788017154, -1.05084027e-7, 1, -9.73401143e-7, -0.78802079, -5.16469811e-7, 0.615655005), Vector3.new(16, 18.2497978, 26.75))
    u224(CFrame.new(85.0030518, 61.5809021, -314.366455, 0.190837413, -1.9511319400000002e-6, 0.981623232, -2.10167372e-7, 1, -1.9468032e-6, -0.981629729, -1.65219262e-7, 0.190840572), Vector3.new(16.25, 19.2497978, 25.5))
    u224(CFrame.new(27.7007961, 61.5810165, -325.506775, 0.190837413, -1.9511319400000002e-6, 0.981623232, -2.10167372e-7, 1, -1.9468032e-6, -0.981629729, -1.65219262e-7, 0.190840572), Vector3.new(16.25, 19.2497978, 26.75))
    u224(CFrame.new(7.84294891, 61.5429382, -322.138489, -0.156453863, -3.9114252100000004e-6, 0.987685323, -4.20325563e-7, 1, 3.8936122999999996e-6, -0.987685263, 1.94021311e-7, -0.156453878), Vector3.new(7.75, 19.2497978, 25.5))
    u224(CFrame.new(-43.5881577, 67.4179993, -313.486664, -0.156449482, -3.6978016099999995e-12, 0.987686753, 5.42860245e-13, 1, -3.6579151200000006e-12, -0.9876858, 3.6103823900000003e-14, -0.15644975), Vector3.new(8.25, 19.9997978, 14.25))
    u224(CFrame.new(-87.1848373, 67.0428085, -313.408112, 0.0174364448, -7.295796779999999e-12, 0.999851346, 1.08572136e-12, 1, -7.31584064e-12, -0.999849319, -1.21311815e-12, 0.017436415), Vector3.new(7.25, 20.7497978, 75.5))
    u224(CFrame.new(-156.584213, 67.3979263, -293.36441, -0.559194386, -6.6722218e-12, 0.829037786, 1.08572027e-12, 1, -7.315832840000001e-12, -0.829036236, 3.19087291e-12, -0.559195638), Vector3.new(7.5, 19.9997978, 71))
    u224(CFrame.new(-203.402084, 67.4178085, -238.748154, -0.882949471, -8.786363999999999e-12, 0.469468504, 2.17144011e-12, 1, -1.4631679499999999e-11, -0.469466925, 1.1899621900000001e-11, -0.882953048), Vector3.new(7, 19.9997978, 79.75))
    u224(CFrame.new(-221.330124, 67.1680069, -201.287247, -0.358348906, -2.88762209e-11, 0.93359375, 4.34287719e-12, 1, -2.92634077e-11, -0.933586717, 6.4320714599999995e-12, -0.358352125), Vector3.new(15, 19.9997978, 6.25))
    u224(CFrame.new(-198.021118, 65.8308716, -124.031624, -0.309060812, -1.50344096e-17, 0.951042354, -1.75127433e-18, 1, -1.63774614e-17, -0.951042652, 6.72716669e-18, -0.309060782), Vector3.new(28, 27.7497978, 11.5))
    u224(CFrame.new(-166.487717, 67.7930069, -97.6062241, -0.731385112, -1.97760074e-17, 0.681965232, -3.50254989e-18, 1, -3.27549229e-17, -0.681965768, 2.63450672e-17, -0.731384754), Vector3.new(82.75, 27.7497978, 7.25))
    u224(CFrame.new(-119.565308, 67.7930069, -39.0402756, -0.515038013, -5.25450404e-17, 0.85716784, -7.00510723e-18, 1, -6.55098524e-17, -0.857169032, 3.97445693e-17, -0.515037596), Vector3.new(72, 27.7497978, 9.5))
    u224(CFrame.new(-87.4858704, 62.2829895, 49.0097618, -0.173621446, -1.26597385e-16, 0.984812856, -1.40102294e-17, 1, -1.31019718e-16, -0.984815359, 3.65452431e-17, -0.173621505), Vector3.new(51.25, 27.7497978, 10))
    u224(CFrame.new(-83.2823715, 63.5329895, 120.683098, 0.0348694921, -2.62857167e-16, 0.999392748, -2.80205249e-17, 1, -2.62039489e-16, -0.999397576, 1.8866482599999999e-17, 0.0348683298), Vector3.new(96, 25.2497978, 7))
    u224(CFrame.new(-78.467865, 63.5329933, 166.610886, -0.587812185, -1.6543612300000001e-23, 0.808997571, 6.6174449e-24, 1, -1.4889251000000001e-23, -0.808997512, -6.6174449e-24, -0.587812304), Vector3.new(18.5, 25.2497978, 4.75))
    u224(CFrame.new(-60.2567482, 64.4079895, 191.676926, -0.587812245, -3.24787982e-23, 0.80899781, 2.16954798e-23, 1, -2.43831762e-23, -0.808997631, -3.21885739e-24, -0.587812483), Vector3.new(16.25, 24.4997978, 4.75))
    u224(CFrame.new(-37.4936447, 64.6579895, 210.83847, -0.798636854, -6.400187560000001e-23, 0.60181427, 4.33909659e-23, 1, -4.87663651e-23, -0.601814091, 1.28333249e-23, -0.79863739), Vector3.new(43.75, 23.9997978, 4.75))
    u224(CFrame.new(-313.654449, 46.2073135, -131.273331, -0.275637358, 0, 0.96126169, 0, 1, 0, -0.96126169, 0, -0.275637358), Vector3.new(110, 14.7497978, 208))
    u224(CFrame.new(-165.12883, 54.2137146, 31.6172218, -0.294678897, 0, 0.955596387, 0, 1, 0, -0.955596209, 0, -0.294678926), Vector3.new(40.5, 2.24979782, 249.25))
    u224(CFrame.new(-73.2428131, 56.4560051, -257.687622, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(290.25, 2.99979782, 126))
    u224(CFrame.new(-112.780289, 56.830883, -107.574318, 0.857371926, 0, 0.514697373, 0, 1, 0, -0.514697313, 0, 0.857372046), Vector3.new(93, 2.24979782, 263.25))
    u224(CFrame.new(-187.362808, 55.7058716, -134.105606, 0.95104146, 0, 0.309061378, 0, 1, 0, -0.309060663, 0, 0.951044798), Vector3.new(31.5, 4.49979782, 93.75))
    u224(CFrame.new(-34.3526993, 56.1579857, 102.725609, 0.984812677, 1.29029866e-16, 0.173621446, -1.3101970500000002e-16, 1.00000048, -3.97046694e-23, -0.173621535, -2.27477779e-17, 0.984813035), Vector3.new(110, 3.49979782, 231))
    u224(CFrame.new(-69.5363007, 58.0819054, 176.25325, 0.788472474, 0.182033852, 0.587515831, -0.224951565, 0.974369884, -3.3754136600000004e-7, -0.57245779, -0.132162333, 0.809212744), Vector3.new(16, 3.24977589, 25.75))
    u224(CFrame.new(-97.6610107, 59.0887032, 8.19114017, 0.955596149, 6.10016286e-8, 0.294679552, 8.055940269999999e-8, 0.999999285, -1.49011612e-8, -0.294679046, -4.09781933e-8, 0.95559752), Vector3.new(16.5, 1.99977589, 36))
    u224(CFrame.new(-97.7346802, 58.7137032, 7.95224094, 0.955596149, 6.10016286e-8, 0.294679552, 8.055940269999999e-8, 0.999999285, -1.49011612e-8, -0.294679046, -4.09781933e-8, 0.95559752), Vector3.new(20, 1.24977589, 40.5))
    u224(CFrame.new(-97.6341782, 58.2137032, 7.00558901, 0.955596149, 6.10016286e-8, 0.294679552, 8.055940269999999e-8, 0.999999285, -1.49011612e-8, -0.294679046, -4.09781933e-8, 0.95559752), Vector3.new(24.25, 1.24977589, 43.75))
    u224(CFrame.new(-113.563217, 56.2356071, 13.2257681, 0.89212507, -0.342453569, 0.294681668, 0.358367622, 0.933576107, -1.11758709e-7, -0.275106102, 0.10560298, 0.955603957), Vector3.new(11, 1.24977589, 43.75))
    u224(CFrame.new(-223.621185, 51.8409386, -176.644882, 0.842409015, -0.48570472, 0.233319089, 0.499448329, 0.866343617, 0.000202953815, -0.202233106, 0.116359845, 0.972400308), Vector3.new(20.75, 6.74979782, 89))
    u224(CFrame.new(-212.42215, 57.5808716, -169.559814, 0.951042056, 3.16649675e-8, 0.309060723, 1.11758709e-8, 0.99999994, -7.4505806e-9, -0.309060752, -1.49011612e-8, 0.951042473), Vector3.new(7.75, 4.24979782, 117))
    u224(CFrame.new(-224.997284, 52.5610962, -177.975052, 0.811471164, -0.467886627, 0.350137621, 0.499437302, 0.866349936, 0.000212810439, -0.303441286, 0.174699053, 0.936698556), Vector3.new(17.75, 6.74979782, 32))
    u224(CFrame.new(-210.638947, 57.2058716, -170.139297, 0.951042056, 3.16649675e-8, 0.309060723, 1.11758709e-8, 0.99999994, -7.4505806e-9, -0.309060752, -1.49011612e-8, 0.951042473), Vector3.new(7, 3.49979782, 117))
    u224(CFrame.new(86.809967, 54.2058792, -434.137939, 0.188369185, 1.58486137e-12, 0.982098579, 4.9803499e-13, 1, 1.51822587e-12, -0.98209846, -2.03132501e-13, 0.188369095), Vector3.new(301, 3.49979782, 287.25))
    u224(CFrame.new(52.8619156, 58.8309174, -320.487793, 0.190833777, -3.74184447e-6, 0.981622398, -4.20325563e-7, 1, 3.8936122999999996e-6, -0.981622398, -1.15563375e-6, 0.190833792), Vector3.new(17, 1.74979782, 44))
    u224(CFrame.new(54.4297676, 58.455925, -320.692352, 0.190833777, -3.74184447e-6, 0.981622398, -4.20325563e-7, 1, 3.8936122999999996e-6, -0.981622398, -1.15563375e-6, 0.190833792), Vector3.new(22, 0.999797821, 47))
    u224(CFrame.new(54.7160225, 57.205925, -322.164795, 0.190833777, -3.74184447e-6, 0.981622398, -4.20325563e-7, 1, 3.8936122999999996e-6, -0.981622398, -1.15563375e-6, 0.190833792), Vector3.new(25, 1.49979782, 47))
    u224(CFrame.new(55.0022812, 55.580925, -323.637238, 0.190833777, -3.74184447e-6, 0.981622398, -4.20325563e-7, 1, 3.8936122999999996e-6, -0.981622398, -1.15563375e-6, 0.190833792), Vector3.new(28, 2.24979782, 47))
    u224(CFrame.new(127.154045, 57.9558754, -280.683319, 0.615653574, 2.27373675e-13, 0.788017035, 1.13686838e-13, 1, 7.10542736e-14, -0.788017035, -2.27373675e-13, 0.615653574), Vector3.new(9, 3.99979782, 44))
    u224(CFrame.new(129.044098, 56.8308754, -282.696472, 0.615653574, 2.27373675e-13, 0.788017035, 1.13686838e-13, 1, 7.10542736e-14, -0.788017035, -2.27373675e-13, 0.615653574), Vector3.new(20, 4.24979782, 50.5))
    u224(CFrame.new(130.540146, 55.4558754, -285.017426, 0.615653574, 2.27373675e-13, 0.788017035, 1.13686838e-13, 1, 7.10542736e-14, -0.788017035, -2.27373675e-13, 0.615653574), Vector3.new(20, 4.49979782, 44))
    u224(CFrame.new(132.079285, 54.8308754, -286.987457, 0.615653574, 2.27373675e-13, 0.788017035, 1.13686838e-13, 1, 7.10542736e-14, -0.788017035, -2.27373675e-13, 0.615653574), Vector3.new(25, 3.24979782, 44))
    u224(CFrame.new(-20.4398537, 57.3308754, -317.710022, 0.984812856, 4.45411665e-13, 0.17362076, 4.3284457e-13, 1, 1.10245187e-13, -0.17362076, 3.34200441e-14, 0.984812677), Vector3.new(35.5, 4.74979782, 7.25))
    u224(CFrame.new(-20.6999245, 56.9558754, -321.345093, 0.984812856, 4.45411665e-13, 0.17362076, 4.3284457e-13, 1, 1.10245187e-13, -0.17362076, 3.34200441e-14, 0.984812677), Vector3.new(53.75, 3.99979782, 20.5))
    u224(CFrame.new(-21.2862549, 55.5808754, -322.510986, 0.984812856, 4.45411665e-13, 0.17362076, 4.3284457e-13, 1, 1.10245187e-13, -0.17362076, 3.34200441e-14, 0.984812677), Vector3.new(35.5, 4.74979782, 23))
    u224(CFrame.new(-21.6769009, 55.0808754, -324.726807, 0.984812856, 4.45411665e-13, 0.17362076, 4.3284457e-13, 1, 1.10245187e-13, -0.17362076, 3.34200441e-14, 0.984812677), Vector3.new(35.5, 3.74979782, 27.5))
    spawn(function()
        while not workspace:FindFirstChild('playerPickupCannonballRing') do
            wait()
        end

        workspace.playerPickupCannonballRing.Changed:Connect(function(p667)
            if p667 == 'Transparency' then
                u527 = not u527
                u528 = workspace.playerPickupCannonballRing
            end
        end)
    end)

    if _G.destroy_map then
        workspace.borders:Destroy()
        workspace.borderFix:Destroy()

        local v668, v669, v670 = pairs(workspace:GetChildren())

        while true do
            local v671

            v670, v671 = v668(v669, v670)

            if v670 == nil then
                break
            end
            if v671.ClassName == 'Model' and v671.Name ~= 'corruptCannons' and (v671.Name ~= 'playerFireCannon' and v671 ~= game.Players.LocalPlayer.Character) and v671.Name ~= u5 then
                v671:Destroy()
            end
        end
    end

    wait(2)

    while not game:GetService('Workspace').dungeon.room3.enemyFolder:FindFirstChildOfClass('Model') do
        wait(1)
    end

    u529 = true
    u305.CFrame = CFrame.new(58.451, 140.645, -221.236)

    local _, _, _, v672 = u314()

    while v672 == nil or u309(v672.Position, u305.Position) >= 5 do
        wait()
    end

    u305.CFrame = CFrame.new(77.782, 140.645, -233.241)

    while v672.Position.Y > 135 do
        wait()
    end

    u529 = false

    while not game:GetService('Workspace').dungeon.room4.enemyFolder:FindFirstChild('The Kraken') do
        wait(1)
    end
    while not game:GetService('Workspace').dungeon.room4.enemyFolder:FindFirstChild('The Kraken'):FindFirstChild('HumanoidRootPart') do
        wait(1)
    end
    while game:GetService('Workspace').dungeon.room4.enemyFolder:FindFirstChild('The Kraken'):FindFirstChild('HumanoidRootPart').Position.Y < -20 do
        u529 = true
        u305.CFrame = CFrame.new(100.95, 58.9558, -524.832)

        wait()
    end

    u529 = false

    game:GetService('Players').LocalPlayer.Character.LowerTorso.Root:Remove()

    game:GetService('Players').LocalPlayer.Character.LowerTorso.Anchored = true

    spawn(function()
        while true do
            local _enemyFolder2 = game:GetService('Workspace').dungeon.bossRoom.enemyFolder

            if _enemyFolder2:FindFirstChild('Sea Serpent') then
                break
            end

            wait(1)
        end

        local _SeaSerpent = _enemyFolder2:FindFirstChild('Sea Serpent')

        while _SeaSerpent ~= nil and (_SeaSerpent.Parent ~= nil and _SeaSerpent:FindFirstChild('Humanoid')) and _SeaSerpent.Humanoid.Health > 0 do
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _SeaSerpent.PrimaryPart.CFrame * CFrame.new(0, 0, 10)

                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end

            game:GetService('RunService').RenderStepped:wait()
        end

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 220, 0)
    end)
end
function samuraiFix()
    u224(CFrame.new(-79.3490448, 17.7415733, -86.7040176, 0.7313537, 0, -0.681998372, 0, 1, 0, 0.681998372, 0, 0.7313537), Vector3.new(73.0999832, 120, 5))
    u224(CFrame.new(-121.829887, 46.2415581, -115.202858, 0.974370062, 0, -0.224951044, 0, 1, 0, 0.224951044, 0, 0.974370062), Vector3.new(34.9499969, 176.999969, 5))
    u224(CFrame.new(-144.170593, 49.5415764, -131.804932, 0.57357645, 0, -0.819152057, 0, 1, 0, 0.819152057, 0, 0.57357645), Vector3.new(34.9499969, 183.600006, 5))
    u224(CFrame.new(-148.874176, 40.8565865, -154.876312, 0.0174523834, 0, -0.99984771, 0, 1, 0, 0.99984771, 0, 0.0174523834), Vector3.new(34.9499969, 166.230026, 5))
    u224(CFrame.new(-145.585724, 36.8465843, -173.163925, -0.559192896, -4.88861964e-8, -0.829037547, -1.4946010699999999e-8, 1, -4.88861964e-8, 0.829037547, -1.4946010699999999e-8, -0.559192896), Vector3.new(34.9499969, 158.210022, 5))
    u224(CFrame.new(-128.299927, 38.8115654, -190.066727, -0.838670552, -7.331890830000001e-8, -0.544639051, -3.98089171e-8, 1, -7.331890830000001e-8, 0.544639051, -3.98089171e-8, -0.838670552), Vector3.new(34.9499969, 162.139984, 5))
    u224(CFrame.new(-114.954521, 38.4115791, -193.36969, -0.99862951, -8.730296489999999e-8, -0.0523359589, -8.28474214e-8, 1, -8.730296489999999e-8, 0.0523359589, -8.28474214e-8, -0.99862951), Vector3.new(34.9499969, 161.340012, 5))
    u224(CFrame.new(-94.6667786, 41.6165733, -187.850113, -0.906307757, -7.92319383e-8, 0.42261827, -1.24369237e-7, 1, -7.92319383e-8, -0.42261827, -1.24369237e-7, -0.906307757), Vector3.new(34.9499969, 167.75, 5))
    u224(CFrame.new(-76.6514664, 42.5215492, -173.739227, -0.484809577, -4.23833981e-8, 0.874619722, -1.63884465e-7, 1, -4.23833981e-8, -0.874619722, -1.63884465e-7, -0.484809577), Vector3.new(34.9499969, 169.559952, 5))
    u224(CFrame.new(-71.1062622, 38.1915855, -159.090225, 0.0174523834, 0, 0.99984771, 0, 1, 0, -0.99984771, 0, 0.0174523834), Vector3.new(34.9499969, 160.900024, 5))
    u224(CFrame.new(-70.8261185, 31.206562, -149.575394, 0.49999997, 0, 0.866025448, 0, 1, 0, -0.866025448, 0, 0.49999997), Vector3.new(34.9499969, 146.929977, 5))
    u224(CFrame.new(-53.192379, 17.7415733, -112.487228, -0.719339788, -6.28866843e-8, 0.694658399, -1.48151742e-7, 1, -6.28866843e-8, -0.694658399, -1.48151742e-7, -0.719339788), Vector3.new(71.1999741, 120, 5))
    u224(CFrame.new(-16.0917797, 17.7415733, -84.8617783, -0.927183867, -8.10569887e-8, 0.37460658, -1.20171919e-7, 1, -8.10569887e-8, -0.37460658, -1.20171919e-7, -0.927183867), Vector3.new(28.6499805, 120, 5))
    u224(CFrame.new(18.1154346, 17.7415733, -80.3057556, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(44.1499825, 120, 5))
    u224(CFrame.new(44.4154396, 17.7415733, -77.3612747, -0.866025388, -7.57103464e-8, 0.5, -1.3113415800000001e-7, 1, -7.57103464e-8, -0.5, -1.3113415800000001e-7, -0.866025388), Vector3.new(44.1499825, 120, 5))
    u224(CFrame.new(86.6246567, 17.7415733, -47.5756416, -0.777145922, -6.794025609999999e-8, 0.629320383, -1.42439717e-7, 1, -6.794025609999999e-8, -0.629320383, -1.42439717e-7, -0.777145922), Vector3.new(82.649971, 120, 5))
    u224(CFrame.new(-52.7619934, 17.7415733, 44.2467651, -0.0174523834, -1.5257358699999999e-9, 0.99984771, -1.74832238e-7, 1, -1.5257358699999999e-9, -0.99984771, -1.74832238e-7, -0.0174523834), Vector3.new(210.749954, 120, 5))
    u224(CFrame.new(113.934662, 17.7415733, 5.35666466, -0.0174523834, -1.5257358699999999e-9, 0.99984771, -1.74832238e-7, 1, -1.5257358699999999e-9, -0.99984771, -1.74832238e-7, -0.0174523834), Vector3.new(68.5999527, 120, 5))
    u224(CFrame.new(105.848, 17.7415733, 100.737358, -0.0174523834, -1.5257358699999999e-9, 0.99984771, -1.74832238e-7, 1, -1.5257358699999999e-9, -0.99984771, -1.74832238e-7, -0.0174523834), Vector3.new(96.9499588, 120, 5))
    u224(CFrame.new(76.6631012, 75.4415894, 148.297241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(68.8998871, 129, 18.5))
    u224(CFrame.new(22.9380455, 76.1915817, 312.697144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(141.350006, 127.5, 10))
    u224(CFrame.new(101.938057, 75.9415817, 232.997162, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(162.44989, 128, 8.5))
    u224(CFrame.new(-132.212021, 79.9415817, 180.147202, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(168.149887, 120, 72))
    u224(CFrame.new(-123.587051, 79.9415817, 287.997192, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(150.899948, 120, 72.5))
    u224(CFrame.new(-229.801941, 79.9415817, 220.263245, -0.906307757, -7.92319383e-8, -0.42261827, -5.04763129e-8, 1, -7.92319383e-8, 0.42261827, -5.04763129e-8, -0.906307757), Vector3.new(55.5999222, 120, 5))
    u224(CFrame.new(-241.71637, 79.9415817, 221.566833, -0.342020154, -2.99003524e-8, -0.939692616, -5.27224131e-9, 1, -2.99003524e-8, 0.939692616, -5.27224131e-9, -0.342020154), Vector3.new(55.5999222, 120, 5))
    u224(CFrame.new(-276.772064, 79.9415817, 273.57489, -0.681998372, -5.96221881e-8, -0.7313537, -2.34858035e-8, 1, -5.96221881e-8, 0.7313537, -2.34858035e-8, -0.681998372), Vector3.new(73.2999039, 120, 5))
    u224(CFrame.new(-247.87471, 79.9415817, 294.94928, -0.7313537, -6.3936972999999995e-8, -0.681998372, -2.78005885e-8, 1, -6.3936972999999995e-8, 0.681998372, -2.78005885e-8, -0.7313537), Vector3.new(65.2999191, 120, 5))
    u224(CFrame.new(-217.981018, 79.9415817, 272.917114, -0.997564077, -8.72098198e-8, -0.0697564706, -8.13244725e-8, 1, -8.72098198e-8, 0.0697564706, -8.13244725e-8, -0.997564077), Vector3.new(17.0999241, 120, 5))
    u224(CFrame.new(-204.486954, 79.9415817, 264.958984, -0.484809577, -4.23833981e-8, -0.874619722, -1.09610951e-8, 1, -4.23833981e-8, 0.874619722, -1.09610951e-8, -0.484809577), Vector3.new(27.4999256, 120, 5))
    u224(CFrame.new(-307.982819, 79.9415817, 295.596252, 0.866025388, 0, -0.5, 0, 1, 0, 0.5, 0, 0.866025388), Vector3.new(20.2499027, 120, 5))
    u224(CFrame.new(-324.856873, 79.9415817, 291.09314, 0.999390841, 0, 0.0348994955, 0, 1, 0, -0.0348994955, 0, 0.999390841), Vector3.new(20.2499027, 120, 5))
    u224(CFrame.new(-334.888336, 79.9415817, 294.865021, 0.838670552, 0, 0.544639051, 0, 1, 0, -0.544639051, 0, 0.838670552), Vector3.new(25.0999069, 120, 5))
    u224(CFrame.new(-344.876831, 79.9415817, 303.412811, 0.544639051, 0, 0.838670552, 0, 1, 0, -0.838670552, 0, 0.544639051), Vector3.new(25.0999069, 120, 5))
    u224(CFrame.new(-353.138275, 79.9415817, 319.06076, 0.309016973, 0, 0.95105654, 0, 1, 0, -0.95105654, 0, 0.309016973), Vector3.new(25.0999069, 120, 5))
    u224(CFrame.new(-355.918182, 79.9415817, 338.616058, -0.156434491, -1.36759377e-8, 0.987688363, -1.7376923700000002e-7, 1, -1.36759377e-8, -0.987688363, -1.7376923700000002e-7, -0.156434491), Vector3.new(25.0999069, 120, 5))
    u224(CFrame.new(-338.64389, 79.9415817, 361.615967, -0.719339788, -6.28866843e-8, 0.694658399, -1.48151742e-7, 1, -6.28866843e-8, -0.694658399, -1.48151742e-7, -0.719339788), Vector3.new(50.5999031, 120, 5))
    u224(CFrame.new(-340.175018, 79.9415817, 406.1138, -0.642787635, -5.61942812e-8, -0.766044438, -2.04530437e-8, 1, -5.61942812e-8, 0.766044438, -2.04530437e-8, -0.642787635), Vector3.new(68.14991, 120, 5))
    u224(CFrame.new(-345.91333, 79.9415817, 462.58136, 0.42261824, 0, -0.906307817, 0, 1, 0, 0.906307817, 0, 0.42261824), Vector3.new(103.199928, 120, 5))
    u224(CFrame.new(-308.45636, 79.9415817, 507.855316, 0.987688363, 0, -0.156434476, 0, 1, 0, 0.156434476, 0, 0.987688363), Vector3.new(47.6499405, 120, 5))
    u224(CFrame.new(-276.312256, 79.9415817, 511.668976, 0.99984771, 0, 0.0174524058, 0, 1, 0, -0.0174524058, 0, 0.99984771), Vector3.new(47.6499405, 120, 5))
    u224(CFrame.new(-241.047165, 79.9415817, 538.805542, -0.453990519, -3.96891124e-8, 0.891006529, -1.6531703300000002e-7, 1, -3.96891124e-8, -0.891006529, -1.6531703300000002e-7, -0.453990519), Vector3.new(65.5499344, 120, 5))
    u224(CFrame.new(-220.261414, 79.9415817, 575.792419, -0.559192896, -4.88861964e-8, 0.829037547, -1.59899542e-7, 1, -4.88861964e-8, -0.829037547, -1.59899542e-7, -0.559192896), Vector3.new(47.3499336, 120, 5))
    u224(CFrame.new(-186.82869, 79.9415817, 601.801575, -0.882947564, -7.71897248e-8, 0.469471574, -1.2846528799999999e-7, 1, -7.71897248e-8, -0.469471574, -1.2846528799999999e-7, -0.882947564), Vector3.new(76.9499283, 120, 5))
    u224(CFrame.new(-273.247772, 79.9415817, 323.264557, -0.42261824, -3.69464601e-8, -0.906307817, -8.19083112e-9, 1, -3.69464601e-8, 0.906307817, -8.19083112e-9, -0.42261824), Vector3.new(17.9499207, 120, 5))
    u224(CFrame.new(-278.552307, 79.9415817, 339.3573, -0.207911655, -1.81762143e-8, -0.978147626, -1.91039362e-9, 1, -1.81762143e-8, 0.978147626, -1.91039362e-9, -0.207911655), Vector3.new(17.9499207, 120, 5))
    u224(CFrame.new(-283.670166, 79.9415817, 356.718292, -0.35836798, -3.1329523900000003e-8, -0.933580399, -5.80658366e-9, 1, -3.1329523900000003e-8, 0.933580399, -5.80658366e-9, -0.35836798), Vector3.new(20.6499119, 120, 5))
    u224(CFrame.new(-268.345642, 79.9415817, 364.530884, 0.999390841, 0, 0.0348994955, 0, 1, 0, -0.0348994955, 0, 0.999390841), Vector3.new(40.7998962, 120, 5))
    u224(CFrame.new(-232.930862, 79.9415817, 367.778046, 0.974370062, 0, -0.224951044, 0, 1, 0, 0.224951044, 0, 0.974370062), Vector3.new(40.7998962, 120, 5))
    u224(CFrame.new(-198.301727, 79.9415817, 406.548157, -0.438371152, -3.83236234e-8, 0.898794055, -1.65997847e-7, 1, -3.83236234e-8, -0.898794055, -1.65997847e-7, -0.438371152), Vector3.new(85.8499603, 120, 5))
    u224(CFrame.new(-191.77713, 79.9415817, 455.941559, -0.515038073, -4.5026059300000005e-8, -0.857167304, -1.24868293e-8, 1, -4.5026059300000005e-8, 0.857167304, -1.24868293e-8, -0.515038073), Vector3.new(42.049984, 120, 5))
    u224(CFrame.new(-208.300247, 79.9415817, 479.683472, -0.629320443, -5.50169403e-8, -0.777145922, -1.94825205e-8, 1, -5.50169403e-8, 0.777145922, -1.94825205e-8, -0.629320443), Vector3.new(42.049984, 120, 5))
    u224(CFrame.new(-209.384109, 79.9415817, 507.477234, 0.642787635, 0, -0.766044438, 0, 1, 0, 0.766044438, 0, 0.642787635), Vector3.new(36.9999733, 120, 5))
    u224(CFrame.new(-180.930634, 79.9415817, 525.294922, 0.974370062, 0, -0.224951044, 0, 1, 0, 0.224951044, 0, 0.974370062), Vector3.new(36.9999733, 120, 5))
    u224(CFrame.new(-145.599655, 79.9415817, 528.387268, 0.997564077, 0, 0.0697564706, 0, 1, 0, -0.0697564706, 0, 0.997564077), Vector3.new(36.9999733, 120, 5))
    u224(CFrame.new(-132.102982, 79.9415817, 531.453186, -0.0697565079, -6.09830764e-9, 0.997564077, -1.74632589e-7, 1, -6.09830764e-9, -0.997564077, -1.74632589e-7, -0.0697565079), Vector3.new(35.899971, 120, 17.3999958))
    u224(CFrame.new(-153.191727, 79.9415817, 603.870667, 0.49999997, 0, 0.866025448, 0, 1, 0, -0.866025448, 0, 0.49999997), Vector3.new(36.1999664, 120, 9.19999409))
    u224(CFrame.new(92.1630783, 79.9415817, 575.945129, 0.99984771, 0, -0.0174524058, 0, 1, 0, 0.0174524058, 0, 0.99984771), Vector3.new(129.549896, 120, 14.0500021))
    u224(CFrame.new(85.5814362, 79.9415817, 623.537842, 0.99984771, 0, -0.0174524058, 0, 1, 0, 0.0174524058, 0, 0.99984771), Vector3.new(118.049873, 120, 14.0500021))
    u224(CFrame.new(155.319351, 79.9415817, 644.592834, 0.438371152, 0, -0.898794055, 0, 1, 0, 0.898794055, 0, 0.438371152), Vector3.new(58.5498695, 120, 4.65000153))
    u224(CFrame.new(150.972641, 79.9415817, 733.93103, 0.275637388, 0, 0.96126169, 0, 1, 0, -0.96126169, 0, 0.275637388), Vector3.new(134.699875, 120, 4.65000153))
    u224(CFrame.new(113.599823, 79.9415817, 834.299438, 0.469471604, 0, 0.882947564, 0, 1, 0, -0.882947564, 0, 0.469471604), Vector3.new(82.6498489, 120, 4.65000153))
    u224(CFrame.new(83.7891617, 79.9415817, 886.715393, 0.544639051, 0, 0.838670552, 0, 1, 0, -0.838670552, 0, 0.544639051), Vector3.new(40.299839, 120, 4.65000153))
    u224(CFrame.new(57.0700951, 79.9415817, 912.924072, 0.857167304, 0, 0.515038073, 0, 1, 0, -0.515038073, 0, 0.857167304), Vector3.new(40.299839, 120, 4.65000153))
    u224(CFrame.new(-16.656601, 79.9415817, 934.313538, 0.981627166, 0, 0.190808997, 0, 1, 0, -0.190808997, 0, 0.981627166), Vector3.new(116.849838, 120, 4.65000153))
    u224(CFrame.new(-14.7186928, 79.9415817, 1032.85339, 0.981627166, 0, 0.190808997, 0, 1, 0, -0.190808997, 0, 0.981627166), Vector3.new(150.649872, 120, 4.65000153))
    u224(CFrame.new(100.627106, 79.9415817, 999.678406, 0.91354543, 0, 0.406736642, 0, 1, 0, -0.406736642, 0, 0.91354543), Vector3.new(96.7998657, 120, 4.65000153))
    u224(CFrame.new(-82.9455414, 79.9415817, 944.657593, 0.99984771, 0, -0.0174524058, 0, 1, 0, 0.0174524058, 0, 0.99984771), Vector3.new(37.8998451, 120, 4.65000153))
    u224(CFrame.new(-131.292542, 79.9415817, 922.620178, 0.798635542, 0, -0.601814985, 0, 1, 0, 0.601814985, 0, 0.798635542), Vector3.new(75.9498596, 120, 4.65000153))
    u224(CFrame.new(-232.84433, 79.9415817, 900.761597, 0.99862951, 0, -0.0523359589, 0, 1, 0, 0.0523359589, 0, 0.99862951), Vector3.new(160.549911, 120, 4.65000153))
    u224(CFrame.new(-99.3179703, 79.9415817, 1066.7688, 0.515038073, 0, 0.857167304, 0, 1, 0, -0.857167304, 0, 0.515038073), Vector3.new(47.8498611, 120, 4.65000153))
    u224(CFrame.new(191.109024, 79.9415817, 590.424316, 0.96126169, 0, -0.275637358, 0, 1, 0, 0.275637358, 0, 0.96126169), Vector3.new(129.549896, 120, 14.0500021))
    u224(CFrame.new(116.764015, 79.9415817, 982.981506, 0.587785304, 0, 0.809017003, 0, 1, 0, -0.809017003, 0, 0.587785304), Vector3.new(44.3998642, 120, 4.65000153))
    u224(CFrame.new(147.403961, 79.9415817, 956.020203, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388), Vector3.new(44.3998642, 120, 4.65000153))
    u224(CFrame.new(187.493103, 79.9415817, 912.867615, 0.669130564, 0, 0.74314487, 0, 1, 0, -0.74314487, 0, 0.669130564), Vector3.new(115.299873, 120, 4.65000153))
    u224(CFrame.new(199.873352, 79.9415817, 869.370178, -0.0348994955, -3.05101078e-9, 0.999390841, -1.74792291e-7, 1, -3.05101078e-9, -0.999390841, -1.74792291e-7, -0.0348994955), Vector3.new(120.999878, 120, 4.65000153))
    u224(CFrame.new(203.445938, 79.9415817, 792.87146, 0.309016973, 0, 0.95105654, 0, 1, 0, -0.95105654, 0, 0.309016973), Vector3.new(36.849865, 120, 4.65000153))
    u224(CFrame.new(207.590225, 79.9415817, 760.274048, 0.0348994955, 0, -0.999390841, 0, 1, 0, 0.999390841, 0, 0.0348994955), Vector3.new(52.099865, 120, 4.65000153))
    u224(CFrame.new(220.461777, 79.9415817, 663.820862, -0.258819073, -2.26266827e-8, -0.965925813, -2.97885805e-9, 1, -2.26266827e-8, 0.965925813, -2.97885805e-9, -0.258819073), Vector3.new(145.199936, 120, 14.2000027))
    u224(CFrame.new(-312.379059, 79.9415817, 901.517517, 0.642787635, 0, 0.766044438, 0, 1, 0, -0.766044438, 0, 0.642787635), Vector3.new(55.4000015, 120, 4.65000153))
    u224(CFrame.new(-325.956299, 79.9415817, 988.109619, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(173.950043, 120, 4.65000153))
    u224(CFrame.new(-198.956482, 79.9415817, 1094.80957, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(188.15004, 120, 4.65000153))
    u224(CFrame.new(46.1631012, 77.6916199, 283.547241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(71.8998871, 17.5, 4))
    u224(CFrame.new(-153.191727, 79.9415817, 603.870667, 0.49999997, 0, 0.866025448, 0, 1, 0, -0.866025448, 0, 0.49999997), Vector3.new(36.1999664, 120, 9.19999409))
    u224(CFrame.new(-218.836899, 66.4415817, 262.047241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(84.8998871, 1, 108))
    u224(CFrame.new(-35.8530579, 63.9391098, 607.062622, -1.00000024, 6.68149738e-22, 0, -6.68149738e-22, 1, 0, 0, 0, -0.999999881), Vector3.new(207.399887, 1.5, 166))
    u224(CFrame.new(78.6687851, 17.7415791, 47.7285957, -0.0174523834, -1.5257358699999999e-9, 0.99984771, -1.74832238e-7, 1, -1.5257358699999999e-9, -0.99984771, -1.74832238e-7, -0.0174523834), Vector3.new(46.0999527, 120, 77))
    u224(CFrame.new(-14.8169785, 17.7415791, 49.3603935, -0.0174523834, -1.5257358699999999e-9, 0.99984771, -1.74832238e-7, 1, -1.5257358699999999e-9, -0.99984771, -1.74832238e-7, -0.0174523834), Vector3.new(46.0999527, 120, 78))
    u224(CFrame.new(32.8341637, 5.29244184, 34.5653267, -3.7252903e-9, 4.65661287e-10, 1, -0.244939968, 0.969538212, 1.25146471e-9, -0.969538152, -0.244939908, 3.7252903e-9), Vector3.new(51.5999527, 5, 20.5))
    u224(CFrame.new(25.6630993, 93.6915894, 151.797241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(135.899887, 92.5, 9.5))
    u224(CFrame.new(-21.0868988, 73.9415894, 149.297241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(69.3998871, 132, 14.5))
    u224(CFrame.new(-50.836895, 37.691597, 220.797241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(9.89988708, 59.5, 157.5))
    u224(CFrame.new(56.413105, 38.6916161, 283.547241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(92.3998871, 61.5, 4))
    u224(CFrame.new(-32.086895, 38.6916046, 283.547241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(28.3998871, 61.5, 4))
    u224(CFrame.new(30.4380493, 67.9415741, 211.697144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(156.350006, 4, 146))
    u224(CFrame.new(29.5450134, 2.84688377, 217.2388, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(165.91008, 22.4399872, 132.789948))
    u224(CFrame.new(87.6880493, 67.1915817, 224.947144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(24.8500061, 4.5, 172.5))
    u224(CFrame.new(48.4890289, 38.7647934, 298.738983, -0.707106829, -0.707106769, 4.3711388300000005e-8, -0.707106829, 0.707106769, -4.37113847e-8, 0, -6.1817239299999995e-8, -1), Vector3.new(81.3500061, 5.5, 26))
    u224(CFrame.new(-8.87301826, 14.249526, 296.988922, -1.00000012, -8.94069672e-8, 9.40053089e-15, -8.94069672e-8, 0.99999994, -8.74227695e-8, 1.77635684e-15, -8.742277660000001e-8, -1), Vector3.new(59.3500061, 0.5, 26.5))
    u224(CFrame.new(-28.1230221, 37.4995232, 296.988922, -1.00000012, -8.94069672e-8, 9.40053089e-15, -8.94069672e-8, 0.99999994, -8.74227695e-8, 1.77635684e-15, -8.742277660000001e-8, -1), Vector3.new(20.8500061, 47, 26.5))
    u224(CFrame.new(28.0450134, 2.59688377, 106.488808, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(158.91008, 21.9399872, 94.2899399))
    u224(CFrame.new(-124.586899, 67.1915894, 236.797241, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(157.399887, 0.5, 57.5))
    u224(CFrame.new(-254.643875, 66.3116455, 432.286926, -0.912263155, 0, -0.409604788, -6.68149738e-22, 1, 0, 0.409604847, 0, -0.912263036), Vector3.new(207.399887, 2.5, 151))
    u224(CFrame.new(-125.181572, 64.4391098, 589.670898, -0.945519269, 2.00444967e-21, 0.325568169, -2.0408514700000002e-21, 1, -2.17528256e-22, -0.325568289, 5.04870979e-29, -0.945518196), Vector3.new(17.3998871, 2.5, 166))
    u224(CFrame.new(-137.709702, 64.9391098, 585.357117, -0.945519269, 2.00444967e-21, 0.325568169, -2.0408514700000002e-21, 1, -2.17528256e-22, -0.325568289, 5.04870979e-29, -0.945518196), Vector3.new(22.8998871, 3.5, 166))
    u224(CFrame.new(19.0190639, 64.4391098, 609.972961, -0.990270078, 5.8677458300000005e-21, 0.139173076, -5.88725364e-21, 1, 5.91148532e-22, -0.139173225, 8.70114437e-22, -0.990266919), Vector3.new(23.8998871, 2.5, 111.5))
    u224(CFrame.new(105.727264, 64.9391098, 804.053894, -0.990270078, 5.8677458300000005e-21, 0.139173076, -5.88725364e-21, 1, 5.91148532e-22, -0.139173225, 8.70114437e-22, -0.990266919), Vector3.new(214.149902, 3.5, 514.25))
    u224(CFrame.new(-224.200012, 65.5, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(181.399902, 4, 138.5))
    u224(CFrame.new(-146.199707, 66, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-174.199951, 66, 1047.75, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-237.197769, 66, 1060.49756, 0.173636138, 1.1603440200000001e-19, 0.984809875, -1.3037671800000001e-19, 1, -9.48368712e-20, -0.984809875, -1.11929169e-19, 0.173636138), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-283.1716, 66, 1015.58191, 0.906302631, 1.1603440200000001e-19, 0.422629356, -1.52466835e-19, 1, 5.24021665e-20, -0.422629356, -1.11929169e-19, 0.906302631), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-261.013458, 66, 946.482361, 0.77715373, 1.16034389e-19, -0.629310906, -1.97383098e-20, 1, 1.60007905e-19, 0.629310906, -1.11929182e-19, 0.77715373), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-210.805298, 66, 933.739136, -0.190796942, 1.16034389e-19, -0.981629729, 1.3201201599999999e-19, 1, 9.25470866e-20, 0.981629729, -1.11929182e-19, -0.190796942), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-162.697159, 66, 955.924011, -0.707098544, 1.16034363e-19, -0.707116008, 1.6119465099999999e-19, 1, 2.90485394e-21, 0.707116008, -1.11929195e-19, -0.707098544), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-160.222321, 66.5, 953.449097, -0.707098544, 1.16034363e-19, -0.707116008, 1.6119465099999999e-19, 1, 2.90485394e-21, 0.707116008, -1.11929195e-19, -0.707098544), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-157.040375, 67, 950.26709, -0.707098544, 1.16034363e-19, -0.707116008, 1.6119465099999999e-19, 1, 2.90485394e-21, 0.707116008, -1.11929195e-19, -0.707098544), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-155.272629, 67.5, 948.499329, -0.707098544, 1.16034363e-19, -0.707116008, 1.6119465099999999e-19, 1, 2.90485394e-21, 0.707116008, -1.11929195e-19, -0.707098544), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-152.797791, 68, 946.024414, -0.707098544, 1.16034363e-19, -0.707116008, 1.6119465099999999e-19, 1, 2.90485394e-21, 0.707116008, -1.11929195e-19, -0.707098544), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-150.676498, 68.5, 943.903076, -0.707098544, 1.16034363e-19, -0.707116008, 1.6119465099999999e-19, 1, 2.90485394e-21, 0.707116008, -1.11929195e-19, -0.707098544), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-144.199692, 66.5, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-141.199677, 67, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-140.199661, 67.5, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-139.199661, 68, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-116.44957, 68.5, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(67.8999023, 5, 138.5))
    u224(CFrame.new(-112.699554, 68, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(75.3999023, 4, 138.5))
    u224(CFrame.new(-107.699532, 67.5, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(85.3999023, 3, 138.5))
    u224(CFrame.new(-103.949516, 67, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(92.8999023, 2, 138.5))
    u224(CFrame.new(-100.199501, 66.75, 1001.75006, -1.00000405, 1.1819003e-20, 2.9802322400000003e-7, -1.1819003e-20, 1, 5.46135296e-22, 2.9802322400000003e-7, -5.46135296e-22, -0.999997675), Vector3.new(100.399902, 1.5, 138.5))
    u224(CFrame.new(-173.570618, 66.5, 1048.5271, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-172.626633, 67, 1049.69287, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-171.367981, 67.5, 1051.24719, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-168.536011, 68, 1054.74438, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-166.962692, 68.5, 1056.68726, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-166.018707, 69, 1057.85303, -0.62932831, 3.5457148700000003e-20, 0.777146101, -4.02626932e-20, 1, -7.344226470000001e-21, -0.777149975, -1.63841185e-21, -0.629315674), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-238.239594, 66.5, 1066.40637, 0.173636138, 1.1603440200000001e-19, 0.984809875, -1.3037671800000001e-19, 1, -9.48368712e-20, -0.984809875, -1.11929169e-19, 0.173636138), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-238.673691, 67, 1068.86841, 0.173636138, 1.1603440200000001e-19, 0.984809875, -1.3037671800000001e-19, 1, -9.48368712e-20, -0.984809875, -1.11929169e-19, 0.173636138), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-239.020966, 67.5, 1070.83801, 0.173636138, 1.1603440200000001e-19, 0.984809875, -1.3037671800000001e-19, 1, -9.48368712e-20, -0.984809875, -1.11929169e-19, 0.173636138), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-239.54187, 68, 1073.79248, 0.173636138, 1.1603440200000001e-19, 0.984809875, -1.3037671800000001e-19, 1, -9.48368712e-20, -0.984809875, -1.11929169e-19, 0.173636138), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-240.062775, 68.5, 1076.74695, 0.173636138, 1.1603440200000001e-19, 0.984809875, -1.3037671800000001e-19, 1, -9.48368712e-20, -0.984809875, -1.11929169e-19, 0.173636138), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-286.343658, 66.5, 1017.0611, 0.906302631, 1.1603440200000001e-19, 0.422629356, -1.52466835e-19, 1, 5.24021665e-20, -0.422629356, -1.11929169e-19, 0.906302631), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-289.515717, 67, 1018.54028, 0.906302631, 1.1603440200000001e-19, 0.422629356, -1.52466835e-19, 1, 5.24021665e-20, -0.422629356, -1.11929169e-19, 0.906302631), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-291.781464, 67.5, 1019.59686, 0.906302631, 1.1603440200000001e-19, 0.422629356, -1.52466835e-19, 1, 5.24021665e-20, -0.422629356, -1.11929169e-19, 0.906302631), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-294.500366, 68, 1020.86475, 0.906302631, 1.1603440200000001e-19, 0.422629356, -1.52466835e-19, 1, 5.24021665e-20, -0.422629356, -1.11929169e-19, 0.906302631), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-298.12558, 68.5, 1022.55524, 0.906302631, 1.1603440200000001e-19, 0.422629356, -1.52466835e-19, 1, 5.24021665e-20, -0.422629356, -1.11929169e-19, 0.906302631), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-262.179199, 66.5, 945.538391, 0.77715373, 1.16034389e-19, -0.629310906, -1.97383098e-20, 1, 1.60007905e-19, 0.629310906, -1.11929182e-19, 0.77715373), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-263.34494, 67, 944.594421, 0.77715373, 1.16034389e-19, -0.629310906, -1.97383098e-20, 1, 1.60007905e-19, 0.629310906, -1.11929182e-19, 0.77715373), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-264.899261, 67.5, 943.335815, 0.77715373, 1.16034389e-19, -0.629310906, -1.97383098e-20, 1, 1.60007905e-19, 0.629310906, -1.11929182e-19, 0.77715373), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-266.065002, 68, 942.391846, 0.77715373, 1.16034389e-19, -0.629310906, -1.97383098e-20, 1, 1.60007905e-19, 0.629310906, -1.11929182e-19, 0.77715373), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-266.842163, 68.5, 941.762512, 0.77715373, 1.16034389e-19, -0.629310906, -1.97383098e-20, 1, 1.60007905e-19, 0.629310906, -1.11929182e-19, 0.77715373), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-210.137512, 66.5, 930.303406, -0.190796942, 1.16034389e-19, -0.981629729, 1.3201201599999999e-19, 1, 9.25470866e-20, 0.981629729, -1.11929182e-19, -0.190796942), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-209.660522, 67, 927.849304, -0.190796942, 1.16034389e-19, -0.981629729, 1.3201201599999999e-19, 1, 9.25470866e-20, 0.981629729, -1.11929182e-19, -0.190796942), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-208.992737, 67.5, 924.413635, -0.190796942, 1.16034389e-19, -0.981629729, 1.3201201599999999e-19, 1, 9.25470866e-20, 0.981629729, -1.11929182e-19, -0.190796942), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-208.706543, 68, 922.941162, -0.190796942, 1.16034389e-19, -0.981629729, 1.3201201599999999e-19, 1, 9.25470866e-20, 0.981629729, -1.11929182e-19, -0.190796942), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(-208.420349, 68.5, 921.468689, -0.190796942, 1.16034389e-19, -0.981629729, 1.3201201599999999e-19, 1, 9.25470866e-20, 0.981629729, -1.11929182e-19, -0.190796942), Vector3.new(25.3999023, 5, 138.5))
    u224(CFrame.new(42.9820786, 0.3806144, 36.3547974, -0.000348969304, 0, 0.99999994, 0, 1, 0, -0.99999994, 0, -0.000348969304), Vector3.new(49.7200928, 29.8699951, 3.82001257))
    u224(CFrame.new(21.461998, -1.51294553, 36.6358871, -0.000348969304, 0, 0.99999994, 0, 1, 0, -0.99999994, 0, -0.000348969304), Vector3.new(48.7200928, 36.8699951, 3.82001257))
    u224(CFrame.new(28.1880493, 67.1915741, 230.697144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(160.850006, 2.5, 61))
    u224(CFrame.new(29.4380493, 67.6915741, 234.197144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(158.350006, 3.5, 61))
    u224(CFrame.new(28.6880493, 67.4415741, 230.697144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(159.850006, 3, 62))
    u224(CFrame.new(27.4380493, 66.9415741, 234.947144, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(162.350006, 2, 48.5))
    u224(CFrame.new(56.7784882, 64.9391098, 983.48761, -0.990270078, 5.8677458300000005e-21, 0.139173076, -5.88725364e-21, 1, 5.91148532e-22, -0.139173225, 8.70114437e-22, -0.990266919), Vector3.new(261.149902, 3.5, 145.25))
    wait(0.1)

    if _G.destroy_map then
        local v675, v676, v677 = pairs(workspace:GetChildren())

        while true do
            local v678

            v677, v678 = v675(v676, v677)

            if v677 == nil then
                break
            end
            if (v678.ClassName == 'Model' or v678.ClassName == 'Part' or (v678.ClassName == 'UnionOperation' or v678.ClassName == 'WedgePart')) and (v678 ~= game.Players.LocalPlayer.Character and v678.Name ~= u5) then
                v678:Destroy()
            end
        end

        game:GetService('Workspace').fence:Destroy()
        game:GetService('Workspace').borders:Destroy()
    end

    workspace:WaitForChild('eliteSwordsman')
    game:GetService('Workspace').eliteSwordsman.ChildAdded:Connect(function(p679)
        if p679.ClassName == 'Model' and p679.Name == 'Ultimate Swordsman' then
            p679:WaitForChild('HumanoidRootPart')
            u267(p679, 30, 'square')
        end
    end)

    while not game:GetService('Workspace').dungeon.room4.enemyFolder:FindFirstChild('Sanada Yukimura') do
        wait(1)
    end
    while not game:GetService('Workspace').dungeon.room4.enemyFolder:FindFirstChild('Sanada Yukimura'):FindFirstChild('HumanoidRootPart') do
        wait(1)
    end

    u529 = true
    u305.CFrame = CFrame.new(88.5511551, 72.7995224, 276.368042)

    local _, _, _, v680 = u314()

    while v680.Position.Y < 69.999526977539 do
        wait()
    end

    u529 = false
end
function underworldFix()
    u224(CFrame.new(487, 65.1197205, 416.394165, 1, 0, 0, 0, 0.89100647, 0.4539904, 0, -0.4539904, 0.89100647), Vector3.new(68, 1, 83.5))
    u224(CFrame.new(487, 61.8143387, 275.542908, 1, 0, 0, 0, 0.89100647, 0.4539904, 0, -0.4539904, 0.89100647), Vector3.new(68, 1, 17.5))
end
function pirateFix()
    u224(CFrame.new(-68.2813721, 189.801392, 430.691193, 0.997564077, 0, -0.0697564706, 0, 1, 0, 0.0697564706, 0, 0.997564077), Vector3.new(115.020088, 173.349854, 90.7301254))
    u224(CFrame.new(-248.68956, 189.686432, 446.980225, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(145.240143, 173.119949, 132.979874))
    u224(CFrame.new(-156.12616, 190.301392, 468.405304, 0.997564077, 0, -0.0697564706, 0, 1, 0, 0.0697564706, 0, 0.997564077), Vector3.new(59.0200806, 174.349854, 3.23012543))
    u224(CFrame.new(-0.124966383, 263.126404, 237.607864, 0.948323667, 0, -0.317304641, 0, 1, 0, 0.317304641, 0, 0.948323667), Vector3.new(17.7299881, 319.999939, 105.929977))
    u224(CFrame.new(-13.9006824, 263.126404, 334.261169, 0.998134792, 0, 0.0610485412, 0, 1, 0, -0.0610485412, 0, 0.998134792), Vector3.new(16.7299881, 319.999939, 102.700035))
    u224(CFrame.new(12.5065136, 263.126404, 193.714981, 0.997564077, 0, 0.0697564706, 0, 1, 0, -0.0697564706, 0, 0.997564077), Vector3.new(10.2299871, 319.999939, 105.929977))
    u224(CFrame.new(-23.2540989, 263.126404, 130.036514, -0.0958457589, -8.37910274e-9, -0.995396197, -4.02479827e-10, 1, -8.37910274e-9, 0.995396197, -4.02479827e-10, -0.0958457589), Vector3.new(10.2299871, 319.999939, 108.449997))
    u224(CFrame.new(-182.51709, 263.126404, 105.839249, 0.113203242, 0, -0.993571877, 0, 1, 0, 0.993571877, 0, 0.113203242), Vector3.new(93.6899948, 319.999939, 94.2900009))
    u224(CFrame.new(-210.425171, 225.446411, 136.269073, 0.688354611, 0, -0.725374341, 0, 1, 0, 0.725374341, 0, 0.688354611), Vector3.new(37.7000008, 244.639954, 70.2799683))
    u224(CFrame.new(-240.888153, 225.446411, 204.484818, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(37.7000008, 244.639954, 125.269974))
    u224(CFrame.new(-242.00853, 223.686432, 287.601959, -0.99984771, -8.7409461e-8, 0.0174524058, -8.894851079999999e-8, 1, -8.7409461e-8, -0.0174524058, -8.894851079999999e-8, -0.99984771), Vector3.new(84.8199768, 241.119949, 65.279953))
    u224(CFrame.new(-266.261414, 223.686432, 329.667603, -0.737277329, -6.44548308e-8, 0.675590158, -1.46484751e-7, 1, -6.44548308e-8, -0.675590158, -1.46484751e-7, -0.737277329), Vector3.new(84.2599869, 241.119949, 103.149963))
    u224(CFrame.new(-171.303024, 263.126404, 7.99746418, 0.999961913, 0, -0.00872653536, 0, 1, 0, 0.00872653536, 0, 0.999961913), Vector3.new(18.7299881, 319.999939, 135.039978))
    u224(CFrame.new(-186.983673, 308.136475, -85.8008804, 0.878817141, 0, 0.477158755, 0, 1, 0, -0.477158755, 0, 0.878817141), Vector3.new(15.7299871, 229.979904, 62.4799805))
    u224(CFrame.new(-228.494202, 263.126404, -183.719955, 0.999961913, 0, -0.00872653536, 0, 1, 0, 0.00872653536, 0, 0.999961913), Vector3.new(10.2299871, 319.999939, 135.039978))
    u224(CFrame.new(-216.488495, 308.136475, -116.623718, 0.507538378, 0, 0.861629128, 0, 1, 0, -0.861629128, 0, 0.507538378), Vector3.new(14.2299871, 229.979904, 31.0399818))
    u224(CFrame.new(-180.638794, 263.126404, -276.830627, 0.995396197, 0, 0.0958457515, 0, 1, 0, -0.0958457515, 0, 0.995396197), Vector3.new(113.549988, 319.999939, 97.3899994))
    u224(CFrame.new(-54.6073608, 263.126404, 74.6437073, 0.891006529, 0, -0.453990489, 0, 1, 0, 0.453990489, 0, 0.891006529), Vector3.new(14.7299871, 319.999939, 115.449997))
    u224(CFrame.new(-37.863369, 263.126404, -4.13345909, 0.999961913, 0, -0.00872653536, 0, 1, 0, 0.00872653536, 0, 0.999961913), Vector3.new(10.2299871, 319.999939, 108.449997))
    u224(CFrame.new(-31.8706627, 263.126404, -72.4572144, 0.945518553, 0, -0.32556814, 0, 1, 0, 0.32556814, 0, 0.945518553), Vector3.new(10.2299871, 319.999939, 35.8099937))
    u224(CFrame.new(-7.3540988, 263.126404, -107.615921, 0.713250458, 0, -0.700909257, 0, 1, 0, 0.700909257, 0, 0.713250458), Vector3.new(10.2299871, 319.999939, 58.8699951))
    u224(CFrame.new(5.32070923, 263.126404, -181.679382, 0.999961913, 0, -0.00872653536, 0, 1, 0, 0.00872653536, 0, 0.999961913), Vector3.new(10.2299871, 319.999939, 135.039978))
    u224(CFrame.new(-23.2827835, 263.126404, -230.279099, 0.32556814, 0, 0.945518553, 0, 1, 0, -0.945518553, 0, 0.32556814), Vector3.new(29.2299881, 319.999939, 142.539978))
    u224(CFrame.new(-115.024994, 241.249969, -414.445007, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(190.049988, 2.49993896, 169.889999))
    u224(CFrame.new(-209.274994, 249.999969, -366.445007, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(3.54998779, 19.999939, 20.8899994))
    u224(CFrame.new(-109.024994, 252.035263, -308.551788, 1, 0, 0, 0, 0.906307757, 0.42261827, 0, -0.42261827, 0.906307757), Vector3.new(48.0499878, 1.99993896, 61.8899994))
    u224(CFrame.new(-109.024994, 268.374207, -263.68924, 1, 0, 0, 0, 0.974370062, 0.224951088, 0, -0.224951088, 0.974370062), Vector3.new(48.0499878, 2.49993896, 36.8899994))
    u224(CFrame.new(-109.024994, 270.498352, -240.767548, 1, 0, 0, 0, 0.9510566, -0.309016943, 0, 0.309016943, 0.9510566), Vector3.new(48.0499878, 2.49993896, 11.8899994))
    u224(CFrame.new(-114.774994, 255.249969, -85.0700073, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(232.549988, 30.499939, 309.140015))
    u224(CFrame.new(-53.2749939, 255.999969, -24.6950073, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(109.549988, 31.999939, 59.3900146))
    u224(CFrame.new(-28.5249939, 273.499969, 15.3049927, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(60.0499878, 66.999939, 139.390015))
    u224(CFrame.new(-80.7749939, 267.999969, 54.8049927, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(164.549988, 6.99993896, 23.3900146))
    u224(CFrame.new(-154.774994, 279.999969, 52.0549927, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(16.5499878, 30.999939, 28.8900146))
    u224(CFrame.new(-137.024994, 267.999969, 14.5549927, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(39.0499878, 6.99993896, 29.8900146))
    u224(CFrame.new(-167.024994, 267.749969, -113.406532, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388), Vector3.new(39.0499878, 6.49993896, 103.890015))
    u224(CFrame.new(-170.580597, 271.249969, -111.065025, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388), Vector3.new(24.5499878, 1.49993896, 92.3900146))
    u224(CFrame.new(-176.571625, 271.749969, -119.441788, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388), Vector3.new(15.5499878, 2.49993896, 63.8900146))
    u224(CFrame.new(-155.324982, 270.499908, -185.195007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(35.5499878, 1.99993896, 36.3900146))
    u224(CFrame.new(-158.574982, 270.999908, -193.195007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(21.0499878, 2.99993896, 16.3900146))
    u224(CFrame.new(-160.074982, 271.249908, -193.695007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(10.0499878, 3.49993896, 7.39001465))
    u224(CFrame.new(-47.5749817, 270.499908, -162.195007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(70.0499878, 1.99993896, 118.390015))
    u224(CFrame.new(-49.8249817, 270.999908, -181.695007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(52.5499878, 2.99993896, 55.3900146))
    u224(CFrame.new(-141.574982, 287.499908, -233.195007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(55.0499878, 35.999939, 15.3900146))
    u224(CFrame.new(-7.88667679, 275.376404, -116.717194, 0.999961913, 0, -0.0087265335, 0, 1, 0, 0.00872653536, 0, 0.999961793), Vector3.new(15.0499878, 22.499939, 30.8900146))
    u224(CFrame.new(-216.351822, 277.376404, -126.646851, 0.999961913, 0, -0.00872653257, 0, 1, 0, 0.0087265363, 0, 0.999961674), Vector3.new(15.0499878, 16.499939, 19.8900146))
    u224(CFrame.new(-220.909836, 275.376404, -219.818344, 0.995396256, 0, 0.0958457068, 0, 1, 0, -0.0958457515, 0, 0.99539578), Vector3.new(16.5499878, 13.499939, 8.39001465))
    u224(CFrame.new(-103.524994, 251.527222, 104.294586, 1, 0, 0, 0, 0.906307757, -0.42261827, 0, 0.42261827, 0.906307757), Vector3.new(99.0499878, 5.99993896, 78.8900146))
    u224(CFrame.new(-108.024994, 236.249969, 298.054993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(245.049988, 4.49993896, 338.890015))
    u224(CFrame.new(-115.274994, 236.749969, 332.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(39.5499878, 5.49993896, 40.8900146))
    u224(CFrame.new(-114.524994, 237.249969, 331.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(24.0499878, 6.49993896, 21.8900146))
    u224(CFrame.new(-201.774994, 236.749969, 305.804993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(59.5499878, 5.49993896, 149.390015))
    u224(CFrame.new(-206.274994, 259.249969, 305.054993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(50.5499878, 50.499939, 148.890015))
    u224(CFrame.new(-195.774994, 236.749969, 253.054993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(71.5499878, 5.49993896, 36.8900146))
    u224(CFrame.new(-201.024994, 237.249969, 251.054993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(61.0499878, 6.49993896, 24.8900146))
    u224(CFrame.new(-60.7749939, 236.749969, 330.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(47.5499878, 5.49993896, 44.8900146))
    u224(CFrame.new(-61.5249939, 237.249969, 331.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(20.0499878, 6.49993896, 17.8900146))
    u224(CFrame.new(-29.0249939, 236.749969, 293.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(30.0499878, 5.49993896, 32.8900146))
    u224(CFrame.new(-26.0249939, 237.249969, 293.804993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(11.0499878, 6.49993896, 23.3900146))
    u224(CFrame.new(-16.2749939, 236.749969, 210.804993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(35.5499878, 5.49993896, 34.3900146))
    u224(CFrame.new(-69.3916397, 236.499969, 184.50386, 0.96126169, 0, 0.275637299, 0, 0.999999821, 0, -0.275637329, 0, 0.961261511), Vector3.new(84.0499878, 4.99993896, 38.8900146))
    u224(CFrame.new(-66.1986313, 236.749969, 183.848358, 0.96126169, 0, 0.275637299, 0, 0.999999821, 0, -0.275637329, 0, 0.961261511), Vector3.new(57.5499878, 5.49993896, 30.3900146))
    u224(CFrame.new(-62.4224892, 236.999969, 182.505493, 0.96126169, 0, 0.275637299, 0, 0.999999821, 0, -0.275637329, 0, 0.961261511), Vector3.new(49.5499878, 5.99993896, 24.8900146))
    u224(CFrame.new(-63.9332924, 237.249969, 182.678635, 0.96126169, 0, 0.275637299, 0, 0.999999821, 0, -0.275637329, 0, 0.961261511), Vector3.new(29.5499878, 6.49993896, 19.3900146))
    u224(CFrame.new(-62.1821709, 237.499969, 182.436569, 0.96126169, 0, 0.275637299, 0, 0.999999821, 0, -0.275637329, 0, 0.961261511), Vector3.new(19.0499878, 6.99993896, 13.8900146))
    u224(CFrame.new(-103.524994, 238.727341, 132.97348, 1, 0, 0, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813), Vector3.new(99.0499878, 9.49993896, 32.3900146))
    u224(CFrame.new(-130.324982, 238.999908, 150.914978, 1, 0, 0, 0, 0.999999881, -1.49011612e-8, 0, 0, 0.999999821), Vector3.new(45.5499878, 0.999940872, 19.3900146))
    u224(CFrame.new(-131.824982, 239.499908, 147.914978, 1, 0, 0, 0, 0.999999881, -1.49011612e-8, 0, 0, 0.999999821), Vector3.new(34.5499878, 1.99994087, 13.3900146))
    u224(CFrame.new(-134.824982, 239.749908, 145.914978, 1, 0, 0, 0, 0.999999881, -1.49011612e-8, 0, 0, 0.999999821), Vector3.new(22.5499878, 2.49994087, 9.39001465))
    u224(CFrame.new(-2.22501421, 269.749908, 145.414978, 0.999999881, 0, 2.98023224e-8, 0, 0.999999583, 0, 2.98023224e-8, 0, 0.999999583), Vector3.new(18.5499878, 62.499939, 21.3900146))
    u224(CFrame.new(-216.172623, 238.749939, 167.096695, 0.788009822, 0, -0.615660012, 0, 0.999997318, 0, 0.615660667, 0, 0.788008869), Vector3.new(18.5499878, 0.499946952, 55.3900146))
    u224(CFrame.new(-217.157623, 238.999939, 166.327118, 0.788009822, 0, -0.615660012, 0, 0.999997318, 0, 0.615660667, 0, 0.788008869), Vector3.new(16.0499878, 0.999946952, 55.3900146))
    u224(CFrame.new(-217.748642, 239.249939, 165.865372, 0.788009822, 0, -0.615660012, 0, 0.999997318, 0, 0.615660667, 0, 0.788008869), Vector3.new(14.5499878, 1.49994695, 55.3900146))
    u224(CFrame.new(-205.281525, 241.749939, 149.908188, 0.788009822, 0, -0.615660012, 0, 0.999997318, 0, 0.615660667, 0, 0.788008869), Vector3.new(14.5499878, 6.49994707, 14.8900146))
    u224(CFrame.new(-176.024994, 236.499969, 425.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(26.0499878, 4.99993896, 46.8900146))
    u224(CFrame.new(-177.524994, 236.749969, 425.054993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(23.0499878, 5.49993896, 43.8900146))
    u224(CFrame.new(-178.774994, 237.249969, 425.804993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(20.5499878, 6.49993896, 38.3900146))
    u224(CFrame.new(-180.774994, 237.499969, 429.054993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(16.5499878, 6.99993896, 24.8900146))
    u224(CFrame.new(-181.774994, 237.999969, 430.304993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(14.5499878, 7.99993896, 18.3900146))
    u224(CFrame.new(-124.774994, 236.499969, 415.804993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(15.5499878, 4.99993896, 38.3900146))
    u224(CFrame.new(-123.524994, 236.749969, 416.554993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(13.0499878, 5.49993896, 25.8900146))
    u224(CFrame.new(-121.774994, 236.999969, 416.304993, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994), Vector3.new(9.54998779, 5.99993896, 19.3900146))
    u224(CFrame.new(-89.5749817, 280.749908, -237.695007, 1, 0, 0, 0, 1, 0, 0, 0, 0.99999994), Vector3.new(7.04998779, 22.499939, 6.39001465))
    u224(CFrame.new(-50.7568512, 263.126404, -284.197937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(82.5499878, 319.999939, 92.3899994))
    u224(CFrame.new(-84.7568512, 263.126404, -250.447937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(21.5499878, 319.999939, 24.8899994))
    u224(CFrame.new(-20.2568512, 263.126404, -418.197937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(4.54998779, 319.999939, 181.389999))
    u224(CFrame.new(-212.506851, 263.126404, -418.197937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(13.0499878, 319.999939, 181.389999))
    u224(CFrame.new(-168.256851, 263.126404, -328.947937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(79.5499878, 319.999939, 2.88999939))
    u224(CFrame.new(-163.006851, 263.126404, -572.947937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(90.0499878, 319.999939, 150.889999))
    u224(CFrame.new(-53.5068512, 263.126404, -534.947937, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(71.0499878, 319.999939, 74.8899994))
    u224(CFrame.new(-75.8494415, 263.126404, -590.692261, -0.258819044, 0, -0.965925753, 0, 1, 0, 0.965925753, 0, -0.258819044), Vector3.new(50.5499878, 319.999939, 10.3899994))
    u224(CFrame.new(-47.9917145, 263.126404, -617.715088, -0.898792207, 0, -0.43836987, 0, 1, 0, 0.43836987, 0, -0.898792207), Vector3.new(50.5499878, 319.999939, 10.3899994))
    u224(CFrame.new(-5.61179876, 263.126404, -643.846008, -0.798630357, 0, -0.601810753, 0, 1, 0, 0.601810753, 0, -0.798630357), Vector3.new(50.5499878, 319.999939, 10.3899994))
    u224(CFrame.new(21.596756, 263.126404, -678.58075, -0.390731424, 0, -0.920504749, 0, 1, 0, 0.920504749, 0, -0.390731424), Vector3.new(48.5499878, 319.999939, 12.3899994))
    u224(CFrame.new(32.232254, 263.126404, -711.717529, -0.224951372, 0, -0.974370062, 0, 1, 0, 0.974370062, 0, -0.224951372), Vector3.new(33.5499878, 319.999939, 17.8899994))
    u224(CFrame.new(-91.2977295, 250.376404, -663.801025, 0.882947803, 0, 0.469471604, 0, 1, 0, -0.469471604, 0, 0.882947803), Vector3.new(121.049988, 76.499939, 17.8899994))
    u224(CFrame.new(-35.862896, 250.376404, -706.077393, 0.374607325, 0, 0.927185595, 0, 1, 0, -0.927185595, 0, 0.374607325), Vector3.new(38.5499878, 76.499939, 17.8899994))
    u224(CFrame.new(-36.112896, 250.376404, -724.327393, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(24.0499878, 76.499939, 7.38999939))
    u224(CFrame.new(46.887104, 250.376404, -749.077393, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(5.04998779, 76.499939, 56.8899994))
    u224(CFrame.new(35.387104, 250.376404, -795.827393, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(28.0499878, 76.499939, 47.3899994))
    u224(CFrame.new(-37.862896, 250.376404, -787.827393, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(27.5499878, 76.499939, 38.3899994))
    u224(CFrame.new(-48.362896, 250.376404, -748.077393, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(6.54998779, 76.499939, 42.8899994))
    u224(CFrame.new(-38.4214478, 250.376404, -825.885254, 0.882947505, 0, 0.469471455, 0, 1, 0, -0.469471455, 0, 0.882947505), Vector3.new(6.04998779, 76.499939, 47.8899994))
    u224(CFrame.new(1.74190998, 250.376404, -838.746277, 0.882947505, 0, 0.469471455, 0, 1, 0, -0.469471455, 0, 0.882947505), Vector3.new(14.0499878, 76.499939, 120.889999))
    u224(CFrame.new(-78.6714478, 250.376404, -824.135254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(58.5499878, 76.499939, 44.3899994))
    u224(CFrame.new(-180.171448, 250.376404, -824.135254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(120.549988, 76.499939, 44.3899994))
    u224(CFrame.new(-187.421448, 250.376404, -892.635254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(95.0499878, 76.499939, 13.3899994))
    u224(CFrame.new(-114.421448, 250.376404, -892.635254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(25.0499878, 76.499939, 13.3899994))
    u224(CFrame.new(-58.4214478, 250.376404, -892.635254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(55.0499878, 76.499939, 13.3899994))
    u224(CFrame.new(-32.5747032, 250.376404, -881.752502, 0.866025448, 0, -0.5, 0, 1, 0, 0.5, 0, 0.866025448), Vector3.new(48.5499878, 76.499939, 13.3899994))
    u224(CFrame.new(-123.171448, 250.376404, -901.135254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(80.5499878, 76.499939, 0.38999939))
    u224(CFrame.new(-140.421448, 250.376404, -897.885254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(46.0499878, 76.499939, 6.88999939))
    u224(CFrame.new(-116.171448, 250.376404, -828.635254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(28.5499878, 76.499939, 10.3899994))
    u224(CFrame.new(-530.105103, 279.979858, -1092.07043, 0.999390841, 0, -0.0348994955, 0, 1, 0, 0.0348994955, 0, 0.999390841), Vector3.new(66.3700256, 165.859863, 74.1800003))
    u224(CFrame.new(-434.260559, 279.979858, -1090.26013, 0.999390841, 0, -0.0348994955, 0, 1, 0, 0.0348994955, 0, 0.999390841), Vector3.new(66.3700256, 165.859863, 75.3499756))
    u224(CFrame.new(-623.851563, 279.979858, -1429.71814, -0.719339788, -6.28866843e-8, 0.694658399, -1.48151742e-7, 1, -6.28866843e-8, -0.694658399, -1.48151742e-7, -0.719339788), Vector3.new(159.419998, 165.859863, 17.4799919))
    u224(CFrame.new(-587.972534, 279.979858, -1466.33179, -0.719339788, -6.28866843e-8, 0.694658399, -1.48151742e-7, 1, -6.28866843e-8, -0.694658399, -1.48151742e-7, -0.719339788), Vector3.new(160.169998, 165.859863, 44.1299934))
    u224(CFrame.new(-510.793091, 279.979858, -1412.05334, -0.91354543, -7.986467659999999e-8, 0.406736642, -1.22980822e-7, 1, -7.986467659999999e-8, -0.406736642, -1.22980822e-7, -0.91354543), Vector3.new(149.439972, 165.859863, 22.9799919))
    u224(CFrame.new(-471.971405, 279.979858, -1355.68689, -0.0174523834, -1.5257358699999999e-9, 0.99984771, -1.74832238e-7, 1, -1.5257358699999999e-9, -0.99984771, -1.74832238e-7, -0.0174523834), Vector3.new(145.919983, 165.859863, 19.7599926))
    u224(CFrame.new(-585.297424, 279.979858, -1324.81335, -0.182235524, -1.59315352e-8, 0.98325491, -1.7338165e-7, 1, -1.59315352e-8, -0.98325491, -1.7338165e-7, -0.182235524), Vector3.new(128.960007, 165.859863, 42.9799919))
    u224(CFrame.new(-588.963806, 279.979858, -1300.72192, 0.999390841, 0, -0.0348994955, 0, 1, 0, 0.0348994955, 0, 0.999390841), Vector3.new(142.960007, 165.859863, 17.4799919))
    u224(CFrame.new(-703.672302, 279.979858, -1446.30786, -0.669130564, -5.84972533e-8, -0.74314487, -2.24549908e-8, 1, -5.84972533e-8, 0.74314487, -2.24549908e-8, -0.669130564), Vector3.new(69.8000183, 165.859863, 17.4799919))
    u224(CFrame.new(-756.852478, 279.979858, -1402.3075, -0.870355666, -7.608890939999999e-8, -0.492423564, -4.4373742e-8, 1, -7.608890939999999e-8, 0.492423564, -4.4373742e-8, -0.870355666), Vector3.new(69.8000183, 165.859863, 17.4799919))
    u224(CFrame.new(-797.608215, 279.979858, -1387.88354, -0.996917307, -8.71532819e-8, -0.0784590989, -8.0563666e-8, 1, -8.71532819e-8, 0.0784590989, -8.0563666e-8, -0.996917307), Vector3.new(55.3900223, 165.859863, 17.4799919))
    u224(CFrame.new(-820.038269, 279.979858, -1385.85034, -0.662620068, -5.79280872e-8, 0.748955727, -1.52898565e-7, 1, -5.79280872e-8, -0.748955727, -1.52898565e-7, -0.662620068), Vector3.new(82.0700302, 165.859863, 17.4799919))
    u224(CFrame.new(-841.949463, 279.979858, -1427.98669, 0.078459084, 0, -0.996917307, 0, 1, 0, 0.996917307, 0, 0.078459084), Vector3.new(55.3900223, 165.859863, 17.4799919))
    u224(CFrame.new(-834.237122, 279.979858, -1469.92981, -0.42261824, -3.69464601e-8, -0.906307817, -8.19083112e-9, 1, -3.69464601e-8, 0.906307817, -8.19083112e-9, -0.42261824), Vector3.new(86.6100311, 165.859863, 17.4799919))
    u224(CFrame.new(-767.177551, 279.979858, -1564.18726, -0.656059027, -5.73545016e-8, -0.754709542, -2.14439737e-8, 1, -5.73545016e-8, 0.754709542, -2.14439737e-8, -0.656059027), Vector3.new(160.029999, 165.859863, 17.4799919))
    u224(CFrame.new(-720.77832, 279.979858, -1597.55005, -0.656059027, -5.73545016e-8, -0.754709542, -2.14439737e-8, 1, -5.73545016e-8, 0.754709542, -2.14439737e-8, -0.656059027), Vector3.new(57.8500061, 165.859863, 43.7400017))
    u224(CFrame.new(-650.672546, 279.979858, -1540.46497, -0.656059027, -5.73545016e-8, -0.754709542, -2.14439737e-8, 1, -5.73545016e-8, 0.754709542, -2.14439737e-8, -0.656059027), Vector3.new(57.8500061, 165.859863, 43.7400017))
    u224(CFrame.new(-686.894653, 279.979858, -1577.92639, -0.656059027, -5.73545016e-8, -0.754709542, -2.14439737e-8, 1, -5.73545016e-8, 0.754709542, -2.14439737e-8, -0.656059027), Vector3.new(57.8500061, 165.859863, 63.2200089))
    u224(CFrame.new(-773.282104, 285.979858, -1474.0929, -0.669130683, 0, -0.74314481, 0, 1, 0, 0.74314481, 0, -0.669130683), Vector3.new(214.029999, 2.85986328, 126.479996))
    u224(CFrame.new(-613.74707, 269.706024, -1446.57446, -0.694678783, 0.11874482, -0.709454238, -0.0000441642478, 0.986274898, 0.165120974, 0.71931982, 0.114737399, -0.685142875), Vector3.new(22.5299988, 5.10986328, 165.479996))
    u224(CFrame.new(-527.871521, 279.979858, -1234.82935, 0.999390841, 0, -0.0348994955, 0, 1, 0, 0.0348994955, 0, 0.999390841), Vector3.new(60.8700256, 165.859863, 61.6799927))
    u224(CFrame.new(-558.849976, 279.979858, -1109.59131, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1.87002563, 165.859863, 191.179993))
    u224(CFrame.new(-417.599976, 279.979858, -1110.34131, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(1.37002563, 165.859863, 189.679993))
    u224(CFrame.new(-431.140198, 279.979858, -1251.24927, 0.999390841, 0, -0.0348994955, 0, 1, 0, 0.0348994955, 0, 0.999390841), Vector3.new(71.3700256, 165.859863, 93.3499756))
    u224(CFrame.new(-494.599976, 243.729858, -1086.84131, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(161.370026, 29.3598633, 664.679993))
    u224(CFrame.new(-439.099976, 279.979858, -970.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(50.3700256, 165.859863, 95.6799927))
    u224(CFrame.new(-536.349976, 279.979858, -973.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(68.8700256, 165.859863, 89.6799927))
    u224(CFrame.new(-528.849976, 305.979858, -872.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(83.8700256, 113.859863, 132.679993))
    u224(CFrame.new(-522.703003, 305.979858, -802.900574, 0.965925813, 0, 0.258819044, 0, 1, 0, -0.258819044, 0, 0.965925813), Vector3.new(83.8700256, 113.859863, 87.1799927))
    u224(CFrame.new(-510.382385, 305.979858, -783.183533, 0.848048031, 0, 0.529919267, 0, 1, 0, -0.529919267, 0, 0.848048031), Vector3.new(83.8700256, 113.859863, 133.679993))
    u224(CFrame.new(-498.169495, 305.979858, -768.628662, 0.766044259, 0, 0.642787516, 0, 1, 0, -0.642787516, 0, 0.766044259), Vector3.new(83.8700256, 113.859863, 171.679993))
    u224(CFrame.new(-483.661346, 305.979858, -758.842712, 0.559192538, 0, 0.82903707, 0, 1, 0, -0.82903707, 0, 0.559192538), Vector3.new(83.8700256, 113.859863, 206.679993))
    u224(CFrame.new(-364.621796, 305.979858, -708.448608, 0.0174524225, 0, 0.99984771, 0, 1, 0, -0.99984771, 0, 0.0174524225), Vector3.new(83.8700256, 113.859863, 116.679993))
    u224(CFrame.new(-340.879913, 305.979858, -765.881897, -0.453990519, 0, 0.891006529, 0, 1, 0, -0.891006529, 0, -0.453990519), Vector3.new(8.37002563, 113.859863, 168.179993))
    u224(CFrame.new(-329.829071, 295.979858, -781.740417, -0.766044497, 0, 0.642787576, 0, 1, 0, -0.642787576, 0, -0.766044497), Vector3.new(7.37002563, 133.859863, 194.179993))
    u224(CFrame.new(-474.099976, 244.229858, -797.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(257.370026, 30.3598633, 85.6799927))
    u224(CFrame.new(-523.349976, 305.979858, -827.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(94.8700256, 113.859863, 42.6799927))
    u224(CFrame.new(-475.599976, 244.729858, -791.841309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(254.370026, 31.3598633, 74.6799927))
    u224(CFrame.new(-477.599976, 245.229858, -787.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(250.370026, 32.3598633, 65.6799927))
    u224(CFrame.new(-478.599976, 245.479858, -784.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(248.370026, 32.8598633, 59.6799927))
    u224(CFrame.new(-478.599976, 245.729858, -781.841309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(248.370026, 33.3598633, 54.6799927))
    u224(CFrame.new(-439.849976, 272.229858, -883.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(51.8700256, 86.3598633, 123.679993))
    u224(CFrame.new(-379.849976, 272.229858, -832.841309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(68.8700256, 86.3598633, 19.6799927))
    u224(CFrame.new(-325.158051, 241.062012, -822.414978, 0.789027095, 0.334922045, 0.515037596, -0.390731275, 0.920504749, 4.84287739e-8, -0.474095762, -0.201241508, 0.857167423), Vector3.new(9.37002563, 14.8598633, 8.17999268))
    u224(CFrame.new(-345.652191, 245.233566, -781.809937, 0.850778162, 0.104462422, 0.515038013, -0.121869348, 0.992546141, 0, -0.511199117, -0.0627673566, 0.857167304), Vector3.new(31.3700256, 33.3598633, 54.6799927))
    u224(CFrame.new(-345.599976, 272.229858, -831.341309, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(0.370025635, 86.3598633, 22.6799927))
    u224(CFrame.new(-341.921783, 249.663269, -835.159546, 0.848048091, 0, 0.529919267, 0, 1, 0, -0.529919267, 0, 0.848048091), Vector3.new(29.3700256, 76.8598633, 32.1799927))
    u224(CFrame.new(-320.835754, 230.047226, -824.571289, 0.776302516, 0.0652871206, 0.626969218, -0.284233958, 0.92402339, 0.255714566, -0.562643945, -0.37671876, 0.735880792), Vector3.new(52.3700256, 31.3598633, 95.6799927))
    u224(CFrame.new(-289.109406, 220.88858, -848.419983, 0.778962135, 0.0109720025, 0.626974881, -0.219083488, 0.941601098, 0.255714387, -0.587554574, -0.336551666, 0.735875428), Vector3.new(50.8700256, 30.8598633, 95.6799927))
    u224(CFrame.new(-89.6850128, 249.173721, -513.710205, 1, 0, 0, 0, 0.994521797, 0.104528457, 0, -0.104528457, 0.994521797), Vector3.new(5.37002563, 16.8598633, 30.6799927))
    u224(CFrame.new(-510.848236, 279.979858, -1284.52026, 0.798635483, 0, 0.601814926, 0, 1, 0, -0.601814926, 0, 0.798635483), Vector3.new(12.8700256, 165.859863, 39.6799927))
    u224(CFrame.new(-510.486816, 279.979858, -1279.47107, 0.798635483, 0, 0.601814926, 0, 1, 0, -0.601814926, 0, 0.798635483), Vector3.new(7.37002563, 165.859863, 42.1799927))
    u224(CFrame.new(-512.099976, 273.589722, -1203.34131, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(15.3700256, 30.3598633, 9.67999268))
    u224(CFrame.new(-450.099976, 273.589722, -1203.34131, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(20.3700256, 30.3598633, 9.67999268))
    u224(CFrame.new(-294.008087, 223.338501, -850.775452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(25.3700256, 23.8598633, 15.1799927))
    u224(CFrame.new(-328.758087, 223.338501, -860.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(18.8700256, 23.8598633, 7.67999268))
    u224(CFrame.new(-33.4668579, 239.946518, -446.482941, 1, 0, 0, 0, 0.999999762, 0, 0, 0, 0.999999762), Vector3.new(21.8700256, 7.35986328, 26.1799927))
    u224(CFrame.new(-24.9668579, 249.946518, -446.232941, 1, 0, 0, 0, 0.999999762, 0, 0, 0, 0.999999762), Vector3.new(4.87002563, 27.3598633, 20.6799927))
    u224(CFrame.new(-327.824738, 237.437775, -801.812622, 0.762220681, 0.371759921, 0.529919147, -0.438371092, 0.898793995, 1.49011612e-8, -0.476288557, -0.232301384, 0.84804821), Vector3.new(27.8700256, 31.8598633, 64.6799927))
    u224(CFrame.new(-336.758087, 222.838501, -903.525452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(159.870026, 22.8598633, 147.679993))
    u224(CFrame.new(-339.008087, 269.588501, -954.775452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(164.370026, 116.359863, 45.1799927))
    u224(CFrame.new(-271.008087, 243.088501, -925.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(28.3700256, 63.3598633, 104.679993))
    u224(CFrame.new(-399.008087, 223.338501, -934.775452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(35.3700256, 23.8598633, 85.1799927))
    u224(CFrame.new(-165.758087, 222.838501, -867.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(197.870026, 22.8598633, 69.6799927))
    u224(CFrame.new(-253.171448, 250.376404, -830.885254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(38.5499878, 76.499939, 57.8899994))
    u224(CFrame.new(-253.171448, 250.376404, -883.635254, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(38.5499878, 76.499939, 21.3899994))
    u224(CFrame.new(-483.418579, 267.041748, -1068.15332, -0.999052703, -0.0155198928, 0.040654961, 5.8608129600000005e-6, 0.934192657, 0.356768906, -0.04351658, 0.356431216, -0.933307588), Vector3.new(31.6913509, 2.7721417, 4.24422979))
    u224(CFrame.new(-483.981842, 260.92804, -1055.25232, -0.999047458, -0.0207527075, 0.0383878089, 9.14558768e-7, 0.879672229, 0.475580454, -0.0436382741, 0.475127459, -0.878834188), Vector3.new(31.6913509, 2.74081826, 18.896841))
    u224(CFrame.new(-483.538757, 266.034851, -1065.40332, -0.999046981, -0.0144734327, 0.0411781222, 0.0000283131376, 0.943206012, 0.332208306, -0.0436476469, 0.331892908, -0.942306757), Vector3.new(31.6913509, 2.76432514, 4.3225441))
    u224(CFrame.new(-481.38623, 266.034943, -1114.70557, 0.999046981, 0.0144734401, -0.0411781222, 0.0000283066183, 0.943206012, 0.332208335, 0.0436476506, -0.331892937, 0.942306757), Vector3.new(31.6913509, 2.76432514, 4.3225441))
    u224(CFrame.new(-480.943359, 260.928314, -1124.85657, 0.999047458, 0.0207526181, -0.0383878089, 9.909272190000001e-7, 0.879672289, 0.475580454, 0.0436382294, -0.475127459, 0.878834248), Vector3.new(31.6913509, 2.74081826, 18.896841))
    u224(CFrame.new(-482.463654, 268.856995, -1090.03271, 0.999048233, 0, -0.0436193869, 0, 1, 0, 0.0436193869, 0, 0.999048233), Vector3.new(31.6913509, 2.74081826, 23.9508228))
    u224(CFrame.new(-481.854034, 268.718964, -1104.005, 0.999045253, 0.00244113314, -0.0436193869, -0.0000733807683, 0.99853003, 0.0542014502, 0.0436875783, -0.0541465022, 0.997576892), Vector3.new(31.6913509, 2.74081826, 4.3225441))
    u224(CFrame.new(-483.248901, 268.208527, -1072.04712, -0.999044776, -0.00906737149, 0.0427475348, 0.0000939015299, 0.977787733, 0.209597498, -0.043698512, 0.209401295, -0.976852834), Vector3.new(31.6913509, 2.74081826, 4.3225441))
    u224(CFrame.new(-481.506134, 267.04184, -1111.95569, 0.999052703, 0.0155199626, -0.040654961, 5.79282641e-6, 0.934192657, 0.356768847, 0.0435166061, -0.356431156, 0.933307588), Vector3.new(31.6913509, 2.7721417, 4.24422979))
    u224(CFrame.new(-481.676361, 268.208527, -1108.06177, 0.999044776, 0.00906729046, -0.0427475348, 0.0000939778984, 0.977787733, 0.209597453, 0.0436984971, -0.20940125, 0.976852894), Vector3.new(31.6913509, 2.74081826, 4.3225441))
    u224(CFrame.new(-483.071716, 268.719055, -1076.10388, -0.999045253, -0.00244113663, 0.0436193869, -0.0000733849593, 0.99853003, 0.0542014316, -0.0436875783, 0.0541464835, -0.997576892), Vector3.new(31.6913509, 2.74081826, 4.3225441))
    u224(CFrame.new(-483.349976, 244.229858, -1089.84131, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(39.8700256, 30.3598633, 91.6799927))
    u224(CFrame.new(-367.75824, 249.663269, -845.841492, 0.848048091, 0, 0.529919267, 0, 1, 0, -0.529919267, 0, 0.848048091), Vector3.new(34.8700256, 76.8598633, 13.6799927))
    u224(CFrame.new(-43.2580872, 223.338501, -867.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(50.8700256, 23.8598633, 69.6799927))
    u224(CFrame.new(-40.5080872, 223.838501, -867.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(47.3700256, 24.8598633, 69.6799927))
    u224(CFrame.new(4.49191284, 224.838501, -762.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(99.3700256, 26.8598633, 124.679993))
    u224(CFrame.new(-25.2580872, 224.338501, -852.025452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(36.8700256, 25.8598633, 55.6799927))
    u224(CFrame.new(-37.7580872, 237.588501, -825.775452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(11.8700256, 52.3598633, 22.1799927))
    u224(CFrame.new(10.7419128, 224.838501, -837.275452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(86.8700256, 26.8598633, 50.1799927))
    u224(CFrame.new(4.49191284, 224.338501, -703.525452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(99.3700256, 25.8598633, 15.6799927))
    u224(CFrame.new(4.49191284, 223.838501, -701.525452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(99.3700256, 24.8598633, 19.6799927))
    u224(CFrame.new(8.24191284, 223.338501, -667.775452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(91.8700256, 23.8598633, 87.1799927))
    u224(CFrame.new(-32.2580872, 223.088501, -637.275452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(172.870026, 23.3598633, 148.179993))
    u224(CFrame.new(-115.024994, 237.18399, -535.179443, 1, 0, 0, 0, 0.994521797, 0.104528457, 0, -0.104528457, 0.994521797), Vector3.new(190.049988, 2.49993896, 75.8899994))
    u224(CFrame.new(-110.508087, 223.338501, -580.775452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(16.3700256, 23.8598633, 35.1799927))
    u224(CFrame.new(14.4349861, 247.448364, -670.319519, 0.874619722, 0, -0.484809607, 0, 1, 0, 0.484809607, 0, 0.874619722), Vector3.new(16.8700256, 24.3598633, 64.1799927))
    u224(CFrame.new(-114.508087, 246.948364, -651.275452, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(13.3700256, 24.3598633, 42.1799927))
    u224(CFrame.new(-327.09436, 240.060562, -797.918823, 0.789027095, 0.334922045, 0.515037596, -0.390731275, 0.920504749, 4.84287739e-8, -0.474095762, -0.201241508, 0.857167423), Vector3.new(29.8700256, 28.8598633, 63.1799927))
    u224(CFrame.new(-664.139648, 282.215668, -1495.0968, -0.691134691, 0.299709588, -0.657652676, 0, 0.909961283, 0.414693236, 0.722725987, 0.286608875, -0.628905833), Vector3.new(25.5299988, 5.60986328, 12.4799957))
    wait(0.1)
    game:GetService('Workspace').dungeon.room5.barrier:Destroy()

    if _G.destroy_map then
        local v681, v682, v683 = pairs(workspace:GetChildren())

        while true do
            local v684

            v683, v684 = v681(v682, v683)

            if v683 == nil then
                break
            end
            if (v684.ClassName == 'Model' or v684.ClassName == 'Part' or (v684.ClassName == 'UnionOperation' or v684.ClassName == 'WedgePart')) and (v684 ~= game.Players.LocalPlayer.Character and v684.Name ~= u5) then
                v684:Destroy()
            end
        end
    end

    while not game:GetService('Workspace').dungeon.room5.enemyFolder:FindFirstChild('Spider Queen') do
        wait(1)
    end
    while not game:GetService('Workspace').dungeon.room5.enemyFolder:FindFirstChild('Spider Queen'):FindFirstChild('HumanoidRootPart') do
        wait(1)
    end

    local v685 = u224(CFrame.new(-198.633, 235.589, -866.15), Vector3.new(3.62, 2.86, 4.93))

    v685.CanCollide = false
    u527 = true
    u528 = v685

    while wait(1) do
        local _, _, _, v686 = u314()

        if u309(v686.Position, v685.Position) < 5 then
            break
        end
    end

    u527 = false
    u528 = nil
end
function kingFix()
    u224(CFrame.new(-265.670135, 39.9012566, 821.916565, 0.267238349, 0, 0.963630438, 0, 1, 0, -0.963630438, 0, 0.267238349), Vector3.new(205.490036, 121.409996, 83.2699738))
    u224(CFrame.new(-84.1567535, 39.9012566, 206.857864, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(7.70991707, 121.409996, 20.2999802))
    u224(CFrame.new(-87.2210388, 39.9012566, 185.695068, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(7.70991707, 121.409996, 38.0599823))
    u224(CFrame.new(30.827137, 50.6512566, 315.457825, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(224.909897, 99.909996, 40.819973))
    u224(CFrame.new(-201.965851, 39.9012566, 538.666504, 0.999657333, 0, 0.02617695, 0, 1, 0, -0.02617695, 0, 0.999657333), Vector3.new(182.820007, 121.409996, 128.269974))
    u224(CFrame.new(-241.969254, 39.9012566, 610.253235, -0.0261769947, -2.28846564e-9, 0.999657333, -1.74815597e-7, 1, -2.28846564e-9, -0.999657333, -1.74815597e-7, -0.0261769947), Vector3.new(251.470016, 121.409996, 81.7699738))
    u224(CFrame.new(-13.5106697, 61.6240005, -82.0305099, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(60.3699608, 70.859993, 81.8800201))
    u224(CFrame.new(59.8843384, 39.9012566, 206.815186, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(29.4499016, 121.409996, 7.64001656))
    u224(CFrame.new(-52.9094086, 39.9012566, 315.457825, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(224.909897, 121.409996, 40.819973))
    u224(CFrame.new(74.1219025, 39.9012527, 575.307129, -0.999390841, -8.73695214e-8, -0.0348994955, -8.43717629e-8, 1, -8.73695214e-8, 0.0348994955, -8.43717629e-8, -0.999390841), Vector3.new(125.539993, 121.409996, 237.639999))
    u224(CFrame.new(37.6457291, 39.9012566, 151.17514, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(62.3399086, 121.409996, 43.2400017))
    u224(CFrame.new(0.196162999, 65.1762543, 441.391022, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(62.0499763, 70.859993, 81.8800201))
    u224(CFrame.new(-55.767437, 39.9012566, 12.0568619, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(242.48996, 121.409996, 43.2400017))
    u224(CFrame.new(31.8941364, 39.9012566, 16.1985588, 0.0174523834, 0, 0.99984771, 0, 1, 0, -0.99984771, 0, 0.0174523834), Vector3.new(234.210022, 121.409996, 43.2400017))
    u224(CFrame.new(-7.2978816, 63.2866745, 155.216705, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(62.0499763, 68.6600037, 81.8800201))
    u224(CFrame.new(66.2143402, 39.9012566, 170.095139, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(16.7899017, 121.409996, 81.0800095))
    u224(CFrame.new(-108.321632, 39.9012566, 444.232849, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(62.0499763, 121.409996, 155.169968))
    u224(CFrame.new(84.8040543, 39.9012566, 451.600067, 0.0348994955, 0, -0.999390841, 0, 1, 0, 0.999390841, 0, 0.0348994955), Vector3.new(62.0499763, 121.409996, 155.169968))
    u224(CFrame.new(97.8463821, 39.9012566, 665.138977, -0.0348994955, -3.05101078e-9, 0.999390841, -1.74792291e-7, 1, -3.05101078e-9, -0.999390841, -1.74792291e-7, -0.0348994955), Vector3.new(19.5399895, 121.409996, 56.4300117))
    u224(CFrame.new(46.9567528, 39.9012566, 674.57135, -0.366501212, -3.20405533e-8, 0.930417597, -1.68762469e-7, 1, -3.20405533e-8, -0.930417597, -1.68762469e-7, -0.366501212), Vector3.new(19.5399895, 121.409996, 56.4300117))
    u224(CFrame.new(-34.3111458, 39.9012566, 725.983276, -0.719339788, -6.28866843e-8, 0.694658399, -1.48151742e-7, 1, -6.28866843e-8, -0.694658399, -1.48151742e-7, -0.719339788), Vector3.new(42.0399895, 121.409996, 197.409988))
    u224(CFrame.new(-112.350136, 39.9012566, 837.091858, -0.965925813, -8.444391849999999e-8, 0.258819044, -1.10049456e-7, 1, -8.444391849999999e-8, -0.258819044, -1.10049456e-7, -0.965925813), Vector3.new(40.0399895, 121.409996, 103.629967))
    u224(CFrame.new(-139.625366, 39.9012566, 961.8349, -0.968147635, -8.46381525e-8, 0.250380009, -1.09311692e-7, 1, -8.46381525e-8, -0.250380009, -1.09311692e-7, -0.968147635), Vector3.new(47.8199997, 121.409996, 187.62999))
    u224(CFrame.new(-200.630081, 65.554451, 1018.6449, -2.18195708e-18, -8.74227837e-8, 1.00000024, -8.74227695e-8, 1, 8.74227837e-8, -1.00000024, -8.74227979e-8, 7.6405598999999995e-15), Vector3.new(60.8199997, 121.409996, 125.489998))
    u224(CFrame.new(-230.756363, 39.9012566, 1027.81616, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(40.8199997, 121.409996, 136.48999))
    u224(CFrame.new(-253.298645, 39.9012566, 919.571655, 0.902585268, 0, 0.430511087, 0, 1, 0, -0.430511087, 0, 0.902585268), Vector3.new(43.3199997, 121.409996, 114.269997))
    u224(CFrame.new(-59.9060516, 39.9012566, 151.17514, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(62.3399086, 121.409996, 43.2400017))
    u224(CFrame.new(37.8478165, 16.8362617, -190.005951, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(16.16996, 75.2800064, 17.949995))
    u224(CFrame.new(43.4540367, 16.8362617, -158.997726, -0.819152057, -7.161254700000001e-8, 0.57357645, -1.37566417e-7, 1, -7.161254700000001e-8, -0.57357645, -1.37566417e-7, -0.819152057), Vector3.new(28.7199612, 75.2800064, 21.4999905))
    u224(CFrame.new(-78.8311462, 39.9012566, -291.1315, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(107.669968, 121.409996, 6.42999887))
    u224(CFrame.new(-114.162926, 16.8362617, -234.379257, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(2.349967, 75.2800064, 3.74999881))
    u224(CFrame.new(43.2896805, 16.8362617, -174.360001, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(16.16996, 75.2800064, 17.949995))
    u224(CFrame.new(-11.822731, 61.6240005, -17.5732212, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(3.48996258, 70.859993, 81.8800201))
    u224(CFrame.new(-187.323776, 16.8362617, -240.981262, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(3.3399663, 75.2800064, 7.0199976))
    u224(CFrame.new(-71.4555283, -9.84874344, 8.86862564, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(930.549988, 24.909996, 401.669983))
    u224(CFrame.new(-141.047348, 39.9012566, -346.645721, -1, -8.742277660000001e-8, 0, -8.742277660000001e-8, 1, -8.742277660000001e-8, 7.642741859999999e-15, -8.742277660000001e-8, -1), Vector3.new(136.869934, 121.409996, 6.42999887))
    u224(CFrame.new(36.2830582, 16.8362617, -147.050018, -0.819152057, -7.161254700000001e-8, 0.57357645, -1.37566417e-7, 1, -7.161254700000001e-8, -0.57357645, -1.37566417e-7, -0.819152057), Vector3.new(9.30995846, 75.2800064, 31.1199837))
    u224(CFrame.new(-209.860611, 39.9012566, -292.526398, -4.3711388300000005e-8, 0, 1, 0, 1, 0, -1, 0, -4.3711388300000005e-8), Vector3.new(119.619957, 121.409996, 6.42999887))
    u224(CFrame.new(17.7576237, -9.09874344, -452.124695, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(28.5499878, 25.409996, 231.169983))
    u224(CFrame.new(-51.8212013, -8.75, -568.843323, 0.0261769947, 0, -0.999657333, 0, 1, 0, 0.999657333, 0, 0.0261769947), Vector3.new(216.549988, 26.409996, 364.169983))
    u224(CFrame.new(-261.46759, -21.155468, -615.121277, -4.3711388300000005e-8, -0.406736642, -0.91354543, 0, 0.91354543, -0.406736642, 1, -1.7779022699999998e-8, -3.9932338299999994e-8), Vector3.new(87.0499878, 26.409996, 69.1699829))
    u224(CFrame.new(-250.886627, -11.7916269, -731.871277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(146.550003, 46.909996, 39.6699829))
    u224(CFrame.new(-250.886627, -11.7916269, -513.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(116.550003, 46.909996, 39.6699829))
    u224(CFrame.new(-413.386627, 24.458374, -464.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(18.5500031, 119.409996, 364.669983))
    u224(CFrame.new(-414.136627, 24.458374, -779.121277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(18.0499878, 119.409996, 366.169983))
    u224(CFrame.new(-464.386597, -19.291626, -617.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(324.549988, 31.909996, 0.66998291))
    u224(CFrame.new(-366.386597, -22.791626, -617.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(324.549988, 24.909996, 197.669983))
    u224(CFrame.new(-111.886597, 24.458374, -659.621277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(25.0499878, 119.409996, 255.669983))
    u224(CFrame.new(-110.386597, 24.458374, -560.871277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(50.5499878, 119.409996, 258.669983))
    u224(CFrame.new(79.3634033, 24.458374, -548.871277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(164.549988, 119.409996, 63.1699829))
    u224(CFrame.new(56.8634033, 24.458374, -641.121277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(22.0499878, 119.409996, 108.169983))
    u224(CFrame.new(11.1134005, 24.458374, -536.621277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(136.049988, 119.409996, 16.6699829))
    u224(CFrame.new(-13.6366024, 24.458374, -469.621277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(2.05000305, 119.409996, 66.1699829))
    u224(CFrame.new(-43.3866081, 24.458374, -390.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(160.550003, 119.409996, 6.66998291))
    u224(CFrame.new(111.363388, 24.458374, -390.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(160.550003, 119.409996, 6.16998291))
    u224(CFrame.new(77.6133881, 24.458374, -258.121277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(128.050003, 119.409996, 73.6699829))
    u224(CFrame.new(-22.8866119, 24.458374, -280.621277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(83.0500031, 119.409996, 90.6699829))
    u224(CFrame.new(-90.8866119, 24.458374, -216.621277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(60.0500031, 119.409996, 49.6699829))
    u224(CFrame.new(-105.136612, 24.458374, -148.621277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(25.0500031, 119.409996, 78.1699829))
    u224(CFrame.new(-177.886612, 24.458374, -184.871277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(97.5500031, 119.409996, 73.6699829))
    u224(CFrame.new(-43.8866119, 24.458374, -79.8712769, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(126.550003, 119.409996, 47.6699829))
    u224(CFrame.new(21.6133881, 24.458374, -79.8712769, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(126.550003, 119.409996, 46.6699829))
    u224(CFrame.new(-595.011597, 29.583374, -617.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(324.549988, 129.660004, 5.91998291))
    u224(CFrame.new(-528.511597, -4.16662598, -617.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(324.549988, 1.15999603, 128.919983))
    u224(CFrame.new(-542.636597, 9.45837402, -619.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(36.5499878, 25.909996, 41.6699829))
    u224(CFrame.new(-559.011597, 23.958374, -619.371277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(36.5499878, 54.909996, 8.91998291))
    u224(CFrame.new(-580.636597, 44.083374, -566.496277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(42.2999878, 95.159996, 42.1699829))
    u224(CFrame.new(-582.511597, 44.083374, -672.246277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(41.2999878, 95.159996, 38.4199829))
    u224(CFrame.new(-12.2616129, 24.458374, -255.746277, -4.3711388300000005e-8, 0, -1, 0, 1, 0, 1, 0, -4.3711388300000005e-8), Vector3.new(132.800003, 119.409996, 34.9199829))

    if _G.destroy_map then
        local v687, v688, v689 = pairs(workspace:GetChildren())

        while true do
            local v690

            v689, v690 = v687(v688, v689)

            if v689 == nil then
                break
            end
            if (v690.ClassName == 'Model' or v690.ClassName == 'Part' or (v690.ClassName == 'UnionOperation' or v690.ClassName == 'WedgePart') or v690.ClassName == 'MeshPart') and (v690 ~= game.Players.LocalPlayer.Character and v690.Name ~= u5) then
                v690:Destroy()
            end
        end
    end

    wait(5)

    while not game:GetService('Workspace').dungeon.room3.enemyFolder:FindFirstChild('Beast Master') do
        wait(1)
    end
    while not game:GetService('Workspace').dungeon.room3.enemyFolder:FindFirstChild('Beast Master'):FindFirstChild('HumanoidRootPart') do
        wait(1)
    end

    u529 = true
    u305.CFrame = CFrame.new(3.85899, 5.60531, 31.656)

    local _BeastMaster = game:GetService('Workspace').dungeon.room3.enemyFolder:FindFirstChild('Beast Master')

    while _BeastMaster.PrimaryPart.Position.Y > 35 do
        wait()
    end

    u529 = false
end
function winterFix()
    u11(workspace, 'dungeon')
    workspace.Terrain:Clear()
    u224(CFrame.new(49.6182404, 44.75, 118.716324, 0.857167304, 0, -0.515038073, 0, 1, 0, 0.515038073, 0, 0.857167304), Vector3.new(82.5, 2.5, 32))
    u224(CFrame.new(65.4887466, 54.5, 107.836174, 0.857167304, 0, -0.515038073, 0, 1, 0, 0.515038073, 0, 0.857167304), Vector3.new(63.5, 22, 5))
    u224(CFrame.new(36.3633881, 54.5, 129.12648, 0.857167304, 0, -0.515038073, 0, 1, 0, 0.515038073, 0, 0.857167304), Vector3.new(92.5, 22, 1.5))
    u224(CFrame.new(53.4067535, 58.25, -19.6698608, -0.342020094, 0, -0.939692616, 0, 1, 0, 0.939692616, 0, -0.342020094), Vector3.new(64, 29.5, 2))
    u224(CFrame.new(6.28490734, 44.75, 78.9878387, 0.438371092, 0, -0.898794055, 0, 1, 0, 0.898794055, 0, 0.438371092), Vector3.new(54, 2.5, 46))
    u224(CFrame.new(26.3271828, 54.5, 64.7621689, 0.438371092, 0, -0.898794055, 0, 1, 0, 0.898794055, 0, 0.438371092), Vector3.new(62, 22, 5.5))
    u224(CFrame.new(-20.3219051, 54.5, 78.6136322, 0.438371092, 0, -0.898794055, 0, 1, 0, 0.898794055, 0, 0.438371092), Vector3.new(78, 22, 8.5))
    u224(CFrame.new(2.55875301, 44.75, 71.3480911, 0.438371092, 0, -0.898794055, 0, 1, 0, 0.898794055, 0, 0.438371092), Vector3.new(71, 2.5, 46))
    u224(CFrame.new(24.2970142, 44.75, -28.1365814, -0.342020094, 0, -0.939692616, 0, 1, 0, 0.939692616, 0, -0.342020094), Vector3.new(182, 2.5, 62.5))
    u224(CFrame.new(47.7676086, 42.7324867, -1175.33252, 2.9729733300000003e-8, -2.07890483e-9, -1, 0.0697564632, 0.997564077, 3.26544807e-16, 0.997564077, -0.0697564632, 2.98023295e-8), Vector3.new(41.5, 15.5, 167))
    u224(CFrame.new(34.0146065, 58.25, 20.1416855, -0.798635483, 0, -0.601815045, 0, 1, 0, 0.601815045, 0, -0.798635483), Vector3.new(57, 29.5, 7))
    u224(CFrame.new(59.3021507, 58.25, -66.8049469, -0.0697563887, 0, -0.997563958, 0, 1, 0, 0.997563958, 0, -0.0697563887), Vector3.new(80.5, 29.5, 2))
    u224(CFrame.new(-9.12857437, 56, -32.0551186, -0.342020094, 0, -0.939692616, 0, 1, 0, 0.939692616, 0, -0.342020094), Vector3.new(173.5, 25, 7))
    u224(CFrame.new(72.586441, 57.25, -108.386299, -0.0348994732, 0, -0.999390781, 0, 1, 0, 0.999390781, 0, -0.0348994732), Vector3.new(8.5, 27.5, 25))
    u224(CFrame.new(32.1111145, 57.25, -109.799721, -0.0348994732, 0, -0.999390781, 0, 1, 0, 0.999390781, 0, -0.0348994732), Vector3.new(8.5, 27.5, 23))
    u224(CFrame.new(41.0176544, 44.75, -213.190704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215, 2.5, 91.5))
    u224(CFrame.new(3.76765871, 61.5, -213.940704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(222.5, 36, 17))
    u224(CFrame.new(12.5176563, 61.5, -235.440704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(52.5, 36, 34.5))
    u224(CFrame.new(11.7676601, 61.5, -132.190704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(59, 36, 33))
    u224(CFrame.new(81.2676544, 62, -213.440704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215.5, 37, 11))
    u224(CFrame.new(74.2676544, 62, -228.690704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(53, 37, 25))
    u224(CFrame.new(74.2676544, 62, -122.190712, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(21, 37, 25))
    u224(CFrame.new(15.2676544, 61.25, -322.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(14.5, 35.5, 40))
    u224(CFrame.new(71.0176468, 61.25, -322.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(14.5, 35.5, 37.5))
    u224(CFrame.new(51.7676086, 58, -1590.19067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(60, 41, 172))
    u224(CFrame.new(-2.48238373, 58, -1368.94067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(10.5, 41, 74.5))
    u224(CFrame.new(87.0176086, 58, -1368.94067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(10.5, 41, 69.5))
    u224(CFrame.new(41.5176239, 45.25, -964.440674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(6.5, 15.5, 141.5))
    u224(CFrame.new(113.517601, 58, -1261.19067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(213, 41, 3.5))
    u224(CFrame.new(47.767601, 44.25, -1501.44067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(266.5, 13.5, 167))
    u224(CFrame.new(84.6765747, 54.5, 139.489838, 0.857167304, 0, -0.515038073, 0, 1, 0, 0.515038073, 0, 0.857167304), Vector3.new(4, 22, 30.5))
    u224(CFrame.new(43.5176506, 42.4555817, -310.699219, 2.80050312e-8, 1.0192996699999999e-8, -1, -0.342020154, 0.939692736, 2.5011432399999998e-16, 0.939692736, 0.342020154, 2.98023295e-8), Vector3.new(19.5, 9.5, 71.5))
    u224(CFrame.new(44.2676468, 41.5, -394.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(182.5, 8, 43))
    u224(CFrame.new(62.5176468, 58.25, -407.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(182.5, 41.5, 6.5))
    u224(CFrame.new(16.2676506, 58.25, -407.690674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(184, 41.5, 19))
    u224(CFrame.new(44.2676353, 44.4752426, -493.355347, 2.76322254e-8, 1.11641461e-8, -0.999999642, -0.37460652, 0.927183867, 0, 0.927183509, 0.37460655, 2.98023153e-8), Vector3.new(15, 8.5, 57))
    u224(CFrame.new(52.5176392, 43.75, -590.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(183, 12.5, 94.5))
    u224(CFrame.new(58.5176392, 56, -545.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(93, 37, 14.5))
    u224(CFrame.new(21.2676411, 56, -545.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(93, 37, 24))
    u224(CFrame.new(10.517643, 55.75, -635.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(93, 36.5, 10.5))
    u224(CFrame.new(96.0176392, 55.75, -635.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(93, 36.5, 8.5))
    u224(CFrame.new(83.7071075, 55.75, -593.931519, 0.587785304, 0, -0.809017003, 0, 1, 0, 0.809017062, 0, 0.587785304), Vector3.new(18.5, 36.5, 34))
    u224(CFrame.new(44.2676506, 45.7468681, -322.680908, 2.98023224e-8, -3.63461795e-15, -1, 8.83349074e-8, 1, -1.00203257e-15, 1, -8.83349074e-8, 2.98023224e-8), Vector3.new(9, 9.5, 43))
    u224(CFrame.new(68.7676315, 46.7623405, -677.575806, 1.44484531e-8, -2.60657025e-8, -1, 0.874619722, 0.484809637, -1.75880865e-15, 0.484809637, -0.874619722, 2.98023259e-8), Vector3.new(9, 16, 107))
    u224(CFrame.new(50.2676353, 46, -716.690613, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(70, 17, 29))
    u224(CFrame.new(6.26764297, 58.5, -711.440674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(71.5, 42, 74))
    u224(CFrame.new(89.2676392, 58.5, -711.440674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(71.5, 42, 54))
    u224(CFrame.new(41.5176277, 46, -853.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215.5, 17, 141.5))
    u224(CFrame.new(-25.9823647, 59, -853.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215.5, 43, 6.5))
    u224(CFrame.new(118.517624, 59, -853.940674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215.5, 43, 23.5))
    u224(CFrame.new(111.267616, 59, -883.440796, 0.173648208, 0, -0.984807789, 0, 1, 0, 0.984807789, 0, 0.173648208), Vector3.new(154.5, 43, 38))
    u224(CFrame.new(-5.48237181, 57.75, -964.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(28, 40.5, 47.5))
    u224(CFrame.new(100.517609, 57.75, -964.190674, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(28, 40.5, 70.5))
    u224(CFrame.new(39.0176201, 44.5, -1058.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(196, 15, 144.5))
    u224(CFrame.new(3.799963, 56, -53.687912, -0.342020094, 0, -0.939692616, 0, 1, 0, 0.939692616, 0, -0.342020094), Vector3.new(40, 25, 16.5))
    u224(CFrame.new(-24.2323837, 58, -1261.19067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(213, 41, 23))
    u224(CFrame.new(47.7676086, 44.25, -1262.69067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(216, 13.5, 167))
    u224(CFrame.new(-33.7323837, 58, -1491.94067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(256.5, 41, 12))
    u224(CFrame.new(120.767601, 58, -1491.94067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(256.5, 41, 34))
    u224(CFrame.new(-0.232380569, 60.75, -1165.44067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(21.5, 46.5, 71))
    u224(CFrame.new(85.5176086, 60.75, -1165.44067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(21.5, 46.5, 66.5))
    u224(CFrame.new(136.517609, 60.75, -1068.69067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215, 46.5, 30.5))
    u224(CFrame.new(-36.9823761, 60.75, -1068.69067, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(215, 46.5, 20.5))
    u224(CFrame.new(44.2676506, 42.8013573, -333.105347, 2.81786487e-8, -9.70269021e-9, -1, 0.325568229, 0.945518553, -1.09093672e-15, 0.945518553, -0.325568229, 2.98023224e-8), Vector3.new(19.5, 9.5, 43))
    u224(CFrame.new(106.267624, 45.5, -1058.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(196, 17, 33))
    u224(CFrame.new(39.0176239, 45.5, -987.940674, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(55.5, 17, 144.5))
    u224(CFrame.new(-19.482378, 45.5, -1058.94067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(197.5, 17, 32.5))
    u224(CFrame.new(39.7676201, 45.5, -1145.44067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(24.5, 17, 146))
    u224(CFrame.new(105.017624, 45, -1058.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(196, 16, 35.5))
    u224(CFrame.new(39.0176239, 45, -988.940674, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(57.5, 16, 144.5))
    u224(CFrame.new(-18.482378, 45, -1058.94067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(197.5, 16, 34.5))
    u224(CFrame.new(39.7676201, 45, -1143.69067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(28, 16, 146))
    u224(CFrame.new(24.7676239, 46, -1016.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(13, 18, 28))
    u224(CFrame.new(2.2676239, 45.5, -1031.94067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(44.5, 17, 28))
    u224(CFrame.new(1.01762342, 46, -1041.44067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(63.5, 18, 25.5))
    u224(CFrame.new(4.76762342, 50, -1050.69067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(44, 26, 23))
    u224(CFrame.new(-1.98237896, 50, -1124.94067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(28.5, 26, 19.5))
    u224(CFrame.new(13.267621, 50, -1130.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(18, 26, 50))
    u224(CFrame.new(82.0176239, 50, -1130.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(18, 26, 18.5))
    u224(CFrame.new(84.2676239, 50, -1124.44067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(29.5, 26, 14))
    u224(CFrame.new(84.2676239, 50, -1028.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(20, 26, 14))
    u224(CFrame.new(75.5176239, 50, -1018.94067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(9.5, 26, 31.5))
    u224(CFrame.new(78.0176239, 45.25, -1024.19067, 2.98023259e-8, 0, -1, 0, 1, 0, 1, 0, 2.98023259e-8), Vector3.new(20, 16.5, 26.5))
    u224(CFrame.new(50.1426544, 61.5, -157.565704, 2.98023224e-8, 0, -0.999999881, 0, 1, 0, 0.999999881, 0, 2.98023224e-8), Vector3.new(19.75, 36, 15.25))
    wait(0.1)

    if _G.destroy_map then
        workspace.Terrain:Clear()

        local v692, v693, v694 = pairs(workspace:GetChildren())

        while true do
            local v695

            v694, v695 = v692(v693, v694)

            if v694 == nil then
                break
            end
            if (v695.ClassName == 'Model' or v695.ClassName == 'Part' or (v695.ClassName == 'UnionOperation' or v695.ClassName == 'WedgePart')) and (v695 ~= game.Players.LocalPlayer.Character and v695.Name ~= u5) then
                v695:Destroy()
            end
        end

        local v696, v697, v698 = pairs(workspace.dungeon:GetChildren())

        while true do
            local v699

            v698, v699 = v696(v697, v698)

            if v698 == nil then
                break
            end

            local v700, v701, v702 = pairs(v699:GetChildren())

            while true do
                local v703

                v702, v703 = v700(v701, v702)

                if v702 == nil then
                    break
                end
                if (v703.ClassName == 'Model' or v703.ClassName == 'Part' or v703.ClassName == 'UnionOperation' or v703.ClassName == 'WedgePart' and not v703:FindFirstChild('HumanoidRootPart')) and (v703 ~= game.Players.LocalPlayer.Character and v703.Name ~= u5) then
                    v703:Destroy()
                end
            end
        end
    end

    while not game:GetService('Workspace').dungeon.bossRoom.enemyFolder:FindFirstChildOfClass('Model') do
        wait(1)
    end
    while not game:GetService('Workspace').dungeon.bossRoom.enemyFolder:FindFirstChildOfClass('Model'):FindFirstChild('HumanoidRootPart') do
        wait(1)
    end

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').dungeon.bossRoom.enemyFolder:FindFirstChildOfClass('Model'):FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0, 0, 5)
end
function desertFix()
    local v704 = u11(workspace, 'dungeon')
    local v705, v706, v707 = pairs(v704:GetChildren())

    while true do
        local v708

        v707, v708 = v705(v706, v707)

        if v707 == nil then
            break
        end

        local v709, v710, v711 = pairs(v708:GetChildren())

        while true do
            local v712

            v711, v712 = v709(v710, v711)

            if v711 == nil then
                break
            end
            if v712.ClassName ~= 'Part' then
                if v712.ClassName == 'Model' or v712.ClassName == 'UnionOperation' or v712.ClassName == 'WedgePart' then
                    v712:Destroy()
                end
            else
                if v712.Name == 'barrier' then
                    v712:Destroy()
                end

                local _X = v712.Orientation.X

                if _X ~= math.floor(_X) then
                    v712:Destroy()
                end

                local _Y = v712.Orientation.Y

                if _Y ~= math.floor(_Y) then
                    v712:Destroy()
                end

                local _Z = v712.Orientation.Z

                if _Z ~= math.floor(_Z) then
                    v712:Destroy()
                end
            end
        end
    end
end
function eggFix()
    game.ReplicatedStorage.remotes.equipSet:FireServer(_G.eggClass)

    local v716 = u11(workspace, 'Map')
    local v717, v718, v719 = pairs(v716.Parts.Terrain:GetChildren())

    while true do
        local v720

        v719, v720 = v717(v718, v719)

        if v719 == nil then
            break
        end

        u213:AddTag(v720, 'RayWhitelist')
    end

    local v721, v722, v723 = pairs(v716.Parts.Misc:GetChildren())

    while true do
        local v724

        v723, v724 = v721(v722, v723)

        if v723 == nil then
            break
        end

        u213:AddTag(v724, 'RayWhitelist')
    end

    local v725, v726, v727 = pairs(v716.Barriers:GetChildren())

    while true do
        local v728

        v727, v728 = v725(v726, v727)

        if v727 == nil then
            break
        end

        u213:AddTag(v728, 'RayWhitelist')
    end

    local v729, v730, v731 = pairs(v716.Models:GetChildren())

    while true do
        local v732

        v731, v732 = v729(v730, v731)

        if v731 == nil then
            break
        end

        u213:AddTag(v732, 'RayWhitelist')
    end

    v716.Props:Destroy()
    wait(5)

    while not game:GetService('Workspace').dungeon.bossRoom.enemyFolder:FindFirstChild('Egg Mech') do
        wait(1)
    end
    while not game:GetService('Workspace').dungeon.bossRoom.enemyFolder:FindFirstChild('Egg Mech'):FindFirstChild('HumanoidRootPart') do
        wait(1)
    end

    u529 = true

    local _, _, _, v733 = u314()

    u305.CFrame = CFrame.new(570.516174, 124.525772, 5.6751118)

    while v733.Position.Y > 120 do
        wait()
    end

    u529 = false
end
function fpsBoost()
    if _G.fpsBoost then
        local v734 = game
        local _Workspace = v734.Workspace
        local _Lighting = v734.Lighting
        local _Terrain = _Workspace.Terrain

        sethiddenproperty(_Lighting, 'Technology', 2)
        sethiddenproperty(_Terrain, 'Decoration', false)

        _Terrain.WaterWaveSize = 0
        _Terrain.WaterWaveSpeed = 0
        _Terrain.WaterReflectance = 0
        _Terrain.WaterTransparency = 0
        _Lighting.GlobalShadows = false
        _Lighting.FogEnd = 9000000000
        _Lighting.Brightness = 0
        settings().Rendering.QualityLevel = 'Level01'

        local v738, v739, v740 = pairs(v734:GetDescendants())
        local v741 = true

        while true do
            local v742

            v740, v742 = v738(v739, v740)

            if v740 == nil then
                break
            end
            if v742:IsA('Part') or v742:IsA('Union') or (v742:IsA('CornerWedgePart') or v742:IsA('TrussPart')) then
                v742.Material = 'Plastic'
                v742.Reflectance = 0
            elseif v742:IsA('Decal') or v742:IsA('Texture') and v741 then
                v742.Transparency = 1
            elseif v742:IsA('ParticleEmitter') or v742:IsA('Trail') then
                v742.Lifetime = NumberRange.new(0)
            elseif v742:IsA('Explosion') then
                v742.BlastPressure = 1
                v742.BlastRadius = 1
            elseif v742:IsA('Fire') or v742:IsA('SpotLight') or (v742:IsA('Smoke') or v742:IsA('Sparkles')) then
                v742.Enabled = false
            elseif v742:IsA('MeshPart') then
                v742.Material = 'Plastic'
                v742.Reflectance = 0
                v742.TextureID = 1.0385902758728955e16
            end
        end

        local v743, v744, v745 = pairs(_Lighting:GetChildren())

        while true do
            local v746

            v745, v746 = v743(v744, v745)

            if v745 == nil then
                break
            end
            if v746:IsA('BlurEffect') or v746:IsA('SunRaysEffect') or (v746:IsA('ColorCorrectionEffect') or v746:IsA('BloomEffect')) or v746:IsA('DepthOfFieldEffect') then
                v746.Enabled = false
            end
        end
    end
end
function updatecheck()
    local v747 = {
        [5281215714] = {
            version = 46,
            name = 'Volcanic Chambers',
        },
        [4628698373] = {
            version = 39,
            name = 'Orbital Outpost',
        },
        [4113459044] = {
            version = 68,
            name = 'Steampunk Sewers',
        },
        [3737465474] = {
            version = 80,
            name = 'Ghastly Harbor',
        },
        [3488584454] = {
            version = 93,
            name = 'The Canals',
        },
        [3277965370] = {
            version = 110,
            name = 'Samurai Palace',
        },
        [3119903031] = {
            version = 117,
            name = 'The Underworld',
        },
        [3041739550] = {
            version = 134,
            name = "King's Palace",
        },
        [2988891534] = {
            version = 424,
            name = 'Pirate Island',
        },
        [2743806150] = {
            version = 352,
            name = 'Winter Outpost',
        },
        [85776757589518] = {
            version = 473,
            name = 'Desert Temple',
        },
        [4865331948] = {
            version = 473,
            name = 'Easter Event',
        },
        [3220974599] = {
            version = 89,
            name = 'Wave Defense',
        },
        [4286254333] = {
            version = 74,
            name = 'Boss Raid',
        },
        [2414851778] = {
            version = 4360,
            name = 'Lobby',
        },
        [3220968688] = {
            version = 152,
            name = 'Lobby2',
        },
    }

    if v747[game.PlaceId] ~= nil then
        local _ = v747[game.PlaceId].version == game.PlaceVersion
    end
end

spawn(updatecheck)

if game.PlaceId ~= 6216785535 then
    if game.PlaceId ~= 5281215714 then
        if game.PlaceId ~= 4628698373 then
            if game.PlaceId ~= 4113459044 then
                if game.PlaceId ~= 3737465474 then
                    if game.PlaceId ~= 3488584454 then
                        if game.PlaceId ~= 3277965370 then
                            if game.PlaceId ~= 3119903031 then
                                if game.PlaceId ~= 3041739550 then
                                    if game.PlaceId ~= 2988891534 then
                                        if game.PlaceId ~= 2743806150 then
                                            if game.PlaceId ~= 2606294912 then
                                                if game.PlaceId ~= 4286254333 then
                                                    if workspace:FindFirstChild('currentWave') then
                                                        u315.dungeonName = 'Wave Defense'
                                                        v21 = false
                                                        v22 = true
                                                    elseif game.PlaceId == 4865331948 then
                                                        v22 = false
                                                        v21 = false

                                                        local v748 = true

                                                        spawn(eggFix)

                                                        u23 = v748
                                                    end
                                                else
                                                    u315.dungeonName = 'Boss Raid'
                                                    v21 = false
                                                    v20 = true
                                                end
                                            else
                                                u315.dungeonName = 'Desert Temple'

                                                spawn(desertFix)
                                            end
                                        else
                                            u315.dungeonName = 'Winter Outpost'

                                            spawn(winterFix)
                                        end
                                    else
                                        u315.dungeonName = 'Pirate Island'

                                        spawn(pirateFix)
                                    end
                                else
                                    u315.dungeonName = 'Kings Palace'

                                    spawn(kingFix)
                                end
                            else
                                u315.dungeonName = 'The Underworld'

                                spawn(underworldFix)
                            end
                        else
                            u315.dungeonName = 'Samurai Palace'

                            spawn(samuraiFix)
                        end
                    else
                        u315.dungeonName = 'The Canals'

                        spawn(canalsFix)
                    end
                else
                    u315.dungeonName = 'Ghastly Harbor'

                    spawn(ghastlyFix)
                end
            else
                u315.dungeonName = 'Steampunk Sewers'

                spawn(steamFix)
            end
        else
            u315.dungeonName = 'Orbital Outpost'

            spawn(fixOrbital)
        end
    else
        u315.dungeonName = 'Volcanic Chambers'

        spawn(volcanicFix)
    end
else
    u315.dungeonName = 'Oceanic'

    spawn(oceanFix)
end
if v21 or v22 or u23 then
    game:GetService('ReplicatedStorage').remotes.changeStartValue:FireServer()

    if game.PlaceId == 2606294912 then
        wait(3)
    end
elseif v20 then
    workspace:WaitForChild('tier')
    game.ReplicatedStorage.remotes.readyUp:FireServer()
end

spawn(fpsBoost)

function deleteFirstBarrier()
    if game:GetService('Workspace'):FindFirstChild('dungeon') and game:GetService('Workspace').dungeon.initialRoom:FindFirstChild('barrier') then
        game:GetService('Workspace').dungeon.initialRoom.barrier:Destroy()
    end
end

game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false

if _G.hide_projectiles then
    spawn(function()
        if game.ReplicatedStorage:FindFirstChild('projectiles') then
            game.ReplicatedStorage.projectiles:Destroy()
        end
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild('abilityLocal') then
            game.Players.LocalPlayer.PlayerGui.abilityLocal.Disabled = true

            if game.Players.LocalPlayer.PlayerGui.abilityLocal:FindFirstChild('abilityLocal2') then
                game.Players.LocalPlayer.PlayerGui.abilityLocal.abilityLocal2.Disabled = true
            end
        end

        game.Players.LocalPlayer.PlayerScripts:FindFirstChild('MapSpecificLocals')
    end)
end

spawn(v289)
spawn(v423)
spawn(deleteFirstBarrier)
loadstring(game:HttpGetAsync('https://pastebin.com/raw/Ts8TSAZN', 0, true))()
notify('https://discord.gg/wZGUsk9UXX, Discord : peanut123456 & xr1d123')
