scoreboard players add #maw second 1
execute if score #maw Phase matches 3 if score #maw glowtime matches 0 run scoreboard players set #maw glowtime 300
execute if score #maw Phase matches 3 if score #maw second matches 600.. run scoreboard players remove #maw glowtime 1
execute if score #maw Phase matches 3 if score #maw second matches 600.. run bossbar set information name {"translate":"次の発光まで残り %s 秒","with":[{"score":{"name":"#maw","objective": "glowtime"},"color": "light_purple"}]}
scoreboard players set #maw tick 0

execute if score #maw Phase matches 3 if score #maw glowtime matches 0 run effect give @a[scores={CurrentRole=1..,DeathCount=0},gamemode=!spectator] glowing 5 0 true

execute if score #maw Phase matches 3 if score #maw second matches 600 run bossbar set information visible true
execute if score #maw Phase matches 3 if score #maw second matches 600 run playsound block.anvil.place master @a ~ ~ ~ 1 1 1
execute if score #maw Phase matches 3 if score #maw second matches 600 run bossbar set information max 300
execute if score #maw Phase matches 3 if score #maw second matches 600 run tellraw @a [{"text":"[通達] ","color": "green"},{"text":"ゲーム開始から10分が経過しました","color": "white","bold": false}]
execute if score #maw Phase matches 3 if score #maw second matches 600 run tellraw @a [{"text":"       これから5分ごとに生存者が発光します","color": "white"}]
