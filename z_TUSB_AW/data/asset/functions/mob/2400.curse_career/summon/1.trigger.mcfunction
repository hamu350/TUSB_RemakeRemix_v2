#> asset:mob/2400.curse_career/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:2400} run function asset:mob/2400.curse_career/summon/2.summon
# functionの2400.curse_careerの変えたフォルダの名前にする(例:0001.the_white)
