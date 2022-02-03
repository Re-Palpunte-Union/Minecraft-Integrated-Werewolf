playsound custom.role.be_killed master @s[scores={DeathCount=0}] ~ ~ ~ 0.5 1 0.5
playsound custom.role.kill master @a[scores={CurrentRole=15}] ~ ~ ~ 1 1 1
scoreboard players set @a[scores={CurrentRole=15}] KillCount 1

title @a[scores={CurrentRole=15,DeathCount=0}] actionbar [{"translate":"%s を殺した！","with":[{"selector":"@s"}],"bold":true,"color":"dark_red"}]

kill @s[scores={DeathCount=0}]

scoreboard players reset @s BiteCount

loot give @a[scores={CurrentRole=15,DeathCount=0}] loot maw:item/ability/vampire_bite