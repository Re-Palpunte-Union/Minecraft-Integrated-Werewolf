execute if data storage datapack:server {mawSettings:{"Lovers":1b}} unless score 恋人 PrevMAW matches -100 run scoreboard players set 恋人 PrevMAW -100
execute if data storage datapack:server {mawSettings:{"Lovers":0b}} if score 恋人 PrevMAW matches -100 run scoreboard players reset 恋人 PrevMAW

execute if data storage datapack:server {mawSettings:{"Seer":1b}} unless score 占い師 PrevMAW matches -4 run scoreboard players set 占い師 PrevMAW -4
execute if data storage datapack:server {mawSettings:{"Seer":0b}} if score 占い師 PrevMAW matches -4 run scoreboard players reset 占い師 PrevMAW

execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} unless score シェリフ PrevMAW matches -6 run scoreboard players set シェリフ PrevMAW -6
execute if data storage datapack:server {mawSettings:{"Sheriff":0b}} if score シェリフ PrevMAW matches -6 run scoreboard players reset シェリフ PrevMAW

execute if data storage datapack:server {mawSettings:{"Phantom":1b}} unless score 生霊 PrevMAW matches -7 run scoreboard players set 生霊 PrevMAW -7
execute if data storage datapack:server {mawSettings:{"Phantom":0b}} if score 生霊 PrevMAW matches -7 run scoreboard players reset 生霊 PrevMAW

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} unless score ゲッサー PrevMAW matches -8 run scoreboard players set ゲッサー PrevMAW -8
execute if data storage datapack:server {mawSettings:{"Guesser":0b}} if score ゲッサー PrevMAW matches -8 run scoreboard players reset ゲッサー PrevMAW

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score ゲッサー PrevMAW matches -8 run scoreboard players operation イビルゲッサーになる確率 PrevMAW = イビルゲッサーになる確率 mawSettings
execute unless score ゲッサー PrevMAW matches -8 run scoreboard players reset イビルゲッサーになる確率 PrevMAW

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score ゲッサー PrevMAW matches -8 run scoreboard players operation 両方のゲッサーが出現する確率 PrevMAW = 両方のゲッサーが出現する確率 mawSettings
execute unless score ゲッサー PrevMAW matches -8 run scoreboard players reset 両方のゲッサーが出現する確率 PrevMAW

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} unless score 弁護士 PrevMAW matches -9 run scoreboard players set 弁護士 PrevMAW -9
execute if data storage datapack:server {mawSettings:{"Lawyer":0b}} if score 弁護士 PrevMAW matches -9 run scoreboard players reset 弁護士 PrevMAW

execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} unless score アーソニスト PrevMAW matches -10 run scoreboard players set アーソニスト PrevMAW -10
execute if data storage datapack:server {mawSettings:{"Arsonist":0b}} if score アーソニスト PrevMAW matches -10 run scoreboard players reset アーソニスト PrevMAW

execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} unless score タイムロード PrevMAW matches -11 run scoreboard players set タイムロード PrevMAW -11
execute if data storage datapack:server {mawSettings:{"TimeLoad":0b}} if score タイムロード PrevMAW matches -11 run scoreboard players reset タイムロード PrevMAW

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} unless score ドールメーカー PrevMAW matches -12 run scoreboard players set ドールメーカー PrevMAW -12
execute if data storage datapack:server {mawSettings:{"DollMaker":0b}} if score ドールメーカー PrevMAW matches -12 run scoreboard players reset ドールメーカー PrevMAW

execute if data storage datapack:server {mawSettings:{"Spy":1b}} unless score スパイ PrevMAW matches -13 run scoreboard players set スパイ PrevMAW -13
execute if data storage datapack:server {mawSettings:{"Spy":0b}} if score スパイ PrevMAW matches -13 run scoreboard players reset スパイ PrevMAW

execute if data storage datapack:server {mawSettings:{"Cleaner":1b}} unless score クリーナー PrevMAW matches -14 run scoreboard players set クリーナー PrevMAW -14
execute if data storage datapack:server {mawSettings:{"Cleaner":0b}} if score クリーナー PrevMAW matches -14 run scoreboard players reset クリーナー PrevMAW

execute if data storage datapack:server {mawSettings:{"Vampire":1b}} unless score ヴァンパイア PrevMAW matches -15 run scoreboard players set ヴァンパイア PrevMAW -15
execute if data storage datapack:server {mawSettings:{"Vampire":0b}} if score ヴァンパイア PrevMAW matches -15 run scoreboard players reset ヴァンパイア PrevMAW

execute if data storage datapack:server {mawSettings:{"Jester":1b}} unless score ジェスター PrevMAW matches -16 run scoreboard players set ジェスター PrevMAW -16
execute if data storage datapack:server {mawSettings:{"Jester":0b}} if score ジェスター PrevMAW matches -16 run scoreboard players reset ジェスター PrevMAW

execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} unless score ペスト医師 PrevMAW matches -17 run scoreboard players set ペスト医師 PrevMAW -17
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":0b}} if score ペスト医師 PrevMAW matches -17 run scoreboard players reset ペスト医師 PrevMAW

execute if data storage datapack:server {mawSettings:{"Mafia":1b}} unless score マフィア PrevMAW matches -18 run scoreboard players set マフィア PrevMAW -18
execute if data storage datapack:server {mawSettings:{"Mafia":0b}} if score マフィア PrevMAW matches -18 run scoreboard players reset マフィア PrevMAW

execute if data storage datapack:server {mawSettings:{"Trickster":1b}} unless score トリックスター PrevMAW matches -19 run scoreboard players set トリックスター PrevMAW -19
execute if data storage datapack:server {mawSettings:{"Trickster":0b}} if score トリックスター PrevMAW matches -19 run scoreboard players reset トリックスター PrevMAW
