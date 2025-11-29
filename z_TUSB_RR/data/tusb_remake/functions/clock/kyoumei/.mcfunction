#> tusb_remake:clock/kyoumei/

tag @s add Kyoumei

# 個人ストレージを呼び出し
function oh_my_dat:please

# Inventoryをストレージに突っ込みます
data modify storage _: _.Inventory set from entity @s Inventory
# 取得したInventoryから再帰で共鳴アイテムだけを取得します
function tusb_remake:clock/kyoumei/get_items
# そしたらこれを個人ストレージにぶち込みます
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].KyoumeiItems set from storage _: _.KyoumeiItems

# 一時ストレージを削除
data remove storage _: _