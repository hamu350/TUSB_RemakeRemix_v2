#> asset:mob/0000.example/summon/2.summon

# functionの0000.exampleの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/0000.example/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/