#> tusb_remake:clock/undying/

# 手順1:
# アイテムが変わったとかを検知
# 手順2:
# アイテムが投げられていたら使用ではない
# インベントリ全チェックして同じUUIDを持つアイテムがあれば使用ではない
# 一時的にUndyingアイテムを置き換えてカーソルに持っているかも確かめる
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

# tag @s remove Undying

# tellraw @s {"translate": "SelectedItem: %1$s", "with":[{"nbt": "SelectedItem","entity": "@s"}]}

function oh_my_dat:please

# 負荷軽減のため先にSelectedItemを取得しておく
data modify storage tusb_remake: SelectedItem set from entity @s SelectedItem

# 入手時にUUIDを割り当てる
execute if data storage tusb_remake: {SelectedItem:{tag:{Undying:true}}} unless data storage tusb_remake: SelectedItem.tag.UUID run function tusb_remake:clock/undying/first

# Undyingを持っていたのならtestを実行
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying run function tusb_remake:clock/undying/test

# Undyingアイテム保存
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying set from entity @s[nbt={SelectedItem:{tag:{Undying:true}}}] SelectedItem
execute unless data entity @s SelectedItem.tag{Undying:true} run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying

# execute if data entity @s {SelectedItem:{tag:{Undying:true}}} run data modify storage _: _.mainhand set value true
# execute if data entity @s {Inventory:[{Slot:-106b,tag:{Undying:true}}]} run data modify storage _: _.offhand set value true

# execute unless data storage _: {_:{mainhand:true}} if entity @s[tag=UndyingMainhand] run data modify storage _: _.use set value true
# execute unless data storage _: {_:{offhand:true}} if entity @s[tag=UndyingOffhand] run data modify storage _: _.use set value true
# execute if data storage _: {_:{use:true}} unless data entity @s SelectedItem run function tusb_remake:clock/undying/use/cheak

# execute if data storage _: {_:{mainhand:true}} run function tusb_remake:clock/undying/mainhand
# execute if data storage _: {_:{offhand:true}} run function tusb_remake:clock/undying/offhand

# data remove storage _: _