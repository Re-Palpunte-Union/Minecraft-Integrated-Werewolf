execute as @a[scores={CurrentRole=1..}] at @s run tp @s @s

scoreboard players remove #maw CountDown 1
execute if score #maw CountDown matches 0 run function maw:system/ongame/change_to3
execute if score #maw CountDown matches 81..100 run bossbar set information name {"translate":"開始まで %s 秒","with":[{"text":"5","color": "light_purple"}]}
execute if score #maw CountDown matches 81..100 run bossbar set information value 5
execute if score #maw CountDown matches 61..80 run bossbar set information name {"translate":"開始まで %s 秒","with":[{"text":"4","color": "light_purple"}]}
execute if score #maw CountDown matches 61..80 run bossbar set information value 4
execute if score #maw CountDown matches 41..60 run bossbar set information name {"translate":"開始まで %s 秒","with":[{"text":"3","color": "light_purple"}]}
execute if score #maw CountDown matches 41..60 run bossbar set information value 3
execute if score #maw CountDown matches 21..40 run bossbar set information name {"translate":"開始まで %s 秒","with":[{"text":"2","color": "light_purple"}]}
execute if score #maw CountDown matches 21..40 run bossbar set information value 2
execute if score #maw CountDown matches 1..20 run bossbar set information name {"translate":"開始まで %s 秒","with":[{"text":"1","color": "light_purple"}]}
execute if score #maw CountDown matches 1..20 run bossbar set information value 1
