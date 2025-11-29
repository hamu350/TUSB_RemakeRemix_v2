#> asset:mob/0100.triangle_sama/summon/2.summon

# functionの0100.triangle_samaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0100.triangle_sama/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/