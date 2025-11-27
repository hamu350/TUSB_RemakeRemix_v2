#> asset:mob/4800.kingami/summon/2.summon

# functionの4800.kingamiの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4800.kingami/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/