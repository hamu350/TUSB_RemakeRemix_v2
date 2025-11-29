#> asset:mob/0343.curse_shield_alpha/summon/2.summon

# functionの0343.curse_shield_alphaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0343.curse_shield_alpha/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/