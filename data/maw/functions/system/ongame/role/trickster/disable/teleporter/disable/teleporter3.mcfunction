scoreboard players set @s Teleporter3 0
playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 100 2 1
playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 100 2 1
execute if entity @e[type=armor_stand,tag=Teleporter3] at @s run tellraw @s {"text":"テレポーター3 は既に設置済みです","color": "red"}
execute unless entity @e[type=armor_stand,tag=Teleporter3] run tellraw @s {"text":"テレポーター3 を設置した","color": "yellow"}
execute unless entity @e[type=armor_stand,tag=Teleporter3] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Teleporter","Teleporter3"]}
clear @s red_stained_glass{CustomModelData:3}
execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] run loot replace entity @s inventory.22 loot maw:item/ability/trickster/enable

