#アマスタの向き変更
tp @e[type=minecraft:armor_stand,tag=Slash,distance=...1,limit=9] ^ ^ ^3 facing entity @s

tp @e[type=minecraft:armor_stand,tag=Slash,tag=1] ^ ^ ^3 ~ ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=2] ^ ^ ^3 ~45 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=3] ^ ^ ^3 ~-45 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=4] ^ ^ ^3 ~35 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=5] ^ ^ ^3 ~-35 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=6] ^ ^ ^3 ~23 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=7] ^ ^ ^3 ~-23 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=8] ^ ^ ^3 ~12 ~0
tp @e[type=minecraft:armor_stand,tag=Slash,tag=9] ^ ^ ^3 ~-12 ~0

#発射した矢キル
execute at @a[scores={UsedBow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:green_dye",tag:{CustomModelData:Wind}}]}] run kill @e[type=minecraft:arrow,nbt={inGround:false},limit=1,distance=..5,sort=nearest]

scoreboard players remove @s CountDown 1
title @s actionbar [{"text":"残り使用可能回数 : "},{"score":{"name": "@s","objective": "CountDown"},"color": "green"}]
execute if score @s CountDown matches 0 run clear @s green_dye{CustomModelData:Wind}
