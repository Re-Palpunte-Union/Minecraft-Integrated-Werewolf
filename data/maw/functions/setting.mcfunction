scoreboard objectives setdisplay sidebar PrevMAW
gamerule sendCommandFeedback false

tellraw @s [{"text":"                              \n","strikethrough": true,"color":"aqua","bold": true}]

tellraw @s [{"text":"フックショットの有効化","color": "reset","bold": false}]
  tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"FookShot\":1b}} run data modify storage datapack:server mawSettings merge value {\"FookShot\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「フックショット」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"FookShot\":0b}} run data modify storage datapack:server mawSettings merge value {\"FookShot\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「フックショット」を有効化"}}}]


tellraw @s [{"text":"        ","strikethrough": true,"color": "red"},{"text":"人狼陣営","strikethrough": false},{"text":"        ","strikethrough": true}]

tellraw @s [{"text":"ドールメーカーの有効化","color": "dark_red","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"DollMaker\":1b}} run data modify storage datapack:server mawSettings merge value {\"DollMaker\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ドールメーカー」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"DollMaker\":0b}} run data modify storage datapack:server mawSettings merge value {\"DollMaker\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ドールメーカー」を有効化"}}}]

tellraw @s [{"text":"クリーナーの有効化","color": "dark_red","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Cleaner\":1b}} run data modify storage datapack:server mawSettings merge value {\"Cleaner\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「クリーナー」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Cleaner\":0b}} run data modify storage datapack:server mawSettings merge value {\"Cleaner\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「クリーナー」を有効化"}}}]

tellraw @s [{"text":"ヴァンパイアの有効化","color": "dark_red","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Vampire\":1b}} run data modify storage datapack:server mawSettings merge value {\"Vampire\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ヴァンパイア」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Vampire\":0b}} run data modify storage datapack:server mawSettings merge value {\"Vampire\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ヴァンパイア」を有効化"}}}]

tellraw @s [{"text":"サイドキックの有効化","color": "dark_red","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Sidekick\":1b}} run data modify storage datapack:server mawSettings merge value {\"Sidekick\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「サイドキック」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Sidekick\":0b}} run data modify storage datapack:server mawSettings merge value {\"Sidekick\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「サイドキック」を有効化"}}}]


tellraw @s [{"text":"        ","strikethrough": true,"color": "green"},{"text":"村人陣営","strikethrough": false},{"text":"        ","strikethrough": true}]

tellraw @s [{"text":"占い師の有効化","color": "aqua","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Seer\":1b}} run data modify storage datapack:server mawSettings merge value {\"Seer\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「占い師」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Seer\":0b}} run data modify storage datapack:server mawSettings merge value {\"Seer\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「占い師」を有効化"}}}]

tellraw @s [{"text":"シェリフの有効化","color": "#f8cd46","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Sheriff\":1b}} run data modify storage datapack:server mawSettings merge value {\"Sheriff\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「シェリフ」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Sheriff\":0b}} run data modify storage datapack:server mawSettings merge value {\"Sheriff\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「シェリフ」を有効化"}}}]

tellraw @s [{"text":"生霊の有効化","color": "blue","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Phantom\":1b}} run data modify storage datapack:server mawSettings merge value {\"Phantom\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「生霊」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Phantom\":0b}} run data modify storage datapack:server mawSettings merge value {\"Phantom\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「生霊」を有効化"}}}]

tellraw @s [{"text":"タイムロードの有効化","color": "#0028f5","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"TimeLoad\":1b}} run data modify storage datapack:server mawSettings merge value {\"TimeLoad\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「タイムロード」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"TimeLoad\":0b}} run data modify storage datapack:server mawSettings merge value {\"TimeLoad\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「タイムロード」を有効化"}}}]

tellraw @s [{"text":"スパイの有効化","color": "dark_red","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Spy\":1b}} run data modify storage datapack:server mawSettings merge value {\"Spy\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「スパイ」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Spy\":0b}} run data modify storage datapack:server mawSettings merge value {\"Spy\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「スパイ」を有効化"}}}]


tellraw @s [{"text":"        ","strikethrough": true,"color": "dark_aqua"},{"text":"両陣営可能","strikethrough": false},{"text":"        ","strikethrough": true}]

tellraw @s [{"text":"ゲッサーの有効化","color": "#ffff00","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Guesser\":1b}} run data modify storage datapack:server mawSettings merge value {\"Guesser\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ゲッサー」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Guesser\":0b}} run data modify storage datapack:server mawSettings merge value {\"Guesser\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ゲッサー」を有効化"}}}]

tellraw @s [{"text":"恋人の有効化","color": "#e839b9","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Lovers\":1b}} run data modify storage datapack:server mawSettings merge value {\"Lovers\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「恋人」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Lovers\":0b}} run data modify storage datapack:server mawSettings merge value {\"Lovers\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「恋人」を有効化"}}}]


tellraw @s [{"text":"        ","strikethrough": true,"color": "dark_purple"},{"text":"第三陣営","strikethrough": false},{"text":"        ","strikethrough": true}]

tellraw @s [{"text":"弁護士の有効化","color": "#869919","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Lawyer\":1b}} run data modify storage datapack:server mawSettings merge value {\"Lawyer\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「弁護士」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Lawyer\":0b}} run data modify storage datapack:server mawSettings merge value {\"Lawyer\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「弁護士」を有効化"}}}]

tellraw @s [{"text":"アーソニストの有効化","color": "#ee702e","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Arsonist\":1b}} run data modify storage datapack:server mawSettings merge value {\"Arsonist\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「アーソニスト」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Arsonist\":0b}} run data modify storage datapack:server mawSettings merge value {\"Arsonist\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「アーソニスト」を有効化"}}}]

tellraw @s [{"text":"ジェスターの有効化","color": "#ec62a5","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Jester\":1b}} run data modify storage datapack:server mawSettings merge value {\"Jester\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ジェスター」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"Jester\":0b}} run data modify storage datapack:server mawSettings merge value {\"Jester\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ジェスター」を有効化"}}}]

tellraw @s [{"text":"ペスト医師の有効化","color": "#ffc000","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"PlagueDoctor\":1b}} run data modify storage datapack:server mawSettings merge value {\"PlagueDoctor\":0b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ペスト医師」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if data storage datapack:server {mawSettings:{\"PlagueDoctor\":0b}} run data modify storage datapack:server mawSettings merge value {\"PlagueDoctor\":1b}"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ペスト医師」を有効化"}}}]


tellraw @s [{"text":"        ","strikethrough": true,"color": "gold"},{"text":"特殊役職詳細設定","strikethrough": false},{"text":"        ","strikethrough": true}]

tellraw @s [{"text":"[シェリフ] ","color": "#f8cd46","bold": true},{"text":"狂人をキルできる","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score シェリフが狂人をキルできる mawSettings matches 1 run scoreboard players set シェリフが狂人をキルできる mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「シェリフが狂人をキルできる」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score シェリフが狂人をキルできる mawSettings matches 0 run scoreboard players add シェリフが狂人をキルできる mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「シェリフが狂人をキルできる」を有効化"}}}]

tellraw @s [{"text":"[シェリフ] ","color": "#f8cd46","bold": true},{"text":"第三陣営をキルできる","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score シェリフが第三陣営をキルできる mawSettings matches 1 run scoreboard players set シェリフが第三陣営をキルできる mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「シェリフが第三陣営をキルできる」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score シェリフが第三陣営をキルできる mawSettings matches 0 run scoreboard players add シェリフが第三陣営をキルできる mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「シェリフが第三陣営をキルできる」を有効化"}}}]


tellraw @s [{"text":"[ゲッサー] ","color": "#ffff00","bold": true},{"text":"イビルゲッサーになる確率","color": "reset","bold": false}]
 tellraw @s [{"text":"          "},{"text":" - ","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score イビルゲッサーになる確率 mawSettings matches 10.. run scoreboard players remove イビルゲッサーになる確率 mawSettings 10"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「イビルゲッサーになる確率」を10%下げる"}}},{"text":"       "},{"text":" + ","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score イビルゲッサーになる確率 mawSettings matches ..90 run scoreboard players add イビルゲッサーになる確率 mawSettings 10"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「イビルゲッサーになる確率」を10%上げる"}}}]

tellraw @s [{"text":"[ゲッサー] ","color": "#ffff00","bold": true},{"text":"両方のゲッサーが出現する確率","color": "reset","bold": false}]
 tellraw @s [{"text":"          "},{"text":" - ","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score 両方のゲッサーが出現する確率 mawSettings matches 10.. run scoreboard players remove 両方のゲッサーが出現する確率 mawSettings 10"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「両方のゲッサーが出現する確率」を10%下げる"}}},{"text":"       "},{"text":" + ","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score 両方のゲッサーが出現する確率 mawSettings matches ..90 run scoreboard players add 両方のゲッサーが出現する確率 mawSettings 10"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「両方のゲッサーが出現する確率」を10%上げる"}}}]

tellraw @s [{"text":"[ゲッサー] ","color": "#ffff00","bold": true},{"text":"占い師を撃ちぬける","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score ゲッサーが占い師を撃ちぬける mawSettings matches 1 run scoreboard players set ゲッサーが占い師を撃ちぬける mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ゲッサーが占い師を撃ちぬける」を無効化にする"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score ゲッサーが占い師を撃ちぬける mawSettings matches 0 run scoreboard players add ゲッサーが占い師を撃ちぬける mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ゲッサーが占い師を撃ちぬける」を有効化"}}}]

tellraw @s [{"text":"[ゲッサー] ","color": "#ffff00","bold": true},{"text":"霊媒師を撃ちぬける","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score ゲッサーが霊媒師を撃ちぬける mawSettings matches 1 run scoreboard players set ゲッサーが霊媒師を撃ちぬける mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ゲッサーが霊媒師を撃ちぬける」を無効化にする"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score ゲッサーが霊媒師を撃ちぬける mawSettings matches 0 run scoreboard players add ゲッサーが霊媒師を撃ちぬける mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「ゲッサーが霊媒師を撃ちぬける」を有効化"}}}]


tellraw @s [{"text":"[弁護士] ","color": "#869919","bold": true},{"text":"依頼人が依頼されてることがわかる","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score 依頼人が依頼されてることがわかる mawSettings matches 1 run scoreboard players set 依頼人が依頼されてることがわかる mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「依頼人が依頼されてることがわかる」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score 依頼人が依頼されてることがわかる mawSettings matches 0 run scoreboard players add 依頼人が依頼されてることがわかる mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「依頼人が依頼されてることがわかる」を有効化"}}}]


tellraw @s [{"text":"[タイムロード] ","color": "#0028f5","bold": true},{"text":"タイムロード中に死者を復活させる","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score タイムロード中に死者を復活させる mawSettings matches 1 run scoreboard players set タイムロード中に死者を復活させる mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「タイムロード中に死者を復活させる」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score タイムロード中に死者を復活させる mawSettings matches 0 run scoreboard players add タイムロード中に死者を復活させる mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「タイムロード中に死者を復活させる」を有効化"}}}]


tellraw @s [{"text":"[スパイ] ","color": "dark_red","bold": true},{"text":"シェリフにキルされる","color": "reset","bold": false}]
 tellraw @s [{"text":"        "},{"text":"無効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score スパイがシェリフにキルされる mawSettings matches 1 run scoreboard players set スパイがシェリフにキルされる mawSettings 0"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「スパイがシェリフにキルされる」を無効化"}}},{"text":"    "},{"text":"有効化","bold": true,"clickEvent": {"action": "run_command","value": "/execute if score スパイがシェリフにキルされる mawSettings matches 0 run scoreboard players add スパイがシェリフにキルされる mawSettings 1"},"hoverEvent": {"action":"show_text","value":{"text":"クリックして「スパイがシェリフにキルされる」を有効化"}}}]



tellraw @s {"text":"\nサイドバーのスコアボードを消す","bold": true,"underlined": true,"color": "aqua","clickEvent": {"action": "run_command","value": "/scoreboard objectives setdisplay sidebar"}}

tellraw @s [{"text":"                              \n","strikethrough": true,"color":"aqua","bold": true}]
