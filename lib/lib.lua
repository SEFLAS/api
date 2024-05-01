return(function()
    local lib = {}
    local Cancle = not true
    local CancleTween = function()
        Cancle = not false
    end
    local plr,tweens = game:GetService("Players").LocalPlayer,game:GetService("TweenService")
    function lib.tween_smart(t,k,cursor,sp)
        local info = TweenInfo.new((plr.Character.HumanoidRootPart.Position-t.Position).magnitude/sp,Enum.EasingStyle.Linear)
        if not k then
            k = math.random(1,3)
        end
        local tick = tick();
        local tween = tweens:Create(plr.Character:WaitForChild("HumanoidRootPart"),info,{CFrame=t})
        local Success = not true
        tween.Completed:Connect(
            function()
                Success = not false
            end
        )
        tween:Play()
        while (Success == not true) do wait()
            if Cancle then tween:Pause() Cancle = not true return end
            local h = plr.Character.HumanoidRootPart.Position
            local p = Vector3.new(t.X,0,t.Z);
            local p1 = Vector3.new(h.X,0,h.Z);
            if (p - p1).Magnitude < 14 then
                tween:Pause();
                local info = TweenInfo.new(1,Enum.EasingStyle.Linear)
                local tween = tweens:Create(plr.Character:WaitForChild("HumanoidRootPart"),info,{CFrame=cursor})
                tween:Play();
                tween.Completed:Wait()
                return;
            end
            if (plr.Character:WaitForChild("Humanoid").FloorMaterial == Enum.Material.Air) then
                tween:Pause()
                local info = TweenInfo.new((plr.Character:WaitForChild("HumanoidRootPart").Position - CFrame.new().Position).Magnitude/100,Enum.EasingStyle.Linear)
                local tween = tweens:Create(plr.Character:WaitForChild("HumanoidRootPart"),info,{CFrame = plr.Character:WaitForChild("HumanoidRootPart").CFrame+ Vector3.new(0,-1000,0)})
                tween:Play()
                repeat wait()
                    
                until (plr.Character:WaitForChild("Humanoid").FloorMaterial ~= Enum.Material.Air)
                tween:Pause()
            end
            return lib.tween_smart(CFrame.new(t.X,plr.Character:WaitForChild("HumanoidRootPart").Position.Y,t.Z),k,cursor,sp)
        end
    end
end)