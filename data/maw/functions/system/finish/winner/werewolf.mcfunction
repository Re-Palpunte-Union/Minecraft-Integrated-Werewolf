#ペスト医師
scoreboard players set #maw InfectCount 100

tag @a[scores={CurrentRole=9}] add Lawyer

execute unless entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title {"text":"人狼陣営の勝利","color": "red"}
execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title [{"text":"人狼陣営&","color": "red"},{"text":"追跡者","color": "#869919"},{"text":"の勝利","color": "red"}]
execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=0}] if entity @a[scores={Client=1,DeathCount=0}] run function maw:system/finish/winner/lawyer/thief_win
execute if entity @a[scores={CurrentRole=9,DeathCount=2..,Pursuer=0}] if entity @a[scores={Client=1,DeathCount=0}] run function maw:system/finish/winner/lawyer/together_win

tag @a[scores={TeamWerewolf=1..2}] add Winner
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run tag @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] add Winner
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run execute as @a[scores={CurrentRole=9,DeathCount=2..,Pursuer=0}] if entity @a[scores={Client=1,DeathCount=0}] run tag @s add Winner
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run execute as @a[scores={CurrentRole=9,DeathCount=0,Pursuer=0}] if entity @a[scores={Client=1,DeathCount=0}] run tag @s add Winner
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=0}] as @a[scores={Client=1,DeathCount=0}] run tag @s remove Winner

execute unless entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=0}] run playsound entity.wolf.howl master @a[tag=!Winner] ~ ~ ~ 100 1 1

function maw:system/finish/end
