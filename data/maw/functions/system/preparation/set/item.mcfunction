loot give @s loot maw:item/items
loot give @s loot maw:item/special

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} if score 依頼人が依頼されてることがわかる mawSettings matches 1 run loot give @s[scores={Client=1}] loot maw:item/books/client

execute as @a[scores={CurrentRole=1..}] run loot replace entity @s inventory.8 loot maw:item/lore
execute as @a[scores={CurrentRole=1..}] run loot replace entity @s inventory.17 loot maw:item/lovers_lore

execute if data storage datapack:server {mawSettings:{"FookShot":1b}} run loot give @s[scores={CurrentRole=2..4}] loot maw:item/special/fookshot

loot replace entity @a[scores={CurrentRole=19}] inventory.11 loot maw:item/ability/trickster/disable/teleporter1
loot replace entity @a[scores={CurrentRole=19}] inventory.13 loot maw:item/ability/trickster/disable/teleporter2
loot replace entity @a[scores={CurrentRole=19}] inventory.15 loot maw:item/ability/trickster/disable/teleporter3
