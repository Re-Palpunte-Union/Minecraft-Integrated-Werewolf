###役職有効化
##システム
execute unless data storage datapack:server {mawSettings:{"FookShot":0b}} unless data storage datapack:server {mawSettings:{"FookShot":1b}} run data modify storage datapack:server mawSettings merge value {"FookShot":0b}
##人狼陣営
#ドールメーカー(12)
execute unless data storage datapack:server {mawSettings:{"DollMaker":0b}} unless data storage datapack:server {mawSettings:{"DollMaker":1b}} run data modify storage datapack:server mawSettings merge value {"DollMaker":0b}
#クリーナー(14)
execute unless data storage datapack:server {mawSettings:{"Cleaner":0b}} unless data storage datapack:server {mawSettings:{"Cleaner":1b}} run data modify storage datapack:server mawSettings merge value {"Cleaner":0b}
#ヴァンパイア(15)
execute unless data storage datapack:server {mawSettings:{"Vampire":0b}} unless data storage datapack:server {mawSettings:{"Vampire":1b}} run data modify storage datapack:server mawSettings merge value {"Vampire":0b}
#マフィア(18)
execute unless data storage datapack:server {mawSettings:{"Mafia":0b}} unless data storage datapack:server {mawSettings:{"Mafia":1b}} run data modify storage datapack:server mawSettings merge value {"Mafia":0b}
#トリックスター(19)
execute unless data storage datapack:server {mawSettings:{"Trickster":0b}} unless data storage datapack:server {mawSettings:{"Trickster":1b}} run data modify storage datapack:server mawSettings merge value {"Trickster":0b}

##村人陣営
#占い師
execute unless data storage datapack:server {mawSettings:{"Seer":0b}} unless data storage datapack:server {mawSettings:{"Seer":1b}} run data modify storage datapack:server mawSettings merge value {"Seer":1b}
#シェリフ(6)
execute unless data storage datapack:server {mawSettings:{"Sheriff":0b}} unless data storage datapack:server {mawSettings:{"Sheriff":1b}} run data modify storage datapack:server mawSettings merge value {"Sheriff":0b}
#生霊(7)
execute unless data storage datapack:server {mawSettings:{"Phantom":0b}} unless data storage datapack:server {mawSettings:{"Phantom":1b}} run data modify storage datapack:server mawSettings merge value {"Phantom":0b}
#タイムロード(11)
execute unless data storage datapack:server {mawSettings:{"TimeLoad":0b}} unless data storage datapack:server {mawSettings:{"TimeLoad":1b}} run data modify storage datapack:server mawSettings merge value {"TimeLoad":0b}
#スパイ(13)
execute unless data storage datapack:server {mawSettings:{"Spy":0b}} unless data storage datapack:server {mawSettings:{"Spy":1b}} run data modify storage datapack:server mawSettings merge value {"Spy":0b}
##両陣営可能
#ゲッサー(7)
execute unless data storage datapack:server {mawSettings:{"Guesser":0b}} unless data storage datapack:server {mawSettings:{"Guesser":1b}} run data modify storage datapack:server mawSettings merge value {"Guesser":0b}
#恋人(Lovers)
execute unless data storage datapack:server {mawSettings:{"Lovers":0b}} unless data storage datapack:server {mawSettings:{"Lovers":1b}} run data modify storage datapack:server mawSettings merge value {"Lovers":0b}
##第三陣営
#弁護士(9)
execute unless data storage datapack:server {mawSettings:{"Lawyer":0b}} unless data storage datapack:server {mawSettings:{"Lawyer":1b}} run data modify storage datapack:server mawSettings merge value {"Lawyer":0b}
#アーソニスト(10)
execute unless data storage datapack:server {mawSettings:{"Arsonist":0b}} unless data storage datapack:server {mawSettings:{"Arsonist":1b}} run data modify storage datapack:server mawSettings merge value {"Arsonist":0b}
#ジェスター(16)
execute unless data storage datapack:server {mawSettings:{"Jester":0b}} unless data storage datapack:server {mawSettings:{"Jester":1b}} run data modify storage datapack:server mawSettings merge value {"Jester":0b}
#ペスト医師(17)
execute unless data storage datapack:server {mawSettings:{"PlagueDoctor":0b}} unless data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run data modify storage datapack:server mawSettings merge value {"PlagueDoctor":0b}
#純愛者(20)
execute unless data storage datapack:server {mawSettings:{"UnilateralLover":0b}} unless data storage datapack:server {mawSettings:{"UnilateralLover":1b}} run data modify storage datapack:server mawSettings merge value {"UnilateralLover":0b}


###特殊役職詳細設定
##人狼陣営
#ドールメーカー(12)
execute unless score ドールメーカーが狂人をつくれる mawSettings matches 0..1 run scoreboard players set ドールメーカーが狂人をつくれる mawSettings 0
##村人陣営
#シェリフ(6)
execute unless score シェリフが狂人をキルできる mawSettings matches 0..1 run scoreboard players set シェリフが狂人をキルできる mawSettings 0
execute unless score シェリフが第三陣営をキルできる mawSettings matches 0..1 run scoreboard players set シェリフが第三陣営をキルできる mawSettings 0
#タイムロード(11)
execute unless score タイムロード中に死者を復活させる mawSettings matches 0..1 run scoreboard players set タイムロード中に死者を復活させる mawSettings 0
#スパイ(13)
execute unless score スパイがシェリフにキルされる mawSettings matches 0..1 run scoreboard players set スパイがシェリフにキルされる mawSettings 0
##両陣営可能
#ゲッサー(8)
execute unless score イビルゲッサーになる確率 mawSettings matches 0..100 run scoreboard players set イビルゲッサーになる確率 mawSettings 50
execute unless score 両方のゲッサーが出現する確率 mawSettings matches 0..100 run scoreboard players set 両方のゲッサーが出現する確率 mawSettings 0
execute unless score ゲッサーが占い師を撃ちぬける mawSettings matches 0..1 run scoreboard players set ゲッサーが占い師を撃ちぬける mawSettings 0
execute unless score ゲッサーが霊媒師を撃ちぬける mawSettings matches 0..1 run scoreboard players set ゲッサーが霊媒師を撃ちぬける mawSettings 0
#第三陣営
#弁護士
execute unless score 依頼人が依頼されてることがわかる mawSettings matches 0..1 run scoreboard players set 依頼人が依頼されてることがわかる mawSettings 0
