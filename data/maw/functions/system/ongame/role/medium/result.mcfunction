execute as @s[scores={DeathCount=1..}] run function maw:system/ongame/role/medium/result/dead

execute as @s[scores={DeathCount=0}] run function maw:system/ongame/role/medium/result/alive

tag @a remove medium

clear @a[scores={CurrentRole=4,medium=1..}] written_book{CustomModelData:5,title:"霊媒師の能力本"} 1

scoreboard players set @a[scores={medium=1..}] RoleDone 1
scoreboard players reset @a[scores={medium=1..}] medium