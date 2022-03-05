#直近のPosとRotationをセット
data modify entity @e[tag=RewindTime,limit=1,sort=nearest,distance=..1] Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Pos[-1]
data modify entity @e[tag=RewindTime,limit=1,sort=nearest,distance=..1] Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Rotation[-1]
#巻き戻す
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Pos[-1]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Rotation[-1]