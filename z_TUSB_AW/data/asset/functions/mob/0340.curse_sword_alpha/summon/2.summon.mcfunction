#> asset:mob/0340.curse_sword_alpha/summon/2.summon

# functionの0340.curse_sword_alphaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0340.curse_sword_alpha/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/