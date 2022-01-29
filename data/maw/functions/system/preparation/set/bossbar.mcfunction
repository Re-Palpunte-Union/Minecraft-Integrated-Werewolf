bossbar add time ""
bossbar set time max 1
bossbar set time visible false
bossbar set time players @a
bossbar set time value 1

bossbar add information ""
bossbar set information max 1
bossbar set information visible true
bossbar set information players @a
bossbar set information value 1

execute if data storage datapack:server {mawSettings:{"Phantom":1b}} run bossbar set information name {"text":"生霊が取り付き先を選択しています ","color": "aqua"}