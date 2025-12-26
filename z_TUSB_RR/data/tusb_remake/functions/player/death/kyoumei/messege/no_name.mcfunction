#> tusb_remake:player/death/kyoumei/messege/no_name
# 一回地面に落として、selectorで名前を取得します

# シュルカーボックスの中身を削除し、アイテムを突っ込みます
    data remove block 3500 0 3500 Items
    data modify block 3500 0 3500 Items append from storage _: _.KyoumeiItems[-1]

# アイテムを召喚するんですが、既存のアイテムを指定してしまわないように一回tagを付けてから召喚します
    tag @e[type=item,tag=!TypeChecked] add Item
    loot spawn 3500 1 3500 mine 3500 0 3500 debug_stick
# 召喚したアイテムにtagを付けたら他のアイテムに付けたtagを消す
    tag @e[tag=!TypeChecked,tag=!Item,type=item] add NameHolder
    tag @e[tag=!TypeChecked,type=item,tag=Item] remove Item
# メッセージを表示！
    execute at @e[tag=NameHolder,type=item,limit=1] run tellraw @a {"translate": "* %1$s の§b§l魂§rと %2$s が§c共鳴§rした！","with": [{"selector":"@s"},{"selector": "@e[type=item,tag=NameHolder,distance=0,limit=1]"}],"hoverEvent":{"action":"show_text","contents":"魂の共鳴が付与されたアイテムが所有者の魂と共鳴し、その手に戻った"}}
# 使ったアイテムを葬ります。ばいばい
    kill @e[tag=NameHolder,type=item]