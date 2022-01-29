execute unless entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title {"text":"ジェスターの勝利","color": "#ec62a5"}
title @a subtitle [{"translate":"(%s)","with": [{"selector": "@s","color": "#ec62a5"}]}]
execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title [{"text":"ジェスター&","color": "#ec62a5"},{"text":"追跡者","color": "#869919"},{"text":"の勝利","color": "#ec62a5"}]

tag @s add Winner
tag @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] add Winner



playsound custom.role.victory.neutral master @a ~ ~ ~ 0.5 1 0.5

function maw:system/finish/end