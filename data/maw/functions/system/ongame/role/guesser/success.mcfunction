execute unless score @s PlayerNumber = @a[scores={CurrentRole=8,GuessRole=1..,DeathCount=0},limit=1] PlayerNumber run tellraw @a [{"translate":" %sがゲッサーの能力で死んだ","with":[{"selector":"@s"}],"color": "light_purple"}]

execute unless score @s PlayerNumber = @a[scores={CurrentRole=8,GuessRole=1..,DeathCount=0},limit=1] PlayerNumber run playsound custom.role.be_killed master @s[scores={DeathCount=0}] ~ ~ ~ 0.5 1 0.5
execute unless score @s PlayerNumber = @a[scores={CurrentRole=8,GuessRole=1..,DeathCount=0},limit=1] PlayerNumber run kill @s[scores={DeathCount=0}]

function maw:system/ongame/role/guesser/end
