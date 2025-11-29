#> asset:mob/0801.farao/summon/2.summon

# functionの0801.faraoの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0801.farao/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/