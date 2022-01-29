title @a title {"text":"引き分け","color": "gray"}
playsound block.portal.trigger master @a[scores={CurrentRole=1..}] ~ ~ ~ 1 1 1
playsound block.portal.trigger master @a[scores={CurrentRole=0}] ~ ~ ~ 0.7 2 0.7
function maw:system/finish/end
