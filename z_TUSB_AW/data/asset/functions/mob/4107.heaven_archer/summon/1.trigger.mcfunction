#> asset:mob/4107.heaven_archer/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:4107} run function asset:mob/4107.heaven_archer/summon/2.summon
# functionの4107.heaven_archerの変えたフォルダの名前にする(例:0001.the_white)
