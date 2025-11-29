#> asset:mob/2420.tower_pufferfish/summon/2.summon

# functionの2420.tower_pufferfishの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/2420.tower_pufferfish/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/