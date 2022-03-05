scoreboard players enable @a[scores={CurrentRole=8,RoleDone=0,DeathCount=0}] Guess
scoreboard players enable @a[scores={CurrentRole=8,RoleDone=0,DeathCount=0}] GuessRole

function maw:system/ongame/role/guesser/select_player

execute as @a[scores={CurrentRole=1..},tag=Guess] if score @a[scores={CurrentRole=8,GuessRole=1..,DeathCount=0},limit=1] GuessRole = @s CurrentRole run function maw:system/ongame/role/guesser/success
execute as @a[scores={CurrentRole=8,GuessRole=1..,DeathCount=0}] unless score @s GuessRole = @a[scores={CurrentRole=1..},tag=Guess,limit=1] CurrentRole run function maw:system/ongame/role/guesser/failure
