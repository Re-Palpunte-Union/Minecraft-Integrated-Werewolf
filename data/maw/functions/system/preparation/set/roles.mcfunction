#################################################################
######### 役職score number
# 1w 人狼 red
# 2w 狂人 light_purple
# 3v 占い師 aqua
# 4v 霊媒師 yellow
# 5v 村人 green
#########特殊役職#########
# 6v シェリフ #f8cd46
# 7v 生霊 blue
# 8wov ゲッサー #ffff00
# 9n 弁護士(追跡者) #869919
# 10n アーソニスト #ee702e
# 11v タイムロード #0028f5
# 12w ドールメーカー dark_red
# 13v スパイ dark_red
# 14w クリーナー dark_red
# 15w ヴァンパイア dark_red
# 16n ジェスター #ec62a5
# 17n ペスト医師 #ffc000
# 18w マフィア dark_red
# 19w トリックスター dark_red
# 20n 純愛者 #66ffa5
# 21n サイコパス dark_purple
#########サブ役職#########
# Lovers 恋人 #e839b9
#################################################################

execute if data storage datapack:server {mawSettings:{"Guesser":1b}} run function maw:system/preparation/set/guesser_select
execute if data storage datapack:server {mawSettings:{"Phantom":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 7
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 9
execute if data storage datapack:server {mawSettings:{"Jester":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 16
execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 10
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 17
execute if data storage datapack:server {mawSettings:{"TimeLoad":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 11
execute if data storage datapack:server {mawSettings:{"UnilateralLover":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 20
execute if data storage datapack:server {mawSettings:{"Psychopath":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 21
execute if data storage datapack:server {mawSettings:{"Sheriff":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 6
execute if data storage datapack:server {mawSettings:{"Guesser":0b}} if score #maw EvilGuesser matches 0 run scoreboard players set @a[sort=random,limit=2,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw EvilGuesser matches 0 if score #maw BothGuesser matches 0 run scoreboard players set @a[sort=random,limit=2,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw EvilGuesser matches 1 if score #maw BothGuesser matches 0 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if data storage datapack:server {mawSettings:{"Guesser":1b}} if score #maw BothGuesser matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if score #maw PlayerNumber matches 10.. run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if data storage datapack:server {mawSettings:{"DollMaker":0b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 2
execute if data storage datapack:server {mawSettings:{"Seer":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 3
scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 4
scoreboard players set @a[scores={CurrentRole=0},gamemode=!spectator] CurrentRole 5

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=1},gamemode=!spectator] CurrentRole 12
execute if data storage datapack:server {mawSettings:{"Spy":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=5},gamemode=!spectator] CurrentRole 13
execute if data storage datapack:server {mawSettings:{"Cleaner":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=1},gamemode=!spectator] CurrentRole 14
execute if data storage datapack:server {mawSettings:{"Vampire":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=1},gamemode=!spectator] CurrentRole 15
execute if data storage datapack:server {mawSettings:{"Mafia":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=1},gamemode=!spectator] CurrentRole 18
execute if data storage datapack:server {mawSettings:{"Trickster":1b}} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=1},gamemode=!spectator] CurrentRole 19
execute as @a[scores={CurrentRole=1..}] run scoreboard players operation @s PrevRole = @s CurrentRole

function maw:system/ongame/role/team

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run scoreboard players set @a[scores={TeamWerewolf=1},sort=random,limit=1] Client 1

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} run scoreboard players set @a[scores={CurrentRole=12,DollMaker=0}] DollMaker 1

execute if data storage datapack:server {mawSettings:{"UnilateralLover":1b}} run scoreboard players set @a[scores={CurrentRole=20,DollMaker=0}] DollMaker 1

execute if data storage datapack:server {mawSettings:{"Lovers":1b}} run scoreboard players set @a[scores={CurrentRole=1..,Lovers=0},sort=random,limit=1] Lovers 1
execute if data storage datapack:server {mawSettings:{"Lovers":1b}} run scoreboard players set @a[scores={CurrentRole=1..,Lovers=0},sort=random,limit=1] Lovers 2

execute if entity @a[scores={TeamWerewolf=0,TeamVillager=0}] run scoreboard players set #Neutrals mawSettings 1

execute as @a[scores={TeamWerewolf=1}] run scoreboard players add #maw WolfCount 1
execute as @a[scores={TeamVillager=1}] run scoreboard players add #maw VillageCount 1
execute as @a[scores={TeamWerewolf=0,TeamVillager=0}] run scoreboard players add #maw VillageCount 1
execute as @a[scores={TeamVillager=0,TeamWerewolf=0,CurrentRole=21}] run scoreboard players add #maw PsychopathCount 1

execute as @a[scores={Lovers=1..}] run scoreboard players add #maw LoversCount 1
execute if data storage datapack:server {mawSettings:{"Lovers":0b}} run scoreboard players add #maw LoversCount 0

execute as @a[scores={TeamWerewolf=1,Lovers=1..}] run scoreboard players remove #maw WolfCount 1
execute as @a[scores={TeamVillager=1,Lovers=1..}] run scoreboard players remove #maw VillageCount 1
execute if score #maw PsychopathCount matches 1 run scoreboard players remove #maw VillageCount 1

execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} run scoreboard players remove #maw DouseCount 1
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run scoreboard players remove #maw InfectCount 1
