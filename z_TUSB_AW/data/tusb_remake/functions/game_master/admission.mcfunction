#> tusb_remake:boss/admission

# エフェクト除去
effect clear @p

# インベントリの数確認
execute store result score _ TUSB if data entity @p Inventory[]

# 戦闘中関係者以外立ち入り禁止
execute if data storage tusb_remake: game_master{battle:1b} unless entity @p[tag=GameMasterBattle] run tellraw @p {"text":"ボス戦開始時に戦場にいなかった人は戦闘中に入れません！","color":"dark_red","bold":true}

# アイテム多いと拒否
execute if score _ TUSB matches 21.. run tellraw @p {"text":"アイテムを持ち込めるのは20スロットまでです。","color":"dark_red","bold":true}

# 戦闘外なので誰でもウェルカム
execute if data storage tusb_remake: settings{toculting:1b} unless data storage tusb_remake: game_master{battle:1b} if score _ TUSB matches ..20 run give @p torch 64

# 関係者なので入場可能
execute if data storage tusb_remake: settings{toculting:1b} if data storage tusb_remake: game_master{battle:1b} if score _ TUSB matches ..20 if entity @p[tag=GameMasterBattle] run give @p torch 64

# 戦闘外なので誰でもウェルカム
execute unless data storage tusb_remake: game_master{battle:1b} if score _ TUSB matches ..20 run tp @p -2985 70 -41 ~180 ~

# 関係者なので入場可能
execute if data storage tusb_remake: game_master{battle:1b} if score _ TUSB matches ..20 if entity @p[tag=GameMasterBattle] run tp @p -2985 70 -41

# 敵、アイテム削除
execute unless data storage tusb_remake: game_master{battle:1b} as @e[type=armor_stand,tag=Boss_MarkerC] at @s run tag @e[tag=Enemy,distance=..60] add Garbage
execute unless data storage tusb_remake: game_master{battle:1b} as @e[type=armor_stand,tag=Boss_MarkerC] at @s run kill @e[type=item,distance=..60]
