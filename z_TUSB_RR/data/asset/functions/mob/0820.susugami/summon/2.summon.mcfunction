#> asset:mob/0820.susugami/summon/2.summon

# functionの0820.susugamiの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0820.susugami/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/