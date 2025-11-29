#> asset:mob/0811.black_rider/summon/2.summon

# functionの0811.black_riderの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0811.black_rider/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/