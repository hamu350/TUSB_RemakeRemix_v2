#> asset:mob/4302.angel_eye/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:4302} run function asset:mob/4302.angel_eye/summon/2.summon
# functionの4302.angel_eyeの変えたフォルダの名前にする(例:0001.the_white)
