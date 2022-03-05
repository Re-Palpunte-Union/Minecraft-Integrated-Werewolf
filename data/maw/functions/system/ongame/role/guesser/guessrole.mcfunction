execute as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"\n%s は... ","with":[{"selector":"@a[tag=Guess,scores={CurrentRole=1..}]"}]}]
execute as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"人狼だ！","color":"red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 1"}}]}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score 両方のゲッサーが出現する確率 mawSettings matches 10..100 as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0,EvilGuesser=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"イビルゲッサーだ！","color":"dark_red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 8"}}]}]

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"ドールメーカーだ！","color":"dark_red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 12"}}]}]

execute if data storage datapack:server {mawSettings:{"Cleaner":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"クリーナーだ！","color":"dark_red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 14"}}]}]

execute if data storage datapack:server {mawSettings:{"Vampire":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"ヴァンパイアだ！","color":"dark_red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 15"}}]}]

execute if data storage datapack:server {mawSettings:{"Mafia":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"マフィアだ！","color":"dark_red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 18"}}]}]

execute as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"狂人だ！","color":"light_purple","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 2"}}]}]

execute if score ゲッサーが占い師を撃ちぬける mawSettings matches 1 as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"占い師だ！","color":"yellow","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 3"}}]}]
execute if score ゲッサーが霊媒師を撃ちぬける mawSettings matches 1 as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"霊媒師だ！","color":"yellow","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 4"}}]}]
execute as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"村人だ！","color":"green","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 5"}}]}]

execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"シェリフだ！","color":"#f8cd46","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 6"}}]}]

execute if data storage datapack:server {mawSettings:{"Phantom":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"生霊だ！","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 7"}}]}]

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score 両方のゲッサーが出現する確率 mawSettings matches 10..100 as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0,EvilGuesser=1}] run tellraw @s [{"translate":"           %s","with":[{"text":"ナイスゲッサーだ！","color":"#ffff00","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 8"}}]}]

execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"タイムロードだ！","color":"#0028f5","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 11"}}]}]

execute if data storage datapack:server {mawSettings:{"Spy":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"スパイだ！","color":"dark_red","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 13"}}]}]

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"弁護士だ！","color":"#869919","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 9"}}]}]

execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"アーソニストだ！","color":"#ee702e","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 10"}}]}]

execute if data storage datapack:server {mawSettings:{"Jester":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"ジェスターだ！","color":"#ec62a5","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 16"}}]}]

execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"ペスト医師だ！","color":"#ffc000","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 17"}}]}]

execute if data storage datapack:server {mawSettings:{"UnilateralLover":1b}} as @a[scores={CurrentRole=8,Guess=1..,DeathCount=0}] run tellraw @s [{"translate":"           %s","with":[{"text":"純愛者だ！","color":"#ffc000","underlined":true,"bold":true,"clickEvent":{"action":"run_command","value":"/trigger GuessRole set 20"}}]}]
