## Guesser
execute if entity @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tag @a remove Guess
execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=8,DeathCount=0,Guess=1..},limit=1] Guess run tag @s add Guess

execute if entity @a[tag=Guess,scores={CurrentRole=1..}] run function maw:system/ongame/role/guesser/guessrole

scoreboard players reset @a[scores={Guess=1..}] Guess
