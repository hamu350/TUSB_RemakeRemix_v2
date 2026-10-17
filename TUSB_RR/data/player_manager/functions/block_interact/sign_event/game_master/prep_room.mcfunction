#> player_manager:block_interact/sign_event/infinity_boss/prep_room
# 準備部屋に移動

# conquer.countを取得
    execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total

# tag付与
    tag @s add GameMasterArea

# tag削除
    # if conquer.count < 30
        execute if score _ TUSB matches ..74 run tag @s remove GameMasterArea
        execute if score _ TUSB matches ..74 run tellraw @s [{"translate": "75","color": "red"},{"translate": "島の攻略が必要です！","color": "white"}]

# トカルトモード時の処理
    execute if entity @s[tag=ISFUnreached] if entity @s[tag=GameMasterArea] unless data entity @s Inventory[0] if data storage tusb_remake: settings{toculting:1b} run clear @s torch
    execute if entity @s[tag=ISFUnreached] if entity @s[tag=GameMasterArea] unless data entity @s Inventory[0] if data storage tusb_remake: settings{toculting:1b} run clear @s lever{display: {Lore: ['"§r火が消えてしまった松明。"', '"§r篝火で火を付け直せる。"'], Name: '{"text":"§7消えた松明"}'}}
    execute if entity @s[tag=ISFUnreached] if entity @s[tag=GameMasterArea] unless data entity @s Inventory[0] if data storage tusb_remake: settings{toculting:1b} run give @s torch 64

# インベントリ確認
    execute if data entity @s Inventory[0] run tellraw @s {"text":"アイテム持ち込み不可エリアです！","color":"dark_red","bold":true}

# エフェクト除去
    execute if entity @s[tag=GameMasterArea] run effect clear @s

# 通過
    execute if entity @s[tag=GameMasterArea] unless data entity @s Inventory[0] run tp @s -2964 -60 -41
