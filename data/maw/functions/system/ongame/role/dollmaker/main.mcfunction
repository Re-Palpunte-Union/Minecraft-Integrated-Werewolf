#キル対象の表示
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"キル対象  :  ","bold":true},{"selector":"@s","color":"dark_red"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] unless entity @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"キル対象がいません","color":"dark_red","bold":true}]
#蠟人形化
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0},tag=!Doll] run function maw:system/ongame/role/dollmaker/wax
#蝋人形
execute as @a[tag=Doll,scores={DollMaker=0..900}] run scoreboard players add @s DollMaker 1
execute as @a[tag=Doll,scores={DollMaker=0..900,UsedBow=1..}] at @s run kill @e[type=arrow,nbt={inGround:false},distance=..5,limit=1,sort=nearest]
#execute as @a[tag=Doll,scores={DollMaker=0..900,Jump=1..}] at @s run tp @s @s
#execute as @a[tag=Doll,scores={DollMaker=0..900,Jump=1..}] at @s run tp @s ~ ~-0.4 ~ ~ ~

execute as @a[tag=Doll,scores={DollMaker=900..}] run function maw:system/ongame/role/dollmaker/kill
execute as @a[tag=Doll,scores={DeathCount=0}] at @s if entity @a[tag=!Doll,scores={DollMaker=0,DeathCount=0},distance=..4] run function maw:system/ongame/role/dollmaker/kill

execute if score #maw VillageCount matches ..1 if score #maw LoversCount matches ..0 as @a[tag=Doll,scores={DeathCount=0,TeamVillager=1}] run function maw:system/ongame/role/dollmaker/kill
execute if score #maw VillageCount matches ..0 if score #maw LoversCount matches 2 as @a[tag=Doll,scores={DeathCount=0,TeamVillager=1}] run function maw:system/ongame/role/dollmaker/kill

#狂人の任命
#任命対象の表示
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] as @a[sort=nearest,limit=1,distance=1..5,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"任命対象  :  ","bold":true},{"selector":"@s","color":"light_purple"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] unless entity @a[sort=nearest,limit=1,distance=1..5,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"任命対象がいません","color":"light_purple","bold":true}]
#任命
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] as @a[sort=nearest,limit=1,distance=1..5,scores={DeathCount=0}] run function maw:system/ongame/role/dollmaker/creat_madman
