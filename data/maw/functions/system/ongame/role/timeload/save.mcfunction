#PosとRotationを保存
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Pos append from entity @s Pos
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindTime.Rotation append from entity @s Rotation
