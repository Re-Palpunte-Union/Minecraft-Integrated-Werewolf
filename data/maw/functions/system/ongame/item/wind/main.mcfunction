#最大チャージじゃないアマスタ
execute as @a[scores={UsedBow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:green_dye",tag:{CustomModelData:Wind}}]}] at @s if entity @e[type=minecraft:arrow,limit=1,distance=..5,sort=nearest,nbt={inGround:false,crit:0b}] positioned ~ ~1 ~ run function maw:system/ongame/item/wind/no_crit
#最大チャージアマスタ
execute as @a[scores={UsedBow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:green_dye",tag:{CustomModelData:Wind}}]}] at @s if entity @e[type=minecraft:arrow,limit=1,distance=..5,sort=nearest,nbt={inGround:false,crit:1b}] positioned ~ ~1 ~ run function maw:system/ongame/item/wind/no_crit

#スキルアマスタ
execute as @e[tag=Skill] run scoreboard players add @s SkillTime 1
execute as @e[type=slime,tag=Skill,scores={SkillTime=40..}] run tp @s ~ -100 ~
execute as @e[tag=Skill,scores={SkillTime=40..}] run effect clear @a[distance=..3] slow_falling
execute as @e[tag=Skill,scores={SkillTime=40..}] run kill @s

#最大チャージじゃないアマスタを視点の方向にtp
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=!crit] at @s run tp @s ^ ^ ^1
#最大チャージアマスタを視点の方向にtp
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=crit] at @s run tp @s ^ ^ ^2

#アマスタの近くの人をtpさせる
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=!crit] at @s if block ^ ^ ^1 #maw:no_collision run tp @a[distance=..2,scores={DeathCount=0}] ^ ^ ^1
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=!crit] at @s if block ^ ^ ^1 #maw:no_collision run effect give @a[distance=..2,scores={DeathCount=0}] slow_falling 1 0 true
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=!crit] at @s unless block ^ ^ ^1 #maw:no_collision run effect clear @a[distance=..2] slow_falling
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=!crit] at @s unless block ^ ^ ^1 #maw:no_collision run kill @s
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=crit] at @s if block ^ ^ ^3 #maw:no_collision run tp @a[distance=..3,scores={DeathCount=0}] ^ ^ ^3
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=crit] at @s if block ^ ^ ^3 #maw:no_collision run effect give @a[distance=..3,scores={DeathCount=0}] slow_falling 1 0 true
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=crit] at @s unless block ^ ^ ^3 #maw:no_collision run effect clear @a[distance=..3] slow_falling
execute as @e[type=minecraft:armor_stand,tag=Slash,tag=crit] at @s unless block ^ ^ ^3 #maw:no_collision run kill @s

#パーティクル&サウンド
execute at @e[type=minecraft:armor_stand,tag=Slash] run particle minecraft:sweep_attack ~ ~1 ~ 1 0.3 1 0 10

execute at @e[type=minecraft:armor_stand,tag=Slash] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.05 2
