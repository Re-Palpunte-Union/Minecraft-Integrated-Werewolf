#弓矢無効化
tag @a[scores={CurrentRole=12,DollMaker=1}] add DisableBow
tag @a[scores={CurrentRole=15}] add DisableBow
tag @a[scores={CurrentRole=17}] add DisableBow
tag @a[scores={CurrentRole=18}] add DisableBow
#シェリフターゲット
tag @a[scores={TeamWerewolf=1}] add SheriffTarget
execute if score シェリフが狂人をキルできる mawSettings matches 1 run tag @a[scores={CurrentRole=2}] add SheriffTarget
execute if score シェリフが第三陣営をキルできる mawSettings matches 1 run tag @a[scores={TeamWerewolf=0,TeamVillager=0}] add SheriffTarget
execute if score スパイがシェリフにキルされる mawSettings matches 1 run tag @a[scores={CurrentRole=13}] add SheriffTarget
#アーソニスト
tag @a[scores={CurrentRole=10}] add Douse
#ドールメーカー
tag @a[scores={CurrentRole=12,DollMaker=1}] add DollMaker
#ペスト医師
tag @a[scores={CurrentRole=17}] add PlagueDoctor