#> asset:mob/0115.minecrafter/summon/2.summon

# functionの0115.minecrafterの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0115.minecrafter/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/