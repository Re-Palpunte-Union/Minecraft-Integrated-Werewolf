scoreboard players set #maw Phase 2
tag @a remove Phantom
scoreboard players set #maw CountDown 100
bossbar set information max 5
playsound block.anvil.place master @a ~ ~ ~ 1 1 1
bossbar set information value 0
tellraw @a [{"text":"[情報] ","color": "green"},{"text":"生霊がとりつき先を選択しました","color": "white","bold": false}]
tellraw @a [{"text":"       5秒後にゲームを開始します","color": "white"}]
