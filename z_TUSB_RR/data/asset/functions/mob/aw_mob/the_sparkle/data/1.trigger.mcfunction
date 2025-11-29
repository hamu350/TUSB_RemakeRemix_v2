#> asset:mob/0000.example/data/1.trigger
#↑このパスも変えてね

# asset:context {id:0}の部分を作るmobのidに変える
execute if data storage asset:context {id:0} run function asset:mob/0000.example/data/2.data_set
# functionの0000.exampleの変えたフォルダの名前にする(例:0001.the_white)
