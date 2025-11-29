#> tusb_remake:clock/kyoumei/get_items

# 共鳴アイテムを一つ取得します
data modify storage _: _.KyoumeiItems append from storage _: _.Inventory[{tag:{Kyoumei:true}}]
# 取得した共鳴アイテムを削除します
data remove storage _: _.Inventory[{tag:{Kyoumei:true}}]

# 二回やったって...バレへんやろ！
data modify storage _: _.KyoumeiItems append from storage _: _.Inventory[{tag:{Kyoumei:true}}]
data remove storage _: _.Inventory[{tag:{Kyoumei:true}}]

execute if data storage _: _.Inventory[{tag:{Kyoumei:true}}] run function tusb_remake:clock/kyoumei/get_items