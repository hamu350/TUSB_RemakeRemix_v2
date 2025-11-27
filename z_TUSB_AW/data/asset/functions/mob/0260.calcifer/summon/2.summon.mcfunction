#> asset:mob/0260.calcifer/summon/2.summon

# functionの0260.calciferの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0260.calcifer/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/