tellraw @s [{"text":"[情報] ","color": "green"},{"text":"愛する人が死んだ！自分も後を・・・","color": "white","bold": false}]
kill @s
execute at @s run particle damage_indicator ~ ~ ~ 0.2 0.2 0.2 0 20
execute at @s run playsound item.trident.throw master @a ~ ~ ~ 1 1
