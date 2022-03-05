gamemode adventure @a
clear @a
effect clear @a
tag @a remove Starter

difficulty peaceful

execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} run team join MADMAN @a[scores={CurrentRole=2}]
#execute if data storage datapack:server {mawSettings:{"DollMaker":1b}} if score ドールメーカーが狂人を任命できる mawSettings matches 1 run team join MADMAN @a[scores={CurrentRole=2}]

execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run team join CLIENT @a[scores={Client=1}]
execute if data storage datapack:server {mawSettings:{"Lawyer":1b}} run team join PURSUER @a[scores={Pursuer=1,CurrentRole=9}]

scoreboard players set @a[tag=Doll] DollMaker 0

execute if entity @a[tag=Winner,tag=ToLoving] run tag @a[scores={CurrentRole=20},tag=UnilateralLover] add Winner
execute if data storage datapack:server {mawSettings:{"UnilateralLover":1b}} if entity @a[scores={CurrentRole=20},tag=UnilateralLover,tag=Winner] run title @a subtitle [{"text":"+追加勝利条件達成: 純愛者","color":"#66ffa5"}]
execute if data storage datapack:server {mawSettings:{"UnilateralLover":1b}} as @a[scores={CurrentRole=20},tag=UnilateralLover,tag=Winner] run stopsound @s

execute as @a run function maw:system/finish/result

tag @a[scores={CurrentRole=10},tag=Winner] remove Winner
tag @a[scores={CurrentRole=16..17},tag=Winner] remove Winner

playsound ui.toast.challenge_complete master @a[tag=Winner] ~ ~ ~ 100 1 1

execute as @a run function oh_my_dat:release

function maw:system/finish/remove/scoreboard
function maw:system/finish/remove/team
function maw:system/finish/remove/entities
function maw:system/finish/rebirth_gamerule
function maw:system/finish/remove/bossbar
function maw:system/finish/remove/tag

scoreboard players set #Neutrals mawSettings 0
