#> asset:mob/0106.white_attacker/summon/2.summon

# functionの0106.white_attackerの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0106.white_attacker/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/