#> asset:mob/4802.magic_bullet_prince/summon/2.summon

# functionの4802.magic_bullet_princeの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/4802.magic_bullet_prince/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/