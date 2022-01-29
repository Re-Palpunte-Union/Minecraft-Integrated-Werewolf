playsound custom.role.kill master @a ~ ~ ~ 1 1 1
tag @a[tag=Guess] remove Guess

scoreboard players set @a[scores={RoleDone=0,CurrentRole=8,GuessRole=1..}] RoleDone 1
scoreboard players reset @a[scores={CurrentRole=8,GuessRole=1..}] GuessRole