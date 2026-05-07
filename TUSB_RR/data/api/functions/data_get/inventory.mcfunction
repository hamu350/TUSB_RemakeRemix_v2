#> api:data_get/inventory
#
# 対象のInventoryをstorageに軽量に取得します。
#

# ohmydatに保存
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Inventory set from entity @s Inventory

# outputのstorageに移す
    data remove storage api: Inventory
    data modify storage api: Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Inventory 

# 削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Inventory
