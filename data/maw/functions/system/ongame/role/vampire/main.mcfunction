#キル対象の表示
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] actionbar [{"text":"キル対象  :  ","bold":true},{"selector":"@s","color":"dark_red"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] unless entity @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] actionbar [{"text":"キル対象がいません","color":"dark_red","bold":true}]
#噛む
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15,UsedCStick=1..}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run function maw:system/ongame/role/vampire/bite
#死亡までの時間を減らす
execute as @a[scores={BiteCount=1..200}] run scoreboard players remove @s BiteCount 1
#残りどれくらいで死ぬか表示
execute as @a[scores={BiteCount=0..200}] run title @a[scores={CurrentRole=15}] actionbar [{"translate":"%s  :  残り %s Tickで死亡 %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective": "BiteCount"}},{"text":"(20Tick=1s)","bold": false,"color": "white"}],"bold":true,"color":"dark_red"}]
#死亡
execute as @a[scores={BiteCount=0}] run function maw:system/ongame/role/vampire/kill
