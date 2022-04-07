#透明化
effect give @s invisibility 1 0 true
#恋人表示(Lovers)
execute at @a[scores={Lovers=1..2,DeathCount=0}] run particle dust 0.8 0 1 1 ~ ~2.3 ~ 0 0 0 0 5 force @s
#依頼人表示(Client)
execute at @a[scores={Client=1,DeathCount=0}] run particle dust 0.459 0.761 0.212 1 ~ ~2 ~ 0 0 0 0 5 force @s
#油だらけの人表示(Douse)
execute at @a[scores={DeathCount=0},tag=Douse] run particle dust 1 0.569 0 1 ~ ~2.6 ~ 0.2 0.2 0.2 0 10 force @s
#感染者表示(Infect)
execute at @a[scores={DeathCount=0},tag=Infect,tag=!PlagueDoctor] run particle dust 1 0.816 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 10 force @s
