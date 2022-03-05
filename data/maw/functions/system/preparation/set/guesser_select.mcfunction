scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 8

summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["RandomGuesser"]}

execute if score イビルゲッサーになる確率 mawSettings matches 10..90 run scoreboard players set @e[type=armor_stand,tag=RandomGuesser] EvilGuesser 0
scoreboard players set @a[scores={CurrentRole=8}] EvilGuesser 0

execute if score イビルゲッサーになる確率 mawSettings matches 10..90 run execute as @e[scores={EvilGuesser=0},sort=random] store result score @s EvilGuesser if entity @e[scores={EvilGuesser=0},sort=random]

execute if score イビルゲッサーになる確率 mawSettings matches 10 run scoreboard players set @a[scores={EvilGuesser=2..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 10 run scoreboard players set @a[scores={EvilGuesser=1}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 20 run scoreboard players set @a[scores={EvilGuesser=3..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 20 run scoreboard players set @a[scores={EvilGuesser=1..2}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 30 run scoreboard players set @a[scores={EvilGuesser=4..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 30 run scoreboard players set @a[scores={EvilGuesser=1..3}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 40 run scoreboard players set @a[scores={EvilGuesser=5..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 40 run scoreboard players set @a[scores={EvilGuesser=1..4}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 50 run scoreboard players set @a[scores={EvilGuesser=6..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 50 run scoreboard players set @a[scores={EvilGuesser=1..5}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 60 run scoreboard players set @a[scores={EvilGuesser=7..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 60 run scoreboard players set @a[scores={EvilGuesser=1..6}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 70 run scoreboard players set @a[scores={EvilGuesser=8..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 70 run scoreboard players set @a[scores={EvilGuesser=1..7}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 80 run scoreboard players set @a[scores={EvilGuesser=9..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 80 run scoreboard players set @a[scores={EvilGuesser=1..8}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 90 run scoreboard players set @a[scores={EvilGuesser=10..}] EvilGuesser 0
execute if score イビルゲッサーになる確率 mawSettings matches 90 run scoreboard players set @a[scores={EvilGuesser=1..9}] EvilGuesser 1

execute if score イビルゲッサーになる確率 mawSettings matches 100 run scoreboard players set @a[scores={EvilGuesser=0}] EvilGuesser 1
scoreboard players operation #maw EvilGuesser = @a[scores={CurrentRole=8}] EvilGuesser



execute if score 両方のゲッサーが出現する確率 mawSettings matches 10..90 run scoreboard players set @e[type=armor_stand,tag=RandomGuesser] BothGuesser 0
scoreboard players set @a[scores={CurrentRole=8}] BothGuesser 0

execute if score 両方のゲッサーが出現する確率 mawSettings matches 10..90 run execute as @e[scores={EvilGuesser=0},sort=random] store result score @s BothGuesser if entity @e[scores={BothGuesser=0},sort=random]

execute if score 両方のゲッサーが出現する確率 mawSettings matches 10 run scoreboard players set @a[scores={BothGuesser=2..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 10 run scoreboard players set @a[scores={BothGuesser=1}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 20 run scoreboard players set @a[scores={BothGuesser=3..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 20 run scoreboard players set @a[scores={BothGuesser=1..2}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 30 run scoreboard players set @a[scores={BothGuesser=4..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 30 run scoreboard players set @a[scores={BothGuesser=1..3}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 40 run scoreboard players set @a[scores={BothGuesser=5..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 40 run scoreboard players set @a[scores={BothGuesser=1..4}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 50 run scoreboard players set @a[scores={BothGuesser=6..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 50 run scoreboard players set @a[scores={BothGuesser=1..5}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 60 run scoreboard players set @a[scores={BothGuesser=7..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 60 run scoreboard players set @a[scores={BothGuesser=1..6}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 70 run scoreboard players set @a[scores={BothGuesser=8..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 70 run scoreboard players set @a[scores={BothGuesser=1..7}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 80 run scoreboard players set @a[scores={BothGuesser=9..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 80 run scoreboard players set @a[scores={BothGuesser=1..8}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 90 run scoreboard players set @a[scores={BothGuesser=10..}] BothGuesser 0
execute if score 両方のゲッサーが出現する確率 mawSettings matches 90 run scoreboard players set @a[scores={BothGuesser=1..9}] BothGuesser 1

execute if score 両方のゲッサーが出現する確率 mawSettings matches 100 run scoreboard players set @a[scores={BothGuesser=0}] BothGuesser 1

scoreboard players operation #maw BothGuesser = @a[scores={CurrentRole=8}] BothGuesser

execute if score #maw BothGuesser matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 8

execute if score #maw BothGuesser matches 1 run scoreboard players set @a[scores={CurrentRole=8}] EvilGuesser 0
execute if score #maw BothGuesser matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=8}] EvilGuesser 1

kill @e[type=armor_stand,tag=RandomGuesser]