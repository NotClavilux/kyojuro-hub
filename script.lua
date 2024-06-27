
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Kyojuro Hub",
    LoadingTitle = "Kyojuro Hub : Cat piece",
    LoadingSubtitle = "by Clavilux",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "Kyojuro_Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "jagKWcnQFt", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/TabD would be TabD
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Cat piece",
        Subtitle = "Key System",
        Note = "Key updates every week, get key from the linkvertise provided on scriptblox.",
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"https://pastebin.com/raw/k3B8npSs"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local tp = Window:CreateTab("Teleports", 4483362458) -- Title, Image
local w = Window:CreateTab("Weapons and fighting styles", 4483362458) -- Title, Image
local humanoid = game.Players.LocalPlayer.Character.Humanoid

local humanoid = game.Players.LocalPlayer.Character.Humanoid

local Toggle = Tab:CreateToggle({
    Name = "Godmode",
    CurrentValue = false,
    Flag = "godmode",
    Callback = function(Value)
        if Value then
            
            connection = humanoid.HealthChanged:Connect(function(health)
                humanoid.Health = 100
            end)
        else
            
            if connection then
                connection:Disconnect()
            end
        end
    end
})

local Button = Tab:CreateButton({
    Name = "Get all fruits v1",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

        local FixedTools = ReplicatedStorage.Items

        
        local function giveToolsToPlayer(player)
            for _, tool in pairs(FixedTools:GetChildren()) do
                local toolClone = tool:Clone()
                toolClone.Parent = player:FindFirstChild("Backpack")
            end
        end

        
        for _, player in pairs(game.Players:GetPlayers()) do
            giveToolsToPlayer(player)
        end

    end
})
local a = Window:CreateTab("Accessories", 4483362458) -- Title, Image
local Button = a:CreateButton({
    Name = "Get all accessories",
    Callback = function()
        local Players = game:GetService("Players")

        local localPlayer = Players.LocalPlayer

        local inventoryList = localPlayer:FindFirstChild("AccessoryInventoryList")

        local function setBoolsToTrue(folder)
            for _, item in pairs(folder:GetChildren()) do
                if item:IsA("BoolValue") then
                    item.Value = true
                elseif item:IsA("Folder") then
                    setBoolsToTrue(item)
                end
            end
        end

        if inventoryList then
            setBoolsToTrue(inventoryList)
        else
            warn("InventoryList not found for LocalPlayer.")
        end
    end
})

local Button = w:CreateButton({
    Name = "Get all weapons",
    Callback = function()

        local Players = game:GetService("Players")

        local localPlayer = Players.LocalPlayer

        local inventoryList = localPlayer:FindFirstChild("InventoryList")

        local function setBoolsToTrue(folder)
            for _, item in pairs(folder:GetChildren()) do
                if item:IsA("BoolValue") then
                    item.Value = true
                elseif item:IsA("Folder") then
                    setBoolsToTrue(item)
                end
            end
        end

        if inventoryList then
            setBoolsToTrue(inventoryList)
        else
            warn("InventoryList not found for LocalPlayer.")
        end
    end
})

local Button = w:CreateButton({
    Name = "Dark Leg",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "DarkLeg"
        local ohNumber3 = 0

        game:GetService("ReplicatedStorage").BonusFolderFX.BoughAStyle:FireServer(ohString1, ohString2, ohNumber3)
    end
})
local Button = w:CreateButton({
    Name = "Cyborg",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "Cyborg"
        local ohNumber3 = 0

        game:GetService("ReplicatedStorage").BonusFolderFX.BoughAStyle:FireServer(ohString1, ohString2, ohNumber3)
    end
})
local Button = w:CreateButton({
    Name = "Fishman Karate",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "FishmanKarate"
        local ohNumber3 = 0

        game:GetService("ReplicatedStorage").BonusFolderFX.BoughAStyle:FireServer(ohString1, ohString2, ohNumber3)
    end
})
local Button = w:CreateButton({
    Name = "Electric",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "Electric"
        local ohNumber3 = 0

        game:GetService("ReplicatedStorage").BonusFolderFX.BoughAStyle:FireServer(ohString1, ohString2, ohNumber3)
    end
})
local Button = w:CreateButton({
    Name = "Dragon Talon",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "DragonTalon"
        local ohNumber3 = 0

        game:GetService("ReplicatedStorage").BonusFolderFX.BoughAStyle:FireServer(ohString1, ohString2, ohNumber3)
    end
})
local Button = w:CreateButton({
    Name = "Normal Combat",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "Combat"
        local ohNumber3 = 0

        game:GetService("ReplicatedStorage").BonusFolderFX.BoughAStyle:FireServer(ohString1, ohString2, ohNumber3)
    end
})
local Button = w:CreateButton({
    Name = "Superhuman",
    Callback = function()

        local ohString1 = "Buy"
        local ohString2 = "Superhuman"
        local ohNumber3 = 0

        game:GetService("Players").LocalPlayer.PlayerGui.FIGHTINGSTYLE.swordshopframe.Page2["3"].RemoteEvent:FireServer(
            ohString1, ohString2, ohNumber3)
    end
})
local Button = tp:CreateButton({
    Name = "Orange Town",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(297.365601, 50.1713982, -1933.8147, -0.586010873, -4.49159643e-08, 0.810303152, 2.45966381e-09,
                1, 5.72098884e-08, -0.810303152, 3.5518692e-08, -0.586010873)
    end
})
local Button = tp:CreateButton({
    Name = "Monkey island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(3840.14868, 61.2406044, 2473.85156, -0.817528248, 3.34761019e-09, 0.575888515, -4.33810127e-10,
                1, -6.42878284e-09, -0.575888515, -5.5055378e-09, -0.817528248)
    end
})
local Button = tp:CreateButton({
    Name = "Fishman Island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-1366.83838, 66.4392242, 1006.2218, -0.998518944, -2.10603588e-08, 0.0544056259, -2.74237024e-08,
                1, -1.16214601e-07, -0.0544056259, -1.17534483e-07, -0.998518944)
    end
})
local Button = tp:CreateButton({
    Name = "Sky island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-2869.28613, 374.969452, 2540.62891, -0.314035416, -2.70656653e-08, 0.949411273, 4.9332936e-08,
                1, 4.48256259e-08, -0.949411273, 6.09140756e-08, -0.314035416)
    end
})
local Button = tp:CreateButton({
    Name = "Marine Island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-4024.4729, 126.626526, -155.286621, -0.668505013, 5.90693583e-09, 0.743707657, 2.61137494e-08,
                1, 1.5530615e-08, -0.743707657, 2.98032887e-08, -0.668505013)
    end
})
local Button = tp:CreateButton({
    Name = "Locker island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-4595.14795, 223.515121, -1571.38367, -0.77110225, 1.63825202e-08, 0.636711359, -9.34899588e-11,
                1, -2.58431232e-08, -0.636711359, -1.99872154e-08, -0.77110225)
    end
})
local Button = tp:CreateButton({
    Name = "Ice Island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-3629.18555, 43.4715614, -1038.98596, 0.0193940289, 2.53913459e-08, 0.999811947, 5.67700091e-08,
                1, -2.64973288e-08, -0.999811947, 5.72732226e-08, 0.0193940289) -- ice island
    end
})
local Button = tp:CreateButton({
    Name = "Sand Island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-1946.771, 47.6294365, -2199.85107, 0.777533591, -1.10444383e-07, 0.6288414, 1.12810532e-07, 1,
                3.61464778e-08, -0.6288414, 4.28348343e-08, 0.777533591) -- sand island
    end
})
local Button = tp:CreateButton({
    Name = "Skull island",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-2827.50073, 75.5636063, -92.1118011, 0.148910061, 1.66494658e-08, -0.988850772, 5.46902479e-09,
                1, 1.76607617e-08, 0.988850772, -8.03791433e-09, 0.148910061) -- skull island
    end
})

local Label = Tab:CreateLabel("Made by NotClavilux")
local Paragraph = Tab:CreateParagraph({
    Title = "Get all fruits v2",
    Content = "With get all fruits v2 you can drop it aswell and do anything with it unlike v1 but you have to click the buttons until you get the desired fruit."
})
local Button = Tab:CreateButton({
    Name = "Random common",
    Callback = function()

        local ohString1 = "Common"

        game:GetService("Players").LocalPlayer.PlayerGui.SpinUI.Chat.Yes.Spin.Reward:FireServer(ohString1)
    end
})
local Button = Tab:CreateButton({
    Name = "Random uncommon",
    Callback = function()

        local ohString1 = "Uncommon"

        game:GetService("Players").LocalPlayer.PlayerGui.SpinUI.Chat.Yes.Spin.Reward:FireServer(ohString1)
    end
})
local Button = Tab:CreateButton({
    Name = "Random Rare",
    Callback = function()

        local ohString1 = "Rare"

        game:GetService("Players").LocalPlayer.PlayerGui.SpinUI.Chat.Yes.Spin.Reward:FireServer(ohString1)
    end
})
local Button = Tab:CreateButton({
    Name = "Random Legendary",
    Callback = function()

        local ohString1 = "Legendary"

        game:GetService("Players").LocalPlayer.PlayerGui.SpinUI.Chat.Yes.Spin.Reward:FireServer(ohString1)
    end
})
