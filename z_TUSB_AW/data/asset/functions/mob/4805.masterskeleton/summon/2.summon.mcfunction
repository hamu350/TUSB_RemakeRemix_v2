#> asset:mob/4805.masterskeleton/summon/2.summon

# functionの0050.masterskeletonの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4805.masterskeleton/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/