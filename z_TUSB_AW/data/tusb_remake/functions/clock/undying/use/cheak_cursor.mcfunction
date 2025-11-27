#> tusb_remake:clock/undying/use/cheak_cursor

# まずUndyingを全部置き換えちゃう！
data modify storage player_item_tuner: condition.if set value {tag:{Undying:true}}
data modify storage player_item_tuner: result.merge set value {tag:{Undying:"replace"}}
function player_item_tuner:inventory/merge/
# そして置き換えられていないやつを持っているかを持っているかをclearで確かめる
execute store success storage tusb_remake: test byte 1 run clear @s #tusb_remake:all{Undying:true} 0
# 持ってるなら非実行フラグを立てる！
execute if data storage tusb_remake: {test:true} run data modify storage tusb_remake: cheak set value true
# んで戻しちゃう！
data modify storage player_item_tuner: condition.if set value {tag:{Undying:"replace"}}
data modify storage player_item_tuner: result.merge set value {tag:{Undying:true}}
function player_item_tuner:inventory/merge/