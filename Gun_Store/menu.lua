------------------------------------------------------------------------
------------------------------------------------------------------------
--		    Don't touch if you don't know what you're doing.		  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

rightPosition = {x = 1320, y = 100}
leftPosition = {x = 0, y = 100}
menuPosition = {x = 0, y = 200}

if Config.MenuPosition then
    if Config.MenuPosition == "left" then
        menuPosition = leftPosition
    elseif Config.MenuPosition == "right" then
        menuPosition = rightPosition
    end
end

_MenuPool = NativeUI.CreatePool()
MainMenu = NativeUI.CreateMenu()

function Menu()
    local MenuTitle = ""
    if not Config.CustomMenuEnabled then
        MenuTitle = GetPlayerName(PlayerId())
    else
        MenuTitle = ""
    end
	_MenuPool:Remove()
	_MenuPool = NativeUI.CreatePool()
	MainMenu = NativeUI.CreateMenu(MenuTitle, GetResourceMetadata(GetCurrentResourceName(), "C", 0), menuPosition["x"], menuPosition["y"], menuImage, menuImage)
	_MenuPool:Add(MainMenu)
	MainMenu:SetMenuWidthOffset(Config.MenuWidth)
	collectgarbage()
	MainMenu:SetMenuWidthOffset(Config.MenuWidth)	
	_MenuPool:ControlDisablingEnabled(false)
	_MenuPool:MouseControlsEnabled(false)

    local pistols = _MenuPool:AddSubMenu(MainMenu, "HandGuns", "", true, menuImage, menuImage)
    pistols:SetMenuWidthOffset(Config.MenuWidth)
    local pistols_1 = NativeUI.CreateItem("Pistol: ~g~$699", "Most reliable and dependable sidearm for law-enforcement, military and personal defense.")
    local pistols_2 = NativeUI.CreateItem("Combat Pistol: ~g~$549", "Short recoil-operated, semi-automatic pistol designed and produced by Hawk & Little.")
    local pistols_3 = NativeUI.CreateItem("AP Pistol: ~g~$6100", "High-penetration, fully-automatic pistol. Holds 18 rounds in the magazine.")
    local pistols_4 = NativeUI.CreateItem("Pistol .50: ~g~$2550", "High-impact pistol that delivers immense power but with extremely strong recoil.")
    local pistols_5 = NativeUI.CreateItem("SNS Pistol: ~g~$300", "Like condoms or hairspray, this fits in your pocket for a night on the town.")
    local pistols_6 = NativeUI.CreateItem("Heavy Pistol: ~g~$1100", "The heavyweight champion. Delivers accuracy and a serious forearm workout every time.")
    local pistols_7 = NativeUI.CreateItem("Heavy Revolver: ~g~$5900", "A handgun with enough stopping power to drop a crazed rhino.")
    local pistols_8 = NativeUI.CreateItem("Double Action Revolver: ~g~$279", "Sometimes revenge is a dish best served six times, in quick succession, right between the eyes.")
    pistols:AddItem(pistols_1)
    pistols:AddItem(pistols_2)
    pistols:AddItem(pistols_3)
    pistols:AddItem(pistols_4)
    pistols:AddItem(pistols_5)
    pistols:AddItem(pistols_6)
    pistols:AddItem(pistols_7)
    pistols:AddItem(pistols_8)
    pistols_1.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_pistol", "Pistol", 699)
    end
    pistols_2.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_combatpistol", "Combat Pistol", 549)
    end
    pistols_3.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_appistol", "AP Pistol", 6100)
    end
    pistols_4.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_pistol50", "Pistol .50", 2550)
    end
    pistols_5.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_snspistol", "SNS Pistol", 300)
    end
    pistols_6.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_heavypistol", "Heavy Pistol", 1100)
    end
    pistols_7.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_revolver", "Heavy Revolver", 5900)
    end
    pistols_8.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_doubleaction", "Double Action Revolver", 279)
    end

    local submachineGuns = _MenuPool:AddSubMenu(MainMenu, "Submachine Guns", "", true, menuImage, menuImage)
    submachineGuns:SetMenuWidthOffset(Config.MenuWidth)
    local submachineGuns_1 = NativeUI.CreateItem("Micro SMG: ~g~$2400", "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute.")
    local submachineGuns_2 = NativeUI.CreateItem("SMG: ~g~$2150", "This is known as a good all-around submachine gun. Lightweight with an accurate sight.")
    local submachineGuns_3 = NativeUI.CreateItem("Assault SMG: ~g~$1480", "A high-capacity submachine gun that is both compact and lightweight. Holds up to 30 bullets.")
    local submachineGuns_4 = NativeUI.CreateItem("Combat PDW: ~g~$1799", "Who said personal weaponry couldn't be worthy of military personnel? Integral suppressor.")
    local submachineGuns_5 = NativeUI.CreateItem("Machine Pistol: ~g~$1100", "The snare drum to your twin-engine V8 bass: no drive-by sounds quite right without it.")
    local submachineGuns_6 = NativeUI.CreateItem("Mini SMG: ~g~$1240", "Increasingly popular since marketing team started caring about little guys in low income areas.")
    submachineGuns:AddItem(submachineGuns_1)
    submachineGuns:AddItem(submachineGuns_2)
    submachineGuns:AddItem(submachineGuns_3)
    submachineGuns:AddItem(submachineGuns_4)
    submachineGuns:AddItem(submachineGuns_5)
    submachineGuns:AddItem(submachineGuns_6)
    submachineGuns_1.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_microsmg", "Micro SMG", 2400)
    end
    submachineGuns_2.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_smg", "SMG", 2150)
    end
    submachineGuns_3.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_assaultsmg", "Assault SMG", 1480)
    end
    submachineGuns_4.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_combatpdw", "Combat PDW", 1799)
    end
    submachineGuns_5.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_machinepistol", "Machine Pistol", 1100)
    end
    submachineGuns_6.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_minismg", "Mini SMG", 1240)
    end

    local shotguns = _MenuPool:AddSubMenu(MainMenu, "Shotguns", "", true, menuImage, menuImage)
    shotguns:SetMenuWidthOffset(Config.MenuWidth)
    local shotguns_1 = NativeUI.CreateItem("Pump Shotgun: ~g~$800", "Standard shotgun ideal for short-range combat. High-projectile spread, lower accuracy at long range.")
    local shotguns_2 = NativeUI.CreateItem("Sawed-Off Shotgun: ~g~$450", "Single-barrel, sawed-off shotgun. Low range and ammo capacity but devastating in close combat.")
    local shotguns_3 = NativeUI.CreateItem("Musket: ~g~$1600", "Armed with nothing but muskets and a superiority complex, the Brits took over half the world.")
    local shotguns_4 = NativeUI.CreateItem("Double Barrel Shotgun: ~g~$300", "Who needs a high fire rate when your first shot turns the other guy into a fine mist?")
    local shotguns_5 = NativeUI.CreateItem("Sweeper Shotgun: ~g~$995", "How many effective tools for riot control can you tuck into your pants?")
    local shotguns_6 = NativeUI.CreateItem("Combat Shotgun: ~g~$1200", "There’s only one semi-automatic shotgun with a fire rate that sets the LSFD alarm ringing.")
    shotguns:AddItem(shotguns_1)
    shotguns:AddItem(shotguns_2)
    shotguns:AddItem(shotguns_3)
    shotguns:AddItem(shotguns_4)
    shotguns:AddItem(shotguns_5)
    shotguns:AddItem(shotguns_6)
    shotguns_1.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_pumpshotgun", "Pump Shotgun", 800)
    end
    shotguns_2.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_sawnoffshotgun", "Sawed-Off Shotgun", 450)
    end
    shotguns_3.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_musket", "Musket", 1200)
    end
    shotguns_4.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_dbshotgun", "Double Barrel Shotgun", 300)
    end
    shotguns_5.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_autoshotgun", "Sweeper Shotgun", 995)
    end
    shotguns_6.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_combatshotgun", "Combat Shotgun", 1200)
    end

    local assaultRifles = _MenuPool:AddSubMenu(MainMenu, "Assault Rifles", "", true, menuImage, menuImage)
    assaultRifles:SetMenuWidthOffset(Config.MenuWidth)
    local assaultRifles_1 = NativeUI.CreateItem("Assault Rifle: ~g~$8280", "This standard assault rifle boasts a large capacity magazine and long distance accuracy.")
    local assaultRifles_2 = NativeUI.CreateItem("Carbine Rifle: ~g~$9700", "Combining long distance accuracy with a high capacity magazine, make the hit.")
    local assaultRifles_3 = NativeUI.CreateItem("Advanced Rifle: ~g~$8800", "The most lightweight and compact of all rifles, without compromising accuracy and fire rate.")
    local assaultRifles_4 = NativeUI.CreateItem("Special Carbine: ~g~$7200", "Combining accuracy, maneuverability, firepower and low recoil, this is extremely versatile.")
    local assaultRifles_5 = NativeUI.CreateItem("Bullpup Rifle: ~g~$1750", "The latest Chinese import taking America by storm, this rifle is known for balanced handling.")
    local assaultRifles_6 = NativeUI.CreateItem("Compact Rifle: ~g~$2390", "Half the size, all the power, double the recoil: no riskier way to say \"I'm compensating\".")
    assaultRifles:AddItem(assaultRifles_1)
    assaultRifles:AddItem(assaultRifles_2)
    assaultRifles:AddItem(assaultRifles_3)
    assaultRifles:AddItem(assaultRifles_4)
    assaultRifles:AddItem(assaultRifles_5)
    assaultRifles:AddItem(assaultRifles_6)
    assaultRifles_1.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_assaultrifle", "Assault Rifle", 8280)
    end
    assaultRifles_2.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_carbinerifle", "Carbine Rifle", 9700)
    end
    assaultRifles_3.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_advancedrifle", "Advanced Rifle", 8800)
    end
    assaultRifles_4.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_specialcarbine", "Special Carbine", 7200)
    end
    assaultRifles_5.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_bullpuprifle", "Bullpup Rifle", 1750)
    end
    assaultRifles_6.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_compactrifle", "Compact Rifle", 2390)
    end

    local lightMachineGuns = _MenuPool:AddSubMenu(MainMenu, "Light Machine Guns", "", true, menuImage, menuImage)
    lightMachineGuns:SetMenuWidthOffset(Config.MenuWidth)
    local lightMachineGuns_1 = NativeUI.CreateItem("MG: ~g~$8500", "General purpose machine. Long range penetrative power. Very effective against large groups.")
    local lightMachineGuns_2 = NativeUI.CreateItem("Combat MG: ~g~$9530", "Lightweight and excellent maneuverability with a high rate of fire to devastating effect.")
    local lightMachineGuns_3 = NativeUI.CreateItem("Gusenberg Sweeper: ~g~$2800", "Looks great sticking out the window of a Roosevelt or paired with a pinstripe suit.")
    lightMachineGuns:AddItem(lightMachineGuns_1)
    lightMachineGuns:AddItem(lightMachineGuns_2)
    lightMachineGuns:AddItem(lightMachineGuns_3)
    lightMachineGuns_1.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_mg", "MG", 8500)
    end
    lightMachineGuns_2.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_combatmg", "Combat MG", 9530)
    end
    lightMachineGuns_3.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_gusenberg", "Gusenberg Sweeper", 2800)
    end
    
    local toys = _MenuPool:AddSubMenu(MainMenu, "Special Toys", "", true, menuImage, menuImage)
    toys:SetMenuWidthOffset(Config.MenuWidth)
    local toys_1 = NativeUI.CreateItem("Sniper Rifle: ~g~$12500", "Standard sniper rifle. Ideal for situations that require accuracy at long range.")
    local toys_2 = NativeUI.CreateItem("Marksman Rifle: ~g~$6900", "Whether you're up close or a disconcertingly long way away. A multi-range tool for tools.")
    local toys_3 = NativeUI.CreateItem("Firework Launcher: ~g~$2500", "Put the flair back in flare with this firework launcher.")
    local toys_4 = NativeUI.CreateItem("Molotov Cocktail: ~g~$50", "Crude yet highly effective incendiary weapon. No happy hour with this cocktail.")
    local toys_5 = NativeUI.CreateItem("Flare: ~g~$25", "Use to signal distress or drunken excitement.")
    toys:AddItem(toys_1)
    toys:AddItem(toys_2)
    toys:AddItem(toys_3)
    toys:AddItem(toys_4)
    toys:AddItem(toys_5)
    toys_1.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_sniperrifle", "Sniper Rifle", 12500)
    end
    toys_2.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_marksmanrifle", "Marksman Rifle", 6900)
    end
    toys_3.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_firework", "Firework Launcher", 2500)
    end
    toys_4.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_molotov", "Molotov Cocktail", 50)
    end
    toys_5.Activated = function(ParentMenu, SelectedItem)
        giveWeapon("weapon_flare", "Flare", 25)
    end

    local ammo = _MenuPool:AddSubMenu(MainMenu, "AMMO", "", true, menuImage, menuImage)
    ammo:SetMenuWidthOffset(Config.MenuWidth)
    local ammo_1 = NativeUI.CreateItem("Pistol Ammo: ~g~$120", "Purchase 60 rounds of pistol ammo.")
    local ammo_2 = NativeUI.CreateItem("SMG Ammo: ~g~$250", "Purchase 100 rounds of SMG ammo.")
    local ammo_3 = NativeUI.CreateItem("Shotgun Ammo: ~g~$185", "Purchase 30 rounds of Shotgun ammo.")
    local ammo_4 = NativeUI.CreateItem("Assault Rifle Ammo: ~g~$500", "Purchase 150 rounds of Assault Rifle Ammo.")
    local ammo_5 = NativeUI.CreateItem("LMG Ammo: ~g~$700", "Purchase 200 Rounds of Light Machine Gun Ammo.")
    local ammo_6 = NativeUI.CreateItem("Sniper Ammo: ~g~$200", "Purchase 25 Rounds of Sniper Ammo.")
    ammo:AddItem(ammo_1)
    ammo:AddItem(ammo_2)
    ammo:AddItem(ammo_3)
    ammo:AddItem(ammo_4)
    ammo:AddItem(ammo_5)
    ammo:AddItem(ammo_6)
    ammo_1.Activated = function(ParentMenu, SelectedItem)
        giveAmmo("AMMO_PISTOL", "Pistol Ammo", 60, 120)
    end
    ammo_2.Activated = function(ParentMenu, SelectedItem)
        giveAmmo("AMMO_SMG", "SMG Ammo", 100, 250)
    end
    ammo_3.Activated = function(ParentMenu, SelectedItem)
        giveAmmo("AMMO_SHOTGUN", "Shotgun Ammo", 30, 185)
    end
    ammo_4.Activated = function(ParentMenu, SelectedItem)
        giveAmmo("AMMO_RIFLE", "Assault Rifle Ammo", 150, 500)
    end
    ammo_5.Activated = function(ParentMenu, SelectedItem)
        giveAmmo("AMMO_MG", "Light Machine Gun Ammo", 200, 700)
    end
    ammo_6.Activated = function(ParentMenu, SelectedItem)
        giveAmmo("AMMO_SNIPER", "Sniper Ammo", 25, 200)
    end

    local ToggleClose = NativeUI.CreateItem("Close", "Close the menu")
    MainMenu:AddItem(ToggleClose)
    ToggleClose.Activated = function(ParentMenu, SelectedItem)
        _MenuPool:CloseAllMenus()
    end

    _MenuPool:RefreshIndex()
end

-- Alert thread
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		_MenuPool:ProcessMenus()	
		_MenuPool:ControlDisablingEnabled(false)
		_MenuPool:MouseControlsEnabled(false)

		if InGunStore() and not _MenuPool:IsAnyMenuOpen() then
			alert("Press ~INPUT_CONTEXT~ to view the weapon menu.")
			if IsControlJustPressed(0, 51) and not _MenuPool:IsAnyMenuOpen() then
                Menu()
                MainMenu:Visible(true)
			end
		end
	end
end)

print("Gun Store Menu by Andyyy#7666. If you're in need of support join the discord server: https://discord.gg/Z9Mxu72zZ6")

--[[
local shotguns = _MenuPool:AddSubMenu(MainMenu, "Shotguns", "", true, menuImage, menuImage)
shotguns:SetMenuWidthOffset(Config.MenuWidth)
local shotguns_1 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_2 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_3 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_4 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_5 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_6 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_7 = NativeUI.CreateItem(": ~g~$", "")
local shotguns_8 = NativeUI.CreateItem(": ~g~$", "")
shotguns:AddItem(shotguns_1)
shotguns:AddItem(shotguns_2)
shotguns:AddItem(shotguns_3)
shotguns:AddItem(shotguns_4)
shotguns:AddItem(shotguns_5)
shotguns:AddItem(shotguns_6)
shotguns:AddItem(shotguns_7)
shotguns:AddItem(shotguns_8)
shotguns_1.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_2.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_3.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_4.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_5.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_6.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_7.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
shotguns_8.Activated = function(ParentMenu, SelectedItem)
    giveWeapon("weapon_", "", )
end
]]
