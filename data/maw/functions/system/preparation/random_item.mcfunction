execute as @a[scores={random_item=0},sort=random] store result score @s random_item if entity @a[scores={random_item=0}]
scoreboard players set @a[scores={random_item=10..}] random_item 0

## loop
execute if entity @a[scores={random_item=0}] run function maw:system/preparation/random_item
