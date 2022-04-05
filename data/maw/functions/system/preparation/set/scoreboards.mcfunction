## メインシステム
scoreboard objectives add Phase dummy
scoreboard objectives add CurrentRole dummy
scoreboard objectives add PrevRole dummy
scoreboard objectives add WolfCount dummy
scoreboard objectives add VillageCount dummy
scoreboard objectives add KillCount playerKillCount
scoreboard objectives add DeathCount deathCount
scoreboard objectives add Corpses dummy
scoreboard objectives add random_item dummy
scoreboard objectives add tick dummy
scoreboard objectives add second dummy
scoreboard objectives add glowtime dummy
scoreboard objectives add UsedCStick used:carrot_on_a_stick
scoreboard objectives add TeamWerewolf dummy
scoreboard objectives add TeamVillager dummy
scoreboard objectives add WerewolfBook dummy
scoreboard objectives add UsedBow used:bow
scoreboard objectives add UsedLPotion used:lingering_potion
scoreboard objectives add RoleDone dummy
scoreboard objectives add ReviveCount dummy

#特殊役職設定
scoreboard objectives add EnableNeutrals dummy
scoreboard objectives add mawSettings dummy

scoreboard objectives add seer trigger
scoreboard objectives add medium trigger
#生霊
scoreboard objectives add CountDown dummy
scoreboard objectives add Phantom trigger
#ゲッサー
scoreboard objectives add ShowTargets trigger
scoreboard objectives add Guess trigger
scoreboard objectives add GuessRole trigger
scoreboard objectives add EvilGuesser dummy
scoreboard objectives add BothGuesser dummy
#弁護士(追跡者)
scoreboard objectives add Pursuer dummy
scoreboard objectives add Client dummy
#アーソニスト
scoreboard objectives add DouseCount dummy
#タイムロード
scoreboard objectives add RewindTime dummy
#ドールメーカー
scoreboard objectives add DollMaker dummy
#スパイ
scoreboard objectives add Spy dummy
#恋人
scoreboard objectives add LoversCount dummy
scoreboard objectives add Lovers dummy
#クリーナー
scoreboard objectives add Cleaner dummy
#ヴァンパイア
scoreboard objectives add BiteCount dummy
#ペスト医師
scoreboard objectives add InfectCount dummy
#トリックスター
scoreboard objectives add Trickster dummy
scoreboard objectives add Teleporter1 dummy
scoreboard objectives add Teleporter2 dummy
scoreboard objectives add Teleporter3 dummy
scoreboard objectives add LightsDown dummy
scoreboard objectives add CoolDown dummy
scoreboard objectives add enable dummy
#サイコパス
scoreboard objectives add PsychopathCount dummy

## ランダムアイテム
scoreboard objectives add malgunarrow minecraft.used:minecraft.crossbow
scoreboard objectives add mal-x dummy
scoreboard objectives add mal-y dummy
scoreboard objectives add mal-z dummy
scoreboard objectives add mal-eye dummy
scoreboard objectives add FireCross dummy
scoreboard objectives add Shield custom:damage_blocked_by_shield
scoreboard objectives add BrokeCount dummy
scoreboard objectives add SkillTime dummy

###set score
scoreboard players set @a RoleDone 0
scoreboard players set #OP OPAdmin 1
scoreboard players set #maw tick 0
scoreboard players set #maw second 0
scoreboard players set #maw glowtime 300
scoreboard players set @a[gamemode=!spectator] CurrentRole 0
scoreboard players set @a seer 0
scoreboard players set @a medium 0
scoreboard players set @a DeathCount 0
scoreboard players set @a tick 0

##特殊役職詳細設定


#生霊
scoreboard players set @a Phantom 0
execute if data storage datapack:server {mawSettings:{"Phantom":1b}} run scoreboard players set #maw Phase 1
#ゲッサー
scoreboard players set @a ShowTargets 0
scoreboard players set @a Guess 0
scoreboard players set @a GuessRole 0
execute if data storage datapack:server {mawSettings:{"Guesser":0b}} run scoreboard players set #maw EvilGuesser 0
execute if data storage datapack:server {mawSettings:{"Guesser":1b}} run scoreboard players set #maw BothGuesser 0
#弁護士(追跡者)
scoreboard players set @a Pursuer 0
scoreboard players set @a Client 0
#アーソニスト
execute if data storage datapack:server {mawSettings:{"Arsonist":1b}} as @a[scores={PlayerNumber=1..}] run scoreboard players add #maw DouseCount 1
#ドールメーカー
scoreboard players set @a DollMaker 0
#スパイ
scoreboard players set @a Spy 0
#恋人
scoreboard players set @a Lovers 0
#クリーナー
scoreboard players set @a Cleaner 0
#ペスト医師
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} as @a[scores={PlayerNumber=1..}] run scoreboard players add #maw InfectCount 1
execute if data storage datapack:server {mawSettings:{"PlagueDoctor":1b}} run scoreboard players set @a InfectCount 0
#トリックスター
scoreboard players set @a Trickster 0
scoreboard players set @a Teleporter1 0
scoreboard players set @a Teleporter2 0
scoreboard players set @a Teleporter3 0
scoreboard players set @a enable 0
scoreboard players set @a LightsDown 0
scoreboard players set @a CoolDown 0
scoreboard players set #maw Trickster 1
scoreboard players set #Trickster LightsDown 0

#ランダムアイテム
scoreboard players set @a CountDown 5
scoreboard players set @a BrokeCount 0
scoreboard players set @a[scores={CurrentRole=0},gamemode=!spectator] random_item 0
function maw:system/preparation/random_item
