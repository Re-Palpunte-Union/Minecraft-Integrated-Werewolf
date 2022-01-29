#タイムロード中
gamemode spectator @s
spectate @e[tag=RewindTime,limit=1,sort=nearest,distance=..0.5] @s[distance=..0.5]

function oh_my_dat:please
function maw:system/ongame/role/timeload/remove_storage
function maw:system/ongame/role/timeload/remove_storage
function maw:system/ongame/role/timeload/remove_storage
function maw:system/ongame/role/timeload/remove_storage
function maw:system/ongame/role/timeload/remove_storage

execute if score タイムロード中に死者を復活させる mawSettings matches 1 at @e[type=armor_stand,tag=RewindTime] if entity @e[type=armor_stand,tag=Corpses,distance=..0.5,sort=nearest,limit=1] as @a[tag=!CouldNotRevive,scores={DeathCount=1..}] if score @s PlayerNumber = @e[type=armor_stand,tag=Corpses,distance=..0.5,sort=nearest,limit=1] PlayerNumber run function maw:system/ongame/role/timeload/revive
