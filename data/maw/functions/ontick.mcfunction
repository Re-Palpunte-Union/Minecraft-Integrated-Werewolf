#################################################################
# Phase
# 1 生霊タイム
# 2 ゲーム開始までのカウントダウン
# 3 ゲーム中
#################################################################

function maw:system/enable_roles

execute if score #maw Phase matches 1 run function maw:system/preparation/ontick
execute if score #maw Phase matches 2 run function maw:system/preparation/countdown
execute if score #maw Phase matches 3 run function maw:system/ongame/ongame
execute if score #maw Phase matches 3 run function maw:system/time/tick
## Login with en route
function maw:system/en_route
