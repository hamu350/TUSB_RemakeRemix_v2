#> asset:mob/0050.meega/summon/2.summon

# functionの0050.meegaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0050.meega/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/