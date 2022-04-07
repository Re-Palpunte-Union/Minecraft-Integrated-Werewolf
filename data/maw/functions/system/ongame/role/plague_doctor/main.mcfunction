execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}},scores={CurrentRole=17,UsedCStick=1..}] at @s if entity @a[sort=nearest,limit=1,distance=1..8,scores={DeathCount=0},tag=!Infect,tag=!PlagueDoctor] run function maw:system/ongame/role/plague_doctor/used
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{CustomModelData:5}}},scores={CurrentRole=17,DeathCount=0}] run title @s actionbar [{"translate":"感染者 : %s (残り : %s)","with":[{"selector":"@a[scores={DeathCount=0},tag=Infect,tag=!PlagueDoctor]","color":"#ffc000"},{"selector":"@a[scores={DeathCount=0},tag=!Infect,tag=!PlagueDoctor]","color":"#ffc000"}],"bold":true}]

execute as @a[tag=!Infect,tag=!PlagueDoctor,scores={DeathCount=0,InfectCount=100..}] run function maw:system/ongame/role/plague_doctor/infect
execute at @a[tag=Infect,scores={DeathCount=0}] as @a[tag=!Infect,tag=!PlagueDoctor,scores={DeathCount=0,InfectCount=0..100},distance=..7] run function maw:system/ongame/role/plague_doctor/add_infect

#感染者表示(Infect)
execute at @a[scores={DeathCount=0},tag=Infect,tag=!PlagueDoctor] run particle dust 1 0.816 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 10 force @a[scores={CurrentRole=17,DeathCount=0},tag=PlagueDoctor]
