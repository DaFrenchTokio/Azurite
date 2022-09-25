local a = {
    icon = "rbxthumb://type=Asset&id=10912483183&w=150&h=150"
}
function a.n()
    pcall(function() 
        game.StarterGui:SetCore("SendNotification", {Title = "Azurite",Text = msg,Icon = a.icon,Duration = 5})
    end)
end
return a