#> asset:mob/0200.runa/summon/2.summon

# functionの0200.runaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0200.runa/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/