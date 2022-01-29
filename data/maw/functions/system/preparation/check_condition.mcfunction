scoreboard objectives add PlayerNumber dummy
scoreboard players set @a[gamemode=!spectator] PlayerNumber 0
execute as @a[gamemode=!spectator] store result score @s PlayerNumber if entity @a[scores={PlayerNumber=0}]
execute as @a[scores={PlayerNumber=1..},gamemode=!spectator] run scoreboard players add #maw PlayerNumber 1
execute unless entity @a[scores={PlayerNumber=1..},gamemode=!spectator] run scoreboard players set #maw PlayerNumber 0
execute if entity @a[tag=Tester] run scoreboard players set #maw PlayerNumber 8
execute if score #maw PlayerNumber matches ..5 run function maw:system/finish/error_start/player
execute if score #maw PlayerNumber matches 6.. run function maw:system/preparation/start
