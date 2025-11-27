#> asset:mob/0813.red_rider/summon/2.summon

# functionの0813.red_riderの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0813.red_rider/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/