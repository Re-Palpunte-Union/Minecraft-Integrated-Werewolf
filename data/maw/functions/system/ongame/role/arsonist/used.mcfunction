schedule function maw:system/ongame/role/give_ability/arsonist 10s
clear @s carrot_on_a_stick{CustomModelData:2} 1
playsound custom.role.kill master @s ~ ~ ~ 1 1 1
title @s actionbar [{"selector":"@a[sort=nearest,limit=1,distance=1..10,scores={DeathCount=0},tag=!Douse]","color": "#ee702e","bold": true},{"text":" にオイルを塗った！","color": "reset"}]
execute as @a[sort=nearest,limit=1,distance=1..10,scores={DeathCount=0},tag=!Douse] run tag @s add Douse