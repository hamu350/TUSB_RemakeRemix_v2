#> asset:mob/3604.infinity_boss/summon/2.summon

# functionの3604.infinity_bossの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/3604.infinity_boss/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/