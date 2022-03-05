tellraw @a [{"translate":" %sがゲッサーの能力で死んだ","with":[{"selector":"@s"}],"color": "light_purple"}]

playsound custom.role.be_killed master @s[scores={DeathCount=0}] ~ ~ ~ 0.5 1 0.5
kill @s[scores={DeathCount=0}]

function maw:system/ongame/role/guesser/end