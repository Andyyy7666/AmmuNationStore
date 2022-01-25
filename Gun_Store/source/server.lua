RegisterNetEvent("purchaseWeapon")
AddEventHandler("purchaseWeapon", function(price, weapon)
    local player = source
    local amount = price
    exports.oxmysql:query("SELECT bank FROM money WHERE license = ?", {GetPlayerIdentifierFromType("license", player)}, function(result)
        if result then
            if result[1].bank < amount then
                TriggerClientEvent("chat:addMessage", player, {
                    color = {255, 0, 0},
                    args = {"Error", "You don't have enough money."}
                })
            else
                exports.oxmysql:query("UPDATE money SET bank = bank - ? WHERE license = ?", {amount, GetPlayerIdentifierFromType("license", player)})
                TriggerClientEvent("updateMoney", player, amount, "bank")
            end
        end
    end)
end)
