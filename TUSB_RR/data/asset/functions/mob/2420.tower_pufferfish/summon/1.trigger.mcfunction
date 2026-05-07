#> asset:mob/2420.tower_pufferfish/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:2420} run function asset:mob/2420.tower_pufferfish/summon/2.summon
# functionの2420.tower_pufferfishの変えたフォルダの名前にする(例:0001.the_white)
