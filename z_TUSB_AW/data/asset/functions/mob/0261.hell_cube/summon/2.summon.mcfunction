#> asset:mob/0261.hell_cube/summon/2.summon

# functionの0261.hell_cubeの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0261.hell_cube/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/