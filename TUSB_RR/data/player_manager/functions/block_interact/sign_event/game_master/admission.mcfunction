#> player_manager:block_interact/sign_event/game_master/admission
# ボス部屋に移動

# 戦闘中関係者以外立ち入り禁止
    execute if data storage tusb_remake: game_master{battle:1b} unless entity @s[tag=GameMasterBattle] run tellraw @s {"text":"ボス戦開始時に戦場にいなかった人は戦闘中に入れません！","color":"dark_red","bold":true}

# 関係者なので入場可能
    execute if data storage tusb_remake: game_master{battle:1b} if entity @s[tag=GameMasterBattle] run tp @s -2985 70 -41 90 0

# 戦闘外なので誰でもウェルカム
    execute unless data storage tusb_remake: game_master{battle:1b} if entity @s[tag=GameMasterBattle] run tp @s -2985 70 -41 90 0

# 敵、アイテム削除
    execute unless data storage tusb_remake: game_master{battle:1b} if entity @s[tag=GameMasterBattle] as @e[type=armor_stand,tag=Boss_MarkerC] at @s run tag @e[tag=Enemy,distance=..60] add Garbage
    execute unless data storage tusb_remake: game_master{battle:1b} if entity @s[tag=GameMasterBattle] as @e[type=armor_stand,tag=Boss_MarkerC] at @s run kill @e[type=item,distance=..60]
