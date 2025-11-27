#> asset:mob/0012.pumpkin_kid/summon/2.summon

# functionの0012.pumpkin_kidの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0012.pumpkin_kid/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/