execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={CurrentRole=10}] at @s run title @s actionbar [{"text":"オイルを塗っていないプレイヤー  :  ","bold":true},{"selector":"@a[scores={DeathCount=0},tag=!Douse]","color":"gold"}]

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={CurrentRole=10,UsedCStick=1..}] at @s if entity @a[sort=nearest,limit=1,distance=1..10,scores={DeathCount=0},tag=!Douse] run function maw:system/ongame/role/arsonist/used

execute unless entity @a[tag=!Douse,scores={DeathCount=0}] if score #maw DouseCount matches ..0 as @a[scores={CurrentRole=10,DeathCount=0}] run function maw:system/ongame/role/arsonist/to_ignite
