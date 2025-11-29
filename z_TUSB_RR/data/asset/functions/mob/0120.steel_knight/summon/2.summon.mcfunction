#> asset:mob/0120.steel_knight/summon/2.summon

# functionの0120.steel_knightの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0120.steel_knight/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/