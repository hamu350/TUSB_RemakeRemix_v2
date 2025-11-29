#> asset:mob/4320.necklace_of_artemis/summon/2.summon

# functionの4320.necklace_of_artemisの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4320.necklace_of_artemis/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/