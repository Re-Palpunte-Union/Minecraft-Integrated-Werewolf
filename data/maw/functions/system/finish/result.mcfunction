tellraw @s [{"text":"        ","strikethrough": true,"color": "red"},{"text":"人狼陣営","strikethrough": false},{"text":"        ","strikethrough": true}]

execute if entity @a[scores={CurrentRole=1}] run tellraw @s [{"translate":"[人狼] %s","with":[{"selector":"@a[scores={PrevRole=1}]","bold": false,"color": "white"}],"bold": true,"color": "red"}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw EvilGuesser matches 1 run tellraw @s [{"translate":"[イビルゲッサー] %s","with":[{"selector":"@a[scores={PrevRole=8,EvilGuesser=1}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw EvilGuesser matches 0 if score 両方のゲッサーが出現する確率 mawSettings matches 10..100 run tellraw @s [{"translate":"[イビルゲッサー] %s","with":[{"selector":"@a[scores={PrevRole=8,EvilGuesser=1}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} run tellraw @s [{"translate":"[ドールメーカー] %s","with":[{"selector":"@a[scores={PrevRole=12,DollMaker=1}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

execute if data storage datapack:server {mawSettings:{"Cleaner":1b}} run tellraw @s [{"translate":"[クリーナー] %s","with":[{"selector":"@a[scores={PrevRole=14}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

execute if data storage datapack:server {mawSettings:{"Vampire":1b}} run tellraw @s [{"translate":"[ヴァンパイア] %s","with":[{"selector":"@a[scores={PrevRole=15}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

execute if data storage datapack:server {mawSettings:{"Sidekick":1b}} run tellraw @s [{"translate":"[サイドキック] %s","with":[{"selector":"@a[scores={PrevRole=18}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

execute if data storage datapack:server {mawSettings:{"DollMaker":0b}} run tellraw @s [{"translate":"[狂人] %s","with":[{"selector":"@a[scores={PrevRole=2}]","bold": false,"color": "white"}],"bold": true,"color": "light_purple"}]

tellraw @s [{"text":"        ","strikethrough": true,"color": "green"},{"text":"村人陣営","strikethrough": false},{"text":"        ","strikethrough": true}]

execute if data storage datapack:server {mawSettings:{"Seer":1b}} run tellraw @s [{"translate":"[占い師] %s","with":[{"selector":"@a[scores={PrevRole=3}]","bold": false,"color": "white"}],"bold": true,"color": "aqua"}]

tellraw @s [{"translate":"[霊媒師] %s","with":[{"selector":"@a[scores={PrevRole=4}]","bold": false,"color": "white"}],"bold": true,"color": "yellow"}]

execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} run tellraw @s [{"translate":"[シェリフ] %s","with":[{"selector":"@a[scores={PrevRole=6}]","bold": false,"color": "white"}],"bold": true,"color": "#f8cd46"}]

execute if data storage datapack:server {mawSettings:{"Phantom":1b}} run tellraw @s [{"translate":"[生霊] %s","with":[{"selector":"@a[scores={PrevRole=7}]","bold": false,"color": "white"}],"bold": true,"color": "blue"}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw EvilGuesser matches 0 run tellraw @s [{"translate":"[ナイスゲッサー] %s","with":[{"selector":"@a[scores={PrevRole=8,EvilGuesser=0}]","bold": false,"color": "white"}],"bold": true,"color": "#ffff00"}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw EvilGuesser matches 1 if score 両方のゲッサーが出現する確率 mawSettings matches 10..100 run tellraw @s [{"translate":"[ナイスゲッサー] %s","with":[{"selector":"@a[scores={PrevRole=8,EvilGuesser=0}]","bold": false,"color": "white"}],"bold": true,"color": "yellow"}]

execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} run tellraw @s [{"translate":"[タイムロード] %s","with":[{"selector":"@a[scores={PrevRole=11}]","bold": false,"color": "white"}],"bold": true,"color": "#0028f5"}]

execute if data storage datapack:server {mawSettings:{"Spy":1b}} run tellraw @s [{"translate":"[スパイ] %s","with":[{"selector":"@a[scores={PrevRole=13}]","bold": false,"color": "white"}],"bold": true,"color": "dark_red"}]

tellraw @s [{"translate":"[村人] %s","with":[{"selector":"@a[scores={PrevRole=5}]","bold": false,"color": "white"}],"bold": true,"color": "green"}]

execute if score #Neutrals mawSettings matches 1 run tellraw @s [{"text":"        ","strikethrough": true,"color": "dark_purple"},{"text":"第三陣営","strikethrough": false},{"text":"        ","strikethrough": true}]

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run tellraw @s [{"translate":"[弁護士] %s","with":[{"selector":"@a[scores={PrevRole=9}]","bold": false,"color": "white"}],"bold": true,"color": "#869919"}]

execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} run tellraw @s [{"translate":"[アーソニスト] %s","with":[{"selector":"@a[scores={PrevRole=10}]","bold": false,"color": "white"}],"bold": true,"color": "#ee702e"}]

execute if data storage datapack:server {mawSettings:{"Jester":1b}} run tellraw @s [{"translate":"[ジェスター] %s","with":[{"selector":"@a[scores={PrevRole=16}]","bold": false,"color": "white"}],"bold": true,"color": "#ec62a5"}]

execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run tellraw @s [{"translate":"[ペスト医師] %s","with":[{"selector":"@a[scores={PrevRole=17}]","bold": false,"color": "white"}],"bold": true,"color": "#ffc000"}]

execute if data storage datapack:server {mawSettings:{"Lovers":1b}} run tellraw @s [{"translate":"[恋人] %s","with":[{"selector":"@a[scores={Lovers=1..2}]","bold": false,"color": "white"}],"bold": true,"color": "#e839b9"}]

execute if data storage datapack:server {mawSettings:{"Phantom":1b}} run tellraw @s [{"text":"\n生霊記録  "},{"translate":"%s => %s","with":[{"selector":"@a[scores={PrevRole=7}]","color": "blue"},{"selector":"@a[scores={Phantom=100}]"}]}]

execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} if entity @a[tag=Infect,tag=!PlagueDoctor,scores={DeathCount=0}] run tellraw @s [{"translate":"%s %s","with":[{"text":"\n[感染者]","bold": true},{"selector":"@a[tag=Infect,tag=!PlagueDoctor,scores={DeathCount=0}]","bold": false}],"color": "#ffc000"}]

tellraw @s [{"translate":"%s %s","with":[{"text":"\n[生存者]","bold": true},{"selector":"@a[scores={DeathCount=0}]","bold": false}]}]

execute if entity @a[tag=Winner] run tellraw @s [{"translate":"%s %s","with":[{"text":"\n[勝者]","bold": true,"color": "yellow"},{"selector":"@a[tag=Winner]","bold": false}]}]
execute unless entity @a[tag=Winner] run tellraw @s [{"translate":"%s %s","with":[{"text":"\n[勝者]","bold": true,"color": "yellow"},{"text":"なし","bold": false,"color": "red"}]}]
