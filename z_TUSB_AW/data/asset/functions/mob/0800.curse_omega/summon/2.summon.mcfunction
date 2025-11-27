#> asset:mob/0800.curse_omega/summon/2.summon

# functionの0800.curse_omegaの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0800.curse_omega/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/