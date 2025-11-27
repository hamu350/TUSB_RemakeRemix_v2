#> asset:mob/0370.impurity_skull/summon/2.summon

# functionの0370.impurity_skullの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0370.impurity_skull/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/