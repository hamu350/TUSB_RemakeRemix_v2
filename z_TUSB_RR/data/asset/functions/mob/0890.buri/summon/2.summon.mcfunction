#> asset:mob/0890.buri/summon/2.summon

# functionの0890.buriの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0890.buri/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/