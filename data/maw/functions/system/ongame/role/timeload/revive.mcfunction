execute if entity @s[scores={TeamWerewolf=1}] run scoreboard players add #maw WolfCount 1
execute if entity @s[scores={TeamVillager=1},tag=!CouldNotRevive] run scoreboard players add #maw VillageCount 1
scoreboard players set @s DeathCount 0
scoreboard players set @s RoleDone 0
loot give @s loot maw:item/items
loot replace entity @s inventory.8 loot maw:item/lore
loot replace entity @s inventory.17 loot maw:item/lovers_lore
spectate @e[type=armor_stand,tag=RewindTime,limit=1,sort=nearest] @s
kill @e[type=armor_stand,tag=Corpses,limit=1,sort=nearest]
