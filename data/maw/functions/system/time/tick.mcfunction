execute if score #maw tick matches 0..19 run scoreboard players add #maw tick 1

execute if score #maw tick matches 20.. run function maw:system/time/second

## ボスバー
bossbar set time name {"translate":"経過時間 %s 秒","with":[{"score":{"name":"#maw","objective": "second"},"color": "light_purple"}]}

execute store result bossbar minecraft:information value run scoreboard players get #maw glowtime
