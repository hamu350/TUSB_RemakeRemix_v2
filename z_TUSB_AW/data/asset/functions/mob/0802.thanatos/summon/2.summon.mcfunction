#> asset:mob/0802.thanatos/summon/2.summon

# functionの0802.thanatosの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0802.thanatos/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/