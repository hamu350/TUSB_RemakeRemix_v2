#> asset:mob/4106.heaven_slayer/summon/2.summon

# functionの4106.heaven_slayerの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/4106.heaven_slayer/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/