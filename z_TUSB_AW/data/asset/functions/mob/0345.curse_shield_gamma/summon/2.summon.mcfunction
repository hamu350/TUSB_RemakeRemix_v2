#> asset:mob/0345.curse_shield_gamma/summon/2.summon

# functionの0345.curse_shield_gammaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0345.curse_shield_gamma/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/