execute unless entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title {"text":"ペスト医師の勝利","color": "#ffc000"}
execute if entity @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] run title @a title [{"text":"ペスト医師&","color": "#ffc000"},{"text":"追跡者","color": "#869919"},{"text":"の勝利","color": "#ffc000"}]

tag @a[scores={CurrentRole=17}] add Winner
tag @a[scores={CurrentRole=9,DeathCount=0,Pursuer=1}] add Winner

playsound custom.role.victory.neutral master @a ~ ~ ~ 0.5 1 0.5

function maw:system/finish/end
