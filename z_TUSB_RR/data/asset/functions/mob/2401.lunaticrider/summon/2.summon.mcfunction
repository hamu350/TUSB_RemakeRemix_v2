#> asset:mob/2401.lunaticrider/summon/2.summon

# functionの2401.lunaticriderの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/2401.lunaticrider/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/