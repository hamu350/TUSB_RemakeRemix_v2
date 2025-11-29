#> asset:mob/0301.poison_eye/summon/2.summon

# functionの0301.poison_eyeの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0301.poison_eye/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/