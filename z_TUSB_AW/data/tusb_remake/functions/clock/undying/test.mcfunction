#> tusb_remake:clock/undying/test
# アイテムが使用されたかをテストする

### 使用していたらfunctionを実行、スロットが変わっていたらしない
# まずtest用functionに移す
data modify storage tusb_remake: test set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying
# 同じ内容で上書きはできないという仕様を利用して中身が変わったかを検知
execute store success storage tusb_remake: success byte 1 run data modify storage tusb_remake: test set from storage tusb_remake: SelectedItem
# こちらも同じ方法でスロットが変わっているかを調べる
execute store success storage tusb_remake: success_b byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].undying_slot set from entity @s SelectedItemSlot
# スロット変わってたら使用フラグを折る
execute if data storage tusb_remake: {success_b:true} run data modify storage tusb_remake: success set value false
# スロットが空なら使用フラグを立てる
execute unless data entity @s SelectedItem run data modify storage tusb_remake: success set value true
execute if data storage tusb_remake: {success:true} run function tusb_remake:clock/undying/use/cheak