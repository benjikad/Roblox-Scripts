local queueonteleport = queueonteleport or queue_on_teleport
queueonteleport(game:HttpGet("https://raw.githubusercontent.com/benjikad/Roblox-Scripts/refs/heads/B.S.Injector/looper.lua"))
		
local Players = game:GetService('Players')
local TeleportService = game:GetService('TeleportService')
if #Players:GetPlayers() <= 1 then
  Players.LocalPlayer:Kick("\nRejoining...")
  wait()
  TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
else
  TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
end
