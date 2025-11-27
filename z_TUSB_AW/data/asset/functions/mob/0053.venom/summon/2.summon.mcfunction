#> asset:mob/0053.venom/summon/2.summon

# functionの0053.venomの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0053.venom/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/