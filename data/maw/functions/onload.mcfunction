tellraw @a "\n------------------------------------\n"
tellraw @a [{"translate":"統合人狼 made by %s","with":[{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
tellraw @a [{"translate":"\n開始コマンド   %s","with": [{"text":"/function #maw:start","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #maw:start"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a [{"translate":"\n終了コマンド   %s","with": [{"text":"/function #maw:stop","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #maw:stop"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a [{"translate":"\n特殊役職設定   %s","with": [{"text":"/function #maw:setting","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #maw:setting"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a "\n------------------------------------\n"

scoreboard objectives add PrevMAW dummy {"text":"統合人狼"}
scoreboard players set 有効化された特殊役職設定一覧 PrevMAW 1000

## 設定
function maw:system/load/add_settings

## 勝者テキスト表示
function maw:system/load/winner_texts/
function maw:system/load/additional_winner_texts/