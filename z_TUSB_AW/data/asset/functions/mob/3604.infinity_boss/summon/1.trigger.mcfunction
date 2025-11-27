#> asset:mob/3604.infinity_boss/summon/1.trigger
# ↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:3604} run function asset:mob/3604.infinity_boss/summon/2.summon
# functionの3604.infinity_bossの変えたフォルダの名前にする(例:0001.the_white)
