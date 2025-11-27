#> asset:mob/0111.katon_ninja/summon/2.summon

# functionの0111.katon_ninjaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0111.katon_ninja/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/