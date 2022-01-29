execute if entity @a[tag=Starter] run tellraw @a "\n------------------------------------\n"
execute if entity @a[tag=Starter] run tellraw @a [{"translate":"統合人狼 made by %s","with":[{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
execute if entity @a[tag=Starter] run tellraw @a "\nゲームを緊急停止させました"
execute if entity @a[tag=Starter] run tellraw @a "\n------------------------------------\n"
execute if entity @a[tag=Starter] run function maw:system/finish/end
