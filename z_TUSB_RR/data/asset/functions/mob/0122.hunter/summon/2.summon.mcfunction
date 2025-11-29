#> asset:mob/0122.hunter/summon/2.summon

# functionの0122.hunterの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0122.hunter/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/