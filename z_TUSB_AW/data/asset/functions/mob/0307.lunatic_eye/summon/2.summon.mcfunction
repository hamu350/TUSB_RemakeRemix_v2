#> asset:mob/0307.lunatic_eye/summon/2.summon

# functionの0307.lunatic_eyeの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0307.lunatic_eye/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/