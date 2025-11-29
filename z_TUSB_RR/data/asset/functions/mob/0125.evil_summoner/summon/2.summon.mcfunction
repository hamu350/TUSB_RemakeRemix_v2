#> asset:mob/0125.evil_summoner/summon/2.summon

# functionの0125.evil_summonerの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0125.evil_summoner/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/