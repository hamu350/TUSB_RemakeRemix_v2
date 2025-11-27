#> asset:mob/4109.angel_soldier/summon/2.summon

# functionの4109.angel_soldierの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/4109.angel_soldier/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/