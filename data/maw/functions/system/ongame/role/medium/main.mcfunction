scoreboard players enable @a[scores={CurrentRole=4,RoleDone=0}] medium

execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=4},limit=1] medium run tag @s add medium

execute if entity @a[scores={CurrentRole=4,medium=1..}] as @a[tag=medium] run function maw:system/ongame/role/medium/result