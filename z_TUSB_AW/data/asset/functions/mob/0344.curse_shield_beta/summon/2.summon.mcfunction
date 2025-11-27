#> asset:mob/0344.curse_shield_beta/summon/2.summon

# functionの0344.curse_shield_betaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0344.curse_shield_beta/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/