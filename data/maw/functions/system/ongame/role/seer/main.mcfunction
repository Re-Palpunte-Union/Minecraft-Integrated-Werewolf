scoreboard players enable @a[scores={CurrentRole=3,seer=0}] seer

execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=3},limit=1] seer run tag @s add seer

execute if entity @a[scores={CurrentRole=3,seer=1..}] as @a[tag=seer] run function maw:system/ongame/role/seer/result