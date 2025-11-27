#> asset:mob/0101.triangle_sama_on_bat/summon/2.summon

# functionの0101.triangle_sama_on_batの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0101.triangle_sama_on_bat/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/