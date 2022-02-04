tellraw @a[scores={CurrentRole=7,DeathCount=0}] [{"text":"[通達] ","color": "green"},{"text":"とりつき先が死亡しました","color": "white","bold": false}]
tellraw @a[scores={CurrentRole=7,DeathCount=0}] [{"text":"       役職本を再配布しました","color": "white"}]

scoreboard players operation @a[scores={CurrentRole=7,DeathCount=0}] CurrentRole = @a[scores={Phantom=100}] CurrentRole
execute if score @s CurrentRole matches 8 if score @s EvilGuesser matches 1 run scoreboard players set @a[scores={PrevRole=7,CurrentRole=8,DeathCount=0}] EvilGuesser 1
execute if score @s CurrentRole matches 8 if score @s EvilGuesser matches 0 run scoreboard players set @a[scores={PrevRole=7,CurrentRole=8,DeathCount=0}] EvilGuesser 0

execute if score @s CurrentRole matches 19 run scoreboard players set @a[scores={PrevRole=7,CurrentRole=19,DeathCount=0}] CurrentRole 1

execute if score @s CurrentRole matches 9..10 if entity @a[scores={PrevRole=7,DeathCount=0}] run scoreboard players remove #maw VillageCount 1
execute if score @s TeamWerewolf matches 1..2 if entity @a[scores={PrevRole=7,DeathCount=0}] run scoreboard players remove #maw VillageCount 1
execute if score @s TeamWerewolf matches 1 if entity @a[scores={PrevRole=7,DeathCount=0}] run scoreboard players add #maw WolfCount 1

scoreboard players set @a[scores={PrevRole=7}] Spy 0

function maw:system/ongame/role/title

function maw:system/ongame/role/team

function maw:system/preparation/set/tags

loot give @a[scores={PrevRole=7,DeathCount=0}] loot maw:item/ability

execute as @a[scores={PrevRole=7,DeathCount=0}] run loot replace entity @s inventory.8 loot maw:item/lore
execute as @a[scores={PrevRole=7,DeathCount=0}] run loot replace entity @s inventory.17 loot maw:item/lovers_lore

loot give @a[scores={PrevRole=7,DeathCount=0}] loot maw:item/books
