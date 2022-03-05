clear @s pink_concrete{CustomModelData:5}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 100 1 1
tellraw @s {"text":"テレポーターを有効化した","color": "light_purple"}

loot replace entity @s inventory.11 loot maw:item/ability/trickster/enable/teleporter1
loot replace entity @s inventory.13 loot maw:item/ability/trickster/enable/teleporter2
loot replace entity @s inventory.15 loot maw:item/ability/trickster/enable/teleporter3

scoreboard players set #maw Trickster 2
