execute as @s[scores={TeamWerewolf=1}] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@s"}],"color": "red"}]
execute as @s[scores={TeamWerewolf=2}] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}],"color": "green"}]

execute unless entity @s[tag=Psychopath,scores={CurrentRole=21,DeathCount=0}] as @s[scores={TeamWerewolf=0},tag=!Psychopath] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}],"color": "green"}]

execute as @s[scores={CurrentRole=21}] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sを占ってサイコパスであったため、死亡しました。","with":[{"selector":"@s"}],"color": "dark_purple"}]
execute if entity @s[scores={CurrentRole=21}] at @a[scores={CurrentRole=3,seer=1..}] run playsound item.trident.throw master @a ~ ~ ~ 1 1
execute if entity @s[scores={CurrentRole=21}] at @a[scores={CurrentRole=3,seer=1..}] run particle sweep_attack ~ ~ ~ 1 1 1 1 100
execute if entity @s[scores={CurrentRole=21}] at @a[scores={CurrentRole=3,seer=1..}] run particle squid_ink ~ ~ ~ 1 1 1 1 1000
execute if entity @s[scores={CurrentRole=21}] run kill @a[scores={CurrentRole=3,seer=1..}]

tag @s remove seer

clear @a[scores={CurrentRole=3,seer=1..}] written_book{CustomModelData:5,title:"占い師の能力本"} 1

scoreboard players set @a[scores={seer=1..}] RoleDone 1
scoreboard players reset @a[scores={seer=1..}] seer