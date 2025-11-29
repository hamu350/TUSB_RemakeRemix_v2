#> asset:mob/0121.slayer/summon/2.summon

# functionの0121.slayerの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0121.slayer/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/