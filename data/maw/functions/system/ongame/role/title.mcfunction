# 恋人
title @s[scores={Lovers=1}] actionbar [{"translate":"%sと%sになりました","color":"#e839b9","bold":true,"with":[{"selector":"@a[scores={Lovers=2}]"},{"text":"恋人"}]}]
title @s[scores={Lovers=2}] actionbar [{"translate":"%sと%sになりました","color":"#e839b9","bold":true,"with":[{"selector":"@a[scores={Lovers=1}]"},{"text":"恋人"}]}]
## シェリフ
title @s[scores={CurrentRole=6}] title {"text":"SHERIFF","color":"#f8cd46","bold":true}
title @s[scores={CurrentRole=6}] subtitle [{"text":"Shoot the ","color":"#f8cd46","bold":true},{"text":"Werewolf","color": "red"}]
## 生霊
title @s[scores={CurrentRole=7}] title {"text":"PHANTOM","color":"blue","bold":true}
title @s[scores={CurrentRole=7}] subtitle {"text":"Win with the player you're attached","color":"blue","bold":true}
## ナイスゲッサー
title @s[scores={CurrentRole=8,EvilGuesser=0}] title {"text":"NICE GUESSER","color":"yellow","bold":true}
execute as @a[scores={PrevRole=8,CurrentRole=8,EvilGuesser=0}] run title @s subtitle {"text":"Guess and shoot","bold": true,"color": "yellow"}
## イビルゲッサー
title @s[scores={CurrentRole=8,EvilGuesser=1}] title {"text":"EVIL GUESSER","color":"dark_red","bold":true}
execute as @a[scores={PrevRole=8,CurrentRole=8,EvilGuesser=1}] run title @s subtitle {"text":"Guess and shoot","bold": true,"color": "dark_red"}
## 弁護士
title @s[scores={CurrentRole=9}] title {"text":"LAWYER","color":"#869919","bold":true}
title @s[scores={CurrentRole=9}] subtitle {"text":"Defend your client","color":"#869919","bold":true}
## アーソニスト
title @s[scores={CurrentRole=10}] title {"text":"ARSONIST","color":"#ee702e","bold":true}
title @s[scores={CurrentRole=10}] subtitle {"text":"Let them burn","color":"#ee702e","bold":true}
## タイムロード
title @s[scores={CurrentRole=11}] title {"text":"TIME LOAD","color":"#0028f5","bold":true}
title @s[scores={CurrentRole=11}] subtitle {"text":"Rewind Time","color":"#0028f5","bold":true}
## ドールメーカー
title @s[scores={CurrentRole=12}] title {"text":"DOLLMAKER","color":"dark_red","bold":true}
title @s[scores={CurrentRole=12}] subtitle [{"text":"Make villagers art","color":"dark_red","bold":true}]
## スパイ
title @s[scores={CurrentRole=13}] title {"text":"SPY","color":"dark_red","bold":true}
title @s[scores={CurrentRole=13}] subtitle [{"text":"Confuse the ","color":"dark_red","bold":true},{"text":"Werewolf","color": "red"}]
## クリーナー
title @s[scores={CurrentRole=14}] title {"text":"CLEANER","color":"dark_red","bold":true}
title @s[scores={CurrentRole=14}] subtitle [{"text":"Kill everyone and leave no traces","color":"dark_red","bold":true}]
## ヴァンパイア
title @s[scores={CurrentRole=15}] title {"text":"VAMPIRE","color":"dark_red","bold":true}
title @s[scores={CurrentRole=15}] subtitle [{"text":"Kill everyone with your bites","color":"dark_red","bold":true}]
## ジェスター
title @s[scores={CurrentRole=16}] title {"text":"JESTER","color":"#ec62a5","bold":true}
title @s[scores={CurrentRole=16}] subtitle [{"text":"Be killed by the ","color":"#ec62a5","bold":true},{"text":"Villagers","color": "green"}]
## ペスト医師
title @s[scores={CurrentRole=17}] title {"text":"PLAGUE DOCTOR","color":"#ffc000","bold":true}
title @s[scores={CurrentRole=17}] subtitle [{"text":"Spread disease to wipe out the villager","color":"#ffc000","bold":true}]
## サイドキック
title @s[scores={CurrentRole=18}] title {"text":"MAFIA","color":"dark_red","bold":true}
title @s[scores={CurrentRole=18}] subtitle [{"text":"You are Mafia","color":"dark_red","bold":true}]
## トリックスター
title @s[scores={CurrentRole=19}] title {"text":"TRICKSTER","color":"dark_red","bold":true}
title @s[scores={CurrentRole=19}] subtitle [{"text":"Use your jack-in-the-boxes to surprise others","color":"dark_red","bold":true}]
