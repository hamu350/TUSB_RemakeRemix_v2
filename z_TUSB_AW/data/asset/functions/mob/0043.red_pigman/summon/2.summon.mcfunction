#> asset:mob/0043.red_pigman/summon/2.summon

# functionの0043.red_pigmanの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0043.red_pigman/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/