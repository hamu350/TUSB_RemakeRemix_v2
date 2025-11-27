#> asset:mob/0036.quietly_read_book/summon/2.summon

# functionの0036.quietly_read_bookの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0036.quietly_read_book/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/