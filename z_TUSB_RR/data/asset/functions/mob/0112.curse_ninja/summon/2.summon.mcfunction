#> asset:mob/0112.curse_ninja/summon/2.summon

# functionの0112.curse_ninjaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0112.curse_ninja/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/