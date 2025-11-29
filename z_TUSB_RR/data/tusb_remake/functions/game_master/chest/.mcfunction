#> tusb_remake:game_master/chest/

#-1をプラスしていく
execute store result storage tusb_remake: game_master.item_uuid int -1 run data get storage tusb_remake: game_master.item_uuid -1.00000000001

#uuid適応
data modify storage tusb_remake: game_master.chast.Items[].tag.UUID set from storage tusb_remake: game_master.item_uuid

data modify storage tusb_remake: game_master.chastB.Items[].tag.UUID set from storage tusb_remake: game_master.item_uuid

#チェストにぶちこみ
data modify block -2954 212 -40 Items set from storage tusb_remake: game_master.chast.Items

data modify block -2953 212 -40 Items set from storage tusb_remake: game_master.chastB.Items
