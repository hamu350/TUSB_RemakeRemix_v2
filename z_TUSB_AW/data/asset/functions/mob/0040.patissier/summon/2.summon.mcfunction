#> asset:mob/0040.patissier/summon/2.summon

# functionの0040.patissierの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0040.patissier/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/