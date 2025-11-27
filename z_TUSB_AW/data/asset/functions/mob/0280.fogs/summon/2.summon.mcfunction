#> asset:mob/0280.fogs/summon/2.summon

# functionの0280.fogsの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0280.fogs/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/