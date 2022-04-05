execute if entity @s[tag=!Psychopath] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは生きています","with":[{"selector":"@s"}],"color": "yellow"}]

execute as @s[scores={CurrentRole=21}] run tellraw @s [{"translate":"あなたは%sの聖なる霊に祓われて、死亡しました。","color":"red","with":[{"selector":"@a[scores={CurrentRole=4,medium=1..}]"}]}]
execute at @s[scores={CurrentRole=21}] run particle end_rod ~ ~ ~ 1 1 1 1 1000
execute at @s[scores={CurrentRole=21}] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 1 2 1
execute as @s[scores={CurrentRole=21}] run kill @s
