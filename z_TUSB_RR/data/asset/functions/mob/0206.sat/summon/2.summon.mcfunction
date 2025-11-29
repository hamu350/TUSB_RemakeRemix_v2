#> asset:mob/0206.sat/summon/2.summon

# functionの0206.satの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0206.sat/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/