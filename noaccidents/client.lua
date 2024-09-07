Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = PlayerPedId()

        if IsPedArmed(playerPed, 6) then

            local isAiming = IsControlPressed(1, 25)
            local isShooting = IsPedShooting(playerPed)

            if isAiming or isShooting then
                DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
            end
        end
    end
end)