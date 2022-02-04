# メインシステム
### 矢のパーティクル
execute if entity @a[tag=EnableArrowParticle] as @e[type=minecraft:arrow,nbt={inGround:false,crit:0b}] run data modify entity @s crit set value 1b
### 弓矢無効化
execute at @a[scores={UsedBow=1..},tag=DisableBow] positioned ^ ^ ^0.3 as @e[type=arrow,nbt={inGround:false},limit=1,sort=nearest] run data modify entity @s damage set value 0.5
### アイテムキル
kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:5}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{CustomModelData:-1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_concrete"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_concrete",tag:{CustomModelData:5}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp",tag:{CustomModelData:5}}}]
### 常時陣営設定
function maw:system/ongame/role/team
### 満腹度回復
effect give @a saturation 1000000 9 true
### 人狼が残り一人になったらマフィアの弓矢無効化解除
execute if score #maw WolfCount matches 1 run tellraw @a[scores={CurrentRole=18,DeathCount=0},tag=DisableBow] [{"text":"弓矢でキルできるようになった","italic": true,"color": "red"}]
execute if score #maw WolfCount matches 1 run tag @a[scores={CurrentRole=18,DeathCount=0},tag=DisableBow] remove DisableBow

### 死人
#透明化
effect give @a[scores={DeathCount=1..}] invisibility 1 0 true
#恋人表示(Lovers)
execute at @a[scores={Lovers=1..2,DeathCount=0}] run particle dust 0.8 0 1 1 ~ ~2.3 ~ 0 0 0 0 5 force @a[scores={DeathCount=2..}]
#依頼人表示(Client)
execute at @a[scores={Client=1,DeathCount=0}] run particle dust 0.459 0.761 0.212 1 ~ ~2 ~ 0 0 0 0 5 force @a[scores={DeathCount=2..}]
#油だらけの人表示(Douse)
execute at @a[scores={DeathCount=0},tag=Douse] run particle dust 1 0.569 0 1 ~ ~2.6 ~ 0.2 0.2 0.2 0 10 force @a[scores={DeathCount=2..}]
#感染者表示(Infect)
execute at @a[scores={DeathCount=0},tag=Infect,tag=!PlagueDoctor] run particle dust 1 0.816 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 10 force @a[scores={DeathCount=2..}]

### 勝利判定
execute if score #maw WolfCount matches ..0 if score #maw VillageCount matches 1.. if score #maw LoversCount matches ..0 run function maw:system/finish/winner/villager
execute if score #maw VillageCount matches ..0 if score #maw WolfCount matches 1.. if score #maw LoversCount matches ..0 run function maw:system/finish/winner/werewolf
execute if score #maw VillageCount matches ..0 if score #maw WolfCount matches ..0 if score #maw LoversCount matches 1.. run function maw:system/finish/winner/lovers
execute if score #maw VillageCount matches ..0 if score #maw WolfCount matches ..0 if score #maw LoversCount matches ..0 run function maw:system/finish/winner/draw
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={CurrentRole=10,UsedCStick=1..},limit=1] run function maw:system/ongame/role/arsonist/ignite
execute unless entity @a[tag=!Infect,tag=!PlagueDoctor,scores={DeathCount=0}] if score #maw InfectCount matches 0 run function maw:system/finish/winner/plague_doctor

### 死体
execute as @e[type=armor_stand,tag=Corpses] run scoreboard players add @s Corpses 1

execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=2000}] run data modify entity @s ArmorItems[0].tag.display.color set value 14286592
execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=2000}] run data modify entity @s ArmorItems[1].tag.display.color set value 14286592
execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=2000}] run data modify entity @s ArmorItems[2].tag.display.color set value 14286592

execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=4000}] run data modify entity @s ArmorItems[0].tag.display.color set value 16711680
execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=4000}] run data modify entity @s ArmorItems[1].tag.display.color set value 16711680
execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=4000}] run data modify entity @s ArmorItems[2].tag.display.color set value 16711680

execute at @e[type=armor_stand,tag=Corpses,scores={Corpses=6000}] run particle smoke ~ ~1 ~ 0.2 0.2 0.2 0.1 100
execute at @e[type=armor_stand,tag=Corpses,scores={Corpses=6000}] run particle poof ~ ~1 ~ 0.2 0.2 0.2 0.1 100
execute at @e[type=armor_stand,tag=Corpses,scores={Corpses=6000}] run playsound block.fire.extinguish master @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=Corpses,scores={Corpses=6000}] run kill @s

## 人狼陣営

### ドールメーカー(12)
#弓矢無効化
#キル対象の表示
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"キル対象  :  ","bold":true},{"selector":"@s","color":"dark_red"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] unless entity @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"キル対象がいません","color":"dark_red","bold":true}]
#蠟人形化
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0},tag=!Doll] run function maw:system/ongame/role/dollmaker/wax
#蝋人形
execute as @a[tag=Doll,scores={DollMaker=0..900}] run scoreboard players add @s DollMaker 1
execute as @a[tag=Doll,scores={DollMaker=0..900,UsedBow=1..}] at @s run kill @e[type=arrow,nbt={inGround:false},distance=..5,limit=1,sort=nearest]
#execute as @a[tag=Doll,scores={DollMaker=0..900,Jump=1..}] at @s run tp @s @s
#execute as @a[tag=Doll,scores={DollMaker=0..900,Jump=1..}] at @s run tp @s ~ ~-0.4 ~ ~ ~

execute as @a[tag=Doll,scores={DollMaker=900..}] run function maw:system/ongame/role/dollmaker/kill
execute as @a[tag=Doll,scores={DeathCount=0}] at @s if entity @a[tag=!Doll,scores={DollMaker=0,DeathCount=0},distance=..4] run function maw:system/ongame/role/dollmaker/kill

execute if score #maw VillageCount matches ..1 if score #maw LoversCount matches ..0 as @a[tag=Doll,scores={DeathCount=0,TeamVillager=1}] run function maw:system/ongame/role/dollmaker/kill
execute if score #maw VillageCount matches ..0 if score #maw LoversCount matches 2 as @a[tag=Doll,scores={DeathCount=0,TeamVillager=1}] run function maw:system/ongame/role/dollmaker/kill

#狂人の任命
#任命対象の表示
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] as @a[sort=nearest,limit=1,distance=1..5,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"任命対象  :  ","bold":true},{"selector":"@s","color":"light_purple"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] unless entity @a[sort=nearest,limit=1,distance=1..5,scores={DeathCount=0},tag=!Doll] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1}] actionbar [{"text":"任命対象がいません","color":"light_purple","bold":true}]
#任命
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={CurrentRole=12,DollMaker=1,UsedCStick=1..}] as @a[sort=nearest,limit=1,distance=1..5,scores={DeathCount=0}] run function maw:system/ongame/role/dollmaker/creat_madman

### クリーナー(14)
#誰かをキルしたら死体消しクールダウン
execute as @a[scores={CurrentRole=14,KillCount=1..}] run clear @s carrot_on_a_stick
execute as @a[scores={CurrentRole=14,KillCount=1..}] run schedule function maw:system/ongame/role/give_ability/cleaner 30s
#消せるか消せないか
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] as @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..5] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] actionbar [{"text":"死体消し  :  可能","bold":true,"color": "dark_red"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] unless entity @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..5] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14}] actionbar [{"text":"死体消し  :  不可能","bold":true}]
#死体消し
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}},scores={CurrentRole=14,UsedCStick=1..}] as @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..5] run function maw:system/ongame/role/cleaner/remove_corpses

### ヴァンパイア(15)
#キル対象の表示
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] actionbar [{"text":"キル対象  :  ","bold":true},{"selector":"@s","color":"dark_red"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] unless entity @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15}] actionbar [{"text":"キル対象がいません","color":"dark_red","bold":true}]
#噛む
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}},scores={CurrentRole=15,UsedCStick=1..}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run function maw:system/ongame/role/vampire/bite
#死亡までの時間を減らす
execute as @a[scores={BiteCount=1..200}] run scoreboard players remove @s BiteCount 1
#残りどれくらいで死ぬか表示
execute as @a[scores={BiteCount=0..200}] run title @a[scores={CurrentRole=15}] actionbar [{"translate":"%s  :  残り %s Tickで死亡 %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective": "BiteCount"}},{"text":"(20Tick=1s)","bold": false,"color": "white"}],"bold":true,"color":"dark_red"}]
#死亡
execute as @a[scores={BiteCount=0}] run function maw:system/ongame/role/vampire/kill

### トリックスター
execute if score #maw Trickster matches 1 run function maw:system/ongame/role/trickster/disable/
execute if score #maw Trickster matches 2 run function maw:system/ongame/role/trickster/enable/
## 村人陣営
### 占い(3)
function maw:system/ongame/role/seer/main

### 霊媒(4)
function maw:system/ongame/role/medium/main

### シェリフ(6)
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={CurrentRole=6}] as @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={CurrentRole=6}] actionbar [{"text":"キル対象  :  ","bold":true},{"selector":"@s","color":"#f8cd46"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={CurrentRole=6}] unless entity @a[sort=nearest,limit=1,distance=1..4,scores={DeathCount=0}] run title @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={CurrentRole=6}] actionbar [{"text":"キル対象がいません","color":"#f8cd46","bold":true}]

execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={CurrentRole=6,UsedCStick=1..}] as @a[sort=nearest,limit=1,tag=SheriffTarget,distance=1..4,scores={DeathCount=0}] run function maw:system/ongame/role/sheriff/success
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={CurrentRole=6,UsedCStick=1..}] at @s if entity @a[sort=nearest,limit=1,tag=!SheriffTarget,distance=1..4,scores={DeathCount=0}] run function maw:system/ongame/role/sheriff/failure

### タイムロード(11)
function maw:system/ongame/role/timeload/main

## 両陣営可能役職
### ゲッサー(8)
scoreboard players enable @a[scores={CurrentRole=8,RoleDone=0}] ShowTargets

execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=1}] unless score @a[scores={PlayerNumber=1},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"\n%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=1}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 1"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=2}] unless score @a[scores={PlayerNumber=2},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=2}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 2"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=3}] unless score @a[scores={PlayerNumber=3},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=3}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 3"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=4}] unless score @a[scores={PlayerNumber=4},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=4}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 4"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=5}] unless score @a[scores={PlayerNumber=5},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=5}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 5"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=6}] unless score @a[scores={PlayerNumber=6},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=6}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 6"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=7}] unless score @a[scores={PlayerNumber=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=7}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 7"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=8}] unless score @a[scores={PlayerNumber=8},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s\n","with":[{"selector":"@a[scores={PlayerNumber=8}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 8"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=9}] unless score @a[scores={PlayerNumber=9},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"\n%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=9}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 9"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=10}] unless score @a[scores={PlayerNumber=10},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=10}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 10"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=11}] unless score @a[scores={PlayerNumber=11},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=11}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 11"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=12}] unless score @a[scores={PlayerNumber=12},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=12}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 12"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=13}] unless score @a[scores={PlayerNumber=13},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=13}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 13"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=14}] unless score @a[scores={PlayerNumber=14},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=14}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 14"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=15}] unless score @a[scores={PlayerNumber=15},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=15}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 15"}}]}]
execute as @a[scores={CurrentRole=8,DeathCount=0,ShowTargets=1..}] if entity @a[scores={PlayerNumber=16}] unless score @a[scores={PlayerNumber=16},limit=1] PlayerNumber = @s PlayerNumber run tellraw @s [{"translate":"%s  -->  %s\n","with":[{"selector":"@a[scores={PlayerNumber=16}]"},{"text":"推測する","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Guess set 16"}}]}]

function maw:system/ongame/role/guesser/main

### 恋人(Lovers)
execute at @a[scores={Lovers=1,DeathCount=0},nbt=!{ActiveEffects:[{Id:14b}]}] run particle dust 0.8 0 1 1 ~ ~2.3 ~ 0 0 0 0 5 force @a[scores={Lovers=2}]
execute at @a[scores={Lovers=2,DeathCount=0},nbt=!{ActiveEffects:[{Id:14b}]}] run particle dust 0.8 0 1 1 ~ ~2.3 ~ 0 0 0 0 5 force @a[scores={Lovers=1}]

###第三陣営
### 弁護士(依頼人)(9)
execute as @a[scores={Client=1,DeathCount=0},nbt=!{ActiveEffects:[{Id:14b}]}] at @s run particle dust 0.459 0.761 0.212 1 ~ ~2 ~ 0 0 0 0 5 force @s
execute if score 依頼人が依頼されてることがわかる mawSettings matches 1 run execute at @a[scores={Client=1,DeathCount=0},nbt=!{ActiveEffects:[{Id:14b}]}] run particle dust 0.459 0.761 0.212 1 ~ ~2 ~ 0 0 0 0 5 force @a[scores={CurrentRole=9,DeathCount=0}]

### アーソニスト(10)
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={CurrentRole=10}] at @s run title @s actionbar [{"text":"オイルを塗っていないプレイヤー  :  ","bold":true},{"selector":"@a[scores={DeathCount=0},tag=!Douse]","color":"gold"}]

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={CurrentRole=10,UsedCStick=1..}] at @s if entity @a[sort=nearest,limit=1,distance=1..10,scores={DeathCount=0},tag=!Douse] run function maw:system/ongame/role/arsonist/used

execute unless entity @a[tag=!Douse,scores={DeathCount=0}] if score #maw DouseCount matches ..0 as @a[scores={CurrentRole=10,DeathCount=0}] run function maw:system/ongame/role/arsonist/to_ignite

### ペスト医師(17)
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}},scores={CurrentRole=17,UsedCStick=1..}] at @s if entity @a[sort=nearest,limit=1,distance=1..8,scores={DeathCount=0},tag=!Infect,tag=!PlagueDoctor] run function maw:system/ongame/role/plague_doctor/used
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{CustomModelData:5}}},scores={CurrentRole=17,DeathCount=0}] run title @s actionbar [{"translate":"感染者 : %s (残り : %s)","with":[{"selector":"@a[scores={DeathCount=0},tag=Infect,tag=!PlagueDoctor]","color":"#ffc000"},{"selector":"@a[scores={DeathCount=0},tag=!Infect,tag=!PlagueDoctor]","color":"#ffc000"}],"bold":true}]

execute as @a[tag=!Infect,tag=!PlagueDoctor,scores={DeathCount=0,InfectCount=100..}] run function maw:system/ongame/role/plague_doctor/infect
execute at @a[tag=Infect,scores={DeathCount=0}] as @a[tag=!Infect,tag=!PlagueDoctor,scores={DeathCount=0,InfectCount=0..100},distance=..7] run function maw:system/ongame/role/plague_doctor/add_infect

#感染者表示(Infect)
execute at @a[scores={DeathCount=0},tag=Infect,tag=!PlagueDoctor] run particle dust 1 0.816 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 10 force @a[scores={CurrentRole=17,DeathCount=0},tag=PlagueDoctor]

### 死亡時の処理
#execute as @a[scores={DeathCount=1}] at @s run spawnpoint @s
execute if entity @a[scores={DeathCount=1,Lovers=1..}] as @a[scores={DeathCount=0,Lovers=1..}] run function maw:system/ongame/role/lovers/death
execute as @a[scores={DeathCount=1,Phantom=100}] run function maw:system/ongame/role/phantom/phantom
execute as @a[scores={DeathCount=1},tag=Doll] run function maw:system/ongame/role/dollmaker/kill
execute at @a[scores={DeathCount=1}] run summon armor_stand ~ ~ ~ {Marker:1,Tags:["Corpses"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:5,Unbreakable:1,display:{color:2883328}}},{id:"minecraft:leather_leggings",Count:1b,tag:{CustomModelData:5,Unbreakable:1,display:{color:2883328}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:5,Unbreakable:1,display:{color:2883328}}},{}],NoBasePlate:true,ShowArms:true}
execute as @a[scores={DeathCount=1}] at @s run loot replace entity @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] armor.head loot maw:item/head_copy
execute as @a[scores={DeathCount=1}] at @s run scoreboard players operation @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] PlayerNumber = @s PlayerNumber
execute as @a[scores={DeathCount=1}] at @s run tp @e[type=armor_stand,tag=Corpses,sort=nearest,limit=1,distance=..3] @s
execute as @a[scores={DeathCount=1}] run gamemode spectator @s
execute if entity @a[scores={DeathCount=1,Client=1}] run tellraw @a[scores={CurrentRole=9,Pursuer=0}] [{"text":"[通達] ","color": "green"},{"text":"依頼人が死亡しました","color": "white","bold": false}]
execute if entity @a[scores={DeathCount=1,Client=1}] run clear @a[scores={CurrentRole=9,Pursuer=0,DeathCount=0}] written_book
execute if entity @a[scores={DeathCount=1,Client=1}] run loot give @a[scores={CurrentRole=9,Pursuer=0,DeathCount=0}] loot maw:item/books/pursuer
execute if entity @a[scores={DeathCount=1,Client=1}] run loot replace entity @a[scores={CurrentRole=9,Pursuer=0,DeathCount=0}] inventory.8 loot maw:item/lore/neutral/pursuer
execute if entity @a[scores={DeathCount=1,Client=1}] run scoreboard players set @a[scores={CurrentRole=9,Pursuer=0}] Pursuer 1
execute as @a[scores={DeathCount=1,TeamWerewolf=1,Lovers=0}] run scoreboard players remove #maw WolfCount 1
execute as @a[scores={DeathCount=1,TeamVillager=1,Lovers=0}] run scoreboard players remove #maw VillageCount 1
execute as @a[scores={DeathCount=1,Lovers=1..}] run scoreboard players remove #maw LoversCount 1
execute as @a[scores={DeathCount=1},tag=!Douse] run scoreboard players remove #maw DouseCount 1
execute as @a[scores={DeathCount=1},tag=!Infect,tag=!PlagueDoctor] run scoreboard players remove #maw InfectCount 1
execute if entity @a[scores={TeamVillager=1..,KillCount=1..}] as @a[scores={DeathCount=1,CurrentRole=16}] run function maw:system/finish/winner/jester
execute as @a[scores={KillCount=1..}] if entity @a[scores={DeathCount=1,CurrentRole=17}] run function maw:system/ongame/role/plague_doctor/infect
execute if score #maw WolfCount matches 1.. if score #maw VillageCount matches 1.. as @a[scores={DeathCount=1},tag=Result] run function maw:system/finish/result
execute as @a[scores={DeathCount=1}] run scoreboard players set @s DeathCount 2

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

# スコアリセット
function maw:system/ongame/reset_score
