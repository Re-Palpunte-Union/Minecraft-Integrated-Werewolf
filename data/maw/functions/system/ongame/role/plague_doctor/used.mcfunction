clear @s carrot_on_a_stick{CustomModelData:12} 1
title @s actionbar [{"selector":"@a[sort=nearest,limit=1,distance=1..10,scores={DeathCount=0},tag=!Infect,tag=!PlagueDoctor]","color": "#ffc000","bold": true},{"text":" を感染させた","color": "reset"}]
execute as @a[sort=nearest,limit=1,distance=1..10,scores={DeathCount=0},tag=!Infect,tag=!PlagueDoctor] run function maw:system/ongame/role/plague_doctor/infect
