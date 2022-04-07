scoreboard players add #maw second 1
execute if score #maw glowtime matches 0 run scoreboard players set #maw glowtime 300
execute if score #maw second matches 600.. run scoreboard players remove #maw glowtime 1
scoreboard players set #maw tick 0

execute if score #maw glowtime matches 0 run effect give @a[scores={CurrentRole=1..,DeathCount=0},gamemode=!spectator] glowing 5 0 true

execute if score #maw second matches 600 run bossbar set information visible true
execute if score #maw second matches 600 run bossbar set information color yellow
execute if score #maw second matches 600 run playsound block.anvil.place master @a ~ ~ ~ 1 1 1
execute if score #maw second matches 600 run bossbar set information max 300
execute if score #maw second matches 600 run tellraw @a [{"text":"[通達] ","color": "green"},{"text":"ゲーム開始から10分が経過しました","color": "white","bold": false}]
execute if score #maw second matches 600 run tellraw @a [{"text":"       これから5分ごとに生存者が発光します","color": "white"}]
execute if score #maw second matches 600 as @a[scores={CurrentRole=2,TeamWerewolf=2}] run tellraw @s [{"text":"       人狼の名前が書かれた本が配布されました","color": "red","underlined": true}]
execute if score #maw second matches 600 as @a[scores={CurrentRole=2,TeamWerewolf=2}] run loot give @s loot maw:item/books/werewolf/known_werewolf
