#> asset:mob/4108.angel_summoner/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:4108} run function asset:mob/4108.angel_summoner/summon/2.summon
# functionの4108.angel_summonerの変えたフォルダの名前にする(例:0001.the_white)
