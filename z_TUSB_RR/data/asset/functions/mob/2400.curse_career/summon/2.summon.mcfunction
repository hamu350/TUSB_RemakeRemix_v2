#> asset:mob/2400.curse_career/summon/2.summon

# functionの2400.curse_careerの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/2400.curse_career/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/