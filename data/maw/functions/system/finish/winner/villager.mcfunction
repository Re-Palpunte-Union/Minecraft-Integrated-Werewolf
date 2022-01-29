execute unless entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title {"text":"村人陣営の勝利","color": "green"}
execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title [{"text":"村人陣営&","color": "green"},{"text":"追跡者","color": "#869919"},{"text":"の勝利","color": "green"}]

tag @a[scores={TeamVillager=1}] add Winner
tag @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] add Winner

playsound block.portal.travel master @a[tag=!Winner] ~ ~ ~ 0.7 2 0.7

function maw:system/finish/end
