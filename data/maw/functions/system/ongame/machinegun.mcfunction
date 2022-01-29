execute run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 1

execute positioned ~ ~1.5 ~ run summon arrow ^ ^ ^-0.5 {Color:-1,life:1000,Tags:["mal-bullet","mal-m19"],damage:10,crit:1b}

execute store result score @s mal-x run data get entity @s Pos[0] 100
execute store result score @s mal-y run data get entity @s Pos[1] 100
execute store result score @s mal-z run data get entity @s Pos[2] 100

execute as @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] store result score @s mal-x run data get entity @s Pos[0] 100
execute as @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] store result score @s mal-y run data get entity @s Pos[1] 100
execute as @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] store result score @s mal-z run data get entity @s Pos[2] 100

scoreboard players set @s mal-eye 150
scoreboard players operation @s mal-y += @s mal-eye

scoreboard players operation @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] mal-x -= @s mal-x
scoreboard players operation @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] mal-y -= @s mal-y
scoreboard players operation @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] mal-z -= @s mal-z

execute as @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] store result entity @s Motion[0] double -0.03 run scoreboard players get @s mal-x
execute as @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] store result entity @s Motion[1] double -0.03 run scoreboard players get @s mal-y
execute as @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] store result entity @s Motion[2] double -0.03 run scoreboard players get @s mal-z
scoreboard players set @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] FireCross 100
tag @e[tag=!mal-bset,limit=1,distance=..3,type=arrow,nbt={inGround:0b}] add mal-bset
scoreboard players remove @e[tag=mal-bset,type=arrow,nbt={inGround:1b}] FireCross 1
kill @e[tag=mal-bset,type=arrow,nbt={inGround:1b},scores={FireCross=0}]