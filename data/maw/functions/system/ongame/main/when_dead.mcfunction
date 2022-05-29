execute if entity @s[scores={Lovers=1..}] as @a[scores={DeathCount=0,Lovers=1..}] run function maw:system/ongame/role/lovers/death

execute if entity @s[tag=ToLoving] as @a[scores={DeathCount=0,CurrentRole=20},tag=UnilateralLover] run function maw:system/ongame/role/unilateral_lover/self_death

execute as @s[scores={Phantom=100}] run function maw:system/ongame/role/phantom/phantom

execute as @s[tag=Doll] run function maw:system/ongame/role/dollmaker/kill

execute at @s run summon armor_stand ~ ~ ~ {Marker:1,Tags:["Corpses"],Silent:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:5,Unbreakable:1,display:{color:2883328}}},{id:"minecraft:leather_leggings",Count:1b,tag:{CustomModelData:5,Unbreakable:1,display:{color:2883328}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:5,Unbreakable:1,display:{color:2883328}}},{}],NoBasePlate:true,ShowArms:true}
execute as @s[nbt=!{ActiveEffects:[{Id:14b}]}] at @s run loot replace entity @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] armor.head loot maw:item/head_copy
execute as @s[nbt={ActiveEffects:[{Id:14b}]}] at @s run loot replace entity @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] armor.head loot minecraft:blocks/player_head
execute at @s run scoreboard players operation @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] PlayerNumber = @s PlayerNumber
execute at @s run tp @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] @s
gamemode spectator @s

execute if entity @s[scores={Client=1}] run function maw:system/ongame/role/lawyer/dead_client

execute as @s[scores={TeamWerewolf=1,Lovers=0}] run scoreboard players remove #maw WolfCount 1
execute as @s[scores={TeamVillager=1,Lovers=0}] run scoreboard players remove #maw VillageCount 1
execute as @s[scores={TeamVillager=0,TeamWerewolf=0,Lovers=0},tag=!Psychopath] run scoreboard players remove #maw VillageCount 1
execute as @s[scores={CurrentRole=21}] run scoreboard players remove #maw PsychopathCount 1
execute as @s[scores={Lovers=1..}] run scoreboard players remove #maw LoversCount 1
execute as @s[tag=!Douse] run scoreboard players remove #maw DouseCount 1
execute as @s[tag=!Infect,tag=!PlagueDoctor] run scoreboard players remove #maw InfectCount 1

execute if entity @a[scores={TeamVillager=1..,KillCount=1..}] as @a[scores={CurrentRole=16}] run function maw:system/finish/winner/jester
execute as @a[scores={KillCount=1..}] if entity @a[scores={CurrentRole=17}] run function maw:system/ongame/role/plague_doctor/infect
execute if score #maw WolfCount matches 1.. if score #maw VillageCount matches 1.. as @s[tag=Result] run function maw:system/finish/result

scoreboard players set @s DeathCount 2