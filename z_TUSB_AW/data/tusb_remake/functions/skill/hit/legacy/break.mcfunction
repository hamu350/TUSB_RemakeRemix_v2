#> tusb_remake:skill/hit/legacy/break
# レガシーアイテムを１つ壊す

### 壊れたときの演出
particle minecraft:item minecraft:potion ~ ~1.52 ~ 0 0 0 0.1 30 force @a[distance=..64]
playsound minecraft:entity.item.break master @a[distance=..16] ~ ~ ~ 1 0.5 0
title @s actionbar {"text":"武器が壊れた！！！！！","color":"dark_gray"}

### 修正するアイテムを指定
data modify storage player_item_tuner: condition.if set value {Slot:0b}
execute store result storage player_item_tuner: condition.if.Slot byte 1 run data get entity @s SelectedItemSlot
### プレイヤーのアイテムのレガシータグを初期化
data modify storage player_item_tuner: result.set set from entity @s SelectedItem
data modify storage player_item_tuner: result.set.tag.Legacy set value true
### プレイヤーのアイテムを１つ減らす
execute store result storage player_item_tuner: result.set.Count byte 0.9999999999 run data get storage player_item_tuner: result.set.Count

function #player_item_tuner:modify/inventory
