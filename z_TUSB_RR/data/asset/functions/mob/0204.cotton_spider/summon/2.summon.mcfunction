#> asset:mob/0204.cotton_spider/summon/2.summon

# functionの0204.cotton_spiderの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0204.cotton_spider/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/