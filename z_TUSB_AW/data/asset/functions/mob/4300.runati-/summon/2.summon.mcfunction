#> asset:mob/4300.runati-/summon/2.summon

# functionの4300.runati-の変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4300.runati-/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/