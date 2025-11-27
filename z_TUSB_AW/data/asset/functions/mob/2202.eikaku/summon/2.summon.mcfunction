#> asset:mob/2202.eikaku/summon/2.summon

# functionの2202.eikakuの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/2202.eikaku/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/