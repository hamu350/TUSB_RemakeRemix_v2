#> tusb_remake:boss/chest/

#-1をプラスしていく
execute store result storage tusb_remake: infinity_boss.item_uuid int -1 run data get storage tusb_remake: infinity_boss.item_uuid -1.00000000001

#uuid適応
data modify storage tusb_remake: infinity_boss.chast.Items[].tag.UUID set from storage tusb_remake: infinity_boss.item_uuid

data modify storage tusb_remake: infinity_boss.chastB.Items[].tag.UUID set from storage tusb_remake: infinity_boss.item_uuid

#チェストにぶちこみ
data modify block -2712 74 -378 Items set from storage tusb_remake: infinity_boss.chast.Items

data modify block -2712 74 -379 Items set from storage tusb_remake: infinity_boss.chastB.Items
