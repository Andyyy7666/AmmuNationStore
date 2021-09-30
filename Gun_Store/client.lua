------------------------------------------------------------------------
------------------------------------------------------------------------
--		    Don't touch if you don't know what you're doing.		  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

--exports.Money_Script:AddBank(salary)

if Config.CustomMenuEnabled then
    local RuntimeTXD = CreateRuntimeTxd('Custom_Menu_Head')
    local Object = CreateDui(Config.MenuImage, 512, 128)
    _G.Object = Object
    local TextureThing = GetDuiHandle(Object)
    local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, 'Custom_Menu_Head', TextureThing)
    menuImage = "Custom_Menu_Head"
else
    menuImage = "shopui_title_sm_hangar"
end

-- Alert on top left of screen
function alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- Check if player is in a gun store
function InGunStore()
	local playerCoords = GetEntityCoords(PlayerPedId(), 0)
	local GunStore = GetCoordsAndRotationOfClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 2.5, 1093460780, 0)

	if GunStore == 1 then
		return true
    elseif MainMenu:Visible() == true and GunStore ~= 1 then
        _MenuPool:CloseAllMenus()
    end
end

-- Give player weapons
function giveWeapon(hash, weapon, price)
    GiveWeaponToPed(PlayerPedId(), GetHashKey(hash), 30, false, false)
    SetNotificationTextEntry("STRING")
    AddTextComponentString("You've purchased a " .. "~b~" .. weapon .. "~w~ for ~g~$" .. price .. ".")
    DrawNotification(true, true)
    exports.Money_Script:RemoveBank(price)
end

function giveAmmo(ammoType, name, amount, price)
    AddAmmoToPedByType(PlayerPedId(), ammoType, amount)
    SetNotificationTextEntry("STRING")
    AddTextComponentString("You've purchased a " .. "~b~" .. name .. "~w~ for ~g~$" .. price .. ".")
    DrawNotification(true, true)
    exports.Money_Script:RemoveBank(price)
end