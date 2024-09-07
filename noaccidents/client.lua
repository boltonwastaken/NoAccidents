CreateThread(function()
    while true do
        local sleep = 300
        local playerPed = PlayerPedId()

        if IsPedArmed(playerPed, 6) then

            local isAiming = IsControlPressed(1, 25)
            local isShooting = IsPedShooting(playerPed)

            if isAiming or isShooting then
                DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
            end
            sleep = 0
        end
        Wait(sleep)
    end
end)
