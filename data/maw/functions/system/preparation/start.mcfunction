gamemode adventure @a[gamemode=!spectator]
title @a reset
clear @a
effect clear @a
tag @p add Starter
scoreboard objectives setdisplay sidebar
function op:system/finish/deop

function maw:system/preparation/set/gamerules
function maw:system/preparation/set/difficulty
function maw:system/preparation/set/scoreboards
function maw:system/preparation/set/roles
function maw:system/preparation/set/teams
function maw:system/preparation/set/tellraw
function maw:system/preparation/set/bossbar
function maw:system/preparation/set/tags

execute as @a run function oh_my_dat:release

function op:system/preparation/op

execute if data storage datapack:server {mawSettings:{"Phantom":0b}} run function maw:system/ongame/change_to3