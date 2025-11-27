#> asset:mob/4001.angel_shielder/summon/2.summon

# functionの4001.angel_shielderの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/4001.angel_shielder/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/