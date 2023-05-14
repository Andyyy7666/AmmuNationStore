------------------------------------------------------------------------
------------------------------------------------------------------------
--																	  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

config = {
    saveWeapons = true,

    menu = {
        position = "right",
        width = 80, 
        customImage = true,
        image = "https://i.imgur.com/YHgZX1E.png", -- Another cool image: https://i.imgur.com/ON97ple.png
    },

    locations = {
        {x = 0.00, y = 0.00, z = 0.00}
    },

    categories = {
        ["Hand Guns"] = {
            type = "weapons", -- weapons / ammo / armor
            restricted = false, -- false or your prefered ace perm (ex: ammunation.pistols)
            selection = { -- I GOT REALLY LAZY SO ADD YOUR OWN WEAPONS AND COMPONENTS (https://forge.plebmasters.de/weapons)
                ["Pistol"] = {
                    hashKey = `weapon_pistol`, 
                    price = 699, 
                    description = "Most reliable and dependable sidearm for law-enforcement, military and personal defense.",
                    components = {
                        [1] = {
                            name = 'Default Clip',
                            price = 10,
                            hashKey = `COMPONENT_PISTOL_CLIP_01`
                        },
                        [2] = {
                            name = 'Extended Clip',
                            price = 20,
                            hashKey = `COMPONENT_PISTOL_CLIP_02`
                        },
                        [3] = {
                            name = 'Flashlight',
                            price = 10,
                            hashKey = `COMPONENT_AT_PI_FLSH`
                        },
                        [4] = {
                            name = 'Suppressor',
                            price = 30,
                            hashKey = `COMPONENT_AT_PI_SUPP_02`
                        },
                        [5] = {
                            name = 'Yusuf Amir Luxury Finish',
                            price = 60,
                            hashKey = `COMPONENT_PISTOL_VARMOD_LUXE`
                        }
                    }
                },
            }
        },
        ["Submachine Guns"] = {
            type = "weapons", -- weapons / ammo / armor
            restricted = false, -- false or your prefered ace perm (ex: ammunation.pistols)
            selection = {
                ["Micro SMG"] = {
                    hashKey = `weapon_microsmg`, 
                    price = 2400, 
                    description = "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute.",
                    components = {
                        [1] = {
                            name = 'Default Clip',
                            price = 10,
                            hashKey = `COMPONENT_MICROSMG_CLIP_01`
                        },
                        [2] = {
                            name = 'Extended Clip',
                            price = 20,
                            hashKey = `COMPONENT_MICROSMG_CLIP_02`
                        },
                        [3] = {
                            name = 'Flashlight',
                            price = 10,
                            hashKey = `COMPONENT_AT_PI_FLSH`
                        },
                        [4] = {
                            name = 'Scope',
                            price = 20,
                            hashKey = `COMPONENT_AT_SCOPE_MACRO`
                        },
                        [5] = {
                            name = 'Suppressor',
                            price = 60,
                            hashKey = `COMPONENT_AT_AR_SUPP_02`
                        },
                        [6] = {
                            name = 'Yusuf Amir Luxury Finish',
                            price = 60,
                            hashKey = `COMPONENT_MICROSMG_VARMOD_LUXE`
                        }
                    }
                },
            }
        },
        ["Shotguns"] = {
            type = "weapons", -- weapons / ammo / armor
            restricted = false, -- false or your prefered ace perm (ex: ammunation.pistols)
            selection = {
                ["Pump Shotgun"] = {
                    hashKey = `weapon_pumpshotgun`, 
                    price = 800, 
                    description = "Standard shotgun ideal for short-range combat. High-projectile spread, lower accuracy at long range.",
                    components = {
                        [1] = {
                            name = 'Flashlight',
                            price = 10,
                            hashKey = `COMPONENT_AT_AR_FLSH`
                        },
                        [2] = {
                            name = 'Suppressor',
                            price = 20,
                            hashKey = `COMPONENT_AT_SR_SUPP`
                        },
                        [3] = {
                            name = 'Yusuf Amir Luxury Finish',
                            price = 60,
                            hashKey = `COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER`
                        }
                    }
                },
            }
        },
        ["Assault Rifles"] = {
            type = "weapons", -- weapons / ammo / armor
            restricted = false, -- false or your prefered ace perm (ex: ammunation.pistols)
            selection = {
                ["Assault Rifle"] = {
                    hashKey = `weapon_assaultrifle`, 
                    price = 8280, 
                    description = "This standard assault rifle boasts a large capacity magazine and long distance accuracy.",
                    components = {
                        [1] = {
                            name = 'Default Clip',
                            price = 10,
                            hashKey = `COMPONENT_ASSAULTRIFLE_CLIP_01`
                        },
                        [2] = {
                            name = 'Extended Clip',
                            price = 20,
                            hashKey = `COMPONENT_ASSAULTRIFLE_CLIP_02`
                        },
                        [3] = {
                            name = 'Drum Magazine',
                            price = 30,
                            hashKey = `COMPONENT_ASSAULTRIFLE_CLIP_03`
                        },
                        [4] = {
                            name = 'Flashlight',
                            price = 10,
                            hashKey = `COMPONENT_AT_AR_FLSH`
                        },
                        [5] = {
                            name = 'Scope',
                            price = 10,
                            hashKey = `COMPONENT_AT_SCOPE_MACRO`
                        },
                        [6] = {
                            name = 'Suppressor',
                            price = 30,
                            hashKey = `COMPONENT_AT_AR_SUPP_02`
                        },
                        [7] = {
                            name = 'Grip',
                            price = 10,
                            hashKey = `COMPONENT_AT_AR_AFGRIP`
                        },
                        [8] = {
                            name = 'Yusuf Amir Luxury Finish',
                            price = 60,
                            hashKey = `COMPONENT_ASSAULTRIFLE_VARMOD_LUXE`
                        }
                    }
                },
            }
        },
        ["Light Machine Guns"] = {
            type = "weapons", -- weapons / ammo / armor
            restricted = false, -- false or your prefered ace perm (ex: ammunation.pistols)
            selection = {
                ["MG"] = {
                    hashKey = `weapon_mg`, 
                    price = 8500, 
                    description = "General purpose machine. Long range penetrative power. Very effective against large groups.",
                    components = {
                        [1] = {
                            name = 'Default Clip',
                            price = 10,
                            hashKey = `COMPONENT_MG_CLIP_01`
                        },
                        [2] = {
                            name = 'Extended Clip',
                            price = 20,
                            hashKey = `COMPONENT_MG_CLIP_02`
                        },
                        [4] = {
                            name = 'Scope',
                            price = 10,
                            hashKey = `COMPONENT_AT_SCOPE_SMALL_02`
                        },
                        [4] = {
                            name = 'Yusuf Amir Luxury Finish',
                            price = 60,
                            hashKey = `COMPONENT_MG_VARMOD_LOWRIDER`
                        }
                    }
                },
            }
        },
        ["Other"] = {
            type = "weapons", -- weapons / ammo / armor
            restricted = "ammunation.other", -- false or your prefered ace perm (ex: ammunation.pistols)
            selection = {
                ["Sniper Rifle"] = {
                    hashKey = `weapon_sniperrifle`, 
                    price = 12500, 
                    description = "Standard sniper rifle. Ideal for situations that require accuracy at long range.",
                    components = {
                        [1] = {
                            name = 'Suppressor',
                            price = 20,
                            hashKey = `COMPONENT_AT_AR_SUPP_02`
                        },
                        [2] = {
                            name = 'Scope',
                            price = 10,
                            hashKey = `COMPONENT_AT_SCOPE_LARGE`
                        },
                        [3] = {
                            name = 'Advanced Scope',
                            price = 20,
                            hashKey = `COMPONENT_AT_SCOPE_MAX`
                        },
                        [4] = {
                            name = 'Yusuf Amir Luxury Finish',
                            price = 60,
                            hashKey = `COMPONENT_SNIPERRIFLE_VARMOD_LUXE`
                        }
                    }
                },
            }
        },
        ["Ammo"] = {
            type = "ammo", -- weapons / ammo / armor
            selection = {
                ["Pistol Ammo"] = {
                    hashKey = "AMMO_PISTOL", 
                    amount = 60, 
                    price = 120, 
                    description = "Purchase 60 rounds of pistol ammo."
                },
                ["SMG Ammo"] = {
                    hashKey = "AMMO_SMG", 
                    amount = 100, 
                    price = 250, 
                    description = "Purchase 100 rounds of SMG ammo."
                },
                ["Shotgun Ammo"] = {
                    hashKey = "AMMO_SHOTGUN", 
                    amount = 30, 
                    price = 185, 
                    description = "Purchase 30 rounds of Shotgun ammo."
                },
                ["Assault Rifle Ammo"] = {
                    hashKey = "AMMO_RIFLE", 
                    amount = 150, 
                    price = 500, 
                    description = "Purchase 150 rounds of Assault Rifle Ammo."
                },
                ["MG Ammo"] = {
                    hashKey = "AMMO_MG", 
                    amount = 200, 
                    price = 700, 
                    description = "Purchase 200 Rounds of Light Machine Gun Ammo."
                },
                ["Sniper Ammo"] = {
                    hashKey = "AMMO_SNIPER", 
                    amount = 25, 
                    price = 200, 
                    description = "Purchase 25 Rounds of Sniper Ammo."
                }
            }
        },
        ["Armor"] = {
            type = "armor", -- weapons / ammo / armor
            selection = {
                ["Super Light Armor"] = {
                    amount = 15, 
                    price = 120, 
                    description = "Purchase 60 rounds of pistol ammo."
                },
                ["Light Armor"] = {
                    amount = 140, 
                    price = 250, 
                    description = "Purchase 100 rounds of SMG ammo."
                },
                ["Standard Armor"] = {
                    amount = 160, 
                    price = 185, 
                    description = "Purchase 30 rounds of Shotgun ammo."
                },
                ["Heavy Armor"] = {
                    amount = 180, 
                    price = 500, 
                    description = "Purchase 150 rounds of Assault Rifle Ammo."
                },
                ["Super Heavy Armor"] = {
                    amount = 1100, 
                    price = 700, 
                    description = "Purchase 200 Rounds of Light Machine Gun Ammo."
                }
            }
        }
    }
}