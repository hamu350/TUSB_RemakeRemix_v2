#> asset:mob/4109.angel_soldier/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:4109} run function asset:mob/4109.angel_soldier/summon/2.summon
# functionの4109.angel_soldierの変えたフォルダの名前にする(例:0001.the_white)
