#> asset:mob/4108.angel_summoner/summon/2.summon

# functionの4108.angel_summonerの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/4108.angel_summoner/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/