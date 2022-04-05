#役職本
scoreboard players set @a[scores={TeamWerewolf=1}] WerewolfBook 1
scoreboard players set @a[scores={CurrentRole=13,Spy=1}] WerewolfBook 1
scoreboard players set @a[scores={TeamWerewolf=0,Spy=0}] WerewolfBook 0

#人狼
scoreboard players set @a[scores={CurrentRole=1}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=1}] TeamVillager 0
#狂人
scoreboard players set @a[scores={CurrentRole=2}] TeamWerewolf 2
scoreboard players set @a[scores={CurrentRole=2}] TeamVillager 0
#占い, 霊媒, 村人, シェリフ, 生霊
scoreboard players set @a[scores={CurrentRole=3..7}] TeamVillager 1
scoreboard players set @a[scores={CurrentRole=3..7}] TeamWerewolf 0
#イビルゲッサー
scoreboard players set @a[scores={CurrentRole=8,EvilGuesser=1}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=8,EvilGuesser=1}] TeamVillager 0
#ナイスゲッサー
scoreboard players set @a[scores={CurrentRole=8,EvilGuesser=0}] TeamVillager 1
scoreboard players set @a[scores={CurrentRole=8,EvilGuesser=0}] TeamWerewolf 0
#弁護士(追跡者), アーソニスト
scoreboard players set @a[scores={CurrentRole=9..10}] TeamWerewolf 0
scoreboard players set @a[scores={CurrentRole=9..10}] TeamVillager 0
#タイムロード
scoreboard players set @a[scores={CurrentRole=11}] TeamVillager 1
scoreboard players set @a[scores={CurrentRole=11}] TeamWerewolf 0
#ドールメーカー
scoreboard players set @a[scores={CurrentRole=12}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=12}] TeamVillager 0
#スパイ
scoreboard players set @a[scores={CurrentRole=13}] TeamVillager 1
scoreboard players set @a[scores={CurrentRole=13}] TeamWerewolf 0
scoreboard players set @a[scores={CurrentRole=13}] Spy 1
#クリーナー
scoreboard players set @a[scores={CurrentRole=14}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=14}] TeamVillager 0
#ヴァンパイア
scoreboard players set @a[scores={CurrentRole=15}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=15}] TeamVillager 0
#ジェスター
scoreboard players set @a[scores={CurrentRole=16}] TeamWerewolf 0
scoreboard players set @a[scores={CurrentRole=16}] TeamVillager 0
#ペスト医師
scoreboard players set @a[scores={CurrentRole=17}] TeamWerewolf 0
scoreboard players set @a[scores={CurrentRole=17}] TeamVillager 0
#マフィア
scoreboard players set @a[scores={CurrentRole=18}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=18}] TeamVillager 0
#トリックスター
scoreboard players set @a[scores={CurrentRole=19}] TeamWerewolf 1
scoreboard players set @a[scores={CurrentRole=19}] TeamVillager 0
#純愛者
scoreboard players set @a[scores={CurrentRole=20}] TeamWerewolf 0
scoreboard players set @a[scores={CurrentRole=20}] TeamVillager 0
#サイコパス
scoreboard players set @a[scores={CurrentRole=21}] TeamWerewolf 0
scoreboard players set @a[scores={CurrentRole=21}] TeamVillager 0
