#> asset:mob/0322.nightmare_eye/summon/2.summon

# functionの0322.nightmare_eyeの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0322.nightmare_eye/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/