execute if score @s InfectCount matches ..99 run scoreboard players add @s InfectCount 1
title @a[scores={CurrentRole=17}] actionbar [{"translate":"感染中 : %s (%s/%s)","with":[{"selector":"@s","color":"#ffc000"},{"score":{"name": "@s","objective": "InfectCount"},"color": "#ffc000"},{"text":"100","color": "#ffc000"}],"bold":true}]
