#> tusb_remake:clock/undying/use/cheak_inventory
# 再帰でインベントリに同じUUIDを持つアイテムが有るかどうかを確かめます。あったらフラグを折る

data modify storage tusb_remake: test set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying.tag.UUID
execute store success storage tusb_remake: test byte 1 run data modify storage tusb_remake: test set from storage tusb_remake: test_array[0].tag.UUID
execute unless data storage tusb_remake: test_array[0].tag.UUID run data modify storage tusb_remake: test set value true

# execute if data storage tusb_remake: {test:false} run scoreboard players add _ TUSB 1
execute if data storage tusb_remake: {test:false} run data modify storage tusb_remake: cheak set value true

data remove storage tusb_remake: test_array[0]
execute if data storage tusb_remake: test_array[0] run function tusb_remake:clock/undying/use/cheak_inventory