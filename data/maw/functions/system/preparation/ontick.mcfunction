execute as @a[scores={CurrentRole=1..}] at @s run tp @s @s

## Phantom
scoreboard players enable @a[scores={CurrentRole=7,Phantom=0}] Phantom
execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=7},limit=1] Phantom run tag @s add Phantom
execute as @a[tag=Phantom] unless score @s PlayerNumber = @s Phantom run tellraw @a[scores={CurrentRole=7,Phantom=1..}] [{"translate":" %sにとりつきました","with":[{"selector":"@s"}]}]
execute as @a[tag=Phantom] unless score @s PlayerNumber = @s Phantom run scoreboard players set @s Phantom 100
execute as @a[tag=Phantom] if score @s PlayerNumber = @s Phantom run tellraw @s " 自分にとりつくことはできません"
execute as @a[tag=Phantom] if score @s PlayerNumber = @s Phantom run scoreboard players set @s Phantom 0

tag @a remove Phantom

execute as @a[scores={CurrentRole=7}] unless score @s Phantom matches 0 run function maw:system/preparation/change_to_2

effect give @a[gamemode=!spectator] resistance 1000000 6 true
effect give @a[gamemode=!spectator] blindness 1000000 0 true
effect give @a[gamemode=!spectator] slowness 1000000 100 true
effect give @a[gamemode=!spectator] weakness 1000000 100 true