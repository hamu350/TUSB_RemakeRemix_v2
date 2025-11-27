#> asset:mob/4101.dracoon/summon/2.summon

# functionの0224.gate_keeperの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4101.dracoon/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/