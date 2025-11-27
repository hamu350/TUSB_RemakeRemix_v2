#> asset:mob/0342.curse_sword_gamma/summon/2.summon

# functionの0342.curse_sword_gammaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0342.curse_sword_gamma/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/