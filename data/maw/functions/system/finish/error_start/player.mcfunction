tellraw @a "\n------------------------------------\n"
tellraw @a [{"translate":"統合人狼 made by %s","with":[{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
tellraw @a {"translate":"\n    現在の人数は、%s人です。  当ゲームの必要最低人数は、%s人です。","with":[{"score":{"name": "#maw","objective": "PlayerNumber"},"color":"red","bold":true},{"text":"6","color":"red","bold":true}]}
tellraw @a {"translate":"  %s人目以降は、観戦者となります。","with":[{"text":"17","color":"red","bold":true}]}
tellraw @a "\n------------------------------------\n"
scoreboard objectives remove PlayerNumber