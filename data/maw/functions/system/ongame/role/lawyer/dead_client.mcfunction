tellraw @a[scores={CurrentRole=9,Pursuer=0}] [{"text":"[通達] ","color": "green"},{"text":"依頼人が死亡しました","color": "white","bold": false}]
execute if entity @s[scores={Client=1}] run clear @a[scores={CurrentRole=9,Pursuer=0,DeathCount=0}] written_book
execute if entity @s[scores={Client=1}] run loot give @a[scores={CurrentRole=9,Pursuer=0,DeathCount=0}] loot maw:item/books/pursuer
execute if entity @s[scores={Client=1}] run loot replace entity @a[scores={CurrentRole=9,Pursuer=0,DeathCount=0}] inventory.8 loot maw:item/lore/neutral/pursuer
execute if entity @s[scores={Client=1}] run scoreboard players set @a[scores={CurrentRole=9,Pursuer=0}] Pursuer 1