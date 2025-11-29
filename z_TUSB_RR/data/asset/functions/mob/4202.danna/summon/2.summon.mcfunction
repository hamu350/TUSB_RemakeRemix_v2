#> asset:mob/4202.danna/summon/2.summon

# functionの4202.dannaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4202.danna/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/