#> asset:mob/0243.eruption_ghast/summon/2.summon

# functionの0243.eruption_ghastの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0243.eruption_ghast/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/