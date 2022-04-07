#誰かをキルしたら死体消しクールダウン
execute as @a[scores={CurrentRole=14,KillCount=1..}] run clear @s carrot_on_a_stick
execute as @a[scores={CurrentRole=14,KillCount=1..}] run schedule function maw:system/ongame/role/give_ability/cleaner 30s
#消せるか消せないか
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] as @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..5] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] actionbar [{"text":"死体消し  :  可能","bold":true,"color": "dark_red"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] unless entity @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..5] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] actionbar [{"text":"死体消し  :  不可能","bold":true}]
#死体消し
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14,UsedCStick=1..}] as @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..5] run function maw:system/ongame/role/cleaner/remove_corpses
