execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] run title @a times 15 1000 15
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] run title @a title {"text":"タイムロード中...","color":"#0028f5"}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] run scoreboard players set #maw RewindTime 40
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] as @a[scores={PlayerNumber=1..,CurrentRole=1..},tag=!CouldNotRevive] at @s run summon armor_stand ~ ~ ~ {Tags:["RewindTime"],Invulnerable:1,NoGravity:1,Silent:1}
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] as @a[scores={PlayerNumber=1..,CurrentRole=1..},tag=!CouldNotRevive] at @s run loot replace entity @e[type=armor_stand,tag=RewindTime,sort=nearest,limit=1,distance=..1] armor.head loot maw:item/head_copy
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] as @a[scores={PlayerNumber=1..,CurrentRole=1..},tag=!CouldNotRevive] at @s run scoreboard players operation @e[tag=RewindTime,limit=1,sort=nearest,distance=..0.5] PlayerNumber = @s PlayerNumber

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={CurrentRole=11,UsedCStick=1..}] run clear @s carrot_on_a_stick{CustomModelData:7} 1

execute as @a[scores={tick=0..200,DeathCount=1..}] run scoreboard players add @s tick 1
execute as @a[scores={tick=100,DeathCount=1..}] run tag @s add CouldNotRevive
execute as @a[scores={tick=100,DeathCount=1..}] run scoreboard players set @s tick 1000

execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} unless score #maw RewindTime matches 1.. unless score #maw RewindTime matches -1 as @a[scores={PlayerNumber=1..,CurrentRole=1..},tag=!CouldNotRevive] run function maw:system/ongame/role/timeload/save

execute as @a run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Pos[-200]
execute as @a run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Rotation[-200]

execute if score #maw RewindTime matches 1.. run scoreboard players remove #maw RewindTime 1

execute if score #maw RewindTime matches 1.. as @a[scores={PlayerNumber=1..,CurrentRole=1..},tag=!CouldNotRevive] at @s run function maw:system/ongame/role/timeload/rewind

execute if score #maw RewindTime matches 0 run function maw:system/ongame/role/timeload/end