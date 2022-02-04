scoreboard players set @s Teleporter2 0
playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 100 2 1
playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 100 2 1
execute if entity @e[type=armor_stand,tag=Teleporter2] at @s run tellraw @s {"text":"テレポーター2 は既に設置済みです","color": "red"}
execute unless entity @e[type=armor_stand,tag=Teleporter2] run tellraw @s {"text":"テレポーター2 を設置した","color": "yellow"}
execute unless entity @e[type=armor_stand,tag=Teleporter2] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Teleporter","Teleporter2"]}
clear @s red_stained_glass{CustomModelData:2}
execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] run loot replace entity @s inventory.22 loot maw:item/ability/trickster/enable
