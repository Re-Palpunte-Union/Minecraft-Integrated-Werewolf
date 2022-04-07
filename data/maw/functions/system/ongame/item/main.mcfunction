# ランダムアイテム

## 炸裂のクロスボウ
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run particle explosion_emitter ~ ~ ~ 2 2 2 1 5
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run particle flame ~ ~ ~ 1 1 1 0.3 50
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run playsound entity.generic.explode master @a ~ ~ ~ 5 0
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run kill @a[distance=..5,scores={DeathCount=0,CurrentRole=1..},gamemode=adventure]

execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] if entity @s[nbt={inGround:true}] run kill @s
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run particle explosion_emitter ~ ~ ~ 2 2 2 1 1
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run particle flame ~ ~ ~ 1 1 1 0.3 50
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run playsound entity.generic.explode master @a ~ ~ ~ 5 0
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run kill @a[distance=..5,scores={DeathCount=0,CurrentRole=1..},gamemode=adventure]
execute as @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run effect clear @s dolphins_grace

## 停電のクロスボウ
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:30b}]}] if entity @s[nbt={inGround:true}] run effect give @a[scores={DeathCount=0,CurrentRole=1..}] blindness 10 0 false
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:30b}]}] if entity @s[nbt={inGround:true}] run tellraw @a "誰かが停電のクロスボウを使った！"
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:30b}]}] if entity @s[nbt={inGround:true}] run kill @s
execute if entity @e[nbt={ActiveEffects:[{Id:30b,Amplifier:30b}]}] run effect give @a[scores={DeathCount=0,CurrentRole=1..},nbt=!{ActiveEffects:[{Id:30b,Amplifier:30b}]}] blindness 10 0 false
execute if entity @e[nbt={ActiveEffects:[{Id:30b,Amplifier:30b}]}] run tellraw @a "誰かが停電のクロスボウを使った！"
execute as @e[nbt={ActiveEffects:[{Id:30b,Amplifier:30b}]}] run effect clear @s dolphins_grace

## マシンガン
execute at @a[scores={FireCross=1..}] as @e[type=minecraft:arrow,distance=..3] run data modify entity @s Owner set from entity @a[scores={FireCross=1..},limit=1,sort=nearest] UUID
execute at @a[scores={malgunarrow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{CustomModelData:5}}}] run kill @e[type=arrow,distance=..3]
execute as @a[scores={malgunarrow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{CustomModelData:5}}}] run scoreboard players set @s FireCross 40
execute as @a[scores={FireCross=1..}] at @s run function maw:system/ongame/machinegun
scoreboard players set @a[scores={malgunarrow=1..}] malgunarrow 0
scoreboard players remove @a[scores={FireCross=0..}] FireCross 1

## フックショット
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}]}] run tp @a[distance=..10,limit=1,sort=nearest,gamemode=!spectator] ~ ~ ~
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}]}] run effect give @a[distance=..10,limit=1,sort=nearest,gamemode=!spectator] slow_falling 1 0 true
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}],inGround:false}] run particle minecraft:instant_effect ~ ~ ~ 1 1 1 0 100
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}],inGround:true}] run particle firework ~ ~ ~ 1 1 1 1 3000
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}],inGround:true}] run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 2
execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}],inGround:true}] run effect give @a[distance=..10,limit=1,sort=nearest,gamemode=!spectator] minecraft:levitation 1 5 true
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:15b,Amplifier:60b}],inGround:true}] run kill @s

## 盾
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",tag:{CustomModelData:5}}},scores={BrokeCount=0}] run title @s actionbar [{"text":"使用可能回数","underlined": true,"bold": true},{"text":"  :  ","underlined": false,"bold": false},{"score":{"name": "@s","objective": "BrokeCount"},"color": "green","bold": true},{"text":"/","color": "white","bold": false,"underlined": false},{"text":"5","color": "green","bold": true}]
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",tag:{CustomModelData:5}}},scores={BrokeCount=1..3}] run title @s actionbar [{"text":"使用可能回数","underlined": true,"bold": true},{"text":"  :  ","underlined": false,"bold": false},{"score":{"name": "@s","objective": "BrokeCount"},"color": "yellow","bold": true},{"text":"/","color": "white","bold": false,"underlined": false},{"text":"5","color": "green","bold": true}]
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",tag:{CustomModelData:5}}},scores={BrokeCount=4}] run title @s actionbar [{"text":"使用可能回数","underlined": true,"bold": true},{"text":"  :  ","underlined": false,"bold": false},{"score":{"name": "@s","objective": "BrokeCount"},"color": "red","bold": true},{"text":"/","color": "white","bold": false,"underlined": false},{"text":"5","color": "green","bold": true}]
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{CustomModelData:5}}]},scores={BrokeCount=0}] run title @s actionbar [{"text":"使用可能回数","underlined": true,"bold": true},{"text":"  :  ","underlined": false,"bold": false},{"score":{"name": "@s","objective": "BrokeCount"},"color": "green","bold": true},{"text":"/","color": "white","bold": false,"underlined": false},{"text":"5","color": "green","bold": true}]
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{CustomModelData:5}}]},scores={BrokeCount=1..3}] run title @s actionbar [{"text":"使用可能回数","underlined": true,"bold": true},{"text":"  :  ","underlined": false,"bold": false},{"score":{"name": "@s","objective": "BrokeCount"},"color": "yellow","bold": true},{"text":"/","color": "white","bold": false,"underlined": false},{"text":"5","color": "green","bold": true}]
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{CustomModelData:5}}]},scores={BrokeCount=4}] run title @s actionbar [{"text":"使用可能回数","underlined": true,"bold": true},{"text":"  :  ","underlined": false,"bold": false},{"score":{"name": "@s","objective": "BrokeCount"},"color": "red","bold": true},{"text":"/","color": "white","bold": false,"underlined": false},{"text":"5","color": "green","bold": true}]

scoreboard players add @a[scores={Shield=1..}] BrokeCount 1
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",tag:{CustomModelData:5}}},scores={BrokeCount=5..}] run title @s actionbar [{"text":"使用可能回数を超えたので盾が壊れました","underlined": true,"bold": true,"color": "red"}]
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{CustomModelData:5}}]},scores={BrokeCount=5}] run title @s actionbar [{"text":"使用可能回数を超えたので盾が壊れました","underlined": true,"bold": true,"color": "red"}]

execute at @a[scores={BrokeCount=5..}] run playsound item.shield.break master @a
clear @a[scores={BrokeCount=5..}] shield{CustomModelData:5} 1
scoreboard players set @a[scores={BrokeCount=5..}] BrokeCount 0

## 竜巻攻撃
function maw:system/ongame/item/wind/main

## イカれポーション
execute as @a[nbt={ActiveEffects:[{Id:24b,Amplifier:5b},{Id:8b,Amplifier:20b}]}] at @s run tp @s ~ ~ ~ ~45 ~