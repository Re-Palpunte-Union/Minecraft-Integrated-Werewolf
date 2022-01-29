tellraw @a [{"text":"\n                              ","strikethrough": true,"color":"aqua","bold": true}]

tellraw @a [{"text":"  各陣営の勝利条件","bold": true}]
tellraw @a [{"text":"・"},{"text":"人狼陣営","color": "red"},{"text":"\n    村人陣営の全滅","color":"reset"}]
tellraw @a [{"text":"・"},{"text":"村人陣営","color": "green"},{"text":"\n    人狼の全滅","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run tellraw @a [{"text":"・"},{"text":"弁護士","color": "#869919"},{"text":"\n    依頼人と一緒に勝利 --> 依頼人の勝利を盗んで仲間の人狼と一緒に勝利","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run tellraw @a [{"text":"  "},{"text":"      ","color": "#869919"},{"text":"\n    弁護士が死亡、依頼人が生きたまま勝利 --> 依頼人と仲間の人狼と一緒に勝利","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run tellraw @a [{"text":"・"},{"text":"追跡者","color": "#869919"},{"text":"\n    依頼人が死亡 --> 追跡者となって試合終了まで生き残る","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} run tellraw @a [{"text":"・"},{"text":"アーソニスト","color": "#ee702e"},{"text":"\n    全員にオイルを塗って着火する","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"Lovers":1b}} run tellraw @a [{"text":"・"},{"text":"恋人","color": "#e839b9"},{"text":"\n    恋人以外を全員殺す","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"Jester":1b}} run tellraw @a [{"text":"・"},{"text":"ジェスター","color": "#ec62a5"},{"text":"\n    村人陣営に殺される","color":"reset"}]
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run tellraw @a [{"text":"・"},{"text":"ペスト医師","color": "#ffc000"},{"text":"\n    全員感染させる","color":"reset"}]

tellraw @a [{"text":"・"},{"text":"人狼","color": "red"},{"text":" : ","color":"reset"},{"score":{"name":"#maw","objective":"WolfCount"}},{"text":"人"}]

execute if data storage datapack:server {mawSettings:{"FookShot":1b}} run tellraw @a [{"text":"・"},{"text":"フックショット","bold":true},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Seer":1b}} run tellraw @a [{"text":"・"},{"text":"占い師","bold":true,"color": "aqua"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} run tellraw @a [{"text":"・"},{"text":"シェリフ","bold":true,"color": "#f8cd46"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} if score シェリフが狂人をキルできる mawSettings matches 1 run tellraw @a [{"text":"・"},{"text":"シェリフは狂人をキルできる","bold":true}]

execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} if score シェリフが第三陣営をキルできる mawSettings matches 1 run tellraw @a [{"text":"・"},{"text":"シェリフは第三陣営をキルできる","bold":true}]

execute if data storage datapack:server {mawSettings:{"Phantom":1b}} run tellraw @a [{"text":"・"},{"text":"生霊あり","bold":true,"color": "blue"}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score 両方のゲッサーが出現する確率 mawSettings matches 0 run tellraw @a [{"text":"・"},{"text":"ゲッサー","bold":true,"color": "yellow"},{"text":"あり","color":"reset","bold":false},{"translate":"(イビルゲッサーの確率 : %s","with":[{"score":{"name":"イビルゲッサーになる確率","objective": "mawSettings"},"color": "red","bold": true}]},{"text":"%)"}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score 両方のゲッサーが出現する確率 mawSettings matches 10..100 run tellraw @a [{"text":"・"},{"text":"ゲッサー","bold":true,"color": "yellow"},{"text":"あり","color":"reset","bold":false},{"translate":"(両方のゲッサーが出現する確率 : %s","with":[{"score":{"name":"両方のゲッサーが出現する確率","objective": "mawSettings"},"color": "red","bold": true}]},{"text":"%)"}]

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run tellraw @a [{"text":"・"},{"text":"弁護士","bold":true,"color": "#869919"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} run tellraw @a [{"text":"・"},{"text":"アーソニスト","bold":true,"color": "#ee702e"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} run tellraw @a [{"text":"・"},{"text":"タイムロード","bold":true,"color": "#0028f5"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} run tellraw @a [{"text":"・"},{"text":"ドールメーカー","bold":true,"color": "dark_red"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Spy":1b}} run tellraw @a [{"text":"・"},{"text":"スパイ","bold":true,"color": "dark_red"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Cleaner":1b}} run tellraw @a [{"text":"・"},{"text":"クリーナー","bold":true,"color": "dark_red"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Vampire":1b}} run tellraw @a [{"text":"・"},{"text":"ヴァンパイア","bold":true,"color": "dark_red"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Jester":1b}} run tellraw @a [{"text":"・"},{"text":"ジェスター","bold":true,"color": "#ec62a5"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run tellraw @a [{"text":"・"},{"text":"ペスト医師","bold":true,"color": "#ffc000"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Sidekick":1b}} run tellraw @a [{"text":"・"},{"text":"サイドキック","bold":true,"color": "dark_red"},{"text":"あり","color":"reset","bold":false}]

execute if data storage datapack:server {mawSettings:{"Lovers":1b}} run tellraw @a [{"text":"・"},{"text":"恋人","bold":true,"color": "#e839b9"},{"text":"あり","color":"reset","bold":false}]

tellraw @a [{"text":"        ","strikethrough": true},{"text":"参加者一覧","color": "white","bold": true,"strikethrough": false},{"text":"        ","strikethrough": true}]
tellraw @a [{"translate":"参加者数 : %s人","with":[{"score":{"name":"#maw","objective":"PlayerNumber"},"color": "green"}]}]
execute as @a[scores={PlayerNumber=1..16}] run tellraw @a [{"text":"      ・"},{"selector":"@s","color": "white"}]



tellraw @a [{"text":"                              \n","strikethrough": true,"color":"aqua","bold": true}]

execute as @a[scores={PlayerNumber=1}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"\n%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=1}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 1"}}]}]
execute as @a[scores={PlayerNumber=2}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=2}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 2"}}]}]
execute as @a[scores={PlayerNumber=3}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=3}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 3"}}]}]
execute as @a[scores={PlayerNumber=4}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=4}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 4"}}]}]
execute as @a[scores={PlayerNumber=5}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=5}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 5"}}]}]
execute as @a[scores={PlayerNumber=6}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=6}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 6"}}]}]
execute as @a[scores={PlayerNumber=7}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=7}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 7"}}]}]
execute as @a[scores={PlayerNumber=8}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s\n","with":[{"selector":"@a[scores={PlayerNumber=8}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 8"}}]}]
execute as @a[scores={PlayerNumber=9}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"\n%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=9}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 9"}}]}]
execute as @a[scores={PlayerNumber=10}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=10}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 10"}}]}]
execute as @a[scores={PlayerNumber=11}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=11}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 11"}}]}]
execute as @a[scores={PlayerNumber=12}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=12}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 12"}}]}]
execute as @a[scores={PlayerNumber=13}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=13}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 13"}}]}]
execute as @a[scores={PlayerNumber=14}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=14}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 14"}}]}]
execute as @a[scores={PlayerNumber=15}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s","with":[{"selector":"@a[scores={PlayerNumber=15}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 15"}}]}]
execute as @a[scores={PlayerNumber=16}] unless score @a[scores={CurrentRole=7},limit=1] PlayerNumber = @s PlayerNumber run tellraw @a[scores={CurrentRole=7},limit=1] [{"translate":"%s  -->  %s\n","with":[{"selector":"@a[scores={PlayerNumber=16}]"},{"text":"取り付く","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger Phantom set 16"}}]}]
