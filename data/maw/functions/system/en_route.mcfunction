## Log-in midtime of all game
execute if score #maw Phase matches 1.. run scoreboard players add @a CurrentRole 0
execute if score #maw Phase matches 1.. run gamemode spectator @a[scores={CurrentRole=0}]
execute if score #maw Phase matches 1.. run gamemode spectator @a[team=!maw]
execute if score #maw Phase matches 1.. run bossbar set information players @a
execute if score #maw Phase matches 1.. run bossbar set time players @a
#透明化
effect give @a[scores={CurrentRole=0}] invisibility 1 0 true
#恋人表示
execute at @a[scores={Lovers=1..2,DeathCount=0}] run particle dust 0.8 0 1 1 ~ ~2.3 ~ 0 0 0 0 5 force @a[scores={CurrentRole=0}]
execute at @a[scores={Lovers=1..2,DeathCount=0}] run particle dust 0.8 0 1 1 ~ ~2.3 ~ 0 0 0 0 5 force @a[team=!maw]
#依頼人表示
execute at @a[scores={Client=1,DeathCount=0}] run particle dust 0.459 0.761 0.212 1 ~ ~2 ~ 0 0 0 0 5 force @a[scores={CurrentRole=0}]
execute at @a[scores={Client=1,DeathCount=0}] run particle dust 0.459 0.761 0.212 1 ~ ~2 ~ 0 0 0 0 5 force @a[team=!maw]
