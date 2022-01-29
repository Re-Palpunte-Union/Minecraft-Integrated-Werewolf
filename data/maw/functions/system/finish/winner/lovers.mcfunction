execute unless entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title {"text":"恋人の勝利","color": "#e839b9"}
execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title [{"text":"恋人&","color": "#e839b9"},{"text":"追跡者","color": "#869919"},{"text":"の勝利","color": "#e839b9"}]

tag @a[scores={Lovers=1..2}] add Winner
tag @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] add Winner

playsound entity.dolphin.death master @a[tag=!Winner] ~ ~ ~ 1 0 1

function maw:system/finish/end