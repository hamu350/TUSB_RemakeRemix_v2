#> asset:mob/2201.donkakubat/summon/2.summon

# functionの2201.donkakubatの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/2201.donkakubat/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/