#> asset:mob/4001.angel_shielder/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:4001} run function asset:mob/4001.angel_shielder/summon/2.summon
# functionの4002.angel_shielderの変えたフォルダの名前にする(例:0001.the_white)
