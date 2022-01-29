scoreboard players set #maw Phase 3
effect clear @a
clear @a
playsound entity.ender_dragon.growl master @a[scores={CurrentRole=1..5}] ~ ~ ~ 100 1 1
playsound custom.start_game master @a[scores={CurrentRole=6..}] ~ ~ ~ 100 1 1
title @a[scores={CurrentRole=1..5}] title "マイクラ人狼スタート"
execute if entity @a[tag=Tester] run title @a[scores={CurrentRole=1..5}] subtitle "(デバッグモード)"

execute as @a run function maw:system/ongame/role/title

execute as @a[scores={PlayerNumber=1..}] run function maw:system/preparation/set/item
bossbar set information visible false
bossbar set time visible true
bossbar set time value 1

function oh_my_dat:sys/load