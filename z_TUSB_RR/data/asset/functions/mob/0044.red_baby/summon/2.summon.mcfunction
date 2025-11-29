#> asset:mob/0044.red_baby/summon/2.summon

# functionの0044.red_babyの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0044.red_baby/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/