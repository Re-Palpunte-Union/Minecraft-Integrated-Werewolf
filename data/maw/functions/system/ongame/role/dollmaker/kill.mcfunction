playsound custom.role.be_killed master @s[scores={DeathCount=0}] ~ ~ ~ 0.5 1 0.5
scoreboard players set @a[scores={CurrentRole=12,DollMaker=1},tag=DollMaker] KillCount 1
kill @s[scores={DeathCount=0}]
playsound custom.role.kill master @a[scores={CurrentRole=12,DollMaker=1},tag=DollMaker] ~ ~ ~ 1 1 1
tag @s remove Doll
scoreboard players set @s[tag=!DollMaker] DollMaker 0
loot give @a[scores={CurrentRole=12,DollMaker=1},tag=DollMaker] loot maw:item/ability/dollmaker_wax