#> asset:mob/0814.pale_rider/summon/2.summon

# functionの0814.pale_riderの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0814.pale_rider/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/