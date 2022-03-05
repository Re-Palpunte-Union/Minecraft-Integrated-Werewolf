gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule keepInventory false
gamerule logAdminCommands true
gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule maxEntityCramming 0
execute if entity @a[tag=showDeathMessage] run gamerule showDeathMessages true
execute if entity @a[tag=Tester] run gamerule sendCommandFeedback true