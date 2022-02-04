execute at @e[type=armor_stand,tag=Teleporter] run particle portal ~ ~1 ~ 0.5 0.5 0.5 1 20 force @a[scores={CurrentRole=19}]

## テレポーター1
execute as @a[scores={CurrentRole=19,Teleporter1=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:20b,tag:{CustomModelData:1}}]}] run scoreboard players set @s Teleporter1 1
execute as @a[scores={CurrentRole=19,Teleporter1=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:red_stained_glass",Slot:20b,tag:{CustomModelData:1}}]}] run scoreboard players set @s Teleporter1 0
execute as @a[scores={CurrentRole=19,Teleporter1=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/disable/teleporter/disable/teleporter1

execute as @a[scores={CurrentRole=19,Teleporter1=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:20b,tag:{CustomModelData:1}}]}] run loot replace entity @s inventory.11 loot maw:item/ability/trickster/disable/teleporter1

## テレポーター2
execute as @a[scores={CurrentRole=19,Teleporter2=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:22b,tag:{CustomModelData:2}}]}] run scoreboard players set @s Teleporter2 1
execute as @a[scores={CurrentRole=19,Teleporter2=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:red_stained_glass",Slot:22b,tag:{CustomModelData:2}}]}] run scoreboard players set @s Teleporter2 0
execute as @a[scores={CurrentRole=19,Teleporter2=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/disable/teleporter/disable/teleporter2

execute as @a[scores={CurrentRole=19,Teleporter2=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:22b,tag:{CustomModelData:2}}]}] run loot replace entity @s inventory.13 loot maw:item/ability/trickster/disable/teleporter2

## テレポーター3
execute as @a[scores={CurrentRole=19,Teleporter3=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:24b,tag:{CustomModelData:3}}]}] run scoreboard players set @s Teleporter3 1
execute as @a[scores={CurrentRole=19,Teleporter3=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:red_stained_glass",Slot:24b,tag:{CustomModelData:3}}]}] run scoreboard players set @s Teleporter3 0
execute as @a[scores={CurrentRole=19,Teleporter3=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/disable/teleporter/disable/teleporter3

execute as @a[scores={CurrentRole=19,Teleporter3=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:24b,tag:{CustomModelData:3}}]}] run loot replace entity @s inventory.15 loot maw:item/ability/trickster/disable/teleporter3

## 有効化
execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] as @a[scores={CurrentRole=19,enable=0,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:pink_concrete",Slot:31b,tag:{CustomModelData:5}}]}] run scoreboard players set @s enable 1
execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] as @a[scores={CurrentRole=19,enable=0,DeathCount=0},nbt={Inventory:[{id:"minecraft:pink_concrete",Slot:31b,tag:{CustomModelData:5}}]}] run scoreboard players set @s enable 0
execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] as @a[scores={CurrentRole=19,enable=1..,DeathCount=0}] run loot replace entity @s inventory.22 loot maw:item/ability/trickster/enable/light_down
execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] as @a[scores={CurrentRole=19,enable=1..,DeathCount=0}] run function maw:system/ongame/role/trickster/disable/enable

execute if entity @e[type=armor_stand,tag=Teleporter1] if entity @e[type=armor_stand,tag=Teleporter2] if entity @e[type=armor_stand,tag=Teleporter3] as @a[scores={CurrentRole=19,DeathCount=0},nbt=!{Inventory:[{id:"minecraft:pink_concrete",Slot:31b,tag:{CustomModelData:5}}]}] run loot replace entity @s inventory.22 loot maw:item/ability/trickster/enable
