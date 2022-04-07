scoreboard players add @s Corpses 1

execute as @s[scores={Corpses=2000}] run data modify entity @s ArmorItems[0].tag.display.color set value 14286592
execute as @s[scores={Corpses=2000}] run data modify entity @s ArmorItems[1].tag.display.color set value 14286592
execute as @s[scores={Corpses=2000}] run data modify entity @s ArmorItems[2].tag.display.color set value 14286592

execute as @s[scores={Corpses=4000}] run data modify entity @s ArmorItems[0].tag.display.color set value 16711680
execute as @s[scores={Corpses=4000}] run data modify entity @s ArmorItems[1].tag.display.color set value 16711680
execute as @s[scores={Corpses=4000}] run data modify entity @s ArmorItems[2].tag.display.color set value 16711680

execute at @s[scores={Corpses=6000}] run particle smoke ~ ~1 ~ 0.2 0.2 0.2 0.1 100
execute at @s[scores={Corpses=6000}] run particle poof ~ ~1 ~ 0.2 0.2 0.2 0.1 100
execute at @s[scores={Corpses=6000}] run playsound block.fire.extinguish master @a ~ ~ ~ 2 1
execute as @s[scores={Corpses=6000}] run kill @s
