#> asset:mob/4301.full_color_eye/summon/2.summon

# functionの4301.full_color_eyeの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4301.full_color_eye/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/