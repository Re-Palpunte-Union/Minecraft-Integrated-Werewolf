#ペスト医師
scoreboard players set #maw InfectCount 100

title @a title {"text":"420 BLAZE IT","color": "#ee702e"}
execute at @a[tag=Douse] run particle flame ~ ~ ~ 2 2 2 0.1 1000
tag @s remove Douse
playsound custom.role.kill master @s ~ ~ ~ 1 1 1
playsound custom.role.be_killed master @a[tag=Douse,scores={DeathCount=0}] ~ ~ ~ 0.5 1 0.5
playsound entity.blaze.shoot master @a ~ ~ ~ 1 0 1
scoreboard players set #maw WolfCount 100
scoreboard players set #maw VillageCount 100
kill @a[tag=Douse,scores={DeathCount=0}]
clear @a 
tag @s add Winner

schedule function maw:system/finish/winner/arsonist 0.5s