#> asset:mob/0374.bumper_storm/summon/2.summon

# functionの0374.bumper_stormの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0374.bumper_storm/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/