title @a title {"text":"サイコパスの勝利","color": "dark_purple"}

tag @s add Winner

playsound block.end_portal.spawn master @a[tag=!Winner] ~ ~ ~ 1 2 1

function maw:system/finish/end