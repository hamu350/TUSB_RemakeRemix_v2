#> player_manager:death/item_drop
#
# アイテムをぶちまける
#
# @within function player_manager:death/

# インベ保存
    function api:data_get/inventory

# インベントリを空に
    clear @s

# セッション開ける
    function lib:tsb/array/session/open

# 下ごしらえ
    data modify storage remake_remix: Inventory set from storage api: Inventory
    data remove storage remake_remix: Inventory[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
    data remove storage remake_remix: Inventory[{tag:{Enchantments:[{id:"minecraft:binding_curse"}]}}]
    data remove storage remake_remix: Inventory[{tag:{Kyoumei:1b}}]
    data modify storage lib: Array set from storage remake_remix: Inventory

# 一回目
    function lib:tsb/array/packing_chest
    data modify block 3500 0 3500 Items set from storage lib: Package
    loot spawn ~ ~1 ~ mine 3500 0 3500 debug_stick
# リセット
    data remove storage lib: Package

# 二回目
    function lib:tsb/array/packing_chest
    data modify block 3500 0 3500 Items set from storage lib: Package
    loot spawn ~ ~1 ~ mine 3500 0 3500 debug_stick

# リセット
    function lib:tsb/array/session/close

# 削除
    data remove storage remake_remix: Inventory

# 共鳴処理
    execute if data storage api: Inventory[{tag:{Kyoumei:1b}}] run function player_manager:custom_item/kyoumei/
