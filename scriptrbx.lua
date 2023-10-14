local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()



local Window = Rayfield:CreateWindow({
   Name = "Meow hub",
   LoadingTitle = "loading...",
   LoadingSubtitle = "by idiot",
   ConfigurationSaving = {
      Enabled = true,
   FolderName = Meowhub,
      FileName = "Meow Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "discord.gg/Srr39Afzyp",
      RememberJoins = true 
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Meow hub",
      Subtitle = "Key System",
      Note = "Join our discord (discord.gg/Srr39Afzyp)",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Meow hub"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Player", 4483362458) -- Title, Imagine



local Button = Tab:CreateButton({
   Name = "fly",
   Callback = function(fly)
   -- The function that takes place when the button is pressed
   end,
})



local Toggle = Tab:CreateToggle({
   Name = "fly",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(fly)
      game.Players.LocalPlayer.Character.Humanoid.fly = z
   end,
})



local Slider = Tab:CreateSlider({
   Name = "Walkspeed",
   Range = {20, 100},
   Increment = 10,
   Suffix = "Walkspeed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(z)
   game.Players.LocalPlayer.Character.Humanoid.Walkspeed = z
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})



local Button = Tab:CreateButton({
   Name = "JumpPower",
   Callback = function(z)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = z
   end,
})



local Button = Tab:CreateButton({
   Name = "InfiniteJump",
   Callback = function(InfiniteJumpEnabled)
      game.Players.LocalPlayer.Character.Humanoid.InfiniteJump = z
   -- The function that takes place when the button is pressed
   end,
})



while wait(0.5) do
   for i, childrik in ipairs(workspace:GetDescendants()) do
       if childrik:FindFirstChild("Humanoid") then
           if not childrik:FindFirstChild("EspBox") then
               if childrik ~= game.Players.LocalPlayer.Character then
                   local esp = Instance.new("BoxHandleAdornment",childrik)
                   esp.Adornee = childrik
                   esp.ZIndex = 0
                   esp.Size = Vector3.new(4, 5, 1)
                   esp.Transparency = 0.65
                   esp.Color3 = Color3.fromRGB(255,48,48)
                   esp.AlwaysOnTop = true
                   esp.Name = "EspBox"
               end
           end
       end
   end
end
