#> asset:mob/0275.wizard/summon/2.summon

# functionの0275.wizardの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0275.wizard/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/