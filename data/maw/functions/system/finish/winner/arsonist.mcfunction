title @a title {"text":"アーソニストの勝利","color": "#ee702e"}
title @a subtitle [{"translate":"(%s)","with": [{"selector": "@a[tag=Winner]","color": "#ee702e"}]}]

stopsound @a * custom.role.be_killed
#stopsound @a * entity.blaze.shoot
playsound custom.role.victory.neutral master @a ~ ~ ~ 0.5 1 0.5


execute as @p run function maw:system/finish/end
