# メインシステム
function maw:system/ongame/main/main_system
### 人狼が残り一人になったらマフィアの弓矢無効化解除
execute if score #maw WolfCount matches 1 run tellraw @a[scores={CurrentRole=18,DeathCount=0},tag=DisableBow] [{"text":"弓矢でキルできるようになった","italic": true,"color": "red"}]
execute if score #maw WolfCount matches 1 run tag @a[scores={CurrentRole=18,DeathCount=0},tag=DisableBow] remove DisableBow

### 蘇生処理
scoreboard players remove @a[scores={ReviveCount=1..}] ReviveCount 1
effect give @a[scores={ReviveCount=1..}] invisibility 1000000 0 true
effect give @a[scores={ReviveCount=1..}] resistance 1000000 4 true
execute as @a[scores={ReviveCount=0}] run function maw:system/ongame/role/revive

### 死人
execute if entity @a[scores={DeathCount=2..}] run function maw:system/ongame/main/dead_player

### 勝利判定
function maw:system/ongame/main/check_winner

### 死体
execute as @e[type=armor_stand,tag=Corpses] run function maw:system/ongame/main/corpses

## 人狼陣営

### ドールメーカー(12)
execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} run function maw:system/ongame/role/dollmaker/main

### クリーナー(14)
execute if data storage datapack:server {mawSettings:{"Cleaner":1b}} run function maw:system/ongame/role/cleaner/main

### ヴァンパイア(15)
execute if data storage datapack:server {mawSettings:{"Vampire":1b}} run function maw:system/ongame/role/cleaner/main

### トリックスター
execute if data storage datapack:server {mawSettings:{"Trickster":1b}} run function maw:system/ongame/role/trickster/main


## 村人陣営

### 占い(3)
function maw:system/ongame/role/seer/main

### 霊媒(4)
function maw:system/ongame/role/medium/main

### シェリフ(6)
execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} run function maw:system/ongame/role/sheriff/main

### タイムロード(11)
execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} run function maw:system/ongame/role/timeload/main

## 両陣営可能役職
### ゲッサー(8)
execute if data storage datapack:server {mawSettings:{"Guesser":1b}} run function maw:system/ongame/role/guesser/main

### 恋人(Lovers)
execute if data storage datapack:server {mawSettings:{"Lovers":1b}} run function maw:system/ongame/role/lovers/particle

###第三陣営
### 弁護士(依頼人)(9)
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run function maw:system/ongame/role/lawyer/particle

### アーソニスト(10)
execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} run function maw:system/ongame/role/arsonist/main

### ペスト医師(17)
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run function maw:system/ongame/role/plague_doctor/main


### 死亡時の処理
execute as @a[scores={DeathCount=1}] run function maw:system/ongame/role/psychopath/revenge_werewolf
execute as @a[scores={DeathCount=1}] run function maw:system/ongame/main/when_dead

function maw:system/ongame/item/main

# スコアリセット
function maw:system/ongame/reset_score
