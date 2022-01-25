-- Get player identifier function (This will not change the identifier all the time)
function GetPlayerIdentifierFromType(type, source) -- Credits: xander1998, Post: https://forum.cfx.re/t/solved-is-there-a-better-way-to-get-lic-steam-and-ip-than-getplayeridentifiers/236243/2?u=andyyy7666
	local identifiers = {}
	local identifierCount = GetNumPlayerIdentifiers(source)

	for a = 0, identifierCount do
		table.insert(identifiers, GetPlayerIdentifier(source, a))
	end

	for b = 1, #identifiers do
		if string.find(identifiers[b], type, 1) then
			return identifiers[b]
		end
	end
	return nil
end

RegisterNetEvent("purchaseWeapon")
AddEventHandler("purchaseWeapon", function(name, hash, price, ammo)
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
                TriggerClientEvent("purchaseWeapon", player, name, hash, price, ammo)
            end
        end
    end)
end)
