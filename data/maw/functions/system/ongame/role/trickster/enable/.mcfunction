execute at @e[type=armor_stand,tag=Teleporter] run particle portal ~ ~1 ~ 0.5 0.5 0.5 1 20

## テレポーター1
execute at @e[type=armor_stand,tag=Teleporter1] as @a[scores={CurrentRole=19,Teleporter1=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_concrete",Slot:20b,tag:{CustomModelData:1}}]}] run scoreboard players set @s Teleporter1 1
execute as @a[scores={CurrentRole=19,Teleporter1=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:red_concrete",Slot:20b,tag:{CustomModelData:1}}]}] run scoreboard players set @s Teleporter1 0
execute at @e[type=armor_stand,tag=Teleporter1] as @a[scores={CurrentRole=19,Teleporter1=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/enable/teleporter/teleporter1

execute as @a[scores={CurrentRole=19,Teleporter1=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_concrete",Slot:20b,tag:{CustomModelData:1}}]}] run loot replace entity @s inventory.11 loot maw:item/ability/trickster/enable/teleporter1

## テレポーター2
execute as @a[scores={CurrentRole=19,Teleporter2=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_concrete",Slot:22b,tag:{CustomModelData:2}}]}] run scoreboard players set @s Teleporter2 1
execute as @a[scores={CurrentRole=19,Teleporter2=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:red_concrete",Slot:22b,tag:{CustomModelData:2}}]}] run scoreboard players set @s Teleporter2 0
execute at @e[type=armor_stand,tag=Teleporter2] as @a[scores={CurrentRole=19,Teleporter2=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/enable/teleporter/teleporter2

execute as @a[scores={CurrentRole=19,Teleporter2=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_concrete",Slot:22b,tag:{CustomModelData:2}}]}] run loot replace entity @s inventory.13 loot maw:item/ability/trickster/enable/teleporter2

## テレポーター3
execute as @a[scores={CurrentRole=19,Teleporter3=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_concrete",Slot:24b,tag:{CustomModelData:3}}]}] run scoreboard players set @s Teleporter3 1
execute as @a[scores={CurrentRole=19,Teleporter3=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:red_concrete",Slot:24b,tag:{CustomModelData:3}}]}] run scoreboard players set @s Teleporter3 0
execute at @e[type=armor_stand,tag=Teleporter3] as @a[scores={CurrentRole=19,Teleporter3=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/enable/teleporter/teleporter3

execute as @a[scores={CurrentRole=19,Teleporter3=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_concrete",Slot:24b,tag:{CustomModelData:3}}]}] run loot replace entity @s inventory.15 loot maw:item/ability/trickster/enable/teleporter3

## テレポート
execute at @e[type=armor_stand,tag=Teleporter1,limit=1] run tp @a[tag=to1] ~ ~ ~
tag @a[tag=to1] remove to1

execute at @e[type=armor_stand,tag=Teleporter2,limit=1] run tp @a[tag=to2] ~ ~ ~
tag @a[tag=to2] remove to2

execute at @e[type=armor_stand,tag=Teleporter3,limit=1] run tp @a[tag=to3] ~ ~ ~
tag @a[tag=to3] remove to3

## 強制停電
execute as @a[scores={CurrentRole=19,DeathCount=0,CoolDown=1..}] run title @s actionbar [{"text":"強制停電使用可能まで 残り "},{"score":{"name":"@s","objective":"CoolDown"},"color":"light_purple"}]
execute as @a[scores={CurrentRole=19,DeathCount=0,CoolDown=1}] run title @s actionbar [{"text":"強制停電使用可能","color": "light_purple","underlined": true}]
execute as @a[scores={CurrentRole=19,DeathCount=0,CoolDown=1}] run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
execute as @a[scores={CurrentRole=19,DeathCount=0,CoolDown=1}] run loot replace entity @s inventory.22 loot maw:item/ability/trickster/enable/light_down

execute as @a[scores={CurrentRole=19,LightsDown=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:redstone_lamp",Slot:31b,tag:{CustomModelData:5}}]}] run scoreboard players set @s LightsDown 1
execute as @a[scores={CurrentRole=19,LightsDown=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:redstone_lamp",Slot:31b,tag:{CustomModelData:5}}]}] run scoreboard players set @s LightsDown 0
execute as @a[scores={CurrentRole=19,LightsDown=1..,DeathCount=0}] run clear @s redstone_lamp{CustomModelData:5}
execute if score #Trickster LightsDown matches 0 as @a[scores={CurrentRole=19,LightsDown=1..,CoolDown=0,DeathCount=0}] run playsound minecraft:entity.player.levelup master @a[scores={TeamWerewolf=1}] ~ ~ ~ 100 0 1
execute if score #Trickster LightsDown matches 0 as @a[scores={CurrentRole=19,LightsDown=1..,CoolDown=0,DeathCount=0}] run scoreboard players set #Trickster LightsDown 200
execute as @a[scores={CurrentRole=19,LightsDown=1..,DeathCount=0}] run scoreboard players set @s LightsDown 0

execute as @a[scores={CurrentRole=19,CoolDown=1..}] run scoreboard players remove @s CoolDown 1

execute as @a[scores={CurrentRole=19,LightsDown=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:redstone_lamp",Slot:31b,tag:{CustomModelData:5}}]}] run loot replace entity @s inventory.22 loot maw:item/ability/trickster/enable/light_down_cool

execute if score #Trickster LightsDown matches 1.. run function maw:system/ongame/role/trickster/enable/lights_down
