#> asset:mob/0220.teleport_creeper/summon/2.summon

# functionの0220.teleport_creeperの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0220.teleport_creeper/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/