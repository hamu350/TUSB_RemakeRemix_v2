#> tusb_remake:boss/admission

# エフェクト除去
effect clear @s

#トカルトモード時
execute if data storage tusb_remake: settings{toculting:1b} run clear @s torch
execute if data storage tusb_remake: settings{toculting:1b} run clear @s lever{display: {Lore: ['"§r火が消えてしまった松明。"', '"§r篝火で火を付け直せる。"'], Name: '{"text":"§7消えた松明"}'}}

# インベントリの数確認
execute store result score _ TUSB if data entity @s Inventory[]

# 戦闘中関係者以外立ち入り禁止
execute if data storage tusb_remake: infinity_boss{battle:1b} unless entity @s[tag=InfinityBossBattle] run tellraw @s {"text":"ボス戦開始時に戦場にいなかった人は戦闘中に入れません！","color":"dark_red","bold":true}

# アイテム多いと拒否
execute if score _ TUSB matches 21.. run tellraw @s {"text":"アイテムを持ち込めるのは20スロットまでです。","color":"dark_red","bold":true}

# 戦闘外なので誰でもウェルカム
execute unless data storage tusb_remake: infinity_boss{battle:1b} if score _ TUSB matches ..20 run tp @s -2774 225 -280

# 関係者なので入場可能
execute if data storage tusb_remake: infinity_boss{battle:1b} if score _ TUSB matches ..20 if entity @s[tag=InfinityBossBattle] run tp @s -2774 225 -280