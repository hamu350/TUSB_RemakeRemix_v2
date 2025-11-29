#> asset:mob/3605.gamemaster/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:3605} run function asset:mob/3605.gamemaster/summon/2.summon
# functionの3604.infinity_bossの変えたフォルダの名前にする(例:0001.the_white)
