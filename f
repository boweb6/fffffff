local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/dirt",true))()
local HttpService = game:GetService("HttpService")
local Table = {}
local window1 = Lib:CreateWindow("Joueur")
local window2 = Lib:CreateWindow("Téléportation")
local window3 = Lib:CreateWindow("Extra")
local window4 = Lib:CreateWindow("Donne")

_G.Setting = {
        Target = "";
}


window1:Slider("Vitesse",{location = Table, min = 16, max = 500, default = 16, precise = true --[[ 0.00 instead of 0 ]], flag = "Slider"},function()
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Table["Slider"])
end)

window1:Slider("Saut",{location = Table, min = 16, max = 500, default = 16, precise = true --[[ 0.00 instead of 0 ]], flag = "Slider"},function()
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Table["Slider"])
end)


window1:Dropdown("Joueurs",{location = Table,flag = "Dropdown",search = true --[[AddsSearchBar]], list = {"1","2","3","4","5","6","7","8","9","0"} --[[Wont work when PlayerList = true]], PlayerList = true --[[ Turns the list into the players in the server ]]},function()
_G.Setting.Target = (Table["Dropdown"])
end)

window1:Button("Goto",function()
   local TargetPlr = _G.Setting.Target
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TargetPlr].Character.HumanoidRootPart.CFrame
end)

window1:Button("Follow",function()
   _G.followPlayer = v
   while true do
       wait(0)
       if not _G.followPlayer then return end
       local TargetPlr = _G.settingsTable.Target
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TargetPlr].Character.HumanoidRootPart.CFrame
   end
end)

window1:Button("Regarder",function()
                           local TargetPlr = _G.Setting.Target
                game.Workspace.Camera.CameraSubject = game.Players[TargetPlr].Character.Humanoid;
end)

window1:Button("Ne plus regarder",function()
game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

window1:Button("Bring",function()
local TargetPlr = _G.Setting.Target
Target = (TargetPlr)

NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
local function tp(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
end
end
local function getout(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
tp(game.Players[Target], game.Players.LocalPlayer)
wait()
tp(game.Players[Target], game.Players.LocalPlayer)
wait()
getout(game.Players.LocalPlayer, game.Players[Target])
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
end)

window1:Button("Respawn Concierge",function()
game:GetService("ReplicatedStorage").events.TeamConcierge:FireServer()
end)

window1:Button("Respawn CD",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/boweb6/ttttttttf/main/f'),true))()
end)

window1:Button("Tenus bg",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(821.4158935546875, 21.11933135986328, -441.5354919433594)}):Play()
wait("1")
fireclickdetector(game:GetService("Workspace").Casiers.SCP354Clothes.Main.ClickDetector)
wait("0.5")
fireclickdetector(game:GetService("Workspace").Casiers.SCP354Clothes.Main.ClickDetector)
wait("0.5")
fireclickdetector(game:GetService("Workspace").Casiers.SCP354Clothes.Main.ClickDetector)
wait("0.5")
fireclickdetector(game:GetService("Workspace").Casiers.SCP354Clothes.Main.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

-------------------------------
window2:Section("Zone D")

window2:Button("Salle de sport",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(424.1103210449219, -146.0879669189453, -222.7255859375)}):Play()
end)

window2:Button("Terrain de foot",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(278.6753845214844, -158.27731323242188, -321.3377380371094)}):Play()
end)

window2:Button("Douche",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(313.91522216796875, -156.8274383544922, -175.1271209716797)}):Play()
end)

window2:Button("Isolement",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(244.83584594726562, -157.46014404296875, -280.12176513671875)}):Play()
end)

window2:Button("Bureau Etienne",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(245.56004333496094, -138.7080078125, -214.3150177001953)}):Play()
end)

window2:Button("Cellule 1",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(360.0066223144531, -158.5326385498047, -177.2883758544922)}):Play()
end)

window2:Button("Cellule 2",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(338.3751525878906, -145.57257080078125, -266.64990234375)}):Play()
end)

window2:Button("Cellule 3",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(410.19818115234375, -145.41786193847656, -256.1711120605469)}):Play()
end)

window2:Section("Armurie")

window2:Button("Armurie 1",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(292.3139953613281, -130.2944793701172, -455.1769714355469)}):Play()
end)

window2:Button("Armurie 2",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(57.18285369873047, -158.2733154296875, -297.2977294921875)}):Play()
end)

window2:Button("Abris 1",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(147.62008666992188, -158.25852966308594, -47.36366271972656)}):Play()
end)

window2:Button("Abris 2",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(253.42935180664062, -158.2658233642578, -41.91060256958008)}):Play()
end)

window2:Button("Reserve",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(336.4358215332031, -146.08135986328125, -176.22299194335938)}):Play()
end)

window2:Button("Zone Echapper",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(277.22747802734375, -148.5746307373047, -171.13601684570312)}):Play()
end)

window2:Section("SCP's")

window2:Button("173",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(91.70616912841797, -155.38026428222656, -358.5411682128906)}):Play()
end)

window2:Button("049",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(92.3600082397461, -156.55679321289062, -271.7479248046875)}):Play()
end)

window2:Button("5033",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(173.85389709472656, -156.60398864746094, -291.4569091796875)}):Play()
end)

window2:Button("079",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(105.06726837158203, -157.23463439941406, -236.77597045898438)}):Play()
end)


window2:Button("682",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(73.53291320800781, -156.6746063232422, -247.97744750976562)}):Play()
end)

window2:Button("149",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-81.23152923583984, -158.99429321289062, -258.6280212402344)}):Play()
end)

window2:Button("008",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-149.04849243164062, -157.98939514160156, -318.58837890625)}):Play()
end)

window2:Button("035",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-87.1144027709961, -158.39881896972656, -366.88311767578125)}):Play()
end)

window2:Button("Générateur secondaire",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(161.42584228515625, -157.7463836669922, -217.7216033935547)}):Play()
end)

window2:Section("Département")

window2:Button("Département Scientifique",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-76.25162506103516, -156.38841247558594, -139.15248107910156)}):Play()
end)

window2:Button("Département Adminstratif",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-104.80213928222656, -156.77529907226562, -139.96388244628906)}):Play()
end)

window2:Button("Département de la justice",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(342.5228271484375, -129.85336303710938, -449.9382019042969)}):Play()
end)
window2:Section("Dehors")

window2:Button("Porte A",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(383.06964111328125, 56.69242477416992, -387.81982421875)}):Play()
end)

window2:Button("Porte B",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
 tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-915.6969604492188, 40.396217346191406, -404.7455139160156)}):Play()
end)

window2:Button("Milice de la libération",function()
   tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(819.8194580078125, 44.60438919067383, 931.085205078125)}):Play()
end)


window3:Button("Silent Aim",function()
loadstring(game:HttpGet("https://pastebin.com/raw/gzVjTuri", true))()
end)

window3:Button("Infinite Yield",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

window3:Button("Auto bandage/Anti douleur",function()
while true do
fireclickdetector(game:GetService("Workspace").Site["Site sous terre"].ZG.MursHaut:GetChildren()[12]:GetChildren()[4].Buttons.Bandagem.ClickDetector)
fireclickdetector(game:GetService("Workspace").Site["Site sous terre"].ZG.MursHaut:GetChildren()[12]:GetChildren()[4].Buttons.Aspirina.ClickDetector)
wait(0.1)
local Event = game:GetService("ReplicatedStorage")["ACS_Engine"].Event.MedSys.PainKiller
Event:FireServer()
local Event = game:GetService("ReplicatedStorage")["ACS_Engine"].Event.MedSys.Bandage
Event:FireServer()
wait(0.1)
end
end)

window3:Button("Equip all tools",function()
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
wait("0.1")
game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
end)

window3:Button("Afk room",function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-702366.3125, 40002.7578125, 51907.55859375)}):Play()
x = Instance.new("Part", game.Workspace)
x.CFrame = CFrame.new(-702366.3125, 40002.7578125, 51907.55859375)
x.Anchored = true
x.Size = Vector3.new(60,10,63)
x.Rotation = Vector3.new(0, 0, 0)
x.Color = Color3.new(0.694117, 0.694117, 0.694117)
x.Material = "DiamondPlate"
end)

window3:Button("Anti void",function()
x = Instance.new("Part", game.Workspace)
x.CFrame = CFrame.new(274.8559265136719, -180.61297607421875, -251.63177490234375)
x.Anchored = true
x.Size = Vector3.new(1000,10,1000)
x.Rotation = Vector3.new(0, 0, 0)
x.Color = Color3.new(0.0, 0.0, 0.0)
x.Material = "DiamondPlate"
end)


window3:Button("Gun modif",function()
loadstring(game:HttpGet(('https://gist.githubusercontent.com/GattoHow/b85425bc886f6e0c11bc27191b51c112/raw/97cabe0ab4a3650e793028669fee5eb3d76f735e/ACS%2520EDITOR%2520OBFUSCADO'),true))()
end)


window4:Button("Pioche",function()

--save pos
plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-798.3229370117188, 83.97953796386719, 281.1197204589844)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.Pioche.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.Pioche.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.Pioche.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.Pioche.ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Pioche 2",function()

--save pos
plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(232.743408203125, -159.32662963867188, -268.2149353027344)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[135].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[135].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[135].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[135].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Generateur",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(579.9337768554688, 61.44197082519531, 131.68540954589844)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator1.Lever.Button.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator1.Lever.Button.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator1.Lever.Button.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator1.Lever.Button.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Generateur secondaire",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(159.55886840820312, -156.76968383789062, -217.1028594970703)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator2.Lever.Button.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator2.Lever.Button.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator2.Lever.Button.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Lumiere.Generator2.Lever.Button.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("CD 079",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-796.0442504882812, 83.97954559326172, 278.2623596191406)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver["Disque SCP-079"].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver["Disque SCP-079"].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver["Disque SCP-079"].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver["Disque SCP-079"].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)


window4:Button("RT85",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(285.9128723144531, -148.22210693359375, -178.09048461914062)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.RT85.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.RT85.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.RT85.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.RT85.ClickPart.ClickDetector)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(260.9101867675781, -148.524169921875, -158.4881134033203)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[62].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[62].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[62].ClickPart.ClickDetector)
wait("0.1")
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)



window4:Button("USP",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(53.763816833496094, -158.2733154296875, -291.707763671875)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[3].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[3].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[3].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[3].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("MP5",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(291.5211181640625, -129.81150817871094, -460.1588134765625)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[43].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[43].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[43].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[43].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Composant 1",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(30.040809631347656, -165.77638244628906, -99.51001739501953)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[123].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[123].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[123].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[123].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Composant 2",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-821.8303833007812, 55.01008605957031, -432.5513916015625)}):Play()
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[157].ppPart.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[157].ppPart.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[157].ppPart.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[157].ppPart.ProximityPrompt)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Flashlight",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(20.113035202026367, -164.7523956298828, -97.90428161621094)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[134].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[134].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[134].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[134].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Plateau repas",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(75.50121307373047, -158.25473022460938, -76.51615142822266)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[133].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[133].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[133].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[133].ClickPart.ClickDetector)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("RN",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-917.1842651367188, 39.87994384765625, -412.3173522949219)}):Play()
wait("1")
fireclickdetector(game:GetService("Workspace").Casiers.RN.Main.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Casiers.RN.Main.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Casiers.RN.Main.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Casiers.RN.Main.ClickDetector)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-918.4791259765625, 39.87994384765625, -407.46368408203125)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.HK416C.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.HK416C.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.HK416C.ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver.HK416C.ClickPart.ClickDetector)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-918.5352172851562, 39.87994384765625, -409.488525390625)}):Play()
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[33].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[33].ClickPart.ClickDetector)
wait("0.1")
fireclickdetector(game:GetService("Workspace").Giver:GetChildren()[33].ClickPart.ClickDetector)
wait("0.1")
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Poids",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-829.6863403320312, 54.9999885559082, -395.0056457519531)}):Play()
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[161].ppPart.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[161].ppPart.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[162].ppPart.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver:GetChildren()[162].ppPart.ProximityPrompt)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)

window4:Button("Ammo",function()

plr = game:GetService('Players').LocalPlayer      
X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(140.7920379638672, -158.25852966308594, -36.83682632446289)}):Play()
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver.Ammo.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver.Ammo.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver.Ammo.ProximityPrompt)
wait("0.1")
fireproximityprompt(game:GetService("Workspace").Giver.Ammo.ProximityPrompt)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+0,Z1)
end)
