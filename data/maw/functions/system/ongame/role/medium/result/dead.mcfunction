execute as @s[scores={TeamWerewolf=1}] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@s"}],"color": "red"}]
execute as @s[scores={TeamWerewolf=2}] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}],"color": "green"}]

execute as @s[scores={TeamWerewolf=0}] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}],"color": "green"}]