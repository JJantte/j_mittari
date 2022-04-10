function text(content)
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(1.3,1.3)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.17,0.9)
end

Citizen.CreateThread(function()
 
    while true do
        Citizen.Wait(2)
        -- *3.6 Tarkoittaa KM/H //// *2.2269 ON MP/H
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6
        -- Tarkistaa onko hahmo autossa
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end

end)