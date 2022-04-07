### 矢のパーティクル
execute if entity @a[tag=ShowArrowParticle] as @e[type=minecraft:arrow,nbt={inGround:false,crit:0b}] run data modify entity @s crit set value 1b
### 弓矢無効化
execute at @a[scores={UsedBow=1..},tag=DisableBow] positioned ^ ^ ^0.3 as @e[type=arrow,nbt={inGround:false},limit=1,sort=nearest] run data modify entity @s damage set value 0.5
### アイテムキル
kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:5}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{CustomModelData:-1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_concrete",tag:{CustomModelData:5}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp",tag:{CustomModelData:5}}}]
### 常時陣営設定
function maw:system/ongame/role/team
### 満腹度回復
effect give @a saturation 1000000 9 true