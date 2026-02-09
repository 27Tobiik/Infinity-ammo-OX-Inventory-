

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if ped and not IsEntityDead(ped) then
            local weapon = GetSelectedPedWeapon(ped)
            if weapon ~= `WEAPON_UNARMED` then
                SetPedInfiniteAmmo(ped, true, weapon)
            end
        end
        Wait(1000) -- check every 1 second
    end
end)
