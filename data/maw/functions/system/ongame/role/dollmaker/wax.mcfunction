particle flash ~ ~ ~ 1 1 1 1 10 force @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=1}]
execute at @s facing ^ ^ ^ run tp @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] ^ ^ ^

clear @s carrot_on_a_stick
scoreboard players reset @s ShowTargets
scoreboard players reset @s Guess
scoreboard players reset @s GuessRole
playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
effect give @s slowness 45 9 true
effect give @s weakness 45 200 true
tag @s add Doll
playsound minecraft:custom.role.kill master @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] ~ ~ ~ 1 1 1

clear @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] carrot_on_a_stick{CustomModelData:8} 1