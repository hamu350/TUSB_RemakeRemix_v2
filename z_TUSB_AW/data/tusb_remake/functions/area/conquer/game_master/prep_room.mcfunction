#> tusb_remake:area/conquer/game_master/prep_room
# ボス部屋に移動

# conquer.countを取得
    execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total

# tag付与
    tag @s add GameMasterArea
# tag削除
    # if conquer.count < 30
        execute if score _ TUSB matches ..29 run tag @s remove GameMasterArea
        execute if score _ TUSB matches ..29 run tellraw @s {"text": "30島の攻略が必要です！"}
    # if Inventory[0]
        execute if entity @s[tag=GameMasterArea] if data entity @s Inventory[0] run tellraw @s {"text":"アイテム持ち込み不可エリアです！","color":"dark_red","bold":true}
        execute if entity @s[tag=GameMasterArea] if data entity @s Inventory[0] run tag @s remove GameMasterArea
    # if battle=1b & !has_tag(GameMasterBattle)
        execute if entity @s[tag=GameMasterArea] if data storage tusb_remake: game_master{battle:1b} unless entity @s[tag=GameMasterBattle] run tellraw @s {"text":"§4§l他の人が戦闘中は戦っていた人以外入場不可です！"}
        execute if entity @s[tag=GameMasterArea] if data storage tusb_remake: game_master{battle:1b} unless entity @s[tag=GameMasterBattle] run tag @s remove GameMasterArea

# torch
    execute if entity @s[tag=GameMasterArea] if data storage tusb_remake: settings{toculting:1b} run give @p torch 64

# tp
    execute if entity @s[tag=GameMasterArea] run tp @s -2957 210 -33
# 敵、アイテム削除
    execute if entity @s[tag=GameMasterArea] unless data storage tusb_remake: game_master{battle:1b} at @e[type=armor_stand,tag=Boss_MarkerC] at @s run tag @e[tag=Enemy,distance=..60] add Garbage
    execute if entity @s[tag=GameMasterArea] unless data storage tusb_remake: game_master{battle:1b} at @e[type=armor_stand,tag=Boss_MarkerC] run kill @e[type=item,distance=..60]
