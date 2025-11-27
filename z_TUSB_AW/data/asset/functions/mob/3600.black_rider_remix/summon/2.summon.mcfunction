#> asset:mob/3600.black_rider_remix/summon/2.summon

# functionの3600.black_rider_remixの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/3600.black_rider_remix/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/