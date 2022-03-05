title @a reset

kill @e[tag=RewindTime]
execute as @a run function oh_my_dat:release
scoreboard players reset #maw RewindTime
gamemode adventure @a[tag=!CouldNotRevive,scores={DeathCount=0,CurrentRole=1..,PlayerNumber=1..}]