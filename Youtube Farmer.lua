getgenv().autorecord = false;
getgenv().autovideo = false;

function record()
spawn(function()
        while autorecord == true do
        game:GetService("ReplicatedStorage").fileMade:FireServer()
        wait()
        end
    end)
end

function video()
spawn(function()
        while autovideo == true do
        local args = {
            [1] = workspace.Studios:FindFirstChild("killerfreeeeee's Studio").Items:FindFirstChild("Starter Laptop")}
        game:GetService("ReplicatedStorage").singleVideo:FireServer(unpack(args))
        wait()
        end
    end)
end

function teleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236.449, 3.50002, 1092.23) 
end

function blahblah()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2889.95, 67.981, 159.408)
end

function random()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(750, 3.50002, -417)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Clicking Sim") -- Creates the window

local c = w:CreateFolder("Teleport")

local d = w:CreateFolder("Farming")


d:Toggle("Auto Video",function(bool)
    getgenv().autovideo = bool
    print('Auto video is:', bool)
    if bool then
        video();
    end
end)

d:Toggle("Auto Record",function(bool)
    getgenv().autorecord = bool
    print('Auto Record is:' ,toggle)
    if bool then
        record();
    end
end)

c:Button("CoinRoom",function()
    teleport(-236.449, 3.50002, 1092.23)
end)

c:Button("Spawn",function()
    blahblah(-2889.95, 67.981, 159.408)
end)

c:Button("Video Farm",function()
    random(750, 3.50002, -417)
end)

d:DestroyGui()