scoreboard players set @s Teleporter2 0
execute as @s[distance=..3] run tag @s add to3
execute as @s[distance=3.1..] run tellraw @s {"text":"テレポーターから離れすぎているため使用できません"}
clear @s red_concrete{CustomModelData:2}
execute as @s[distance=..3] run effect give @s invisibility 1 0 true
execute as @s[distance=..3] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1 1
