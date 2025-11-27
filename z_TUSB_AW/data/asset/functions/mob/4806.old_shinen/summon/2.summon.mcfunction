#> asset:mob/4806.old_shinen/summon/2.summon

# functionの4806.old_shinenの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4806.old_shinen/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/