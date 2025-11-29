#> asset:mob/2200.donkaku/summon/2.summon

# functionの2200.donkakuの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/2200.donkaku/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/