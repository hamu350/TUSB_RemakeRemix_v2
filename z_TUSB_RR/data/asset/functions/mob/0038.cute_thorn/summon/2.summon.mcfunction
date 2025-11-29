#> asset:mob/0038.cute_thorn/summon/2.summon

# functionの0038.cute_thornの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0038.cute_thorn/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/