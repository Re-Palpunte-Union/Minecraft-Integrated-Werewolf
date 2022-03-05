execute at @s run particle smoke ~ ~1 ~ 0.2 0.2 0.2 0.1 100
execute at @s run particle poof ~ ~1 ~ 0.2 0.2 0.2 0.1 100
playsound block.fire.extinguish master @a[scores={CurrentRole=14..,UsedCStick=1..}] ~ ~ ~ 2 1 1
kill @s

clear @a[scores={CurrentRole=14..,UsedCStick=1..}] carrot_on_a_stick{CustomModelData:10} 1

execute if entity @a[scores={CurrentRole=14..,UsedCStick=1..}] run schedule function maw:system/ongame/role/give_ability/cleaner 30s