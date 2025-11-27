#> asset:mob/2203.eikakubat/summon/2.summon

# functionの2203.eikakubatの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/2203.eikakubat/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/