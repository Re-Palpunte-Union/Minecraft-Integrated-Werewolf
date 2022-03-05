execute as @s[scores={TeamWerewolf=1}] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@s"}],"color": "red"}]
execute as @s[scores={TeamWerewolf=2}] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}],"color": "green"}]

execute as @s[scores={TeamWerewolf=0}] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}],"color": "green"}]

tag @s remove seer

clear @a[scores={CurrentRole=3,seer=1..}] written_book{CustomModelData:5,title:"占い師の能力本"} 1

scoreboard players set @a[scores={seer=1..}] RoleDone 1
scoreboard players reset @a[scores={seer=1..}] seer