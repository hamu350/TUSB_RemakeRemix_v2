#> asset:mob/0051.giiga/summon/2.summon

# functionの0051.giigaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0051.giiga/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/