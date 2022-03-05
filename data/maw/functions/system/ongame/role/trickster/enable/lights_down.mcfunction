scoreboard players remove #Trickster LightsDown 1

scoreboard players add #TricksterAnimation LightsDown 1
execute if score #TricksterAnimation LightsDown matches 15.. run scoreboard players set #TricksterAnimation LightsDown 0

execute if score #TricksterAnimation LightsDown matches 1..8 run title @a actionbar {"text":"Lights are out","color": "red","bold": true}
execute if score #TricksterAnimation LightsDown matches 9..16 run title @a actionbar {"text":"Lights are out","color": "yellow","bold": true}

effect give @a[scores={TeamWerewolf=0,DeathCount=0}] blindness 2 0 true
effect give @a[scores={TeamWerewolf=2,DeathCount=0}] blindness 2 0 true

execute if score #Trickster LightsDown matches 0 run scoreboard players set @a[scores={CurrentRole=19,DeathCount=0}] CoolDown 3000
execute if score #Trickster LightsDown matches 0 run title @a actionbar {"text":""}
execute if score #Trickster LightsDown matches 0 run effect clear @a blindness
execute if score #Trickster LightsDown matches 0 run loot replace entity @a[scores={CurrentRole=19,DeathCount=0}] inventory.22 loot maw:item/ability/trickster/enable/light_down_cool
