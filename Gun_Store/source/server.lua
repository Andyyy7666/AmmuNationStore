NDCore = exports["ND_Core"]:GetCoreObject()

RegisterNetEvent("purchaseWeapon")
AddEventHandler("purchaseWeapon", function(name, hash, price, ammo)
    local player = source
    local amount = price
    local character = NDCore.Functions.GetPlayer(source)
    if characater.bank >= amount then
        NDCore.Functions.DeductMoney(amount, player, "bank")
        TriggerClientEvent("purchaseWeapon", player, name, hash, price, ammo)   
    end
end)
