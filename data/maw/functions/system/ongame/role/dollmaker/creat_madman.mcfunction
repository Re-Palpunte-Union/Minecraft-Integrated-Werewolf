execute if score @s TeamWerewolf matches 1 run scoreboard players remove #maw WolfCount 1
execute if score @s TeamVillager matches 1 run scoreboard players remove #maw VillageCount 1
scoreboard players set @s CurrentRole 2
execute if score シェリフが狂人をキルできる mawSettings matches 1 run tag @s add SheriffTarget
execute at @s run particle squid_ink ~ ~1 ~ 0.2 0.2 0.2 0.3 100 force @s
execute at @s run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 300 force @s
tellraw @s [{"text":"[通達] ","color": "green"},{"text":"あなたは狂人に任命されました。","color": "white","bold": false}]
clear @s written_book{CustomModelData:5}
clear @s carrot_on_a_stick
tag @s remove DisableBow
scoreboard players reset @s ShowTargets
scoreboard players reset @s Guess
scoreboard players reset @s GuessRole
loot give @s loot maw:item/books/be_madman
playsound entity.wither.spawn master @s ~ ~ ~ 0.5 2 0.5
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] [{"text":"[通達] ","color": "green"},{"selector":"@s"},{"text":"を狂人に任命しました。","color": "white","bold": false}]
clear @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] carrot_on_a_stick{CustomModelData:9} 1
