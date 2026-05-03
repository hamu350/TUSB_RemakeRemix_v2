#> tusb_remake:player/death/kyoumei/
#
# 
#
# @within function tusb_remake:player/death/item_drop/

# 共鳴アイテムを残す
    data modify storage remake_remix: Inventory set from storage api: Inventory
    function tusb_remake:player/death/kyoumei/loop

# セッション開ける
    function lib_tsb:array/session/open

# 下ごしらえ
    data modify storage lib: Array set from storage remake_remix: Kyoumei

# 一回目
    function lib_tsb:array/packing_chest
    data modify block 3500 0 3500 Items set from storage lib: Package
    loot give @s mine 3500 0 3500 debug_stick
# リセット
    data remove storage lib: Package

# 二回目
    function lib_tsb:array/packing_chest
    data modify block 3500 0 3500 Items set from storage lib: Package
    loot give @s mine 3500 0 3500 debug_stick

# リセット
    function lib_tsb:array/session/close

# 削除
    data remove storage remake_remix: Inventory
    data remove storage remake_remix: Kyoumei
